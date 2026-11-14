package o;

import android.widget.FrameLayout;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: o.yg, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class AbstractC0513yg {
    public static final K2 a;
    public static final ThreadLocal b;
    public static final ArrayList c;

    /* JADX WARN: Type inference failed for: r0v0, types: [o.ug, o.K2] */
    static {
        ?? abstractC0434ug = new AbstractC0434ug();
        abstractC0434ug.A = new ArrayList();
        abstractC0434ug.D = false;
        abstractC0434ug.E = 0;
        abstractC0434ug.B = false;
        abstractC0434ug.I(new C0246l7(2));
        abstractC0434ug.I(new AbstractC0434ug());
        abstractC0434ug.I(new C0246l7(1));
        a = abstractC0434ug;
        b = new ThreadLocal();
        c = new ArrayList();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v6, types: [android.view.ViewTreeObserver$OnPreDrawListener, java.lang.Object, android.view.View$OnAttachStateChangeListener, o.xg] */
    public static void a(FrameLayout frameLayout, AbstractC0434ug abstractC0434ug) {
        ArrayList arrayList = c;
        if (!arrayList.contains(frameLayout) && frameLayout.isLaidOut()) {
            arrayList.add(frameLayout);
            if (abstractC0434ug == null) {
                abstractC0434ug = a;
            }
            AbstractC0434ug clone = abstractC0434ug.clone();
            ArrayList arrayList2 = (ArrayList) b().get(frameLayout);
            if (arrayList2 != null && arrayList2.size() > 0) {
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    ((AbstractC0434ug) it.next()).w(frameLayout);
                }
            }
            clone.h(frameLayout, true);
            if (frameLayout.getTag(2131231208) == null) {
                frameLayout.setTag(2131231208, null);
                ?? obj = new Object();
                obj.a = clone;
                obj.b = frameLayout;
                frameLayout.addOnAttachStateChangeListener(obj);
                frameLayout.getViewTreeObserver().addOnPreDrawListener(obj);
                return;
            }
            throw new ClassCastException();
        }
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [o.Qe, java.lang.Object, o.E2] */
    public static E2 b() {
        E2 e2;
        ThreadLocal threadLocal = b;
        WeakReference weakReference = (WeakReference) threadLocal.get();
        if (weakReference != null && (e2 = (E2) weakReference.get()) != null) {
            return e2;
        }
        ?? qe = new Qe(0);
        threadLocal.set(new WeakReference(qe));
        return qe;
    }
}
