package o;

import android.content.Context;
import android.graphics.drawable.Drawable;

/* renamed from: o.c0, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0060c0 extends E1 implements InterfaceC0100e0 {
    public final /* synthetic */ C0080d0 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0060c0(C0080d0 c0080d0, Context context) {
        super(context, null, 2130903073);
        this.d = c0080d0;
        setClickable(true);
        setFocusable(true);
        setVisibility(0);
        setEnabled(true);
        Ha.w0(this, getContentDescription());
        setOnTouchListener(new X(this, this));
    }

    @Override // o.InterfaceC0100e0
    public final boolean a() {
        return false;
    }

    @Override // o.InterfaceC0100e0
    public final boolean c() {
        return false;
    }

    @Override // android.view.View
    public final boolean performClick() {
        if (super.performClick()) {
            return true;
        }
        playSoundEffect(0);
        this.d.l();
        return true;
    }

    @Override // android.widget.ImageView
    public final boolean setFrame(int i, int i2, int i3, int i4) {
        boolean frame = super.setFrame(i, i2, i3, i4);
        Drawable drawable = getDrawable();
        Drawable background = getBackground();
        if (drawable != null && background != null) {
            int width = getWidth();
            int height = getHeight();
            int max = Math.max(width, height) / 2;
            int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
            int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
            background.setHotspotBounds(paddingLeft - max, paddingTop - max, paddingLeft + max, paddingTop + max);
        }
        return frame;
    }
}
