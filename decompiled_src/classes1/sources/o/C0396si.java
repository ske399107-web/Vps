package o;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.Toolbar;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* renamed from: o.si, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0396si extends AbstractC0487x9 implements T {
    public static final AccelerateInterpolator s0 = new AccelerateInterpolator();
    public static final DecelerateInterpolator t0 = new DecelerateInterpolator();
    public Context U;
    public Context V;
    public ActionBarOverlayLayout W;
    public ActionBarContainer X;
    public InterfaceC0383s5 Y;
    public ActionBarContextView Z;
    public final View a0;
    public boolean b0;
    public C0376ri c0;
    public C0376ri d0;
    public H1 e0;
    public boolean f0;
    public final ArrayList g0;
    public int h0;
    public boolean i0;
    public boolean j0;
    public boolean k0;
    public boolean l0;
    public Qh m0;
    public boolean n0;
    public boolean o0;
    public final C0357qi p0;
    public final C0357qi q0;
    public final Oh r0;

    public C0396si(Activity activity, boolean z) {
        new ArrayList();
        this.g0 = new ArrayList();
        this.h0 = 0;
        this.i0 = true;
        this.l0 = true;
        this.p0 = new C0357qi(this, 0);
        this.q0 = new C0357qi(this, 1);
        this.r0 = new Oh(this);
        View decorView = activity.getWindow().getDecorView();
        s0(decorView);
        if (z) {
            return;
        }
        this.a0 = decorView.findViewById(R.id.content);
    }

    public final void q0(boolean z) {
        Ph i;
        Ph ph;
        long j;
        if (z) {
            if (!this.k0) {
                this.k0 = true;
                ActionBarOverlayLayout actionBarOverlayLayout = this.W;
                if (actionBarOverlayLayout != null) {
                    actionBarOverlayLayout.setShowingForActionMode(true);
                }
                v0(false);
            }
        } else if (this.k0) {
            this.k0 = false;
            ActionBarOverlayLayout actionBarOverlayLayout2 = this.W;
            if (actionBarOverlayLayout2 != null) {
                actionBarOverlayLayout2.setShowingForActionMode(false);
            }
            v0(false);
        }
        if (this.X.isLaidOut()) {
            if (z) {
                C0195ig c0195ig = (C0195ig) this.Y;
                i = Dh.a(c0195ig.a);
                i.a(0.0f);
                i.c(100L);
                i.d(new C0176hg(c0195ig, 4));
                ph = this.Z.i(0, 200L);
            } else {
                C0195ig c0195ig2 = (C0195ig) this.Y;
                Ph a = Dh.a(c0195ig2.a);
                a.a(1.0f);
                a.c(200L);
                a.d(new C0176hg(c0195ig2, 0));
                i = this.Z.i(8, 100L);
                ph = a;
            }
            Qh qh = new Qh();
            ArrayList arrayList = qh.a;
            arrayList.add(i);
            View view = (View) i.a.get();
            if (view != null) {
                j = view.animate().getDuration();
            } else {
                j = 0;
            }
            View view2 = (View) ph.a.get();
            if (view2 != null) {
                view2.animate().setStartDelay(j);
            }
            arrayList.add(ph);
            qh.b();
            return;
        }
        if (z) {
            ((C0195ig) this.Y).a.setVisibility(4);
            this.Z.setVisibility(0);
        } else {
            ((C0195ig) this.Y).a.setVisibility(0);
            this.Z.setVisibility(8);
        }
    }

    public final Context r0() {
        if (this.V == null) {
            TypedValue typedValue = new TypedValue();
            this.U.getTheme().resolveAttribute(2130903052, typedValue, true);
            int i = typedValue.resourceId;
            if (i != 0) {
                this.V = new ContextThemeWrapper(this.U, i);
            } else {
                this.V = this.U;
            }
        }
        return this.V;
    }

    public final void s0(View view) {
        String str;
        InterfaceC0383s5 wrapper;
        boolean z;
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) view.findViewById(2131230868);
        this.W = actionBarOverlayLayout;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setActionBarVisibilityCallback(this);
        }
        KeyEvent.Callback findViewById = view.findViewById(2131230772);
        if (findViewById instanceof InterfaceC0383s5) {
            wrapper = (InterfaceC0383s5) findViewById;
        } else if (findViewById instanceof Toolbar) {
            wrapper = ((Toolbar) findViewById).getWrapper();
        } else {
            if (findViewById != null) {
                str = findViewById.getClass().getSimpleName();
            } else {
                str = "null";
            }
            throw new IllegalStateException("Can't make a decor toolbar out of ".concat(str));
        }
        this.Y = wrapper;
        this.Z = (ActionBarContextView) view.findViewById(2131230780);
        ActionBarContainer actionBarContainer = (ActionBarContainer) view.findViewById(2131230774);
        this.X = actionBarContainer;
        InterfaceC0383s5 interfaceC0383s5 = this.Y;
        if (interfaceC0383s5 != null && this.Z != null && actionBarContainer != null) {
            Context context = ((C0195ig) interfaceC0383s5).a.getContext();
            this.U = context;
            if ((((C0195ig) this.Y).b & 4) != 0) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                this.b0 = true;
            }
            int i = context.getApplicationInfo().targetSdkVersion;
            this.Y.getClass();
            u0(context.getResources().getBoolean(com.hda.jds.R.color.colorPrimary));
            TypedArray obtainStyledAttributes = this.U.obtainStyledAttributes(null, AbstractC0153gd.a, 2130903047, 0);
            if (obtainStyledAttributes.getBoolean(14, false)) {
                ActionBarOverlayLayout actionBarOverlayLayout2 = this.W;
                if (actionBarOverlayLayout2.g) {
                    this.o0 = true;
                    actionBarOverlayLayout2.setHideOnContentScrollEnabled(true);
                } else {
                    throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
                }
            }
            int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(12, 0);
            if (dimensionPixelSize != 0) {
                ActionBarContainer actionBarContainer2 = this.X;
                WeakHashMap weakHashMap = Dh.a;
                AbstractC0455vh.k(actionBarContainer2, dimensionPixelSize);
            }
            obtainStyledAttributes.recycle();
            return;
        }
        throw new IllegalStateException(C0396si.class.getSimpleName().concat(" can only be used with a compatible window decor layout"));
    }

    public final void t0(boolean z) {
        int i;
        if (!this.b0) {
            if (z) {
                i = 4;
            } else {
                i = 0;
            }
            C0195ig c0195ig = (C0195ig) this.Y;
            int i2 = c0195ig.b;
            this.b0 = true;
            c0195ig.a((i & 4) | (i2 & (-5)));
        }
    }

    public final void u0(boolean z) {
        if (!z) {
            ((C0195ig) this.Y).getClass();
            this.X.setTabContainer(null);
        } else {
            this.X.setTabContainer(null);
            ((C0195ig) this.Y).getClass();
        }
        this.Y.getClass();
        ((C0195ig) this.Y).a.setCollapsible(false);
        this.W.setHasNonEmbeddedTabs(false);
    }

    public final void v0(boolean z) {
        boolean z2;
        boolean z3 = this.j0;
        if (this.k0 || !z3) {
            z2 = true;
        } else {
            z2 = false;
        }
        View view = this.a0;
        C0305o6 c0305o6 = null;
        Oh oh = this.r0;
        if (z2) {
            if (!this.l0) {
                this.l0 = true;
                Qh qh = this.m0;
                if (qh != null) {
                    qh.a();
                }
                this.X.setVisibility(0);
                int i = this.h0;
                C0357qi c0357qi = this.q0;
                if (i == 0 && (this.n0 || z)) {
                    this.X.setTranslationY(0.0f);
                    float f2 = -this.X.getHeight();
                    if (z) {
                        this.X.getLocationInWindow(new int[]{0, 0});
                        f2 -= r12[1];
                    }
                    this.X.setTranslationY(f2);
                    Qh qh2 = new Qh();
                    Ph a = Dh.a(this.X);
                    a.e(0.0f);
                    View view2 = (View) a.a.get();
                    if (view2 != null) {
                        if (oh != null) {
                            c0305o6 = new C0305o6(oh, view2);
                        }
                        view2.animate().setUpdateListener(c0305o6);
                    }
                    boolean z4 = qh2.e;
                    ArrayList arrayList = qh2.a;
                    if (!z4) {
                        arrayList.add(a);
                    }
                    if (this.i0 && view != null) {
                        view.setTranslationY(f2);
                        Ph a2 = Dh.a(view);
                        a2.e(0.0f);
                        if (!qh2.e) {
                            arrayList.add(a2);
                        }
                    }
                    DecelerateInterpolator decelerateInterpolator = t0;
                    boolean z5 = qh2.e;
                    if (!z5) {
                        qh2.c = decelerateInterpolator;
                    }
                    if (!z5) {
                        qh2.b = 250L;
                    }
                    if (!z5) {
                        qh2.d = c0357qi;
                    }
                    this.m0 = qh2;
                    qh2.b();
                } else {
                    this.X.setAlpha(1.0f);
                    this.X.setTranslationY(0.0f);
                    if (this.i0 && view != null) {
                        view.setTranslationY(0.0f);
                    }
                    c0357qi.a();
                }
                ActionBarOverlayLayout actionBarOverlayLayout = this.W;
                if (actionBarOverlayLayout != null) {
                    WeakHashMap weakHashMap = Dh.a;
                    AbstractC0415th.c(actionBarOverlayLayout);
                    return;
                }
                return;
            }
            return;
        }
        if (this.l0) {
            this.l0 = false;
            Qh qh3 = this.m0;
            if (qh3 != null) {
                qh3.a();
            }
            int i2 = this.h0;
            C0357qi c0357qi2 = this.p0;
            if (i2 == 0 && (this.n0 || z)) {
                this.X.setAlpha(1.0f);
                this.X.setTransitioning(true);
                Qh qh4 = new Qh();
                float f3 = -this.X.getHeight();
                if (z) {
                    this.X.getLocationInWindow(new int[]{0, 0});
                    f3 -= r12[1];
                }
                Ph a3 = Dh.a(this.X);
                a3.e(f3);
                View view3 = (View) a3.a.get();
                if (view3 != null) {
                    if (oh != null) {
                        c0305o6 = new C0305o6(oh, view3);
                    }
                    view3.animate().setUpdateListener(c0305o6);
                }
                boolean z6 = qh4.e;
                ArrayList arrayList2 = qh4.a;
                if (!z6) {
                    arrayList2.add(a3);
                }
                if (this.i0 && view != null) {
                    Ph a4 = Dh.a(view);
                    a4.e(f3);
                    if (!qh4.e) {
                        arrayList2.add(a4);
                    }
                }
                AccelerateInterpolator accelerateInterpolator = s0;
                boolean z7 = qh4.e;
                if (!z7) {
                    qh4.c = accelerateInterpolator;
                }
                if (!z7) {
                    qh4.b = 250L;
                }
                if (!z7) {
                    qh4.d = c0357qi2;
                }
                this.m0 = qh4;
                qh4.b();
                return;
            }
            c0357qi2.a();
        }
    }

    public C0396si(Dialog dialog) {
        new ArrayList();
        this.g0 = new ArrayList();
        this.h0 = 0;
        this.i0 = true;
        this.l0 = true;
        this.p0 = new C0357qi(this, 0);
        this.q0 = new C0357qi(this, 1);
        this.r0 = new Oh(this);
        s0(dialog.getWindow().getDecorView());
    }
}
