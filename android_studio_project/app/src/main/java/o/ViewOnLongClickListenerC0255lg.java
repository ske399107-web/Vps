package o;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowManager;
import java.lang.reflect.Method;
import java.util.WeakHashMap;

/* renamed from: o.lg, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class ViewOnLongClickListenerC0255lg implements View.OnLongClickListener, View.OnHoverListener, View.OnAttachStateChangeListener {
    public static ViewOnLongClickListenerC0255lg k;
    public static ViewOnLongClickListenerC0255lg l;
    public final View a;
    public final CharSequence b;
    public final int c;
    public final RunnableC0235kg d;
    public final RunnableC0235kg e;

    /* renamed from: f, reason: collision with root package name */
    public int f249f;
    public int g;
    public C0295ng h;
    public boolean i;
    public boolean j;

    /* JADX WARN: Type inference failed for: r0v0, types: [o.kg] */
    /* JADX WARN: Type inference failed for: r0v1, types: [o.kg] */
    public ViewOnLongClickListenerC0255lg(View view, CharSequence charSequence) {
        int scaledTouchSlop;
        final int i = 0;
        this.d = new Runnable(this) { // from class: o.kg
            public final /* synthetic */ ViewOnLongClickListenerC0255lg b;

            {
                this.b = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (i) {
                    case 0:
                        this.b.c(false);
                        return;
                    default:
                        this.b.a();
                        return;
                }
            }
        };
        final int i2 = 1;
        this.e = new Runnable(this) { // from class: o.kg
            public final /* synthetic */ ViewOnLongClickListenerC0255lg b;

            {
                this.b = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (i2) {
                    case 0:
                        this.b.c(false);
                        return;
                    default:
                        this.b.a();
                        return;
                }
            }
        };
        this.a = view;
        this.b = charSequence;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(view.getContext());
        Method method = Eh.a;
        if (Build.VERSION.SDK_INT >= 28) {
            scaledTouchSlop = AbstractC0046b6.h(viewConfiguration);
        } else {
            scaledTouchSlop = viewConfiguration.getScaledTouchSlop() / 2;
        }
        this.c = scaledTouchSlop;
        this.j = true;
        view.setOnLongClickListener(this);
        view.setOnHoverListener(this);
    }

    public static void b(ViewOnLongClickListenerC0255lg viewOnLongClickListenerC0255lg) {
        ViewOnLongClickListenerC0255lg viewOnLongClickListenerC0255lg2 = k;
        if (viewOnLongClickListenerC0255lg2 != null) {
            viewOnLongClickListenerC0255lg2.a.removeCallbacks(viewOnLongClickListenerC0255lg2.d);
        }
        k = viewOnLongClickListenerC0255lg;
        if (viewOnLongClickListenerC0255lg != null) {
            viewOnLongClickListenerC0255lg.a.postDelayed(viewOnLongClickListenerC0255lg.d, ViewConfiguration.getLongPressTimeout());
        }
    }

    public final void a() {
        ViewOnLongClickListenerC0255lg viewOnLongClickListenerC0255lg = l;
        View view = this.a;
        if (viewOnLongClickListenerC0255lg == this) {
            l = null;
            C0295ng c0295ng = this.h;
            if (c0295ng != null) {
                View view2 = c0295ng.b;
                if (view2.getParent() != null) {
                    ((WindowManager) c0295ng.a.getSystemService("window")).removeView(view2);
                }
                this.h = null;
                this.j = true;
                view.removeOnAttachStateChangeListener(this);
            } else {
                Log.e("TooltipCompatHandler", "sActiveHandler.mPopup == null");
            }
        }
        if (k == this) {
            b(null);
        }
        view.removeCallbacks(this.e);
    }

    public final void c(boolean z) {
        int height;
        int i;
        int i2;
        String str;
        int i3;
        String str2;
        int i4;
        long longPressTimeout;
        long j;
        long j2;
        View view = this.a;
        if (!view.isAttachedToWindow()) {
            return;
        }
        b(null);
        ViewOnLongClickListenerC0255lg viewOnLongClickListenerC0255lg = l;
        if (viewOnLongClickListenerC0255lg != null) {
            viewOnLongClickListenerC0255lg.a();
        }
        l = this;
        this.i = z;
        C0295ng c0295ng = new C0295ng(view.getContext());
        this.h = c0295ng;
        int i5 = this.f249f;
        int i6 = this.g;
        boolean z2 = this.i;
        View view2 = c0295ng.b;
        ViewParent parent = view2.getParent();
        Context context = c0295ng.a;
        if (parent != null && view2.getParent() != null) {
            ((WindowManager) context.getSystemService("window")).removeView(view2);
        }
        c0295ng.c.setText(this.b);
        WindowManager.LayoutParams layoutParams = c0295ng.d;
        layoutParams.token = view.getApplicationWindowToken();
        int dimensionPixelOffset = context.getResources().getDimensionPixelOffset(2131100447);
        if (view.getWidth() < dimensionPixelOffset) {
            i5 = view.getWidth() / 2;
        }
        if (view.getHeight() >= dimensionPixelOffset) {
            int dimensionPixelOffset2 = context.getResources().getDimensionPixelOffset(2131100446);
            height = i6 + dimensionPixelOffset2;
            i = i6 - dimensionPixelOffset2;
        } else {
            height = view.getHeight();
            i = 0;
        }
        layoutParams.gravity = 49;
        Resources resources = context.getResources();
        if (z2) {
            i2 = 2131100450;
        } else {
            i2 = 2131100449;
        }
        int dimensionPixelOffset3 = resources.getDimensionPixelOffset(i2);
        View rootView = view.getRootView();
        ViewGroup.LayoutParams layoutParams2 = rootView.getLayoutParams();
        if (!(layoutParams2 instanceof WindowManager.LayoutParams) || ((WindowManager.LayoutParams) layoutParams2).type != 2) {
            Context context2 = view.getContext();
            while (true) {
                if (!(context2 instanceof ContextWrapper)) {
                    break;
                }
                if (context2 instanceof Activity) {
                    rootView = ((Activity) context2).getWindow().getDecorView();
                    break;
                }
                context2 = ((ContextWrapper) context2).getBaseContext();
            }
        }
        if (rootView == null) {
            Log.e("TooltipPopup", "Cannot find app view");
            str2 = "window";
        } else {
            Rect rect = c0295ng.e;
            rootView.getWindowVisibleDisplayFrame(rect);
            if (rect.left >= 0 || rect.top >= 0) {
                str = "window";
                i3 = 0;
            } else {
                Resources resources2 = context.getResources();
                str = "window";
                int identifier = resources2.getIdentifier("status_bar_height", "dimen", "android");
                if (identifier != 0) {
                    i4 = resources2.getDimensionPixelSize(identifier);
                } else {
                    i4 = 0;
                }
                DisplayMetrics displayMetrics = resources2.getDisplayMetrics();
                i3 = 0;
                rect.set(0, i4, displayMetrics.widthPixels, displayMetrics.heightPixels);
            }
            int[] iArr = c0295ng.g;
            rootView.getLocationOnScreen(iArr);
            int[] iArr2 = c0295ng.f263f;
            view.getLocationOnScreen(iArr2);
            int i7 = iArr2[i3] - iArr[i3];
            iArr2[i3] = i7;
            iArr2[1] = iArr2[1] - iArr[1];
            layoutParams.x = (i7 + i5) - (rootView.getWidth() / 2);
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i3, i3);
            view2.measure(makeMeasureSpec, makeMeasureSpec);
            int measuredHeight = view2.getMeasuredHeight();
            int i8 = iArr2[1];
            int i9 = ((i + i8) - dimensionPixelOffset3) - measuredHeight;
            int i10 = i8 + height + dimensionPixelOffset3;
            if (z2) {
                if (i9 >= 0) {
                    layoutParams.y = i9;
                } else {
                    layoutParams.y = i10;
                }
            } else if (measuredHeight + i10 <= rect.height()) {
                layoutParams.y = i10;
            } else {
                layoutParams.y = i9;
            }
            str2 = str;
        }
        ((WindowManager) context.getSystemService(str2)).addView(view2, layoutParams);
        view.addOnAttachStateChangeListener(this);
        if (this.i) {
            j2 = 2500;
        } else {
            WeakHashMap weakHashMap = Dh.a;
            if ((view.getWindowSystemUiVisibility() & 1) == 1) {
                longPressTimeout = ViewConfiguration.getLongPressTimeout();
                j = 3000;
            } else {
                longPressTimeout = ViewConfiguration.getLongPressTimeout();
                j = 15000;
            }
            j2 = j - longPressTimeout;
        }
        RunnableC0235kg runnableC0235kg = this.e;
        view.removeCallbacks(runnableC0235kg);
        view.postDelayed(runnableC0235kg, j2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0064, code lost:
    
        if (java.lang.Math.abs(r5 - r3.g) <= r2) goto L29;
     */
    @Override // android.view.View.OnHoverListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onHover(android.view.View r4, android.view.MotionEvent r5) {
        /*
            r3 = this;
            o.ng r4 = r3.h
            r0 = 0
            if (r4 == 0) goto La
            boolean r4 = r3.i
            if (r4 == 0) goto La
            return r0
        La:
            android.view.View r4 = r3.a
            android.content.Context r1 = r4.getContext()
            java.lang.String r2 = "accessibility"
            java.lang.Object r1 = r1.getSystemService(r2)
            android.view.accessibility.AccessibilityManager r1 = (android.view.accessibility.AccessibilityManager) r1
            boolean r2 = r1.isEnabled()
            if (r2 == 0) goto L25
            boolean r1 = r1.isTouchExplorationEnabled()
            if (r1 == 0) goto L25
            return r0
        L25:
            int r1 = r5.getAction()
            r2 = 7
            if (r1 == r2) goto L38
            r4 = 10
            if (r1 == r4) goto L31
            goto L6f
        L31:
            r4 = 1
            r3.j = r4
            r3.a()
            goto L6f
        L38:
            boolean r4 = r4.isEnabled()
            if (r4 == 0) goto L6f
            o.ng r4 = r3.h
            if (r4 != 0) goto L6f
            float r4 = r5.getX()
            int r4 = (int) r4
            float r5 = r5.getY()
            int r5 = (int) r5
            boolean r1 = r3.j
            if (r1 != 0) goto L66
            int r1 = r3.f249f
            int r1 = r4 - r1
            int r1 = java.lang.Math.abs(r1)
            int r2 = r3.c
            if (r1 > r2) goto L66
            int r1 = r3.g
            int r1 = r5 - r1
            int r1 = java.lang.Math.abs(r1)
            if (r1 <= r2) goto L6f
        L66:
            r3.f249f = r4
            r3.g = r5
            r3.j = r0
            b(r3)
        L6f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: o.ViewOnLongClickListenerC0255lg.onHover(android.view.View, android.view.MotionEvent):boolean");
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        this.f249f = view.getWidth() / 2;
        this.g = view.getHeight() / 2;
        c(true);
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        a();
    }
}
