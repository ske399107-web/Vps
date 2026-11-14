package o;

import android.animation.ValueAnimator;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.animation.AnimationUtils;
import android.view.inputmethod.InputMethodManager;
import android.widget.ListView;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.SearchView$SearchAutoComplete;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class J2 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ J2(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i;
        boolean z;
        long j;
        long j2;
        C0080d0 c0080d0;
        Object obj = this.b;
        switch (this.a) {
            case 0:
                ViewOnTouchListenerC0269ma viewOnTouchListenerC0269ma = (ViewOnTouchListenerC0269ma) obj;
                if (viewOnTouchListenerC0269ma.f255o) {
                    boolean z2 = viewOnTouchListenerC0269ma.m;
                    I2 i2 = viewOnTouchListenerC0269ma.a;
                    if (z2) {
                        viewOnTouchListenerC0269ma.m = false;
                        long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
                        i2.e = currentAnimationTimeMillis;
                        i2.g = -1L;
                        i2.f105f = currentAnimationTimeMillis;
                        i2.h = 0.5f;
                    }
                    if ((i2.g > 0 && AnimationUtils.currentAnimationTimeMillis() > i2.g + i2.i) || !viewOnTouchListenerC0269ma.e()) {
                        viewOnTouchListenerC0269ma.f255o = false;
                        return;
                    }
                    boolean z3 = viewOnTouchListenerC0269ma.n;
                    ListView listView = viewOnTouchListenerC0269ma.c;
                    if (z3) {
                        viewOnTouchListenerC0269ma.n = false;
                        long uptimeMillis = SystemClock.uptimeMillis();
                        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                        listView.onTouchEvent(obtain);
                        obtain.recycle();
                    }
                    if (i2.f105f != 0) {
                        long currentAnimationTimeMillis2 = AnimationUtils.currentAnimationTimeMillis();
                        float a = i2.a(currentAnimationTimeMillis2);
                        long j3 = currentAnimationTimeMillis2 - i2.f105f;
                        i2.f105f = currentAnimationTimeMillis2;
                        viewOnTouchListenerC0269ma.q.scrollListBy((int) (((float) j3) * ((a * 4.0f) + ((-4.0f) * a * a)) * i2.d));
                        WeakHashMap weakHashMap = Dh.a;
                        listView.postOnAnimation(this);
                        return;
                    }
                    throw new RuntimeException("Cannot compute scroll delta before calling start()");
                }
                return;
            case 1:
                C0222k3 c0222k3 = (C0222k3) obj;
                c0222k3.c = false;
                BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) c0222k3.e;
                Fh fh = bottomSheetBehavior.M;
                if (fh != null && fh.f()) {
                    c0222k3.a(c0222k3.b);
                    return;
                } else {
                    if (bottomSheetBehavior.L == 2) {
                        bottomSheetBehavior.C(c0222k3.b);
                        return;
                    }
                    return;
                }
            case 2:
                try {
                    androidx.activity.a.f((androidx.activity.a) obj);
                    return;
                } catch (IllegalStateException e) {
                    if (TextUtils.equals(e.getMessage(), "Can not perform this action after onSaveInstanceState")) {
                        return;
                    } else {
                        throw e;
                    }
                } catch (NullPointerException e2) {
                    if (!TextUtils.equals(e2.getMessage(), "Attempt to invoke virtual method 'android.os.Handler android.app.FragmentHostCallback.getHandler()' on a null object reference")) {
                        throw e2;
                    }
                    return;
                }
            case 3:
                G5 g5 = (G5) obj;
                g5.b.endViewTransition(g5.c);
                g5.d.d();
                return;
            case 4:
                X5 x5 = (X5) obj;
                x5.U.onDismiss(x5.c0);
                return;
            case 5:
                C0285n6 c0285n6 = (C0285n6) obj;
                c0285n6.l = null;
                c0285n6.drawableStateChanged();
                return;
            case 6:
                C0385s7 c0385s7 = (C0385s7) obj;
                int i3 = c0385s7.A;
                ValueAnimator valueAnimator = c0385s7.z;
                if (i3 != 1) {
                    i = 2;
                    if (i3 != 2) {
                        return;
                    }
                } else {
                    i = 2;
                    valueAnimator.cancel();
                }
                c0385s7.A = 3;
                float[] fArr = new float[i];
                fArr[0] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                fArr[1] = 0.0f;
                valueAnimator.setFloatValues(fArr);
                valueAnimator.setDuration(500);
                valueAnimator.start();
                return;
            case 7:
                ((C0188i8) obj).z(true);
                return;
            case 8:
                RecyclerView recyclerView = (RecyclerView) obj;
                AbstractC0352qd abstractC0352qd = recyclerView.H;
                if (abstractC0352qd != null) {
                    B5 b5 = (B5) abstractC0352qd;
                    ArrayList arrayList = b5.h;
                    boolean isEmpty = arrayList.isEmpty();
                    ArrayList arrayList2 = b5.j;
                    boolean isEmpty2 = arrayList2.isEmpty();
                    ArrayList arrayList3 = b5.k;
                    boolean isEmpty3 = arrayList3.isEmpty();
                    ArrayList arrayList4 = b5.i;
                    boolean isEmpty4 = arrayList4.isEmpty();
                    if (!isEmpty || !isEmpty2 || !isEmpty4 || !isEmpty3) {
                        Iterator it = arrayList.iterator();
                        while (true) {
                            boolean hasNext = it.hasNext();
                            long j4 = b5.d;
                            if (hasNext) {
                                Id id = (Id) it.next();
                                View view = id.a;
                                ViewPropertyAnimator animate = view.animate();
                                b5.q.add(id);
                                animate.setDuration(j4).alpha(0.0f).setListener(new C0463w5(b5, id, animate, view)).start();
                            } else {
                                arrayList.clear();
                                if (!isEmpty2) {
                                    ArrayList arrayList5 = new ArrayList();
                                    arrayList5.addAll(arrayList2);
                                    b5.m.add(arrayList5);
                                    arrayList2.clear();
                                    RunnableC0443v5 runnableC0443v5 = new RunnableC0443v5(b5, arrayList5, 0);
                                    if (!isEmpty) {
                                        View view2 = ((A5) arrayList5.get(0)).a.a;
                                        WeakHashMap weakHashMap2 = Dh.a;
                                        view2.postOnAnimationDelayed(runnableC0443v5, j4);
                                    } else {
                                        runnableC0443v5.run();
                                    }
                                }
                                if (!isEmpty3) {
                                    ArrayList arrayList6 = new ArrayList();
                                    arrayList6.addAll(arrayList3);
                                    b5.n.add(arrayList6);
                                    arrayList3.clear();
                                    RunnableC0443v5 runnableC0443v52 = new RunnableC0443v5(b5, arrayList6, 1);
                                    if (!isEmpty) {
                                        View view3 = ((C0521z5) arrayList6.get(0)).a.a;
                                        WeakHashMap weakHashMap3 = Dh.a;
                                        view3.postOnAnimationDelayed(runnableC0443v52, j4);
                                    } else {
                                        runnableC0443v52.run();
                                    }
                                }
                                if (!isEmpty4) {
                                    ArrayList arrayList7 = new ArrayList();
                                    arrayList7.addAll(arrayList4);
                                    b5.l.add(arrayList7);
                                    arrayList4.clear();
                                    RunnableC0443v5 runnableC0443v53 = new RunnableC0443v5(b5, arrayList7, 2);
                                    if (isEmpty && isEmpty2 && isEmpty3) {
                                        runnableC0443v53.run();
                                    } else {
                                        if (isEmpty) {
                                            j4 = 0;
                                        }
                                        if (!isEmpty2) {
                                            j = b5.e;
                                        } else {
                                            j = 0;
                                        }
                                        if (!isEmpty3) {
                                            j2 = b5.f268f;
                                        } else {
                                            j2 = 0;
                                        }
                                        long max = Math.max(j, j2) + j4;
                                        View view4 = ((Id) arrayList7.get(0)).a;
                                        WeakHashMap weakHashMap4 = Dh.a;
                                        view4.postOnAnimationDelayed(runnableC0443v53, max);
                                    }
                                }
                            }
                        }
                    }
                    z = false;
                } else {
                    z = false;
                }
                recyclerView.i0 = z;
                return;
            case 9:
                SearchView$SearchAutoComplete searchView$SearchAutoComplete = (SearchView$SearchAutoComplete) obj;
                if (searchView$SearchAutoComplete.f28f) {
                    ((InputMethodManager) searchView$SearchAutoComplete.getContext().getSystemService("input_method")).showSoftInput(searchView$SearchAutoComplete, 0);
                    searchView$SearchAutoComplete.f28f = false;
                    return;
                }
                return;
            case 10:
                ((StaggeredGridLayoutManager) obj).B0();
                return;
            case 11:
                CheckableImageButton checkableImageButton = ((TextInputLayout) obj).c.g;
                checkableImageButton.performClick();
                checkableImageButton.jumpDrawablesToCurrentState();
                return;
            case 12:
                ActionMenuView actionMenuView = ((Toolbar) obj).a;
                if (actionMenuView != null && (c0080d0 = actionMenuView.t) != null) {
                    c0080d0.l();
                    return;
                }
                return;
            default:
                ((Fh) obj).n(0);
                return;
        }
    }
}
