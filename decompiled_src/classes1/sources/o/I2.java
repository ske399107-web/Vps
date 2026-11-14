package o;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class I2 {
    public int a;
    public int b;
    public float c;
    public float d;
    public long e;

    /* renamed from: f, reason: collision with root package name */
    public long f105f;
    public long g;
    public float h;
    public int i;

    public final float a(long j) {
        long j2 = this.e;
        if (j < j2) {
            return 0.0f;
        }
        long j3 = this.g;
        if (j3 >= 0 && j >= j3) {
            float f2 = this.h;
            return (ViewOnTouchListenerC0269ma.b(((float) (j - j3)) / this.i, 0.0f, 1.0f) * f2) + (1.0f - f2);
        }
        return ViewOnTouchListenerC0269ma.b(((float) (j - j2)) / this.a, 0.0f, 1.0f) * 0.5f;
    }
}
