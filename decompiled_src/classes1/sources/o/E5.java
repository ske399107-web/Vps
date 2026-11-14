package o;

import android.animation.ValueAnimator;
import android.os.Handler;
import android.view.View;
import java.util.ArrayList;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class E5 implements Runnable {
    public final /* synthetic */ int a = 1;
    public Object b;
    public Object c;
    public Object d;

    public /* synthetic */ E5() {
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        switch (this.a) {
            case 0:
                ArrayList arrayList = (ArrayList) this.b;
                C0055bf c0055bf = (C0055bf) this.c;
                if (arrayList.contains(c0055bf)) {
                    arrayList.remove(c0055bf);
                    ((K5) this.d).getClass();
                    AbstractC0304o5.a(c0055bf.c.E, c0055bf.a);
                    return;
                }
                return;
            case 1:
                try {
                    obj = ((D7) this.b).call();
                } catch (Exception unused) {
                    obj = null;
                }
                ((Handler) this.d).post(new RunnableC0040b0((E7) this.c, 5, obj));
                return;
            default:
                C0456vi.h((View) this.b, (H1) this.c);
                ((ValueAnimator) this.d).start();
                return;
        }
    }

    public E5(K5 k5, ArrayList arrayList, C0055bf c0055bf) {
        this.d = k5;
        this.b = arrayList;
        this.c = c0055bf;
    }

    public E5(View view, zi ziVar, H1 h1, ValueAnimator valueAnimator) {
        this.b = view;
        this.c = h1;
        this.d = valueAnimator;
    }
}
