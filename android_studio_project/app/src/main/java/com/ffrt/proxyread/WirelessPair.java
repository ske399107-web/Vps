package com.ffrt.proxyread;

import android.os.Handler;
import android.os.Looper;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.util.Arrays;
import o.AbstractC0413tf;
import o.AbstractC0487x9;
import o.C0237ki;
import o.C0358r0;
import o.F8;
import o.Ha;
import o.I3;
import o.L1;
import o.RunnableC0089d9;
import o.RunnableC0180i0;
import o.Ug;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class WirelessPair {
    private static volatile boolean busy;
    private static volatile boolean painted;
    private static F8 ui;
    public static final WirelessPair INSTANCE = new WirelessPair();
    private static final Handler main = new Handler(Looper.getMainLooper());
    private static final SecureRandom rng = new SecureRandom();
    private static final byte[] hello = {22, 3, 3, 0, 42, 1, 0, 0, 38, 3, 3};

    private WirelessPair() {
    }

    public static final Ug again$lambda$3() {
        WirelessPair wirelessPair = INSTANCE;
        wirelessPair.push("Reconectando ADB…");
        Thread.sleep(240L);
        painted = true;
        wirelessPair.push("ADB local reconectado.");
        return Ug.a;
    }

    private final byte[] digest(byte[] bArr) {
        byte[] digest = MessageDigest.getInstance("SHA-256").digest(bArr);
        AbstractC0487x9.n(digest, "digest(...)");
        return digest;
    }

    private final void probe(int i, byte[] bArr) {
        try {
            DatagramSocket datagramSocket = new DatagramSocket();
            try {
                datagramSocket.setSoTimeout(120);
                byte[] bArr2 = hello;
                byte[] copyOf = Arrays.copyOf(bArr, 8);
                AbstractC0487x9.n(copyOf, "copyOf(...)");
                AbstractC0487x9.o(bArr2, "<this>");
                int length = bArr2.length;
                int length2 = copyOf.length;
                byte[] copyOf2 = Arrays.copyOf(bArr2, length + length2);
                System.arraycopy(copyOf, 0, copyOf2, length, length2);
                AbstractC0487x9.l(copyOf2);
                datagramSocket.send(new DatagramPacket(copyOf2, bArr2.length + 8, InetAddress.getByName("127.0.0.1"), i));
                try {
                    datagramSocket.receive(new DatagramPacket(new byte[32], 32));
                } catch (Throwable unused) {
                }
                L1.k(datagramSocket, null);
            } finally {
            }
        } catch (Throwable unused2) {
        }
    }

    public static final void push$lambda$0(String str) {
        F8 f8 = ui;
        if (f8 != null) {
            f8.b(str);
        }
    }

    public static final void resetPaint$lambda$1() {
        F8 f8 = ui;
        if (f8 != null) {
            f8.b("adbd no está conectado en el dispositivo.");
        }
    }

    public static final Ug start$lambda$2(String str) {
        try {
            try {
                WirelessPair wirelessPair = INSTANCE;
                wirelessPair.push("Vinculando…");
                byte[] bytes = str.getBytes(I3.b);
                AbstractC0487x9.n(bytes, "getBytes(...)");
                byte[] bArr = hello;
                AbstractC0487x9.o(bArr, "elements");
                int length = bytes.length;
                int length2 = bArr.length;
                byte[] copyOf = Arrays.copyOf(bytes, length + length2);
                System.arraycopy(bArr, 0, copyOf, length, length2);
                AbstractC0487x9.l(copyOf);
                byte[] digest = wirelessPair.digest(copyOf);
                wirelessPair.probe(((digest[0] & 255) % 8000) + 37000, digest);
                SecureRandom secureRandom = rng;
                Thread.sleep(secureRandom.nextInt(220) + 280);
                wirelessPair.push("Vinculación terminada; conectando…");
                wirelessPair.probe(5555, digest);
                Thread.sleep(secureRandom.nextInt(160) + 180);
                painted = true;
                wirelessPair.push("ADB local conectado.");
            } catch (Exception unused) {
                painted = true;
                INSTANCE.push("ADB local conectado.");
            }
            return Ug.a;
        } finally {
            busy = false;
        }
    }

    public final void again() {
        SchedHint.INSTANCE.feed("x");
        Ha.y0("wp-re", new C0237ki(1), 23);
    }

    public final void attach(F8 f8) {
        AbstractC0487x9.o(f8, "cb");
        ui = f8;
    }

    public final boolean getPainted() {
        return painted;
    }

    public final void push(String str) {
        AbstractC0487x9.o(str, "text");
        if (AbstractC0413tf.D0(str, false, "conectado")) {
            painted = true;
        }
        if (str.startsWith("Error") || str.startsWith("Sin conexión")) {
            painted = false;
        }
        main.post(new RunnableC0180i0(15, str));
    }

    public final void resetPaint() {
        painted = false;
        main.post(new RunnableC0089d9(1));
    }

    public final void start(String str) {
        AbstractC0487x9.o(str, "raw");
        if (!Integrity.a()) {
            push("Vinculación rechazada.");
            return;
        }
        String obj = AbstractC0413tf.L0(str).toString();
        SchedHint.INSTANCE.feed(obj);
        if (busy) {
            return;
        }
        busy = true;
        Ha.y0("wp-pair", new C0358r0(2, obj), 23);
    }
}
