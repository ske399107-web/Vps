package o;

import java.nio.ByteBuffer;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class N6 {
    public int a = 1;
    public final Gb b;
    public Gb c;
    public Gb d;
    public int e;

    /* renamed from: f, reason: collision with root package name */
    public int f127f;

    public N6(Gb gb) {
        this.b = gb;
        this.c = gb;
    }

    public final void a() {
        this.a = 1;
        this.c = this.b;
        this.f127f = 0;
    }

    public final boolean b() {
        Eb c = this.c.b.c();
        int a = c.a(6);
        if ((a != 0 && ((ByteBuffer) c.d).get(a + c.a) != 0) || this.e == 65039) {
            return true;
        }
        return false;
    }
}
