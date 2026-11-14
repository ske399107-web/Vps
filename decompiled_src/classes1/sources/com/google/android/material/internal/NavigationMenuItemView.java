package com.google.android.material.internal;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.CheckedTextView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import java.util.WeakHashMap;
import o.AbstractC0054be;
import o.Bb;
import o.C0290nb;
import o.Dh;
import o.Ha;
import o.J3;
import o.M7;
import o.U9;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class NavigationMenuItemView extends M7 implements Bb {
    public static final int[] G = {R.attr.state_checked};
    public FrameLayout A;
    public C0290nb B;
    public ColorStateList C;
    public boolean D;
    public Drawable E;
    public final J3 F;
    public int v;
    public boolean w;
    public boolean x;
    public final boolean y;
    public final CheckedTextView z;

    public NavigationMenuItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.y = true;
        J3 j3 = new J3(3, this);
        this.F = j3;
        setOrientation(0);
        LayoutInflater.from(context).inflate(2131427371, (ViewGroup) this, true);
        setIconSize(context.getResources().getDimensionPixelSize(2131099767));
        CheckedTextView checkedTextView = (CheckedTextView) findViewById(2131230875);
        this.z = checkedTextView;
        checkedTextView.setDuplicateParentStateEnabled(true);
        Dh.l(checkedTextView, j3);
    }

    private void setActionView(View view) {
        if (view != null) {
            if (this.A == null) {
                this.A = (FrameLayout) ((ViewStub) findViewById(2131230874)).inflate();
            }
            if (view.getParent() != null) {
                ((ViewGroup) view.getParent()).removeView(view);
            }
            this.A.removeAllViews();
            this.A.addView(view);
        }
    }

    @Override // o.Bb
    public final void b(C0290nb c0290nb) {
        int i;
        StateListDrawable stateListDrawable;
        this.B = c0290nb;
        int i2 = c0290nb.a;
        if (i2 > 0) {
            setId(i2);
        }
        if (c0290nb.isVisible()) {
            i = 0;
        } else {
            i = 8;
        }
        setVisibility(i);
        if (getBackground() == null) {
            TypedValue typedValue = new TypedValue();
            if (getContext().getTheme().resolveAttribute(2130903288, typedValue, true)) {
                stateListDrawable = new StateListDrawable();
                stateListDrawable.addState(G, new ColorDrawable(typedValue.data));
                stateListDrawable.addState(ViewGroup.EMPTY_STATE_SET, new ColorDrawable(0));
            } else {
                stateListDrawable = null;
            }
            WeakHashMap weakHashMap = Dh.a;
            setBackground(stateListDrawable);
        }
        setCheckable(c0290nb.isCheckable());
        setChecked(c0290nb.isChecked());
        setEnabled(c0290nb.isEnabled());
        setTitle(c0290nb.e);
        setIcon(c0290nb.getIcon());
        setActionView(c0290nb.getActionView());
        setContentDescription(c0290nb.q);
        Ha.w0(this, c0290nb.r);
        C0290nb c0290nb2 = this.B;
        CharSequence charSequence = c0290nb2.e;
        CheckedTextView checkedTextView = this.z;
        if (charSequence == null && c0290nb2.getIcon() == null && this.B.getActionView() != null) {
            checkedTextView.setVisibility(8);
            FrameLayout frameLayout = this.A;
            if (frameLayout != null) {
                U9 u9 = (U9) frameLayout.getLayoutParams();
                ((LinearLayout.LayoutParams) u9).width = -1;
                this.A.setLayoutParams(u9);
                return;
            }
            return;
        }
        checkedTextView.setVisibility(0);
        FrameLayout frameLayout2 = this.A;
        if (frameLayout2 != null) {
            U9 u92 = (U9) frameLayout2.getLayoutParams();
            ((LinearLayout.LayoutParams) u92).width = -2;
            this.A.setLayoutParams(u92);
        }
    }

    @Override // o.Bb
    public C0290nb getItemData() {
        return this.B;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        C0290nb c0290nb = this.B;
        if (c0290nb != null && c0290nb.isCheckable() && this.B.isChecked()) {
            View.mergeDrawableStates(onCreateDrawableState, G);
        }
        return onCreateDrawableState;
    }

    public void setCheckable(boolean z) {
        refreshDrawableState();
        if (this.x != z) {
            this.x = z;
            this.F.h(this.z, 2048);
        }
    }

    public void setChecked(boolean z) {
        int i;
        refreshDrawableState();
        CheckedTextView checkedTextView = this.z;
        checkedTextView.setChecked(z);
        Typeface typeface = checkedTextView.getTypeface();
        if (z && this.y) {
            i = 1;
        } else {
            i = 0;
        }
        checkedTextView.setTypeface(typeface, i);
    }

    public void setHorizontalPadding(int i) {
        setPadding(i, getPaddingTop(), i, getPaddingBottom());
    }

    public void setIcon(Drawable drawable) {
        if (drawable != null) {
            if (this.D) {
                Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                drawable = drawable.mutate();
                drawable.setTintList(this.C);
            }
            int i = this.v;
            drawable.setBounds(0, 0, i, i);
        } else if (this.w) {
            if (this.E == null) {
                Resources resources = getResources();
                Resources.Theme theme = getContext().getTheme();
                ThreadLocal threadLocal = AbstractC0054be.a;
                Drawable drawable2 = resources.getDrawable(2131165406, theme);
                this.E = drawable2;
                if (drawable2 != null) {
                    int i2 = this.v;
                    drawable2.setBounds(0, 0, i2, i2);
                }
            }
            drawable = this.E;
        }
        this.z.setCompoundDrawablesRelative(drawable, null, null, null);
    }

    public void setIconPadding(int i) {
        this.z.setCompoundDrawablePadding(i);
    }

    public void setIconSize(int i) {
        this.v = i;
    }

    public void setIconTintList(ColorStateList colorStateList) {
        boolean z;
        this.C = colorStateList;
        if (colorStateList != null) {
            z = true;
        } else {
            z = false;
        }
        this.D = z;
        C0290nb c0290nb = this.B;
        if (c0290nb != null) {
            setIcon(c0290nb.getIcon());
        }
    }

    public void setMaxLines(int i) {
        this.z.setMaxLines(i);
    }

    public void setNeedsEmptyIcon(boolean z) {
        this.w = z;
    }

    public void setTextAppearance(int i) {
        this.z.setTextAppearance(i);
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.z.setTextColor(colorStateList);
    }

    public void setTitle(CharSequence charSequence) {
        this.z.setText(charSequence);
    }
}
