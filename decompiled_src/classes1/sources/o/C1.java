package o;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageButton;
import android.widget.ImageView;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class C1 extends ImageButton {
    public final W0 a;
    public final D1 b;
    public boolean c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Wf.a(context);
        this.c = false;
        Tf.a(this, getContext());
        W0 w0 = new W0(this);
        this.a = w0;
        w0.d(attributeSet, i);
        D1 d1 = new D1(this);
        this.b = d1;
        d1.d(attributeSet, i);
    }

    @Override // android.widget.ImageView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        W0 w0 = this.a;
        if (w0 != null) {
            w0.a();
        }
        D1 d1 = this.b;
        if (d1 != null) {
            d1.a();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        W0 w0 = this.a;
        if (w0 != null) {
            return w0.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        W0 w0 = this.a;
        if (w0 != null) {
            return w0.c();
        }
        return null;
    }

    public ColorStateList getSupportImageTintList() {
        Xf xf;
        D1 d1 = this.b;
        if (d1 == null || (xf = (Xf) d1.c) == null) {
            return null;
        }
        return xf.a;
    }

    public PorterDuff.Mode getSupportImageTintMode() {
        Xf xf;
        D1 d1 = this.b;
        if (d1 == null || (xf = (Xf) d1.c) == null) {
            return null;
        }
        return xf.b;
    }

    @Override // android.widget.ImageView, android.view.View
    public final boolean hasOverlappingRendering() {
        if (!(((ImageView) this.b.b).getBackground() instanceof RippleDrawable) && super.hasOverlappingRendering()) {
            return true;
        }
        return false;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        W0 w0 = this.a;
        if (w0 != null) {
            w0.e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        W0 w0 = this.a;
        if (w0 != null) {
            w0.f(i);
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        D1 d1 = this.b;
        if (d1 != null) {
            d1.a();
        }
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        D1 d1 = this.b;
        if (d1 != null && drawable != null && !this.c) {
            d1.a = drawable.getLevel();
        }
        super.setImageDrawable(drawable);
        if (d1 != null) {
            d1.a();
            if (!this.c) {
                ImageView imageView = (ImageView) d1.b;
                if (imageView.getDrawable() != null) {
                    imageView.getDrawable().setLevel(d1.a);
                }
            }
        }
    }

    @Override // android.widget.ImageView
    public void setImageLevel(int i) {
        super.setImageLevel(i);
        this.c = true;
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        D1 d1 = this.b;
        ImageView imageView = (ImageView) d1.b;
        if (i != 0) {
            Drawable z = L1.z(imageView.getContext(), i);
            if (z != null) {
                AbstractC0166h6.a(z);
            }
            imageView.setImageDrawable(z);
        } else {
            imageView.setImageDrawable(null);
        }
        d1.a();
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        D1 d1 = this.b;
        if (d1 != null) {
            d1.a();
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        W0 w0 = this.a;
        if (w0 != null) {
            w0.h(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        W0 w0 = this.a;
        if (w0 != null) {
            w0.i(mode);
        }
    }

    public void setSupportImageTintList(ColorStateList colorStateList) {
        D1 d1 = this.b;
        if (d1 != null) {
            if (((Xf) d1.c) == null) {
                d1.c = new Object();
            }
            Xf xf = (Xf) d1.c;
            xf.a = colorStateList;
            xf.d = true;
            d1.a();
        }
    }

    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        D1 d1 = this.b;
        if (d1 != null) {
            if (((Xf) d1.c) == null) {
                d1.c = new Object();
            }
            Xf xf = (Xf) d1.c;
            xf.b = mode;
            xf.c = true;
            d1.a();
        }
    }
}
