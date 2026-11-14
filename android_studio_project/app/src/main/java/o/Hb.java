package o;

import android.os.SystemClock;
import android.util.Log;
import java.util.HashMap;
import java.util.LinkedHashSet;
import org.bouncycastle.asn1.cmc.BodyPartID;
//import org.conscrypt.BuildConfig // replaced by app BuildConfig

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Hb {
    public static volatile boolean b;
    public static volatile long c;
    public static volatile long d;
    public static volatile long g;
    public static volatile boolean h;
    public static volatile boolean i;
    public static volatile boolean j;
    public static volatile int k;
    public static final byte[] a = {0, 9, 18, 27, 36, 45, 54, 63, 72, 65, 90, 83, 108, 101, 126, 119, 25, 16, 11, 2, 61, 52, 47, 38, 81, 88, 67, 74, 117, 124, 103, 110, 50, 59, 32, 41, 22, 31, 4, 13, 122, 115, 104, 97, 94, 87, 76, 69, 43, 34, 57, 48, 15, 6, 29, 20, 99, 106, 113, 120, 71, 78, 85, 92, 100, 109, 118, Byte.MAX_VALUE, 64, 73, 82, 91, 44, 37, 62, 55, 8, 1, 26, 19, 125, 116, 111, 102, 89, 80, 75, 66, 53, 60, 39, 46, 17, 24, 3, 10, 86, 95, 68, 77, 114, 123, 96, 105, 30, 23, 12, 5, 58, 51, 40, 33, 79, 70, 93, 84, 107, 98, 121, 112, 7, 14, 21, 28, 35, 42, 49, 56, 65, 72, 83, 90, 101, 108, 119, 126, 9, 0, 27, 18, 45, 36, 63, 54, 88, 81, 74, 67, 124, 117, 110, 103, 16, 25, 2, 11, 52, 61, 38, 47, 115, 122, 97, 104, 87, 94, 69, 76, 59, 50, 41, 32, 31, 22, 13, 4, 106, 99, 120, 113, 78, 71, 92, 85, 34, 43, 48, 57, 6, 15, 20, 29, 37, 44, 55, 62, 1, 8, 19, 26, 109, 100, Byte.MAX_VALUE, 118, 73, 64, 91, 82, 60, 53, 46, 39, 24, 17, 10, 3, 116, 125, 102, 111, 80, 89, 66, 75, 23, 30, 5, 12, 51, 58, 33, 40, 95, 86, 77, 68, 123, 114, 105, 96, 14, 7, 28, 21, 42, 35, 56, 49, 70, 79, 84, 93, 98, 107, 112, 121};
    public static volatile String e = BuildConfig.FLAVOR;

    /* renamed from: f, reason: collision with root package name */
    public static volatile String f102f = BuildConfig.FLAVOR;
    public static final HashMap l = new HashMap(16);
    public static final LinkedHashSet m = new LinkedHashSet(80);
    public static final LinkedHashSet n = new LinkedHashSet(64);

    /* renamed from: o, reason: collision with root package name */
    public static final Object f103o = new Object();

    public static void a(byte[] bArr) {
        if (bArr.length >= 3) {
            int i2 = 0;
            while (i2 < bArr.length) {
                int i3 = bArr[i2] & 255;
                if (129 <= i3 && i3 < 193 && i2 + 3 < bArr.length && (bArr[i2 + 1] & 255) == 128 && (bArr[i2 + 2] & 255) == 128) {
                    d(i2, bArr, false);
                    i2 += 4;
                } else {
                    Cc i4 = i(bArr, i2);
                    if (i4 != null) {
                        Number number = (Number) i4.a;
                        if (c(number.longValue())) {
                            Number number2 = (Number) i4.b;
                            if (number2.intValue() > i2) {
                                g(number.longValue());
                                i2 = number2.intValue();
                            }
                        }
                    }
                    i2++;
                }
            }
        }
    }

    public static String b(byte[] bArr, int i2) {
        int length = bArr.length;
        if (i2 > length) {
            i2 = length;
        }
        StringBuilder sb = new StringBuilder(i2 * 2);
        for (int i3 = 0; i3 < i2; i3++) {
            byte b2 = bArr[i3];
            sb.append(Character.forDigit((b2 & 255) >> 4, 16));
            sb.append(Character.forDigit(b2 & 15, 16));
        }
        String sb2 = sb.toString();
        AbstractC0487x9.n(sb2, "toString(...)");
        return sb2;
    }

    public static boolean c(long j2) {
        if (j2 <= 0 || j2 > 2147483647L) {
            return false;
        }
        int i2 = (int) (255 & j2);
        int i3 = (int) (j2 >>> 24);
        long j3 = (j2 >>> 8) & 65535;
        if (1 > i2 || i2 >= 81 || 1 > i3 || i3 >= 128 || j3 != 0) {
            return false;
        }
        return true;
    }

    public static void d(int i2, byte[] bArr, boolean z) {
        AbstractC0487x9.o(bArr, "b");
        Cc i3 = i(bArr, i2);
        if (i3 != null && ((Number) i3.a).longValue() > 0 && c(((Number) i3.a).longValue())) {
            g(((Number) i3.a).longValue());
            int i4 = bArr[i2] & Byte.MAX_VALUE;
            if (1 <= i4 && i4 < 51) {
                synchronized (f103o) {
                    l.put(Integer.valueOf(i4), i3.a);
                }
            }
            if (z) {
                f(((Number) i3.a).longValue());
            }
        }
    }

    public static void e(int i2, byte[] bArr, boolean z) {
        String str;
        int size;
        boolean remove;
        int size2;
        Long l2;
        boolean add;
        int size3;
        boolean z2 = false;
        if (z && i2 == 101) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                l2 = null;
                if (i3 < 2) {
                    Cc i5 = i(bArr, i4);
                    if (i5 == null) {
                        break;
                    }
                    i4 = ((Number) i5.b).intValue();
                    i3++;
                } else {
                    Cc i6 = i(bArr, i4);
                    if (i6 != null) {
                        l2 = Long.valueOf(((Number) i6.a).longValue() & BodyPartID.bodyIdMax);
                    }
                }
            }
            if (l2 != null) {
                long longValue = l2.longValue();
                if (longValue == 0) {
                    return;
                }
                synchronized (f103o) {
                    try {
                        if (j) {
                            m.clear();
                            j = false;
                        }
                        LinkedHashSet linkedHashSet = m;
                        add = linkedHashSet.add(l2);
                        size3 = linkedHashSet.size();
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (add) {
                    Log.w("ffrt-moco", "entity add id=" + longValue + " n=" + size3);
                    return;
                }
                return;
            }
            return;
        }
        if (z && i2 == 102) {
            Cc i7 = i(bArr, 0);
            if (i7 != null) {
                long longValue2 = ((Number) i7.a).longValue();
                synchronized (f103o) {
                    LinkedHashSet linkedHashSet2 = m;
                    remove = linkedHashSet2.remove(Long.valueOf(longValue2));
                    size2 = linkedHashSet2.size();
                }
                if (remove) {
                    Log.w("ffrt-moco", "entity del id=" + longValue2 + " n=" + size2);
                    return;
                }
                return;
            }
            return;
        }
        if (z && i2 == 103) {
            synchronized (f103o) {
                LinkedHashSet linkedHashSet3 = m;
                size = linkedHashSet3.size();
                linkedHashSet3.clear();
                j = true;
            }
            i = false;
            Log.w("ffrt-moco", "match end entities=" + size);
            return;
        }
        if (z || i2 != 2001) {
            if (z) {
                if (i2 != 104 && i2 != 105) {
                    return;
                }
            } else {
                return;
            }
        }
        Cc i8 = i(bArr, 0);
        if (i8 != null) {
            long longValue3 = ((Number) i8.a).longValue();
            if (longValue3 == 0) {
                return;
            }
            if (c != longValue3) {
                z2 = true;
            }
            f(longValue3);
            if (z2) {
                if (z) {
                    str = "S2C";
                } else {
                    str = "C2S";
                }
                Log.w("ffrt-moco", "local cmd=" + i2 + " dir=" + str + " id=" + longValue3);
            }
        }
    }

    public static void f(long j2) {
        if (j2 <= 0) {
            return;
        }
        g(j2);
        if (c != j2) {
            c = j2;
            int i2 = (int) (127 & j2);
            if (1 <= i2 && i2 < 51) {
                synchronized (f103o) {
                    l.put(Integer.valueOf(i2), Long.valueOf(j2));
                }
            }
        }
    }

    public static void g(long j2) {
        if (!c(j2)) {
            return;
        }
        synchronized (f103o) {
            LinkedHashSet linkedHashSet = n;
            if (linkedHashSet.size() >= 80) {
                return;
            }
            if (!linkedHashSet.add(Long.valueOf(j2))) {
                return;
            }
            int size = linkedHashSet.size();
            if (size == 2 || size == 10 || size == 50) {
                Log.w("ffrt-moco", "ents " + size + " last=" + j2);
            }
        }
    }

    public static int h(byte[] bArr, int i2, long j2) {
        long j3 = j2 & BodyPartID.bodyIdMax;
        while (j3 >= 128) {
            bArr[i2] = (byte) (128 | (127 & j3));
            i2++;
            j3 >>>= 7;
        }
        bArr[i2] = (byte) j3;
        return i2 + 1;
    }

    public static Cc i(byte[] bArr, int i2) {
        if (i2 >= 0 && i2 < bArr.length) {
            long j2 = 0;
            int i3 = 0;
            while (i2 < bArr.length) {
                byte b2 = bArr[i2];
                i2++;
                j2 |= (b2 & Byte.MAX_VALUE) << i3;
                if ((b2 & 255) < 128) {
                    return new Cc(Long.valueOf(j2), Integer.valueOf(i2));
                }
                i3 += 7;
                if (i3 > 35) {
                    break;
                }
            }
        }
        return null;
    }

    public static void j() {
        synchronized (f103o) {
            l.clear();
            m.clear();
            n.clear();
        }
        c = 0L;
        d = 0L;
        e = BuildConfig.FLAVOR;
        f102f = BuildConfig.FLAVOR;
        g = 0L;
        h = false;
        i = false;
        j = false;
        k = 0;
    }

    public static void k(boolean z) {
        if (b && !z) {
            h = true;
        }
        b = z;
        if (!z) {
            e = BuildConfig.FLAVOR;
        }
    }

    public static void l(String str) {
        long uptimeMillis = SystemClock.uptimeMillis();
        if (str.equals(f102f) && uptimeMillis - g < 2000) {
            return;
        }
        f102f = str;
        g = uptimeMillis;
        long j2 = c;
        Tg tg = Tg.a;
        Log.w("ffrt-moco", "skip " + str + " pid=" + j2 + " perm=" + Tg.p() + " on=" + b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0292  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x029a  */
    /* JADX WARN: Type inference failed for: r2v4, types: [boolean] */
    /* JADX WARN: Type inference failed for: r4v13, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v7, types: [o.V6] */
    /* JADX WARN: Type inference failed for: r4v8, types: [java.util.List, java.util.Collection] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List m(java.lang.String r32) {
        /*
            Method dump skipped, instructions count: 1228
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: o.Hb.m(java.lang.String):java.util.List");
    }
}
