package o;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class D1 {
    public int a;
    public final Object b;
    public Object c;

    public D1(ImageView imageView) {
        this.a = 0;
        this.b = imageView;
    }

    /* JADX WARN: Code restructure failed: missing block: B:111:0x01c8, code lost:
    
        throw new org.xmlpull.v1.XmlPullParserException(r3.getPositionDescription() + ": <item> tag requires a 'color' attribute and a 'offset' attribute!");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static o.D1 b(android.content.res.Resources r29, int r30, android.content.res.Resources.Theme r31) {
        /*
            Method dump skipped, instructions count: 659
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: o.D1.b(android.content.res.Resources, int, android.content.res.Resources$Theme):o.D1");
    }

    public void a() {
        Xf xf;
        ImageView imageView = (ImageView) this.b;
        Drawable drawable = imageView.getDrawable();
        if (drawable != null) {
            AbstractC0166h6.a(drawable);
        }
        if (drawable != null && (xf = (Xf) this.c) != null) {
            C0498y1.e(drawable, xf, imageView.getDrawableState());
        }
    }

    public boolean c() {
        ColorStateList colorStateList;
        if (((Shader) this.b) == null && (colorStateList = (ColorStateList) this.c) != null && colorStateList.isStateful()) {
            return true;
        }
        return false;
    }

    public void d(AttributeSet attributeSet, int i) {
        int resourceId;
        ImageView imageView = (ImageView) this.b;
        Context context = imageView.getContext();
        int[] iArr = AbstractC0153gd.f216f;
        C0380s2 y = C0380s2.y(context, attributeSet, iArr, i);
        Dh.k(imageView, imageView.getContext(), iArr, attributeSet, (TypedArray) y.b, i);
        try {
            Drawable drawable = imageView.getDrawable();
            TypedArray typedArray = (TypedArray) y.b;
            if (drawable == null && (resourceId = typedArray.getResourceId(1, -1)) != -1 && (drawable = L1.z(imageView.getContext(), resourceId)) != null) {
                imageView.setImageDrawable(drawable);
            }
            if (drawable != null) {
                AbstractC0166h6.a(drawable);
            }
            if (typedArray.hasValue(2)) {
                imageView.setImageTintList(y.n(2));
            }
            if (typedArray.hasValue(3)) {
                imageView.setImageTintMode(AbstractC0166h6.c(typedArray.getInt(3, -1), null));
            }
            y.A();
        } catch (Throwable th) {
            y.A();
            throw th;
        }
    }

    public D1(Shader shader, ColorStateList colorStateList, int i) {
        this.b = shader;
        this.c = colorStateList;
        this.a = i;
    }
}
