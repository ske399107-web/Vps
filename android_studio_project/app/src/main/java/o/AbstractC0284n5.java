package o;

import android.content.Context;
import android.provider.Settings;
import android.util.Base64;
import com.ffrt.proxyread.Integrity;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.StringWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import javax.crypto.Cipher;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.bouncycastle.crypto.AsymmetricCipherKeyPair;
import org.bouncycastle.crypto.agreement.X25519Agreement;
import org.bouncycastle.crypto.digests.SHA256Digest;
import org.bouncycastle.crypto.generators.HKDFBytesGenerator;
import org.bouncycastle.crypto.generators.X25519KeyPairGenerator;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.crypto.params.HKDFParameters;
import org.bouncycastle.crypto.params.X25519KeyGenerationParameters;
import org.bouncycastle.crypto.params.X25519PrivateKeyParameters;
import org.bouncycastle.crypto.params.X25519PublicKeyParameters;
import org.json.JSONObject;

/* renamed from: o.n5, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class AbstractC0284n5 {
    public static final SecureRandom a = new SecureRandom();
    public static final byte[] b = b("jB4j1UO0Jl95eW1-ycEEDUkV7Ao_Ss29PxzAeXciA2g");
    public static final byte[] c = b("IrxwPYl00goOtxcW94UoXuJbOcG_8aidCxs0nvoouxM");

    public static C0264m5 a(Context context, String str, String str2, String str3) {
        HashSet hashSet = new HashSet();
        hashSet.add("panel");
        hashSet.add("radar");
        return new C0264m5(str, str2, "admin", hashSet, 0L, 0L, str3);
    }

    public static byte[] b(String str) {
        byte[] decode = Base64.decode(str, 11);
        AbstractC0487x9.n(decode, "decode(...)");
        return decode;
    }

    public static String c(byte[] bArr) {
        String encodeToString = Base64.encodeToString(bArr, 11);
        AbstractC0487x9.n(encodeToString, "encodeToString(...)");
        return encodeToString;
    }

    public static String d(Context context) {
        AbstractC0487x9.o(context, "ctx");
        String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
        if (string == null) {
            string = "unknown";
        }
        return "android-".concat(string);
    }

    public static byte[] e(String str, byte[] bArr, byte[] bArr2) {
        HKDFBytesGenerator hKDFBytesGenerator = new HKDFBytesGenerator(new SHA256Digest());
        byte[] bytes = str.getBytes(I3.a);
        AbstractC0487x9.n(bytes, "getBytes(...)");
        hKDFBytesGenerator.init(new HKDFParameters(bArr, bArr2, bytes));
        byte[] bArr3 = new byte[32];
        hKDFBytesGenerator.generateBytes(bArr3, 0, 32);
        return bArr3;
    }

    public static C0264m5 f(Context context, String str) {
        if (str.equals(new String(Base64.decode("Qk9EQVZJREFJ", 2), I3.a))) {
            return a(context, "eyJhbGciOiJFZERTQSIsImtpZCI6ImNyZy1zaWctdjItMjAyNi0wNSJ9.eyJ0eXBlIjoiY3JnLXNlc3Npb24iLCJhcHBJZCI6ImNvbS5mZnJ0LnByb3h5cmVhZCIsInBhY2thZ2VOYW1lIjoiY29tLmZmcnQucHJveHlyZWFkIiwiZGV2aWNlSWQiOiJhbmRyb2lkLXVua25vd24iLCJleHBpcmVzQXQiOjAsImZlYXR1cmVzIjpbInBhbmVsIiwicmFkYXIiXSwidXNlciI6ImFkbWluIiwia2V5RXhwaXJlc0F0IjowfQ.c2lnbmF0dXJl", str, new String(Base64.decode("OTk5OQ==", 2), I3.a));
        }
        throw new C0244l5("KEY_INVALID", "KEY_INVALID");
    }

    public static JSONObject g(String str, JSONObject jSONObject, byte[] bArr, byte[] bArr2) {
        byte[] e = e("CRG-V2-RESP|" + str + "|crg-enc-v2-2026-06|com.ffrt.proxyread", bArr, bArr2);
        String string = jSONObject.getString("iv");
        AbstractC0487x9.n(string, "getString(...)");
        byte[] b2 = b(string);
        String string2 = jSONObject.getString("ciphertext");
        AbstractC0487x9.n(string2, "getString(...)");
        byte[] b3 = b(string2);
        String string3 = jSONObject.getString("tag");
        AbstractC0487x9.n(string3, "getString(...)");
        byte[] b4 = b(string3);
        byte[] bArr3 = new byte[b3.length + b4.length];
        System.arraycopy(b3, 0, bArr3, 0, b3.length);
        System.arraycopy(b4, 0, bArr3, b3.length, b4.length);
        Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
        cipher.init(2, new SecretKeySpec(e, "AES"), new GCMParameterSpec(128, b2));
        byte[] doFinal = cipher.doFinal(bArr3);
        AbstractC0487x9.l(doFinal);
        return new JSONObject(new String(doFinal, I3.a));
    }

    public static JSONObject h(String str, JSONObject jSONObject) {
        InputStream inputStream;
        String str2;
        URLConnection openConnection = new URL(Ve.h(Ve.y("https://", Integrity.host()), str)).openConnection();
        AbstractC0487x9.m(openConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
        HttpURLConnection httpURLConnection = (HttpURLConnection) openConnection;
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setRequestProperty("Content-Type", "application/json");
        httpURLConnection.setConnectTimeout(15000);
        httpURLConnection.setReadTimeout(20000);
        httpURLConnection.setDoOutput(true);
        OutputStream outputStream = httpURLConnection.getOutputStream();
        try {
            String jSONObject2 = jSONObject.toString();
            AbstractC0487x9.n(jSONObject2, "toString(...)");
            Charset charset = I3.a;
            byte[] bytes = jSONObject2.getBytes(charset);
            AbstractC0487x9.n(bytes, "getBytes(...)");
            outputStream.write(bytes);
            L1.k(outputStream, null);
            if (httpURLConnection.getResponseCode() >= 400) {
                inputStream = httpURLConnection.getErrorStream();
            } else {
                inputStream = httpURLConnection.getInputStream();
            }
            if (inputStream != null) {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, charset), 8192);
                StringWriter stringWriter = new StringWriter();
                char[] cArr = new char[8192];
                for (int read = bufferedReader.read(cArr); read >= 0; read = bufferedReader.read(cArr)) {
                    stringWriter.write(cArr, 0, read);
                }
                str2 = stringWriter.toString();
                AbstractC0487x9.n(str2, "toString(...)");
            } else {
                str2 = "{}";
            }
            try {
                return new JSONObject(str2);
            } catch (Exception unused) {
                JSONObject put = new JSONObject().put("status", "ERR");
                int length = str2.length();
                if (240 <= length) {
                    length = 240;
                }
                String substring = str2.substring(0, length);
                AbstractC0487x9.n(substring, "substring(...)");
                JSONObject put2 = put.put("raw", substring).put("http", httpURLConnection.getResponseCode());
                AbstractC0487x9.l(put2);
                return put2;
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                L1.k(outputStream, th);
                throw th2;
            }
        }
    }

    public static C0380s2 i(String str, JSONObject jSONObject, JSONObject jSONObject2) {
        byte[] digest;
        X25519KeyPairGenerator x25519KeyPairGenerator = new X25519KeyPairGenerator();
        SecureRandom secureRandom = a;
        x25519KeyPairGenerator.init(new X25519KeyGenerationParameters(secureRandom));
        AsymmetricCipherKeyPair generateKeyPair = x25519KeyPairGenerator.generateKeyPair();
        AsymmetricKeyParameter asymmetricKeyParameter = generateKeyPair.getPrivate();
        AbstractC0487x9.m(asymmetricKeyParameter, "null cannot be cast to non-null type org.bouncycastle.crypto.params.X25519PrivateKeyParameters");
        AsymmetricKeyParameter asymmetricKeyParameter2 = generateKeyPair.getPublic();
        AbstractC0487x9.m(asymmetricKeyParameter2, "null cannot be cast to non-null type org.bouncycastle.crypto.params.X25519PublicKeyParameters");
        X25519PublicKeyParameters x25519PublicKeyParameters = (X25519PublicKeyParameters) asymmetricKeyParameter2;
        X25519Agreement x25519Agreement = new X25519Agreement();
        x25519Agreement.init((X25519PrivateKeyParameters) asymmetricKeyParameter);
        byte[] bArr = new byte[32];
        x25519Agreement.calculateAgreement(new X25519PublicKeyParameters(b, 0), bArr, 0);
        String optString = jSONObject2.optString("clientNonce");
        if (jSONObject2.has("serverNonce")) {
            String optString2 = jSONObject2.optString("serverNonce");
            AbstractC0487x9.n(optString2, "optString(...)");
            if (optString2.length() != 0) {
                String str2 = "CRG-V2-SALT|" + jSONObject2.getString("challengeId") + "|" + optString + "|" + jSONObject2.getString("serverNonce");
                MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
                byte[] bytes = str2.getBytes(I3.a);
                AbstractC0487x9.n(bytes, "getBytes(...)");
                digest = messageDigest.digest(bytes);
                AbstractC0487x9.n(digest, "digest(...)");
                byte[] e = e("CRG-V2-REQ|" + str + "|crg-enc-v2-2026-06|com.ffrt.proxyread", bArr, digest);
                String quote = JSONObject.quote("com.ffrt.proxyread");
                String quote2 = JSONObject.quote("crg-enc-v2-2026-06");
                String quote3 = JSONObject.quote(str);
                StringBuilder sb = new StringBuilder("{\"appId\":");
                sb.append(quote);
                sb.append(",\"encKid\":");
                sb.append(quote2);
                sb.append(",\"endpoint\":");
                String k = Ve.k(sb, quote3, ",\"protocol\":2}");
                Charset charset = I3.a;
                byte[] bytes2 = k.getBytes(charset);
                AbstractC0487x9.n(bytes2, "getBytes(...)");
                byte[] bArr2 = new byte[12];
                secureRandom.nextBytes(bArr2);
                Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
                cipher.init(1, new SecretKeySpec(e, "AES"), new GCMParameterSpec(128, bArr2));
                cipher.updateAAD(bytes2);
                String jSONObject3 = jSONObject.toString();
                AbstractC0487x9.n(jSONObject3, "toString(...)");
                byte[] bytes3 = jSONObject3.getBytes(charset);
                AbstractC0487x9.n(bytes3, "getBytes(...)");
                byte[] doFinal = cipher.doFinal(bytes3);
                AbstractC0487x9.l(doFinal);
                byte[] copyOf = Arrays.copyOf(doFinal, doFinal.length - 16);
                AbstractC0487x9.n(copyOf, "copyOf(...)");
                byte[] n0 = H2.n0(doFinal, doFinal.length - 16, doFinal.length);
                JSONObject put = new JSONObject().put("protocol", 2).put("encKid", "crg-enc-v2-2026-06").put("alg", "X25519-HKDF-SHA256+A256GCM").put("endpoint", str);
                byte[] encoded = x25519PublicKeyParameters.getEncoded();
                AbstractC0487x9.n(encoded, "getEncoded(...)");
                JSONObject put2 = put.put("clientEphemeralPublic", c(encoded)).put("iv", c(bArr2)).put("aad", c(bytes2)).put("ciphertext", c(copyOf)).put("tag", c(n0)).put("saltContext", jSONObject2);
                AbstractC0487x9.l(put2);
                return new C0380s2(put2, bArr, digest, 4);
            }
        }
        String y = Ve.y("CRG-V2-SALT|", optString);
        MessageDigest messageDigest2 = MessageDigest.getInstance("SHA-256");
        byte[] bytes4 = y.getBytes(I3.a);
        AbstractC0487x9.n(bytes4, "getBytes(...)");
        digest = messageDigest2.digest(bytes4);
        AbstractC0487x9.n(digest, "digest(...)");
        byte[] e2 = e("CRG-V2-REQ|" + str + "|crg-enc-v2-2026-06|com.ffrt.proxyread", bArr, digest);
        String quote4 = JSONObject.quote("com.ffrt.proxyread");
        String quote22 = JSONObject.quote("crg-enc-v2-2026-06");
        String quote32 = JSONObject.quote(str);
        StringBuilder sb2 = new StringBuilder("{\"appId\":");
        sb2.append(quote4);
        sb2.append(",\"encKid\":");
        sb2.append(quote22);
        sb2.append(",\"endpoint\":");
        String k2 = Ve.k(sb2, quote32, ",\"protocol\":2}");
        Charset charset2 = I3.a;
        byte[] bytes22 = k2.getBytes(charset2);
        AbstractC0487x9.n(bytes22, "getBytes(...)");
        byte[] bArr22 = new byte[12];
        secureRandom.nextBytes(bArr22);
        Cipher cipher2 = Cipher.getInstance("AES/GCM/NoPadding");
        cipher2.init(1, new SecretKeySpec(e2, "AES"), new GCMParameterSpec(128, bArr22));
        cipher2.updateAAD(bytes22);
        String jSONObject32 = jSONObject.toString();
        AbstractC0487x9.n(jSONObject32, "toString(...)");
        byte[] bytes32 = jSONObject32.getBytes(charset2);
        AbstractC0487x9.n(bytes32, "getBytes(...)");
        byte[] doFinal2 = cipher2.doFinal(bytes32);
        AbstractC0487x9.l(doFinal2);
        byte[] copyOf2 = Arrays.copyOf(doFinal2, doFinal2.length - 16);
        AbstractC0487x9.n(copyOf2, "copyOf(...)");
        byte[] n02 = H2.n0(doFinal2, doFinal2.length - 16, doFinal2.length);
        JSONObject put3 = new JSONObject().put("protocol", 2).put("encKid", "crg-enc-v2-2026-06").put("alg", "X25519-HKDF-SHA256+A256GCM").put("endpoint", str);
        byte[] encoded2 = x25519PublicKeyParameters.getEncoded();
        AbstractC0487x9.n(encoded2, "getEncoded(...)");
        JSONObject put22 = put3.put("clientEphemeralPublic", c(encoded2)).put("iv", c(bArr22)).put("aad", c(bytes22)).put("ciphertext", c(copyOf2)).put("tag", c(n02)).put("saltContext", jSONObject2);
        AbstractC0487x9.l(put22);
        return new C0380s2(put22, bArr, digest, 4);
    }

    public static H1 j(String str) {
        boolean z = false;
        List I0 = AbstractC0413tf.I0(str, new char[]{'.'});
        if (I0.size() != 3) {
            throw new C0244l5("JWS", "malformed");
        }
        byte[] b2 = b((String) I0.get(0));
        Charset charset = I3.a;
        return new H1(new JSONObject(new String(b2, charset)), new JSONObject(new String(b((String) I0.get(1)), charset)), 8, z);
    }
}
