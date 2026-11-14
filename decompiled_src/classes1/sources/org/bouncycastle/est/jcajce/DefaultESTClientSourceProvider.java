package org.bouncycastle.est.jcajce;

import java.io.IOException;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import o.Ve;
import org.bouncycastle.est.ESTClientSourceProvider;
import org.bouncycastle.est.Source;
import org.bouncycastle.util.Strings;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
class DefaultESTClientSourceProvider implements ESTClientSourceProvider {
    private final Long absoluteLimit;
    private final ChannelBindingProvider bindingProvider;
    private final Set<String> cipherSuites;
    private final boolean filterSupportedSuites;
    private final JsseHostnameAuthorizer hostNameAuthorizer;
    private final SSLSocketFactory sslSocketFactory;
    private final int timeout;

    public DefaultESTClientSourceProvider(SSLSocketFactory sSLSocketFactory, JsseHostnameAuthorizer jsseHostnameAuthorizer, int i, ChannelBindingProvider channelBindingProvider, Set<String> set, Long l, boolean z) throws GeneralSecurityException {
        this.sslSocketFactory = sSLSocketFactory;
        this.hostNameAuthorizer = jsseHostnameAuthorizer;
        this.timeout = i;
        this.bindingProvider = channelBindingProvider;
        this.cipherSuites = set;
        this.absoluteLimit = l;
        this.filterSupportedSuites = z;
    }

    @Override // org.bouncycastle.est.ESTClientSourceProvider
    public Source makeSource(String str, int i) throws IOException {
        SSLSocket sSLSocket = (SSLSocket) this.sslSocketFactory.createSocket(str, i);
        sSLSocket.setSoTimeout(this.timeout);
        Set<String> set = this.cipherSuites;
        if (set != null && !set.isEmpty()) {
            if (this.filterSupportedSuites) {
                HashSet hashSet = new HashSet();
                String[] supportedCipherSuites = sSLSocket.getSupportedCipherSuites();
                for (int i2 = 0; i2 != supportedCipherSuites.length; i2++) {
                    hashSet.add(supportedCipherSuites[i2]);
                }
                ArrayList arrayList = new ArrayList();
                for (String str2 : this.cipherSuites) {
                    if (hashSet.contains(str2)) {
                        arrayList.add(str2);
                    }
                }
                if (!arrayList.isEmpty()) {
                    sSLSocket.setEnabledCipherSuites((String[]) arrayList.toArray(new String[arrayList.size()]));
                } else {
                    throw new IllegalStateException("No supplied cipher suite is supported by the provider.");
                }
            } else {
                Set<String> set2 = this.cipherSuites;
                sSLSocket.setEnabledCipherSuites((String[]) set2.toArray(new String[set2.size()]));
            }
        }
        sSLSocket.startHandshake();
        JsseHostnameAuthorizer jsseHostnameAuthorizer = this.hostNameAuthorizer;
        if (jsseHostnameAuthorizer != null && !jsseHostnameAuthorizer.verified(str, sSLSocket.getSession())) {
            throw new IOException("Host name could not be verified.");
        }
        String lowerCase = Strings.toLowerCase(sSLSocket.getSession().getCipherSuite());
        if (!lowerCase.contains("_des_") && !lowerCase.contains("_des40_") && !lowerCase.contains("_3des_")) {
            if (!Strings.toLowerCase(sSLSocket.getSession().getCipherSuite()).contains("null")) {
                if (!Strings.toLowerCase(sSLSocket.getSession().getCipherSuite()).contains("anon")) {
                    if (!Strings.toLowerCase(sSLSocket.getSession().getCipherSuite()).contains("export")) {
                        if (!sSLSocket.getSession().getProtocol().equalsIgnoreCase("tlsv1")) {
                            JsseHostnameAuthorizer jsseHostnameAuthorizer2 = this.hostNameAuthorizer;
                            if (jsseHostnameAuthorizer2 != null && !jsseHostnameAuthorizer2.verified(str, sSLSocket.getSession())) {
                                throw new IOException(Ve.y("Hostname was not verified: ", str));
                            }
                            return new LimitedSSLSocketSource(sSLSocket, this.bindingProvider, this.absoluteLimit);
                        }
                        try {
                            sSLSocket.close();
                        } catch (Exception unused) {
                        }
                        throw new IOException("EST clients must not use TLSv1");
                    }
                    throw new IOException("EST clients must not use export ciphers");
                }
                throw new IOException("EST clients must not use anon ciphers");
            }
            throw new IOException("EST clients must not use NULL ciphers");
        }
        throw new IOException("EST clients must not use DES ciphers");
    }
}
