package o;

import android.util.Log;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.LinkedBlockingQueue;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* renamed from: o.yc, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0509yc {
    public final String a;
    public final int b;
    public final String c;
    public final int d;
    public final LinkedBlockingQueue e;

    /* renamed from: f, reason: collision with root package name */
    public long f301f;
    public volatile long g;
    public Socket h;
    public volatile boolean i;
    public volatile boolean j;
    public volatile boolean k;
    public volatile boolean l;
    public int m;
    public byte[] n;

    /* renamed from: o, reason: collision with root package name */
    public byte[] f302o;

    public C0509yc(String str, int i, String str2, int i2, long j) {
        AbstractC0487x9.o(str, "srcIp");
        AbstractC0487x9.o(str2, "dstIp");
        this.a = str;
        this.b = i;
        this.c = str2;
        this.d = i2;
        this.e = new LinkedBlockingQueue(2048);
        this.g = BodyPartID.bodyIdMax & (j + 1);
        this.m = 1460;
        this.n = new byte[0];
        this.f302o = new byte[0];
    }

    public static byte[] a(byte[] bArr, byte[] bArr2) {
        if (bArr.length == 0) {
            byte[] copyOf = Arrays.copyOf(bArr2, bArr2.length);
            AbstractC0487x9.n(copyOf, "copyOf(...)");
            return copyOf;
        }
        byte[] bArr3 = new byte[bArr.length + bArr2.length];
        H2.l0(0, 14, bArr, bArr3);
        H2.l0(bArr.length, 12, bArr2, bArr3);
        return bArr3;
    }

    public static boolean c(char c) {
        if (('0' <= c && c < ':') || (('a' <= c && c < 'g') || ('A' <= c && c < 'G'))) {
            return true;
        }
        return false;
    }

    public static byte[] d(String str) {
        byte[] bArr = new byte[16];
        int i = 0;
        while (i < 32) {
            int i2 = i / 2;
            int i3 = i + 2;
            String substring = str.substring(i, i3);
            AbstractC0487x9.n(substring, "substring(...)");
            L1.j(16);
            bArr[i2] = (byte) Integer.parseInt(substring, 16);
            i = i3;
        }
        return bArr;
    }

    public final void b() {
        this.l = true;
        try {
            Socket socket = this.h;
            if (socket != null) {
                socket.close();
            }
        } catch (Throwable unused) {
        }
    }

    public final void e(String str, byte[] bArr) {
        byte[] a;
        int i;
        char charAt;
        char charAt2;
        Object c0094de;
        Object c0094de2;
        char c;
        int i2;
        int i3 = 32;
        char c2 = 6;
        int i4 = this.d;
        if (i4 != 443 && i4 != 80 && i4 != 853) {
            if (bArr.length == 22 || bArr.length == 38) {
                int i5 = ((bArr[2] & 255) << 24) | ((bArr[3] & 255) << 16) | ((bArr[4] & 255) << 8) | (bArr[5] & 255);
                if (i5 == 16 && bArr.length >= 22) {
                    Tg.a.b("tcp16", H2.n0(bArr, 6, 22));
                } else if (i5 == 32 && bArr.length >= 38) {
                    Tg tg = Tg.a;
                    tg.b("tcp32a", H2.n0(bArr, 6, 22));
                    tg.b("tcp32b", H2.n0(bArr, 22, 38));
                }
            }
            if (bArr.length == 16) {
                Tg.a.b("tcpraw16", bArr);
            }
            if (str.equals("C2S")) {
                a = a(this.n, bArr);
                int length = a.length - 4096;
                if (length < 0) {
                    length = 0;
                }
                this.n = H2.n0(a, length, a.length);
            } else {
                a = a(this.f302o, bArr);
                int length2 = a.length - 4096;
                if (length2 < 0) {
                    length2 = 0;
                }
                this.f302o = H2.n0(a, length2, a.length);
            }
            int i6 = 0;
            while (true) {
                int i7 = i6 + 22;
                if (i7 > a.length) {
                    break;
                }
                int i8 = ((a[i6 + 3] & 255) << 16) | ((a[i6 + 2] & 255) << 24) | ((a[i6 + 4] & 255) << 8) | (a[i6 + 5] & 255);
                if (i8 == 16) {
                    Tg.a.b("tcp-stream16", H2.n0(a, i6 + 6, i7));
                } else if (i8 == 32 && (i2 = i6 + 38) <= a.length) {
                    Tg tg2 = Tg.a;
                    tg2.b("tcp-stream32a", H2.n0(a, i6 + 6, i7));
                    tg2.b("tcp-stream32b", H2.n0(a, i7, i2));
                }
                i6++;
            }
            StringBuilder sb = new StringBuilder(a.length);
            for (byte b : a) {
                int i9 = b & 255;
                if (32 <= i9 && i9 < 127) {
                    c = (char) i9;
                } else {
                    c = ' ';
                }
                sb.append(c);
            }
            String sb2 = sb.toString();
            ArrayList arrayList = new ArrayList();
            int i10 = 0;
            while (true) {
                int i11 = i10 + 32;
                if (i11 > sb2.length()) {
                    break;
                }
                for (int i12 = 0; i12 < 32; i12++) {
                    char charAt3 = sb2.charAt(i10 + i12);
                    if (('0' > charAt3 || charAt3 >= ':') && (('a' > charAt3 || charAt3 >= 'g') && ('A' > charAt3 || charAt3 >= 'G'))) {
                        i10++;
                        break;
                    }
                }
                String substring = sb2.substring(i10, i11);
                AbstractC0487x9.n(substring, "substring(...)");
                arrayList.add(new Cc(Integer.valueOf(i10), substring));
                Tg.a.b("tcp-hex", d(substring));
                i10 = i11;
            }
            int i13 = 0;
            while (true) {
                int i14 = i13 + 6;
                if (i14 > a.length) {
                    break;
                }
                if ((a[i13] & 255) != 5) {
                    i13++;
                } else {
                    try {
                        c0094de2 = new String(a, i13 + 1, 5, I3.b);
                    } catch (Throwable th) {
                        c0094de2 = new C0094de(th);
                    }
                    if (c0094de2 instanceof C0094de) {
                        c0094de2 = null;
                    }
                    String str2 = (String) c0094de2;
                    if (str2 != null) {
                        Tg tg3 = Tg.a;
                        if (Tg.l(str2)) {
                            Iterator it = arrayList.iterator();
                            Cc cc = null;
                            while (it.hasNext()) {
                                Cc cc2 = (Cc) it.next();
                                int intValue = i13 - (((Number) cc2.a).intValue() + i3);
                                if (intValue >= 0 && intValue < 4097 && (cc == null || ((Number) cc2.a).intValue() > ((Number) cc.a).intValue())) {
                                    cc = cc2;
                                }
                                i3 = 32;
                            }
                            if (cc != null) {
                                Tg tg4 = Tg.a;
                                byte[] d = d((String) cc.b);
                                synchronized (tg4) {
                                    try {
                                        if (Tg.l(str2)) {
                                            byte[] copyOf = Arrays.copyOf(d, 16);
                                            AbstractC0487x9.n(copyOf, "copyOf(...)");
                                            String str3 = Tg.h(copyOf, 16) + ":" + str2;
                                            if (!AbstractC0487x9.b(Tg.s, str3)) {
                                                Tg.s = str3;
                                                int[] iArr = new int[5];
                                                for (int i15 = 0; i15 < 5; i15++) {
                                                    iArr[i15] = str2.charAt(i15) - '0';
                                                }
                                                Tg.e = iArr;
                                                Tg.j.clear();
                                                Tg.k = 0;
                                                Tg.f151f = 105;
                                                Tg.g.clear();
                                                Tg.h = 0;
                                                Tg.i = null;
                                                Tg.l = 0;
                                                Tg.m = 0;
                                                synchronized (Tg.n) {
                                                    Tg.f152o.clear();
                                                    Tg.q = -1;
                                                }
                                                Tg.p++;
                                                Tg.r = 40;
                                                tg4.b("match", copyOf);
                                                byte[] bArr2 = Hb.a;
                                                Hb.j();
                                                Log.w("ffrt-moco", "session " + Tg.h(copyOf, 8) + " perm=" + str2);
                                            }
                                        }
                                    } catch (Throwable th2) {
                                        throw th2;
                                    }
                                }
                                i13 = i14;
                                i3 = 32;
                                c2 = 6;
                            }
                            i13 = i14;
                            i3 = 32;
                            c2 = 6;
                        }
                    }
                    i13++;
                    i3 = 32;
                    c2 = 6;
                }
            }
            for (int i16 = 0; i16 + 6 <= a.length; i16++) {
                if ((a[i16] & 255) == 5) {
                    try {
                        c0094de = new String(a, i16 + 1, 5, I3.b);
                    } catch (Throwable th3) {
                        c0094de = new C0094de(th3);
                    }
                    if (c0094de instanceof C0094de) {
                        c0094de = null;
                    }
                    String str4 = (String) c0094de;
                    if (str4 != null) {
                        Tg tg5 = Tg.a;
                        if (Tg.l(str4)) {
                            tg5.c(str4, "tcp5");
                        }
                    }
                }
            }
            int i17 = 0;
            while (true) {
                int i18 = i17 + 5;
                if (i18 > sb2.length()) {
                    break;
                }
                String substring2 = sb2.substring(i17, i18);
                AbstractC0487x9.n(substring2, "substring(...)");
                Tg tg6 = Tg.a;
                if (Tg.l(substring2)) {
                    if (i17 == 0) {
                        charAt = ' ';
                    } else {
                        charAt = sb2.charAt(i17 - 1);
                    }
                    if (i18 >= sb2.length()) {
                        charAt2 = ' ';
                    } else {
                        charAt2 = sb2.charAt(i18);
                    }
                    if (!c(charAt) && !c(charAt2)) {
                        tg6.c(substring2, "tcp");
                    }
                }
                i17++;
            }
            if (this.d == 39698) {
                HashSet hashSet = Ff.a;
                if (bArr.length != 0) {
                    Ff.i(bArr);
                    Ff.b(bArr);
                    int length3 = bArr.length;
                    int i19 = Ff.e + length3;
                    byte[] bArr3 = Ff.d;
                    if (i19 > bArr3.length) {
                        int min = Math.min(Ff.e, 16384);
                        i = 0;
                        System.arraycopy(bArr3, Ff.e - min, bArr3, 0, min);
                        Ff.e = min;
                    } else {
                        i = 0;
                    }
                    if (Ff.e + length3 <= bArr3.length) {
                        System.arraycopy(bArr, i, bArr3, Ff.e, length3);
                        Ff.e += length3;
                        byte[] copyOf2 = Arrays.copyOf(bArr3, Ff.e);
                        AbstractC0487x9.n(copyOf2, "copyOf(...)");
                        Ff.i(copyOf2);
                        byte[] copyOf3 = Arrays.copyOf(bArr3, Ff.e);
                        AbstractC0487x9.n(copyOf3, "copyOf(...)");
                        Ff.b(copyOf3);
                    }
                }
            }
        }
    }
}
