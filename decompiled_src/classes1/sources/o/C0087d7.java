package o;

import org.conscrypt.BuildConfig;

/* renamed from: o.d7, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0087d7 {
    public final int a;
    public final float b;
    public final float c;
    public final float d;
    public final float e;

    /* renamed from: f, reason: collision with root package name */
    public final float f197f;
    public final float g;
    public final long h;
    public final String i;

    public /* synthetic */ C0087d7(int i, float f2, float f3, float f4, float f5, float f6, float f7, long j) {
        this(i, f2, f3, f4, f5, f6, f7, j, BuildConfig.FLAVOR);
    }

    public static C0087d7 a(C0087d7 c0087d7, float f2, float f3, float f4) {
        int i = c0087d7.a;
        float f5 = c0087d7.e;
        float f6 = c0087d7.f197f;
        float f7 = c0087d7.g;
        long j = c0087d7.h;
        String str = c0087d7.i;
        c0087d7.getClass();
        AbstractC0487x9.o(str, "name");
        return new C0087d7(i, f2, f3, f4, f5, f6, f7, j, str);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0087d7)) {
            return false;
        }
        C0087d7 c0087d7 = (C0087d7) obj;
        if (this.a == c0087d7.a && Float.compare(this.b, c0087d7.b) == 0 && Float.compare(this.c, c0087d7.c) == 0 && Float.compare(this.d, c0087d7.d) == 0 && Float.compare(this.e, c0087d7.e) == 0 && Float.compare(this.f197f, c0087d7.f197f) == 0 && Float.compare(this.g, c0087d7.g) == 0 && this.h == c0087d7.h && AbstractC0487x9.b(this.i, c0087d7.i)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.i.hashCode() + ((Long.hashCode(this.h) + ((Float.hashCode(this.g) + ((Float.hashCode(this.f197f) + ((Float.hashCode(this.e) + ((Float.hashCode(this.d) + ((Float.hashCode(this.c) + ((Float.hashCode(this.b) + (Integer.hashCode(this.a) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "EnemyPos(id=" + this.a + ", x=" + this.b + ", y=" + this.c + ", z=" + this.d + ", vx=" + this.e + ", vy=" + this.f197f + ", vz=" + this.g + ", t=" + this.h + ", name=" + this.i + ")";
    }

    public C0087d7(int i, float f2, float f3, float f4, float f5, float f6, float f7, long j, String str) {
        this.a = i;
        this.b = f2;
        this.c = f3;
        this.d = f4;
        this.e = f5;
        this.f197f = f6;
        this.g = f7;
        this.h = j;
        this.i = str;
    }
}
