package o;

import android.util.Log;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import org.bouncycastle.pqc.crypto.rainbow.GF2Field;
//import org.conscrypt.BuildConfig // replaced by app BuildConfig

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Pg {
    public int b;
    public volatile boolean d;
    public boolean h;
    public int i;
    public int j;
    public int k;
    public final int[] a = new int[256];
    public volatile int c = -1;
    public final ArrayList e = new ArrayList(8);

    /* renamed from: f, reason: collision with root package name */
    public volatile byte[] f137f = new byte[0];
    public volatile String g = BuildConfig.FLAVOR;

    public static void b(Pg pg, byte[] bArr, int i, int i2, StringBuilder sb) {
        int i3;
        char c;
        int a;
        int i4;
        int i5;
        int i6;
        byte[] n0 = H2.n0(bArr, i, i2);
        Iterator it = Tg.a.g().iterator();
        while (true) {
            i3 = 0;
            c = 127;
            if (!it.hasNext()) {
                break;
            }
            byte[] bArr2 = (byte[]) it.next();
            pg.a(bArr2);
            int length = n0.length;
            byte[] bArr3 = new byte[length];
            int min = Math.min(bArr2.length, n0.length);
            for (int i7 = 0; i7 < min; i7++) {
                bArr3[i7] = (byte) (n0[i7] ^ bArr2[i7]);
            }
            if (min < n0.length) {
                H2.j0(n0, bArr3, min, min, n0.length);
            }
            int a2 = Tg.a(bArr3, 0);
            if (4 <= a2 && a2 < 65 && (i6 = a2 + 4) <= length) {
                byte[] n02 = H2.n0(bArr3, 4, i6);
                int length2 = n02.length;
                while (i3 < length2) {
                    int i8 = n02[i3] & 255;
                    if (32 <= i8 && i8 < 127) {
                        i3++;
                    } else if (n02.length >= 16) {
                        pg.a(n02);
                        if (pg.f137f.length != 16) {
                            byte[] copyOf = Arrays.copyOf(n02, 16);
                            AbstractC0487x9.n(copyOf, "copyOf(...)");
                            pg.f137f = copyOf;
                            Tg tg = Tg.a;
                            Log.w("ffrt-moco", "hello zipsess=".concat(Tg.h(pg.f137f, 8)));
                        }
                        sb.append(" zipsess=");
                        Tg tg2 = Tg.a;
                        sb.append(Tg.h(n02, 16));
                    }
                }
                sb.append(" zipid=");
                sb.append(new String(n02, I3.a));
            }
        }
        int i9 = 0;
        int i10 = 0;
        while (true) {
            int i11 = i9 + 4;
            if (i11 > n0.length || i10 >= 4 || (a = Tg.a(n0, i9)) < 0 || a > 128 || (i4 = i11 + a) > n0.length) {
                break;
            }
            byte[] n03 = H2.n0(n0, i11, i4);
            int i12 = a + 4 + i9;
            int length3 = n03.length;
            int i13 = 0;
            while (true) {
                if (i13 < length3) {
                    int i14 = n03[i13] & 255;
                    if (32 > i14 || i14 >= c) {
                        break;
                    } else {
                        i13++;
                    }
                } else if (n03.length != 0) {
                    String str = new String(n03, I3.a);
                    if (pg.g.length() == 0) {
                        pg.g = str;
                    }
                    sb.append(" id=");
                    sb.append(str);
                    pg.a(n03);
                    StringBuilder sb2 = new StringBuilder();
                    int length4 = str.length();
                    for (int i15 = 0; i15 < length4; i15++) {
                        char charAt = str.charAt(i15);
                        if ("0123456789abcdefABCDEF".indexOf(charAt, 0) >= 0) {
                            sb2.append(charAt);
                        }
                    }
                    String sb3 = sb2.toString();
                    if (sb3.length() >= 32 && sb3.length() % 2 == 0) {
                        Tg tg3 = Tg.a;
                        byte[] bArr4 = new byte[sb3.length() / 2];
                        int i16 = 0;
                        while (i16 + 1 < sb3.length()) {
                            int i17 = i16 / 2;
                            int i18 = i16 + 2;
                            String substring = sb3.substring(i16, i18);
                            AbstractC0487x9.n(substring, "substring(...)");
                            L1.j(16);
                            bArr4[i17] = (byte) Integer.parseInt(substring, 16);
                            i16 = i18;
                        }
                        pg.a(bArr4);
                    }
                }
            }
            if (n03.length >= 16) {
                pg.a(n03);
                if (pg.f137f.length != 16) {
                    byte[] copyOf2 = Arrays.copyOf(n03, 16);
                    AbstractC0487x9.n(copyOf2, "copyOf(...)");
                    pg.f137f = copyOf2;
                    Tg tg4 = Tg.a;
                    Log.w("ffrt-moco", "hello session=".concat(Tg.h(pg.f137f, 8)));
                    sb.append(" session=");
                    sb.append(Tg.h(n03, 16));
                } else {
                    sb.append(" k=");
                    Tg tg5 = Tg.a;
                    int length5 = n03.length;
                    if (16 <= length5) {
                        length5 = 16;
                    }
                    sb.append(Tg.h(n03, length5));
                }
            } else if (n03.length != 0) {
                sb.append(" b");
                sb.append(i10);
                sb.append("=");
                Tg tg6 = Tg.a;
                sb.append(Tg.h(n03, n03.length));
                if (n03.length >= 8) {
                    byte[] copyOf3 = Arrays.copyOf(n03, 16);
                    AbstractC0487x9.n(copyOf3, "copyOf(...)");
                    H2.j0(n03, copyOf3, 0, 0, n03.length);
                    pg.a(copyOf3);
                }
            }
            i9 = i12 + 4;
            if (i9 <= n0.length) {
                int i19 = (n0[i12] & 255) | ((n0[i12 + 1] & 255) << 8);
                if (i9 <= n0.length) {
                    i5 = (n0[i12 + 2] & 255) | ((n0[i12 + 3] & 255) << 8);
                } else {
                    i5 = -1;
                }
                if (i19 >= 0 && i19 < 4097 && i5 >= 0 && i5 < 4097) {
                    sb.append(" ord=");
                    sb.append(i19);
                    sb.append("/");
                    sb.append(i5);
                    i10++;
                    c = 127;
                }
            }
            i9 = i12;
            i10++;
            c = 127;
        }
        if (n0.length >= 16) {
            byte[] copyOf4 = Arrays.copyOf(n0, 16);
            AbstractC0487x9.n(copyOf4, "copyOf(...)");
            pg.a(copyOf4);
        }
        int i20 = pg.c;
        if (i20 >= 0 && i20 < 256) {
            byte[] bArr5 = new byte[16];
            while (i3 < 16) {
                bArr5[i3] = (byte) pg.c;
                i3++;
            }
            pg.a(bArr5);
        }
    }

    public static final int e(byte[] bArr, int i, Pg pg, int i2) {
        return (bArr[i + i2] & 255) ^ pg.c;
    }

    public final void a(byte[] bArr) {
        if (bArr.length < 16) {
            return;
        }
        if (bArr.length != 16) {
            bArr = Arrays.copyOf(bArr, 16);
            AbstractC0487x9.n(bArr, "copyOf(...)");
        }
        synchronized (this.e) {
            try {
                ArrayList arrayList = this.e;
                if (arrayList == null || !arrayList.isEmpty()) {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        if (Arrays.equals((byte[]) it.next(), bArr)) {
                            break;
                        }
                    }
                }
                this.e.add(bArr);
                int i = Tg.p;
                Tg tg = Tg.a;
                Tg.p = i + 1;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void c(byte[] bArr, int i, int i2) {
        if (this.c >= 0 && i >= 8) {
            int i3 = i2 + 2;
            if ((this.c ^ (bArr[i3] & 255)) == 0) {
                int i4 = this.c;
                if ((((i4 ^ (bArr[i2 + 7] & GF2Field.MASK)) << 8) | ((bArr[i2 + 6] & GF2Field.MASK) ^ i4)) == i - 8) {
                    this.i++;
                }
            }
            int i5 = this.c ^ 1;
            if (((bArr[i3] & GF2Field.MASK) ^ i5) == 0) {
                if (((((bArr[i2 + 7] & GF2Field.MASK) ^ i5) << 8) | ((bArr[i2 + 6] & GF2Field.MASK) ^ i5)) == i - 8) {
                    this.j++;
                }
            }
            int i6 = this.j;
            if (i6 >= 10 && i6 > this.i + 4) {
                int i7 = this.c;
                this.c = i5;
                this.d = true;
                this.i = this.j;
                this.j = 0;
                if (!this.h) {
                    this.h = true;
                    int i8 = AbstractC0408ta.a;
                    L1.j(16);
                    String num = Integer.toString(i7, 16);
                    AbstractC0487x9.n(num, "toString(...)");
                    L1.j(16);
                    String num2 = Integer.toString(i5, 16);
                    AbstractC0487x9.n(num2, "toString(...)");
                    AbstractC0408ta.a("xor sửa 0x" + num + " → 0x" + num2 + " (NONE length)");
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x00cc, code lost:
    
        if (r11 != false) goto L75;
     */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00ac A[Catch: all -> 0x008d, TryCatch #0 {, blocks: (B:8:0x0012, B:11:0x0017, B:14:0x0067, B:19:0x0070, B:21:0x0077, B:23:0x0080, B:26:0x0086, B:37:0x00ac, B:41:0x00b9, B:56:0x00d5, B:58:0x00e6, B:59:0x0118, B:63:0x0104, B:70:0x0094, B:71:0x0031, B:73:0x0041, B:74:0x0045, B:80:0x0051, B:84:0x0059, B:87:0x005c, B:89:0x0060, B:91:0x0065), top: B:7:0x0012 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00d2 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00d4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized o.Og d(byte[] r19, int r20, int r21) {
        /*
            Method dump skipped, instructions count: 303
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: o.Pg.d(byte[], int, int):o.Og");
    }
}
