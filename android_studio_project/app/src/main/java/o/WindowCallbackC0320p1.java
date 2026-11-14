package o;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.SearchEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import android.widget.PopupWindow;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ViewStubCompat;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;

/* renamed from: o.p1, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class WindowCallbackC0320p1 implements Window.Callback {
    public final Window.Callback a;
    public boolean b;
    public boolean c;
    public boolean d;
    public final /* synthetic */ LayoutInflaterFactory2C0439v1 e;

    public WindowCallbackC0320p1(LayoutInflaterFactory2C0439v1 layoutInflaterFactory2C0439v1, Window.Callback callback) {
        this.e = layoutInflaterFactory2C0439v1;
        if (callback != null) {
            this.a = callback;
            return;
        }
        throw new IllegalArgumentException("Window callback may not be null");
    }

    public final void a(Window.Callback callback) {
        try {
            this.b = true;
            callback.onContentChanged();
        } finally {
            this.b = false;
        }
    }

    public final boolean b(int i, Menu menu) {
        return this.a.onMenuOpened(i, menu);
    }

    public final void c(int i, Menu menu) {
        this.a.onPanelClosed(i, menu);
    }

    public final void d(List list, Menu menu, int i) {
        AbstractC0317oi.a(this.a, list, menu, i);
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        return this.a.dispatchGenericMotionEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean z = this.c;
        Window.Callback callback = this.a;
        if (z) {
            return callback.dispatchKeyEvent(keyEvent);
        }
        if (!this.e.s(keyEvent) && !callback.dispatchKeyEvent(keyEvent)) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0067, code lost:
    
        if (r7 != false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0039, code lost:
    
        if (r0 != false) goto L17;
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:14:? A[RETURN, SYNTHETIC] */
    @Override // android.view.Window.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean dispatchKeyShortcutEvent(android.view.KeyEvent r7) {
        /*
            r6 = this;
            android.view.Window$Callback r0 = r6.a
            boolean r0 = r0.dispatchKeyShortcutEvent(r7)
            r1 = 1
            if (r0 != 0) goto L6f
            int r0 = r7.getKeyCode()
            o.v1 r2 = r6.e
            r2.z()
            o.si r3 = r2.f288o
            r4 = 0
            if (r3 == 0) goto L3d
            o.ri r3 = r3.c0
            if (r3 != 0) goto L1d
        L1b:
            r0 = r4
            goto L39
        L1d:
            o.kb r3 = r3.d
            if (r3 == 0) goto L1b
            int r5 = r7.getDeviceId()
            android.view.KeyCharacterMap r5 = android.view.KeyCharacterMap.load(r5)
            int r5 = r5.getKeyboardType()
            if (r5 == r1) goto L31
            r5 = r1
            goto L32
        L31:
            r5 = r4
        L32:
            r3.setQwertyMode(r5)
            boolean r0 = r3.performShortcut(r0, r7, r4)
        L39:
            if (r0 == 0) goto L3d
        L3b:
            r7 = r1
            goto L6b
        L3d:
            o.u1 r0 = r2.M
            if (r0 == 0) goto L52
            int r3 = r7.getKeyCode()
            boolean r0 = r2.E(r0, r3, r7)
            if (r0 == 0) goto L52
            o.u1 r7 = r2.M
            if (r7 == 0) goto L3b
            r7.l = r1
            goto L3b
        L52:
            o.u1 r0 = r2.M
            if (r0 != 0) goto L6a
            o.u1 r0 = r2.y(r4)
            r2.F(r0, r7)
            int r3 = r7.getKeyCode()
            boolean r7 = r2.E(r0, r3, r7)
            r0.k = r4
            if (r7 == 0) goto L6a
            goto L3b
        L6a:
            r7 = r4
        L6b:
            if (r7 == 0) goto L6e
            goto L6f
        L6e:
            r1 = r4
        L6f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: o.WindowCallbackC0320p1.dispatchKeyShortcutEvent(android.view.KeyEvent):boolean");
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return this.a.dispatchPopulateAccessibilityEvent(accessibilityEvent);
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return this.a.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchTrackballEvent(MotionEvent motionEvent) {
        return this.a.dispatchTrackballEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    public final void onActionModeFinished(ActionMode actionMode) {
        this.a.onActionModeFinished(actionMode);
    }

    @Override // android.view.Window.Callback
    public final void onActionModeStarted(ActionMode actionMode) {
        this.a.onActionModeStarted(actionMode);
    }

    @Override // android.view.Window.Callback
    public final void onAttachedToWindow() {
        this.a.onAttachedToWindow();
    }

    @Override // android.view.Window.Callback
    public final void onContentChanged() {
        if (this.b) {
            this.a.onContentChanged();
        }
    }

    @Override // android.view.Window.Callback
    public final boolean onCreatePanelMenu(int i, Menu menu) {
        if (i == 0 && !(menu instanceof MenuC0230kb)) {
            return false;
        }
        return this.a.onCreatePanelMenu(i, menu);
    }

    @Override // android.view.Window.Callback
    public final View onCreatePanelView(int i) {
        return this.a.onCreatePanelView(i);
    }

    @Override // android.view.Window.Callback
    public final void onDetachedFromWindow() {
        this.a.onDetachedFromWindow();
    }

    @Override // android.view.Window.Callback
    public final boolean onMenuItemSelected(int i, MenuItem menuItem) {
        return this.a.onMenuItemSelected(i, menuItem);
    }

    @Override // android.view.Window.Callback
    public final boolean onMenuOpened(int i, Menu menu) {
        b(i, menu);
        LayoutInflaterFactory2C0439v1 layoutInflaterFactory2C0439v1 = this.e;
        if (i == 108) {
            layoutInflaterFactory2C0439v1.z();
            C0396si c0396si = layoutInflaterFactory2C0439v1.f288o;
            if (c0396si != null && true != c0396si.f0) {
                c0396si.f0 = true;
                ArrayList arrayList = c0396si.g0;
                if (arrayList.size() > 0) {
                    arrayList.get(0).getClass();
                    throw new ClassCastException();
                }
            }
        } else {
            layoutInflaterFactory2C0439v1.getClass();
        }
        return true;
    }

    @Override // android.view.Window.Callback
    public final void onPanelClosed(int i, Menu menu) {
        if (this.d) {
            this.a.onPanelClosed(i, menu);
            return;
        }
        c(i, menu);
        LayoutInflaterFactory2C0439v1 layoutInflaterFactory2C0439v1 = this.e;
        if (i == 108) {
            layoutInflaterFactory2C0439v1.z();
            C0396si c0396si = layoutInflaterFactory2C0439v1.f288o;
            if (c0396si != null && c0396si.f0) {
                c0396si.f0 = false;
                ArrayList arrayList = c0396si.g0;
                if (arrayList.size() > 0) {
                    arrayList.get(0).getClass();
                    throw new ClassCastException();
                }
                return;
            }
            return;
        }
        if (i == 0) {
            C0419u1 y = layoutInflaterFactory2C0439v1.y(i);
            if (y.m) {
                layoutInflaterFactory2C0439v1.q(y, false);
                return;
            }
            return;
        }
        layoutInflaterFactory2C0439v1.getClass();
    }

    @Override // android.view.Window.Callback
    public final void onPointerCaptureChanged(boolean z) {
        AbstractC0337pi.a(this.a, z);
    }

    @Override // android.view.Window.Callback
    public final boolean onPreparePanel(int i, View view, Menu menu) {
        MenuC0230kb menuC0230kb;
        if (menu instanceof MenuC0230kb) {
            menuC0230kb = (MenuC0230kb) menu;
        } else {
            menuC0230kb = null;
        }
        if (i == 0 && menuC0230kb == null) {
            return false;
        }
        if (menuC0230kb != null) {
            menuC0230kb.x = true;
        }
        boolean onPreparePanel = this.a.onPreparePanel(i, view, menu);
        if (menuC0230kb != null) {
            menuC0230kb.x = false;
        }
        return onPreparePanel;
    }

    @Override // android.view.Window.Callback
    public final void onProvideKeyboardShortcuts(List list, Menu menu, int i) {
        MenuC0230kb menuC0230kb = this.e.y(0).h;
        if (menuC0230kb != null) {
            d(list, menuC0230kb, i);
        } else {
            d(list, menu, i);
        }
    }

    @Override // android.view.Window.Callback
    public final boolean onSearchRequested(SearchEvent searchEvent) {
        return AbstractC0297ni.a(this.a, searchEvent);
    }

    @Override // android.view.Window.Callback
    public final void onWindowAttributesChanged(WindowManager.LayoutParams layoutParams) {
        this.a.onWindowAttributesChanged(layoutParams);
    }

    @Override // android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z) {
        this.a.onWindowFocusChanged(z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [o.h0, java.lang.Object, o.ib, o.gf] */
    @Override // android.view.Window.Callback
    public final ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i) {
        ViewGroup viewGroup;
        int i2 = 2;
        int i3 = 1;
        LayoutInflaterFactory2C0439v1 layoutInflaterFactory2C0439v1 = this.e;
        layoutInflaterFactory2C0439v1.getClass();
        if (i != 0) {
            return AbstractC0297ni.b(this.a, callback, i);
        }
        H5 h5 = new H5(layoutInflaterFactory2C0439v1.k, callback);
        AbstractC0160h0 abstractC0160h0 = layoutInflaterFactory2C0439v1.u;
        if (abstractC0160h0 != null) {
            abstractC0160h0.a();
        }
        H1 h1 = new H1(layoutInflaterFactory2C0439v1, i2, h5);
        layoutInflaterFactory2C0439v1.z();
        C0396si c0396si = layoutInflaterFactory2C0439v1.f288o;
        if (c0396si != null) {
            C0376ri c0376ri = c0396si.c0;
            if (c0376ri != null) {
                c0376ri.a();
            }
            c0396si.W.setHideOnContentScrollEnabled(false);
            c0396si.Z.e();
            C0376ri c0376ri2 = new C0376ri(c0396si, c0396si.Z.getContext(), h1);
            MenuC0230kb menuC0230kb = c0376ri2.d;
            menuC0230kb.w();
            try {
                if (((H5) c0376ri2.e.b).l(c0376ri2, menuC0230kb)) {
                    c0396si.c0 = c0376ri2;
                    c0376ri2.g();
                    c0396si.Z.c(c0376ri2);
                    c0396si.q0(true);
                } else {
                    c0376ri2 = null;
                }
                layoutInflaterFactory2C0439v1.u = c0376ri2;
            } finally {
                menuC0230kb.v();
            }
        }
        if (layoutInflaterFactory2C0439v1.u == null) {
            Ph ph = layoutInflaterFactory2C0439v1.y;
            if (ph != null) {
                ph.b();
            }
            AbstractC0160h0 abstractC0160h02 = layoutInflaterFactory2C0439v1.u;
            if (abstractC0160h02 != null) {
                abstractC0160h02.a();
            }
            if (layoutInflaterFactory2C0439v1.v == null) {
                boolean z = layoutInflaterFactory2C0439v1.I;
                Context context = layoutInflaterFactory2C0439v1.k;
                if (z) {
                    TypedValue typedValue = new TypedValue();
                    Resources.Theme theme = context.getTheme();
                    theme.resolveAttribute(2130903051, typedValue, true);
                    if (typedValue.resourceId != 0) {
                        Resources.Theme newTheme = context.getResources().newTheme();
                        newTheme.setTo(theme);
                        newTheme.applyStyle(typedValue.resourceId, true);
                        V4 v4 = new V4(context, 0);
                        v4.getTheme().setTo(newTheme);
                        context = v4;
                    }
                    layoutInflaterFactory2C0439v1.v = new ActionBarContextView(context, null);
                    PopupWindow popupWindow = new PopupWindow(context, (AttributeSet) null, 2130903066);
                    layoutInflaterFactory2C0439v1.w = popupWindow;
                    popupWindow.setWindowLayoutType(2);
                    layoutInflaterFactory2C0439v1.w.setContentView(layoutInflaterFactory2C0439v1.v);
                    layoutInflaterFactory2C0439v1.w.setWidth(-1);
                    context.getTheme().resolveAttribute(2130903045, typedValue, true);
                    layoutInflaterFactory2C0439v1.v.setContentHeight(TypedValue.complexToDimensionPixelSize(typedValue.data, context.getResources().getDisplayMetrics()));
                    layoutInflaterFactory2C0439v1.w.setHeight(-2);
                    layoutInflaterFactory2C0439v1.x = new RunnableC0181i1(layoutInflaterFactory2C0439v1, i3);
                } else {
                    ViewStubCompat viewStubCompat = (ViewStubCompat) layoutInflaterFactory2C0439v1.A.findViewById(2131230786);
                    if (viewStubCompat != null) {
                        layoutInflaterFactory2C0439v1.z();
                        C0396si c0396si2 = layoutInflaterFactory2C0439v1.f288o;
                        Context r0 = c0396si2 != null ? c0396si2.r0() : null;
                        if (r0 != null) {
                            context = r0;
                        }
                        viewStubCompat.setLayoutInflater(LayoutInflater.from(context));
                        layoutInflaterFactory2C0439v1.v = (ActionBarContextView) viewStubCompat.a();
                    }
                }
            }
            if (layoutInflaterFactory2C0439v1.v != null) {
                Ph ph2 = layoutInflaterFactory2C0439v1.y;
                if (ph2 != null) {
                    ph2.b();
                }
                layoutInflaterFactory2C0439v1.v.e();
                Context context2 = layoutInflaterFactory2C0439v1.v.getContext();
                ActionBarContextView actionBarContextView = layoutInflaterFactory2C0439v1.v;
                ?? obj = new Object();
                obj.c = context2;
                obj.d = actionBarContextView;
                obj.e = h1;
                MenuC0230kb menuC0230kb2 = new MenuC0230kb(actionBarContextView.getContext());
                menuC0230kb2.l = 1;
                obj.h = menuC0230kb2;
                menuC0230kb2.e = obj;
                if (((H5) h1.b).l(obj, menuC0230kb2)) {
                    obj.g();
                    layoutInflaterFactory2C0439v1.v.c(obj);
                    layoutInflaterFactory2C0439v1.u = obj;
                    if (layoutInflaterFactory2C0439v1.z && (viewGroup = layoutInflaterFactory2C0439v1.A) != null && viewGroup.isLaidOut()) {
                        layoutInflaterFactory2C0439v1.v.setAlpha(0.0f);
                        Ph a = Dh.a(layoutInflaterFactory2C0439v1.v);
                        a.a(1.0f);
                        layoutInflaterFactory2C0439v1.y = a;
                        a.d(new C0220k1(i3, layoutInflaterFactory2C0439v1));
                    } else {
                        layoutInflaterFactory2C0439v1.v.setAlpha(1.0f);
                        layoutInflaterFactory2C0439v1.v.setVisibility(0);
                        if (layoutInflaterFactory2C0439v1.v.getParent() instanceof View) {
                            View view = (View) layoutInflaterFactory2C0439v1.v.getParent();
                            WeakHashMap weakHashMap = Dh.a;
                            AbstractC0415th.c(view);
                        }
                    }
                    if (layoutInflaterFactory2C0439v1.w != null) {
                        layoutInflaterFactory2C0439v1.l.getDecorView().post(layoutInflaterFactory2C0439v1.x);
                    }
                } else {
                    layoutInflaterFactory2C0439v1.u = null;
                }
            }
            layoutInflaterFactory2C0439v1.H();
            layoutInflaterFactory2C0439v1.u = layoutInflaterFactory2C0439v1.u;
        }
        layoutInflaterFactory2C0439v1.H();
        AbstractC0160h0 abstractC0160h03 = layoutInflaterFactory2C0439v1.u;
        if (abstractC0160h03 != null) {
            return h5.e(abstractC0160h03);
        }
        return null;
    }

    @Override // android.view.Window.Callback
    public final boolean onSearchRequested() {
        return this.a.onSearchRequested();
    }

    @Override // android.view.Window.Callback
    public final ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
        return null;
    }
}
