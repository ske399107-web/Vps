package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.FrameLayout;
import o.C0080d0;
import o.C0195ig;
import o.C0200j1;
import o.InterfaceC0363r5;
import o.LayoutInflaterFactory2C0439v1;
import o.MenuC0230kb;
import o.P4;
import o.Ph;
import o.Z;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class ContentFrameLayout extends FrameLayout {
    public TypedValue a;
    public TypedValue b;
    public TypedValue c;
    public TypedValue d;
    public TypedValue e;

    /* renamed from: f, reason: collision with root package name */
    public TypedValue f27f;
    public final Rect g;
    public P4 h;

    public ContentFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.g = new Rect();
    }

    public TypedValue getFixedHeightMajor() {
        if (this.e == null) {
            this.e = new TypedValue();
        }
        return this.e;
    }

    public TypedValue getFixedHeightMinor() {
        if (this.f27f == null) {
            this.f27f = new TypedValue();
        }
        return this.f27f;
    }

    public TypedValue getFixedWidthMajor() {
        if (this.c == null) {
            this.c = new TypedValue();
        }
        return this.c;
    }

    public TypedValue getFixedWidthMinor() {
        if (this.d == null) {
            this.d = new TypedValue();
        }
        return this.d;
    }

    public TypedValue getMinWidthMajor() {
        if (this.a == null) {
            this.a = new TypedValue();
        }
        return this.a;
    }

    public TypedValue getMinWidthMinor() {
        if (this.b == null) {
            this.b = new TypedValue();
        }
        return this.b;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        P4 p4 = this.h;
        if (p4 != null) {
            p4.getClass();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        C0080d0 c0080d0;
        super.onDetachedFromWindow();
        P4 p4 = this.h;
        if (p4 != null) {
            LayoutInflaterFactory2C0439v1 layoutInflaterFactory2C0439v1 = ((C0200j1) p4).b;
            InterfaceC0363r5 interfaceC0363r5 = layoutInflaterFactory2C0439v1.r;
            if (interfaceC0363r5 != null) {
                ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) interfaceC0363r5;
                actionBarOverlayLayout.k();
                ActionMenuView actionMenuView = ((C0195ig) actionBarOverlayLayout.e).a.a;
                if (actionMenuView != null && (c0080d0 = actionMenuView.t) != null) {
                    c0080d0.f();
                    Z z = c0080d0.t;
                    if (z != null && z.b()) {
                        z.i.dismiss();
                    }
                }
            }
            if (layoutInflaterFactory2C0439v1.w != null) {
                layoutInflaterFactory2C0439v1.l.getDecorView().removeCallbacks(layoutInflaterFactory2C0439v1.x);
                if (layoutInflaterFactory2C0439v1.w.isShowing()) {
                    try {
                        layoutInflaterFactory2C0439v1.w.dismiss();
                    } catch (IllegalArgumentException unused) {
                    }
                }
                layoutInflaterFactory2C0439v1.w = null;
            }
            Ph ph = layoutInflaterFactory2C0439v1.y;
            if (ph != null) {
                ph.b();
            }
            MenuC0230kb menuC0230kb = layoutInflaterFactory2C0439v1.y(0).h;
            if (menuC0230kb != null) {
                menuC0230kb.c(true);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ac A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:46:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00b3  */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onMeasure(int r17, int r18) {
        /*
            Method dump skipped, instructions count: 229
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ContentFrameLayout.onMeasure(int, int):void");
    }

    public void setAttachListener(P4 p4) {
        this.h = p4;
    }
}
