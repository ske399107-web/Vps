package o;

import android.view.View;
import android.view.ViewPropertyAnimator;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: o.v5, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class RunnableC0443v5 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ ArrayList b;
    public final /* synthetic */ B5 c;

    public /* synthetic */ RunnableC0443v5(B5 b5, ArrayList arrayList, int i) {
        this.a = i;
        this.c = b5;
        this.b = arrayList;
    }

    @Override // java.lang.Runnable
    public final void run() {
        View view;
        View view2;
        Iterator it;
        switch (this.a) {
            case 0:
                ArrayList arrayList = this.b;
                Iterator it2 = arrayList.iterator();
                while (true) {
                    boolean hasNext = it2.hasNext();
                    B5 b5 = this.c;
                    if (hasNext) {
                        A5 a5 = (A5) it2.next();
                        Id id = a5.a;
                        b5.getClass();
                        View view3 = id.a;
                        int i = a5.d - a5.b;
                        int i2 = a5.e - a5.c;
                        if (i != 0) {
                            view3.animate().translationX(0.0f);
                        }
                        if (i2 != 0) {
                            view3.animate().translationY(0.0f);
                        }
                        ViewPropertyAnimator animate = view3.animate();
                        b5.p.add(id);
                        animate.setDuration(b5.e).setListener(new C0483x5(b5, id, i, view3, i2, animate)).start();
                    } else {
                        arrayList.clear();
                        b5.m.remove(arrayList);
                        return;
                    }
                }
            case 1:
                ArrayList arrayList2 = this.b;
                Iterator it3 = arrayList2.iterator();
                while (true) {
                    boolean hasNext2 = it3.hasNext();
                    B5 b52 = this.c;
                    if (hasNext2) {
                        C0521z5 c0521z5 = (C0521z5) it3.next();
                        b52.getClass();
                        Id id2 = c0521z5.a;
                        if (id2 == null) {
                            view = null;
                        } else {
                            view = id2.a;
                        }
                        Id id3 = c0521z5.b;
                        if (id3 != null) {
                            view2 = id3.a;
                        } else {
                            view2 = null;
                        }
                        ArrayList arrayList3 = b52.r;
                        long j = b52.f268f;
                        if (view != null) {
                            ViewPropertyAnimator duration = view.animate().setDuration(j);
                            arrayList3.add(c0521z5.a);
                            duration.translationX(c0521z5.e - c0521z5.c);
                            duration.translationY(c0521z5.f307f - c0521z5.d);
                            it = it3;
                            duration.alpha(0.0f).setListener(new C0502y5(b52, c0521z5, duration, view, 0)).start();
                        } else {
                            it = it3;
                        }
                        if (view2 != null) {
                            ViewPropertyAnimator animate2 = view2.animate();
                            arrayList3.add(c0521z5.b);
                            animate2.translationX(0.0f).translationY(0.0f).setDuration(j).alpha(1.0f).setListener(new C0502y5(b52, c0521z5, animate2, view2, 1)).start();
                        }
                        it3 = it;
                    } else {
                        arrayList2.clear();
                        b52.n.remove(arrayList2);
                        return;
                    }
                }
            default:
                ArrayList arrayList4 = this.b;
                Iterator it4 = arrayList4.iterator();
                while (true) {
                    boolean hasNext3 = it4.hasNext();
                    B5 b53 = this.c;
                    if (hasNext3) {
                        Id id4 = (Id) it4.next();
                        b53.getClass();
                        View view4 = id4.a;
                        ViewPropertyAnimator animate3 = view4.animate();
                        b53.f71o.add(id4);
                        animate3.alpha(1.0f).setDuration(b53.c).setListener(new C0463w5(b53, id4, view4, animate3)).start();
                    } else {
                        arrayList4.clear();
                        b53.l.remove(arrayList4);
                        return;
                    }
                }
        }
    }
}
