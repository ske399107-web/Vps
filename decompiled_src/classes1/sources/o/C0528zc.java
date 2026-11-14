package o;

import java.net.DatagramSocket;

/* renamed from: o.zc, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0528zc {
    public final String a;
    public final int b;
    public final String c;
    public final int d;
    public final DatagramSocket e;

    public C0528zc(String str, int i, String str2, int i2, DatagramSocket datagramSocket) {
        AbstractC0487x9.o(str, "srcIp");
        AbstractC0487x9.o(str2, "dstIp");
        this.a = str;
        this.b = i;
        this.c = str2;
        this.d = i2;
        this.e = datagramSocket;
    }
}
