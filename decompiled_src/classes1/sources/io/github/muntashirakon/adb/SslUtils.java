package io.github.muntashirakon.adb;

import android.annotation.SuppressLint;
import android.os.Build;
import java.io.PrintStream;
import java.net.Socket;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.Principal;
import java.security.PrivateKey;
import java.security.Provider;
import java.security.SecureRandom;
import java.security.cert.X509Certificate;
import javax.net.ssl.KeyManager;
import javax.net.ssl.SSLContext;
import javax.net.ssl.X509ExtendedKeyManager;
import javax.net.ssl.X509TrustManager;
import org.conscrypt.OpenSSLProvider;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class SslUtils {
    private static boolean customConscrypt;
    private static SSLContext sslContext;

    @SuppressLint({"TrustAllX509TrustManager"})
    private static X509TrustManager getAllAcceptingTrustManager() {
        return new X509TrustManager() { // from class: io.github.muntashirakon.adb.SslUtils.2
            @Override // javax.net.ssl.X509TrustManager
            public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
            }

            @Override // javax.net.ssl.X509TrustManager
            public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
            }

            @Override // javax.net.ssl.X509TrustManager
            public X509Certificate[] getAcceptedIssuers() {
                return new X509Certificate[0];
            }
        };
    }

    private static KeyManager getKeyManager(final KeyPair keyPair) {
        return new X509ExtendedKeyManager() { // from class: io.github.muntashirakon.adb.SslUtils.1
            private final String mAlias = "key";

            @Override // javax.net.ssl.X509KeyManager
            public String chooseClientAlias(String[] strArr, Principal[] principalArr, Socket socket) {
                for (String str : strArr) {
                    if (str.equals("RSA")) {
                        return "key";
                    }
                }
                return null;
            }

            @Override // javax.net.ssl.X509KeyManager
            public String chooseServerAlias(String str, Principal[] principalArr, Socket socket) {
                return null;
            }

            @Override // javax.net.ssl.X509KeyManager
            public X509Certificate[] getCertificateChain(String str) {
                if ("key".equals(str)) {
                    return new X509Certificate[]{(X509Certificate) KeyPair.this.getCertificate()};
                }
                return null;
            }

            @Override // javax.net.ssl.X509KeyManager
            public String[] getClientAliases(String str, Principal[] principalArr) {
                return null;
            }

            @Override // javax.net.ssl.X509KeyManager
            public PrivateKey getPrivateKey(String str) {
                if ("key".equals(str)) {
                    return KeyPair.this.getPrivateKey();
                }
                return null;
            }

            @Override // javax.net.ssl.X509KeyManager
            public String[] getServerAliases(String str, Principal[] principalArr) {
                return null;
            }
        };
    }

    @SuppressLint({"TrulyRandom"})
    public static SSLContext getSslContext(KeyPair keyPair) throws NoSuchAlgorithmException, KeyManagementException {
        String str;
        SSLContext sSLContext = sslContext;
        if (sSLContext != null) {
            return sSLContext;
        }
        try {
            int i = OpenSSLProvider.a;
            sslContext = SSLContext.getInstance("TLSv1.3", (Provider) OpenSSLProvider.class.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
            customConscrypt = true;
        } catch (NoSuchAlgorithmException e) {
            throw e;
        } catch (Throwable unused) {
            if (Build.VERSION.SDK_INT >= 29) {
                sslContext = SSLContext.getInstance("TLSv1.3");
                customConscrypt = false;
            } else {
                throw new NoSuchAlgorithmException("TLSv1.3 isn't supported on your platform. Use custom Conscrypt library instead.");
            }
        }
        PrintStream printStream = System.out;
        StringBuilder sb = new StringBuilder("Using ");
        if (customConscrypt) {
            str = "custom";
        } else {
            str = "default";
        }
        sb.append(str);
        sb.append(" TLSv1.3 provider...");
        printStream.println(sb.toString());
        sslContext.init(new KeyManager[]{getKeyManager(keyPair)}, new X509TrustManager[]{getAllAcceptingTrustManager()}, new SecureRandom());
        return sslContext;
    }

    public static boolean isCustomConscrypt() {
        return customConscrypt;
    }
}
