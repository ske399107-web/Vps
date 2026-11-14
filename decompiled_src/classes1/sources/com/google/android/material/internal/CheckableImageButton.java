package com.google.android.material.internal;

import android.R;
import android.content.Context;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Checkable;
import o.AbstractC0119f;
import o.C1;
import o.Dh;
import o.J3;
import o.K3;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class CheckableImageButton extends C1 implements Checkable {
    public static final int[] g = {R.attr.state_checked};
    public boolean d;
    public boolean e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f54f;

    public CheckableImageButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 2130903612);
        this.e = true;
        this.f54f = true;
        Dh.l(this, new J3(0, this));
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.d;
    }

    @Override // android.widget.ImageView, android.view.View
    public final int[] onCreateDrawableState(int i) {
        if (this.d) {
            return View.mergeDrawableStates(super.onCreateDrawableState(i + 1), g);
        }
        return super.onCreateDrawableState(i);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof K3)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        K3 k3 = (K3) parcelable;
        super.onRestoreInstanceState(k3.a);
        setChecked(k3.c);
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [android.os.Parcelable, o.K3, o.f] */
    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        ?? abstractC0119f = new AbstractC0119f(super.onSaveInstanceState());
        abstractC0119f.c = this.d;
        return abstractC0119f;
    }

    public void setCheckable(boolean z) {
        if (this.e != z) {
            this.e = z;
            sendAccessibilityEvent(0);
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (this.e && this.d != z) {
            this.d = z;
            refreshDrawableState();
            sendAccessibilityEvent(2048);
        }
    }

    public void setPressable(boolean z) {
        this.f54f = z;
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        if (this.f54f) {
            super.setPressed(z);
        }
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        setChecked(!this.d);
    }
}
