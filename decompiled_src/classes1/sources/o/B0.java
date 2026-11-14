package o;

import android.content.Context;
import android.os.Build;
import io.github.muntashirakon.adb.AbsAdbConnectionManager;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.math.BigInteger;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.PrivateKey;
import java.security.SecureRandom;
import java.security.Security;
import java.security.cert.Certificate;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.security.spec.PKCS8EncodedKeySpec;
import java.util.Arrays;
import java.util.Date;
import org.bouncycastle.asn1.x500.X500Name;
import org.bouncycastle.cert.jcajce.JcaX509CertificateConverter;
import org.bouncycastle.cert.jcajce.JcaX509v3CertificateBuilder;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import org.bouncycastle.operator.jcajce.JcaContentSignerBuilder;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class B0 extends AbsAdbConnectionManager {
    public static final C0424u6 c = new C0424u6(6);
    public static volatile B0 d;
    public final PrivateKey a;
    public final Certificate b;

    /* JADX WARN: Type inference failed for: r9v4, types: [java.io.OutputStream, java.io.ByteArrayOutputStream, o.j7] */
    public B0(Context context) {
        Cc cc;
        Context applicationContext = context.getApplicationContext();
        File file = new File(applicationContext.getFilesDir(), "adbkey.pk8");
        File file2 = new File(applicationContext.getFilesDir(), "adbkey.crt");
        setApi(Build.VERSION.SDK_INT);
        if (Security.getProvider(BouncyCastleProvider.PROVIDER_NAME) == null) {
            Security.addProvider(new BouncyCastleProvider());
        }
        if (file.exists() && file2.exists()) {
            KeyFactory keyFactory = KeyFactory.getInstance("RSA");
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                long length = file.length();
                if (length <= 2147483647L) {
                    int i = (int) length;
                    byte[] bArr = new byte[i];
                    int i2 = i;
                    int i3 = 0;
                    while (i2 > 0) {
                        int read = fileInputStream.read(bArr, i3, i2);
                        if (read < 0) {
                            break;
                        }
                        i2 -= read;
                        i3 += read;
                    }
                    if (i2 > 0) {
                        bArr = Arrays.copyOf(bArr, i3);
                        AbstractC0487x9.n(bArr, "copyOf(...)");
                    } else {
                        int read2 = fileInputStream.read();
                        if (read2 != -1) {
                            ?? byteArrayOutputStream = new ByteArrayOutputStream(8193);
                            byteArrayOutputStream.write(read2);
                            L1.o(fileInputStream, byteArrayOutputStream);
                            int size = byteArrayOutputStream.size() + i;
                            if (size >= 0) {
                                byte[] a = byteArrayOutputStream.a();
                                bArr = Arrays.copyOf(bArr, size);
                                AbstractC0487x9.n(bArr, "copyOf(...)");
                                H2.j0(a, bArr, i, 0, byteArrayOutputStream.size());
                            } else {
                                throw new OutOfMemoryError("File " + file + " is too big to fit in memory.");
                            }
                        }
                    }
                    L1.k(fileInputStream, null);
                    PrivateKey generatePrivate = keyFactory.generatePrivate(new PKCS8EncodedKeySpec(bArr));
                    CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
                    fileInputStream = new FileInputStream(file2);
                    try {
                        Certificate generateCertificate = certificateFactory.generateCertificate(fileInputStream);
                        AbstractC0487x9.m(generateCertificate, "null cannot be cast to non-null type java.security.cert.X509Certificate");
                        X509Certificate x509Certificate = (X509Certificate) generateCertificate;
                        L1.k(fileInputStream, null);
                        cc = new Cc(generatePrivate, x509Certificate);
                    } finally {
                    }
                } else {
                    throw new OutOfMemoryError("File " + file + " is too big (" + length + " bytes) to fit in memory.");
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } finally {
                }
            }
        } else {
            KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("RSA");
            keyPairGenerator.initialize(2048, new SecureRandom());
            KeyPair generateKeyPair = keyPairGenerator.generateKeyPair();
            Date date = new Date();
            Date date2 = new Date(date.getTime() + 315360000000L);
            X500Name x500Name = new X500Name("CN=ProxyRead");
            AbstractC0212jd.a.getClass();
            X509Certificate certificate = new JcaX509CertificateConverter().setProvider(new BouncyCastleProvider()).getCertificate(new JcaX509v3CertificateBuilder(x500Name, BigInteger.valueOf(Math.abs(AbstractC0212jd.b.c().nextLong())), date, date2, x500Name, generateKeyPair.getPublic()).build(new JcaContentSignerBuilder("SHA256withRSA").build(generateKeyPair.getPrivate())));
            byte[] encoded = generateKeyPair.getPrivate().getEncoded();
            AbstractC0487x9.n(encoded, "getEncoded(...)");
            L1.f0(file, encoded);
            byte[] encoded2 = certificate.getEncoded();
            AbstractC0487x9.n(encoded2, "getEncoded(...)");
            L1.f0(file2, encoded2);
            cc = new Cc(generateKeyPair.getPrivate(), certificate);
        }
        this.a = (PrivateKey) cc.a;
        this.b = (Certificate) cc.b;
    }

    @Override // io.github.muntashirakon.adb.AbsAdbConnectionManager
    public final Certificate getCertificate() {
        return this.b;
    }

    @Override // io.github.muntashirakon.adb.AbsAdbConnectionManager
    public final String getDeviceName() {
        return "ProxyRead";
    }

    @Override // io.github.muntashirakon.adb.AbsAdbConnectionManager
    public final PrivateKey getPrivateKey() {
        return this.a;
    }
}
