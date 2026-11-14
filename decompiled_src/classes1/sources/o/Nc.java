package o;

import android.os.SystemClock;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class Nc {
    public static volatile String a = "";
    public static volatile float b = Float.NaN;
    public static volatile float c = Float.NaN;
    public static volatile long d = 0;
    public static volatile int g = 0;
    public static volatile long h = 0;
    public static volatile int i = 1;
    public static volatile int j = 1;
    public static int k = 1;

    /* renamed from: o, reason: collision with root package name */
    public static volatile long f129o;
    public static volatile float p;
    public static final float[] e = new float[16];

    /* renamed from: f, reason: collision with root package name */
    public static final int[] f128f = new int[16];
    public static final HashSet l = new HashSet();
    public static final HashSet m = new HashSet();
    public static final Object n = new Object();

    public static void a(int i2, Mc mc) {
        boolean z;
        float f2;
        ConcurrentHashMap concurrentHashMap;
        float f3;
        float f4;
        float f5;
        float f6;
        float f7;
        boolean isEmpty;
        boolean isEmpty2;
        int size;
        long uptimeMillis = SystemClock.uptimeMillis();
        int i3 = 1;
        if (g != 0 && mc.e == g && uptimeMillis - h < 800) {
            z = true;
        } else {
            z = false;
        }
        float f8 = b;
        if (!Float.isInfinite(f8) && !Float.isNaN(f8)) {
            f2 = (float) Math.hypot(mc.a - b, mc.c - c);
        } else {
            f2 = Float.NaN;
        }
        if (z) {
            i = i2;
            return;
        }
        if ((!Float.isInfinite(f2) && !Float.isNaN(f2) && f2 < 0.45f) || i2 == i) {
            return;
        }
        if (i2 > j) {
            j = i2;
        }
        l.add(Integer.valueOf(i2));
        if (k == 3) {
            HashSet hashSet = Ff.a;
            synchronized (hashSet) {
                isEmpty = hashSet.isEmpty();
            }
            if (isEmpty && !Float.isInfinite(f2) && !Float.isNaN(f2) && 0.5f <= f2 && f2 <= 28.0f) {
                HashSet hashSet2 = m;
                hashSet2.add(Integer.valueOf(i2));
                if (hashSet2.size() >= 3) {
                    synchronized (hashSet) {
                        isEmpty2 = hashSet.isEmpty();
                    }
                    if (isEmpty2 && 2 <= (size = hashSet2.size()) && size < 4) {
                        HashSet hashSet3 = Ff.c;
                        synchronized (hashSet3) {
                            hashSet3.clear();
                            hashSet3.addAll(hashSet2);
                        }
                        Set keySet = AbstractC0189i9.b.keySet();
                        AbstractC0487x9.n(keySet, "<get-keys>(...)");
                        Iterator it = keySet.iterator();
                        while (it.hasNext()) {
                            AbstractC0487x9.o((Integer) it.next(), "it");
                            if (!(!Ff.c(r3.intValue()))) {
                                it.remove();
                            }
                        }
                    }
                }
            }
        }
        if (k != 4 && Ff.c(i2)) {
            return;
        }
        int i4 = k;
        if (i4 == 2 && (1 > i2 || i2 >= 3)) {
            return;
        }
        if (i4 == 1 && (1 > i2 || i2 >= 3)) {
            return;
        }
        ConcurrentHashMap concurrentHashMap2 = AbstractC0189i9.b;
        float f9 = mc.a;
        float f10 = mc.b;
        float f11 = mc.c;
        long uptimeMillis2 = SystemClock.uptimeMillis();
        if (AbstractC0189i9.c == null || Math.hypot(f9 - r1.b, f11 - r1.d) >= 0.35d) {
            ConcurrentHashMap concurrentHashMap3 = AbstractC0189i9.b;
            C0087d7 c0087d7 = (C0087d7) concurrentHashMap3.get(Integer.valueOf(i2));
            if (c0087d7 != null) {
                float hypot = (float) Math.hypot(f9 - c0087d7.b, f11 - c0087d7.d);
                if (hypot > 8.0f) {
                    concurrentHashMap3.put(Integer.valueOf(i2), new C0087d7(i2, f9, f10, f11, 0.0f, 0.0f, 0.0f, uptimeMillis2));
                    AbstractC0189i9.a = uptimeMillis2;
                    return;
                }
                long j2 = uptimeMillis2 - c0087d7.h;
                if (j2 >= 8 || hypot >= 0.08f) {
                    f3 = f11;
                    f4 = f10;
                    float[] e2 = AbstractC0189i9.e(c0087d7.b, c0087d7.c, c0087d7.d, c0087d7.e, c0087d7.f197f, c0087d7.g, f9, f4, f3, j2, hypot);
                    f5 = e2[0];
                    f6 = e2[1];
                    concurrentHashMap = concurrentHashMap3;
                    f7 = e2[2];
                } else {
                    return;
                }
            } else {
                concurrentHashMap = concurrentHashMap3;
                f3 = f11;
                f4 = f10;
                int size2 = concurrentHashMap.size();
                int C = Ve.C(k);
                if (C != 0 && C != 1) {
                    if (C != 2) {
                        if (C == 3) {
                            i3 = 50;
                        } else {
                            throw new RuntimeException();
                        }
                    } else {
                        i3 = 4;
                    }
                }
                if (size2 < i3) {
                    f5 = 0.0f;
                    f6 = 0.0f;
                    f7 = 0.0f;
                } else {
                    return;
                }
            }
            concurrentHashMap.put(Integer.valueOf(i2), new C0087d7(i2, f9, f4, f3, f5, f6, f7, uptimeMillis2));
            AbstractC0189i9.a = uptimeMillis2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:78:0x010a, code lost:
    
        a(r5, r7);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean b(byte[] r17, int r18) {
        /*
            Method dump skipped, instructions count: 275
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: o.Nc.b(byte[], int):boolean");
    }

    public static void c(String str) {
        if (str.length() == 0 || str.equals(a)) {
            return;
        }
        synchronized (n) {
            try {
                if (str.equals(a)) {
                    return;
                }
                if (a.length() > 0) {
                    AbstractC0189i9.a();
                    byte[] bArr = Hb.a;
                    Hb.j();
                }
                a = str;
                b = Float.NaN;
                c = Float.NaN;
                g = 0;
                h = 0L;
                i = 1;
                j = 1;
                k = 1;
                l.clear();
                m.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:160:0x0247  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0306 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0307  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void d(byte[] r35) {
        /*
            Method dump skipped, instructions count: 1195
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: o.Nc.d(byte[]):void");
    }

    public static void e(boolean z, byte[] bArr, String str) {
        AbstractC0487x9.o(bArr, "pkt");
        AbstractC0487x9.o(str, "flowId");
        int length = bArr.length;
        if (!z) {
            c(str);
            Tg tg = Tg.a;
            byte[] i2 = Tg.i(bArr, length, str, false);
            if (i2.length == 0) {
                if (length == bArr.length) {
                    d(bArr);
                    return;
                } else {
                    d(H2.n0(bArr, 0, length));
                    return;
                }
            }
            d(i2);
            return;
        }
        synchronized (n) {
            c(str);
            Tg tg2 = Tg.a;
            byte[] i3 = Tg.i(bArr, length, str, true);
            if (i3.length != 0) {
                f(i3);
            }
        }
    }

    public static void f(byte[] bArr) {
        if (!b(bArr, 0) && bArr.length > 12 && (bArr[0] & 255) != 0 && (bArr[2] & 255) == 0) {
            b(bArr, 2);
        }
    }

    public static boolean g(float f2, float f3) {
        if (Float.isInfinite(f2) || Float.isNaN(f2) || Float.isInfinite(f3) || Float.isNaN(f3) || Math.hypot(f2, f3) < 0.3d || Math.abs(f2) > 8000.0f || Math.abs(f3) > 8000.0f) {
            return false;
        }
        return true;
    }

    public static Lc h(byte[] bArr, int i2) {
        if (i2 >= 0 && i2 < bArr.length) {
            long j2 = 0;
            int i3 = 0;
            while (i2 < bArr.length) {
                int i4 = bArr[i2] & 255;
                i2++;
                j2 |= (i4 & 127) << i3;
                if (i4 < 128) {
                    return new Lc(j2, i2);
                }
                i3 += 7;
                if (i3 > 35) {
                    break;
                }
            }
        }
        return null;
    }

    public static Mc i(byte[] bArr, int i2) {
        Lc h2;
        Lc h3;
        Lc h4 = h(bArr, i2);
        if (h4 == null || (h2 = h(bArr, h4.b)) == null || (h3 = h(bArr, h2.b)) == null) {
            return null;
        }
        float k2 = k(h4.a) * 0.001f;
        float k3 = k(h2.a) * 0.001f;
        float k4 = k(h3.a) * 0.001f;
        if (-50.0f > k3 || k3 > 500.0f || !g(k2, k4)) {
            return null;
        }
        return new Mc(k2, k3, k4, h3.b, j(bArr, i2));
    }

    public static int j(byte[] bArr, int i2) {
        int i3 = i2 + 3;
        if (i3 >= bArr.length) {
            return 0;
        }
        return ((bArr[i3] & 255) << 24) | ((bArr[i2 + 2] & 255) << 16) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8);
    }

    public static int k(long j2) {
        return (int) ((-(j2 & 1)) ^ (j2 >>> 1));
    }
}
