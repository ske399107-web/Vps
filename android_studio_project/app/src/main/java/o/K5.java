package o;

import android.animation.Animator;
import android.content.Context;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.WeakHashMap;
//import org.conscrypt.BuildConfig // replaced by app BuildConfig

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class K5 {
    public final ViewGroup a;
    public final ArrayList b = new ArrayList();
    public final ArrayList c = new ArrayList();
    public boolean d = false;
    public boolean e = false;

    public K5(ViewGroup viewGroup) {
        this.a = viewGroup;
    }

    public static K5 f(ViewGroup viewGroup, C0424u6 c0424u6) {
        Object tag = viewGroup.getTag(2131231145);
        if (tag instanceof K5) {
            return (K5) tag;
        }
        c0424u6.getClass();
        K5 k5 = new K5(viewGroup);
        viewGroup.setTag(2131231145, k5);
        return k5;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, o.s3] */
    public final void a(int i, int i2, androidx.fragment.app.a aVar) {
        synchronized (this.b) {
            try {
                ?? obj = new Object();
                C0055bf d = d(aVar.c);
                if (d != null) {
                    d.c(i, i2);
                    return;
                }
                C0055bf c0055bf = new C0055bf(i, i2, aVar, obj);
                this.b.add(c0055bf);
                c0055bf.d.add(new RunnableC0035af(this, c0055bf, 0));
                c0055bf.d.add(new RunnableC0035af(this, c0055bf, 1));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r13v16, types: [java.lang.Object, o.s3] */
    /* JADX WARN: Type inference failed for: r13v17, types: [java.lang.Object, o.s3] */
    /* JADX WARN: Type inference failed for: r15v5, types: [o.I5, java.lang.Object, o.s1] */
    public final void b(ArrayList arrayList, boolean z) {
        C0055bf c0055bf;
        Iterator it;
        boolean z2;
        Iterator it2 = arrayList.iterator();
        C0055bf c0055bf2 = null;
        C0055bf c0055bf3 = null;
        while (it2.hasNext()) {
            C0055bf c0055bf4 = (C0055bf) it2.next();
            int c = AbstractC0304o5.c(c0055bf4.c.E);
            int C = Ve.C(c0055bf4.a);
            if (C != 0) {
                if (C != 1) {
                    if (C != 2 && C != 3) {
                    }
                } else if (c != 2) {
                    c0055bf3 = c0055bf4;
                }
            }
            if (c == 2 && c0055bf2 == null) {
                c0055bf2 = c0055bf4;
            }
        }
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "Executing operations from " + c0055bf2 + " to " + c0055bf3);
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList(arrayList);
        T7 t7 = ((C0055bf) arrayList.get(arrayList.size() - 1)).c;
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            R7 r7 = ((C0055bf) it3.next()).c.H;
            R7 r72 = t7.H;
            r7.b = r72.b;
            r7.c = r72.c;
            r7.d = r72.d;
            r7.e = r72.e;
        }
        Iterator it4 = arrayList.iterator();
        while (true) {
            boolean z3 = false;
            if (!it4.hasNext()) {
                break;
            }
            C0055bf c0055bf5 = (C0055bf) it4.next();
            ?? obj = new Object();
            c0055bf5.d();
            HashSet hashSet = c0055bf5.e;
            hashSet.add(obj);
            ?? abstractC0379s1 = new AbstractC0379s1(c0055bf5, obj);
            abstractC0379s1.d = false;
            abstractC0379s1.c = z;
            arrayList2.add(abstractC0379s1);
            ?? obj2 = new Object();
            c0055bf5.d();
            hashSet.add(obj2);
            if (!z ? c0055bf5 == c0055bf3 : c0055bf5 == c0055bf2) {
                z3 = true;
            }
            AbstractC0379s1 abstractC0379s12 = new AbstractC0379s1(c0055bf5, obj2);
            int i = c0055bf5.a;
            T7 t72 = c0055bf5.c;
            if (i == 2) {
                if (z) {
                    R7 r73 = t72.H;
                } else {
                    t72.getClass();
                }
                if (z) {
                    R7 r74 = t72.H;
                } else {
                    R7 r75 = t72.H;
                }
            } else if (z) {
                R7 r76 = t72.H;
            } else {
                t72.getClass();
            }
            if (z3) {
                if (z) {
                    R7 r77 = t72.H;
                } else {
                    t72.getClass();
                }
            }
            arrayList3.add(abstractC0379s12);
            c0055bf5.d.add(new E5(this, arrayList4, c0055bf5));
        }
        HashMap hashMap = new HashMap();
        Iterator it5 = arrayList3.iterator();
        while (it5.hasNext()) {
            C0055bf c0055bf6 = (C0055bf) ((J5) it5.next()).a;
            AbstractC0304o5.c(c0055bf6.c.E);
            int i2 = c0055bf6.a;
        }
        Iterator it6 = arrayList3.iterator();
        while (it6.hasNext()) {
            J5 j5 = (J5) it6.next();
            hashMap.put((C0055bf) j5.a, Boolean.FALSE);
            j5.d();
        }
        boolean containsValue = hashMap.containsValue(Boolean.TRUE);
        ViewGroup viewGroup = this.a;
        Context context = viewGroup.getContext();
        ArrayList arrayList5 = new ArrayList();
        Iterator it7 = arrayList2.iterator();
        boolean z4 = false;
        while (it7.hasNext()) {
            I5 i5 = (I5) it7.next();
            C0055bf c0055bf7 = (C0055bf) i5.a;
            int c2 = AbstractC0304o5.c(c0055bf7.c.E);
            int i3 = c0055bf7.a;
            if (c2 != i3) {
                it = it7;
                if (c2 != 2 && i3 != 2) {
                    c0055bf = c0055bf3;
                } else {
                    H1 j = i5.j(context);
                    if (j == null) {
                        i5.d();
                    } else {
                        Animator animator = (Animator) j.c;
                        if (animator == null) {
                            arrayList5.add(i5);
                        } else {
                            C0055bf c0055bf8 = (C0055bf) i5.a;
                            c0055bf = c0055bf3;
                            boolean equals = Boolean.TRUE.equals(hashMap.get(c0055bf8));
                            T7 t73 = c0055bf8.c;
                            if (equals) {
                                if (Log.isLoggable("FragmentManager", 2)) {
                                    Log.v("FragmentManager", "Ignoring Animator set on " + t73 + " as this Fragment was involved in a Transition.");
                                }
                                i5.d();
                                it7 = it;
                                c0055bf3 = c0055bf;
                            } else {
                                if (c0055bf8.a == 3) {
                                    z2 = true;
                                } else {
                                    z2 = false;
                                }
                                if (z2) {
                                    arrayList4.remove(c0055bf8);
                                }
                                View view = t73.E;
                                viewGroup.startViewTransition(view);
                                animator.addListener(new F5(viewGroup, view, z2, c0055bf8, i5));
                                animator.setTarget(view);
                                animator.start();
                                if (Log.isLoggable("FragmentManager", 2)) {
                                    Log.v("FragmentManager", "Animator from operation " + c0055bf8 + " has started.");
                                }
                                ((C0381s3) i5.b).a(new H1(animator, c0055bf8, 9, false));
                                it7 = it;
                                c0055bf3 = c0055bf;
                                z4 = true;
                            }
                        }
                    }
                    c0055bf = c0055bf3;
                    it7 = it;
                    c0055bf3 = c0055bf;
                }
            } else {
                c0055bf = c0055bf3;
                it = it7;
            }
            i5.d();
            it7 = it;
            c0055bf3 = c0055bf;
        }
        C0055bf c0055bf9 = c0055bf3;
        Iterator it8 = arrayList5.iterator();
        while (it8.hasNext()) {
            I5 i52 = (I5) it8.next();
            C0055bf c0055bf10 = (C0055bf) i52.a;
            T7 t74 = c0055bf10.c;
            if (containsValue) {
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "Ignoring Animation set on " + t74 + " as Animations cannot run alongside Transitions.");
                }
                i52.d();
            } else if (z4) {
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "Ignoring Animation set on " + t74 + " as Animations cannot run alongside Animators.");
                }
                i52.d();
            } else {
                View view2 = t74.E;
                H1 j2 = i52.j(context);
                j2.getClass();
                Animation animation = (Animation) j2.b;
                animation.getClass();
                if (c0055bf10.a != 1) {
                    view2.startAnimation(animation);
                    i52.d();
                } else {
                    viewGroup.startViewTransition(view2);
                    W7 w7 = new W7(animation, viewGroup, view2);
                    w7.setAnimationListener(new G5(view2, viewGroup, i52, c0055bf10));
                    view2.startAnimation(w7);
                    if (Log.isLoggable("FragmentManager", 2)) {
                        Log.v("FragmentManager", "Animation from operation " + c0055bf10 + " has started.");
                    }
                }
                ((C0381s3) i52.b).a(new H5(view2, viewGroup, i52, c0055bf10));
            }
        }
        Iterator it9 = arrayList4.iterator();
        while (it9.hasNext()) {
            C0055bf c0055bf11 = (C0055bf) it9.next();
            AbstractC0304o5.a(c0055bf11.c.E, c0055bf11.a);
        }
        arrayList4.clear();
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "Completed executing operations from " + c0055bf2 + " to " + c0055bf9);
        }
    }

    public final void c() {
        if (this.e) {
            return;
        }
        ViewGroup viewGroup = this.a;
        WeakHashMap weakHashMap = Dh.a;
        if (!viewGroup.isAttachedToWindow()) {
            e();
            this.d = false;
            return;
        }
        synchronized (this.b) {
            try {
                if (!this.b.isEmpty()) {
                    ArrayList arrayList = new ArrayList(this.c);
                    this.c.clear();
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        C0055bf c0055bf = (C0055bf) it.next();
                        if (Log.isLoggable("FragmentManager", 2)) {
                            Log.v("FragmentManager", "SpecialEffectsController: Cancelling operation " + c0055bf);
                        }
                        c0055bf.a();
                        if (!c0055bf.g) {
                            this.c.add(c0055bf);
                        }
                    }
                    g();
                    ArrayList arrayList2 = new ArrayList(this.b);
                    this.b.clear();
                    this.c.addAll(arrayList2);
                    if (Log.isLoggable("FragmentManager", 2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Executing pending operations");
                    }
                    Iterator it2 = arrayList2.iterator();
                    while (it2.hasNext()) {
                        ((C0055bf) it2.next()).d();
                    }
                    b(arrayList2, this.d);
                    this.d = false;
                    if (Log.isLoggable("FragmentManager", 2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Finished executing pending operations");
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final C0055bf d(T7 t7) {
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            C0055bf c0055bf = (C0055bf) it.next();
            if (c0055bf.c.equals(t7) && !c0055bf.f186f) {
                return c0055bf;
            }
        }
        return null;
    }

    public final void e() {
        String str;
        String str2;
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Forcing all operations to complete");
        }
        ViewGroup viewGroup = this.a;
        WeakHashMap weakHashMap = Dh.a;
        boolean isAttachedToWindow = viewGroup.isAttachedToWindow();
        synchronized (this.b) {
            try {
                g();
                Iterator it = this.b.iterator();
                while (it.hasNext()) {
                    ((C0055bf) it.next()).d();
                }
                Iterator it2 = new ArrayList(this.c).iterator();
                while (it2.hasNext()) {
                    C0055bf c0055bf = (C0055bf) it2.next();
                    if (Log.isLoggable("FragmentManager", 2)) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("SpecialEffectsController: ");
                        if (isAttachedToWindow) {
                            str2 = BuildConfig.FLAVOR;
                        } else {
                            str2 = "Container " + this.a + " is not attached to window. ";
                        }
                        sb.append(str2);
                        sb.append("Cancelling running operation ");
                        sb.append(c0055bf);
                        Log.v("FragmentManager", sb.toString());
                    }
                    c0055bf.a();
                }
                Iterator it3 = new ArrayList(this.b).iterator();
                while (it3.hasNext()) {
                    C0055bf c0055bf2 = (C0055bf) it3.next();
                    if (Log.isLoggable("FragmentManager", 2)) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("SpecialEffectsController: ");
                        if (isAttachedToWindow) {
                            str = BuildConfig.FLAVOR;
                        } else {
                            str = "Container " + this.a + " is not attached to window. ";
                        }
                        sb2.append(str);
                        sb2.append("Cancelling pending operation ");
                        sb2.append(c0055bf2);
                        Log.v("FragmentManager", sb2.toString());
                    }
                    c0055bf2.a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void g() {
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            C0055bf c0055bf = (C0055bf) it.next();
            if (c0055bf.b == 2) {
                c0055bf.c(AbstractC0304o5.b(c0055bf.c.D().getVisibility()), 1);
            }
        }
    }
}
