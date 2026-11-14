package o;

import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: o.i9, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class AbstractC0189i9 {
    public static volatile long a;
    public static volatile C0087d7 c;
    public static final ConcurrentHashMap b = new ConcurrentHashMap();
    public static volatile float d = Float.NaN;
    public static volatile float e = Float.NaN;

    /* renamed from: f, reason: collision with root package name */
    public static volatile float f232f = Float.NaN;
    public static volatile float g = Float.NaN;
    public static volatile float h = Float.NaN;

    public static void a() {
        b.clear();
        c = null;
        d = Float.NaN;
        e = Float.NaN;
        f232f = Float.NaN;
        g = Float.NaN;
        h = Float.NaN;
        a = 0L;
    }

    public static C0087d7 b(C0087d7 c0087d7, long j) {
        long j2;
        long j3 = j - c0087d7.h;
        if (j3 < 0) {
            j3 = 0;
        }
        float f2 = c0087d7.e;
        float f3 = c0087d7.g;
        if (((float) Math.hypot(f2, f3)) >= 2.2f) {
            j2 = 100;
        } else {
            j2 = 55;
        }
        if (j3 > j2) {
            j3 = j2;
        }
        float f4 = ((float) j3) / 1000.0f;
        if (f4 <= 0.0f) {
            return c0087d7;
        }
        return C0087d7.a(c0087d7, (f2 * f4) + c0087d7.b, (c0087d7.f197f * f4) + c0087d7.c, (f3 * f4) + c0087d7.d);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0012, code lost:
    
        if (r4 > 280) goto L4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static o.C0087d7 c(o.C0087d7 r3, long r4) {
        /*
            long r0 = r3.h
            long r4 = r4 - r0
            r0 = 32
            long r4 = r4 + r0
            r0 = 0
            int r2 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
            if (r2 >= 0) goto Le
        Lc:
            r4 = r0
            goto L15
        Le:
            r0 = 280(0x118, double:1.383E-321)
            int r2 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
            if (r2 <= 0) goto L15
            goto Lc
        L15:
            float r4 = (float) r4
            r5 = 1148846080(0x447a0000, float:1000.0)
            float r4 = r4 / r5
            r5 = 0
            int r5 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
            if (r5 > 0) goto L1f
            return r3
        L1f:
            float r5 = r3.e
            float r5 = r5 * r4
            float r0 = r3.b
            float r5 = r5 + r0
            float r0 = r3.f197f
            float r0 = r0 * r4
            float r1 = r3.c
            float r0 = r0 + r1
            float r1 = r3.g
            float r1 = r1 * r4
            float r4 = r3.d
            float r1 = r1 + r4
            o.d7 r3 = o.C0087d7.a(r3, r5, r0, r1)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: o.AbstractC0189i9.c(o.d7, long):o.d7");
    }

    public static void d(F8 f8) {
        Set keySet = b.keySet();
        AbstractC0487x9.n(keySet, "<get-keys>(...)");
        Iterator it = keySet.iterator();
        while (it.hasNext()) {
            AbstractC0487x9.o((Integer) it.next(), "it");
            if (!((Boolean) f8.b(r1)).booleanValue()) {
                it.remove();
            }
        }
    }

    public static float[] e(float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, long j, float f11) {
        if (j <= 0 || f11 >= 6.0f) {
            return new float[]{f5, f6, f7};
        }
        float f12 = ((float) (j >= 8 ? j : 8L)) / 1000.0f;
        if (f12 > 0.6f) {
            return new float[]{0.0f, 0.0f, 0.0f};
        }
        float f13 = (f8 - f2) / f12;
        float f14 = (f9 - f3) / f12;
        float f15 = (f10 - f4) / f12;
        if (Math.hypot(f13, f15) > 14.0d) {
            return new float[]{0.0f, 0.0f, 0.0f};
        }
        if (j < 80 && (f5 != 0.0f || f7 != 0.0f)) {
            float f16 = 1 - 0.78f;
            f13 = (f13 * 0.78f) + (f5 * f16);
            f14 = (f14 * 0.78f) + (f6 * f16);
            f15 = (f15 * 0.78f) + (f16 * f7);
        }
        return new float[]{f13, f14, f15};
    }
}
