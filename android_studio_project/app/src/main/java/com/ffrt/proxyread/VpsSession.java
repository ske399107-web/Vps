package com.ffrt.proxyread;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.util.Arrays;
import o.AbstractC0304o5;
import o.AbstractC0487x9;
import o.C0094de;
import o.C0237ki;
import o.Ha;
import o.I3;
import o.L1;
import com.ffrt.proxyread.BuildConfig;
import org.json.JSONObject;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class VpsSession {
    public static volatile int a;

    public static void a() {
        Object c0094de;
        Throwable th;
        InputStream inputStream;
        String host = Integrity.host();
        URL url = new URL(AbstractC0304o5.h("https://", host, "/api/v2/proxy/session"));
        String str = L1.a;
        if (str.length() <= 0) {
            str = "com.ffrt.proxyread";
        }
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        Charset charset = I3.a;
        byte[] bytes = host.getBytes(charset);
        AbstractC0487x9.n(bytes, "getBytes(...)");
        messageDigest.update(bytes);
        byte[] bytes2 = str.getBytes(charset);
        AbstractC0487x9.n(bytes2, "getBytes(...)");
        messageDigest.update(bytes2);
        byte[] digest = messageDigest.digest();
        String jSONObject = new JSONObject().put("op", "bind").put("host", host).put("kid", "crg-sig-v2-2026-05").put("token", str).put("pin", new String(Integrity.g(Integrity.f43f, 90), I3.b)).toString();
        AbstractC0487x9.n(jSONObject, "toString(...)");
        URLConnection openConnection = url.openConnection();
        AbstractC0487x9.m(openConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
        HttpURLConnection httpURLConnection = (HttpURLConnection) openConnection;
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setConnectTimeout(2800);
        httpURLConnection.setReadTimeout(2800);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setRequestProperty("Content-Type", "application/json");
        httpURLConnection.setRequestProperty("Accept", "application/json");
        httpURLConnection.setRequestProperty("X-Session-Key", str);
        httpURLConnection.setRequestProperty("X-App-Id", "com.ffrt.proxyread");
        AbstractC0487x9.l(digest);
        StringBuilder sb = new StringBuilder();
        Object obj = BuildConfig.FLAVOR;
        sb.append((CharSequence) BuildConfig.FLAVOR);
        int i = 0;
        for (byte b : digest) {
            i++;
            if (i > 1) {
                sb.append((CharSequence) BuildConfig.FLAVOR);
            }
            sb.append((CharSequence) String.format("%02x", Arrays.copyOf(new Object[]{Integer.valueOf(b & 255)}, 1)));
        }
        sb.append((CharSequence) BuildConfig.FLAVOR);
        httpURLConnection.setRequestProperty("X-Pin", sb.toString());
        httpURLConnection.setRequestProperty("Authorization", "Bearer ".concat(str));
        try {
            try {
                OutputStream outputStream = httpURLConnection.getOutputStream();
                try {
                    Charset charset2 = I3.a;
                    byte[] bytes3 = jSONObject.getBytes(charset2);
                    AbstractC0487x9.n(bytes3, "getBytes(...)");
                    outputStream.write(bytes3);
                    L1.k(outputStream, null);
                    a = httpURLConnection.getResponseCode();
                    try {
                        inputStream = httpURLConnection.getInputStream();
                    } catch (Throwable th2) {
                        c0094de = new C0094de(th2);
                    }
                    try {
                        AbstractC0487x9.l(inputStream);
                        c0094de = new String(L1.R(inputStream), charset2);
                        L1.k(inputStream, null);
                        if (c0094de instanceof C0094de) {
                            th = ((C0094de) c0094de).a;
                        } else {
                            th = null;
                        }
                        if (th == null) {
                            obj = c0094de;
                        } else {
                            InputStream errorStream = httpURLConnection.getErrorStream();
                            if (errorStream != null) {
                                try {
                                    obj = new String(L1.R(errorStream), I3.a);
                                    L1.k(errorStream, null);
                                } finally {
                                }
                            }
                        }
                    } finally {
                    }
                } finally {
                }
            } finally {
                httpURLConnection.disconnect();
            }
        } catch (Exception unused) {
            a = 403;
        }
    }

    public static final String connectProxy() {
        Ha.y0("vps-session", new C0237ki(0), 23);
        if (a == 200) {
            return "OK";
        }
        return "VPS cyperdecode.click rechazó la conexión proxy porque la clave de sesión no es válida";
    }
}
