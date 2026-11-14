package o;

import android.os.Build;
import android.view.View;
import java.nio.ByteBuffer;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class Ef {
    public int a;
    public int b;
    public int c;
    public Object d;

    /* JADX WARN: Type inference failed for: r0v1, types: [o.qg, java.lang.Object] */
    public Ef() {
        if (C0355qg.a == null) {
            C0355qg.a = new Object();
        }
    }

    public int a(int i) {
        if (i < this.c) {
            return ((ByteBuffer) this.d).getShort(this.b + i);
        }
        return 0;
    }

    public abstract Object b(View view);

    public abstract void c(View view, Object obj);

    public void d(View view, Object obj) {
        Object tag;
        r rVar;
        if (Build.VERSION.SDK_INT >= this.b) {
            c(view, obj);
            return;
        }
        if (Build.VERSION.SDK_INT >= this.b) {
            tag = b(view);
        } else {
            tag = view.getTag(this.a);
            if (!((Class) this.d).isInstance(tag)) {
                tag = null;
            }
        }
        if (e(tag, obj)) {
            View.AccessibilityDelegate c = Dh.c(view);
            if (c == null) {
                rVar = null;
            } else if (c instanceof C0338q) {
                rVar = ((C0338q) c).a;
            } else {
                rVar = new r(c);
            }
            if (rVar == null) {
                rVar = new r();
            }
            Dh.l(view, rVar);
            view.setTag(this.a, obj);
            Dh.g(view, this.c);
        }
    }

    public abstract boolean e(Object obj, Object obj2);
}
