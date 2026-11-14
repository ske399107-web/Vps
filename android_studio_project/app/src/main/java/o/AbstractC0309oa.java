package o;

/* renamed from: o.oa, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class AbstractC0309oa {
    public final C a;
    public boolean b;
    public int c = -1;
    public final /* synthetic */ androidx.lifecycle.b d;

    public AbstractC0309oa(androidx.lifecycle.b bVar, C c) {
        this.d = bVar;
        this.a = c;
    }

    public final void c(boolean z) {
        int i;
        if (z == this.b) {
            return;
        }
        this.b = z;
        if (z) {
            i = 1;
        } else {
            i = -1;
        }
        androidx.lifecycle.b bVar = this.d;
        int i2 = bVar.c;
        bVar.c = i + i2;
        if (!bVar.d) {
            bVar.d = true;
            while (true) {
                try {
                    int i3 = bVar.c;
                    if (i2 == i3) {
                        break;
                    } else {
                        i2 = i3;
                    }
                } finally {
                    bVar.d = false;
                }
            }
        }
        if (this.b) {
            bVar.c(this);
        }
    }

    public void d() {
    }

    public abstract boolean e();
}
