package o;

import com.ffrt.proxyread.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;

/* renamed from: o.x1, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0479x1 {
    public final int[] a = {2131165300, 2131165298, 2131165224};
    public final int[] b = {2131165248, 2131165283, 2131165255, 2131165250, 2131165251, 2131165254, 2131165253};
    public final int[] c = {2131165297, 2131165299, 2131165241, 2131165293, 2131165294, 2131165295, 2131165296};
    public final int[] d = {2131165273, 2131165239, 2131165272};
    public final int[] e = {2131165291, 2131165301};

    /* renamed from: f, reason: collision with root package name */
    public final int[] f292f = {2131165227, 2131165233, 2131165228, 2131165234};

    public static boolean a(int[] iArr, int i) {
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    public static ColorStateList b(Context context, int i) {
        int c = Tf.c(context, 2130903288);
        int b = Tf.b(context, 2130903285);
        int[] iArr = Tf.b;
        int[] iArr2 = Tf.d;
        int b2 = AbstractC0263m4.b(c, i);
        return new ColorStateList(new int[][]{iArr, iArr2, Tf.c, Tf.f150f}, new int[]{b, b2, AbstractC0263m4.b(c, i), i});
    }

    public static LayerDrawable c(Xd xd, Context context, int i) {
        BitmapDrawable bitmapDrawable;
        BitmapDrawable bitmapDrawable2;
        BitmapDrawable bitmapDrawable3;
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(i);
        Drawable c = xd.c(context, 2131165287);
        Drawable c2 = xd.c(context, 2131165288);
        if ((c instanceof BitmapDrawable) && c.getIntrinsicWidth() == dimensionPixelSize && c.getIntrinsicHeight() == dimensionPixelSize) {
            bitmapDrawable = (BitmapDrawable) c;
            bitmapDrawable2 = new BitmapDrawable(bitmapDrawable.getBitmap());
        } else {
            Bitmap createBitmap = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            c.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
            c.draw(canvas);
            bitmapDrawable = new BitmapDrawable(createBitmap);
            bitmapDrawable2 = new BitmapDrawable(createBitmap);
        }
        bitmapDrawable2.setTileModeX(Shader.TileMode.REPEAT);
        if ((c2 instanceof BitmapDrawable) && c2.getIntrinsicWidth() == dimensionPixelSize && c2.getIntrinsicHeight() == dimensionPixelSize) {
            bitmapDrawable3 = (BitmapDrawable) c2;
        } else {
            Bitmap createBitmap2 = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
            Canvas canvas2 = new Canvas(createBitmap2);
            c2.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
            c2.draw(canvas2);
            bitmapDrawable3 = new BitmapDrawable(createBitmap2);
        }
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{bitmapDrawable, bitmapDrawable3, bitmapDrawable2});
        layerDrawable.setId(0, R.id.background);
        layerDrawable.setId(1, R.id.secondaryProgress);
        layerDrawable.setId(2, R.id.progress);
        return layerDrawable;
    }

    public static void e(Drawable drawable, int i, PorterDuff.Mode mode) {
        Drawable mutate = drawable.mutate();
        if (mode == null) {
            mode = C0498y1.b;
        }
        mutate.setColorFilter(C0498y1.c(i, mode));
    }

    public final ColorStateList d(Context context, int i) {
        if (i == 2131165244) {
            return L1.v(context, 2131034133);
        }
        if (i == 2131165290) {
            return L1.v(context, 2131034136);
        }
        if (i == 2131165289) {
            int[][] iArr = new int[3];
            int[] iArr2 = new int[3];
            ColorStateList d = Tf.d(context, 2130903338);
            if (d != null && d.isStateful()) {
                int[] iArr3 = Tf.b;
                iArr[0] = iArr3;
                iArr2[0] = d.getColorForState(iArr3, 0);
                iArr[1] = Tf.e;
                iArr2[1] = Tf.c(context, 2130903287);
                iArr[2] = Tf.f150f;
                iArr2[2] = d.getDefaultColor();
            } else {
                iArr[0] = Tf.b;
                iArr2[0] = Tf.b(context, 2130903338);
                iArr[1] = Tf.e;
                iArr2[1] = Tf.c(context, 2130903287);
                iArr[2] = Tf.f150f;
                iArr2[2] = Tf.c(context, 2130903338);
            }
            return new ColorStateList(iArr, iArr2);
        }
        if (i == 2131165232) {
            return b(context, Tf.c(context, 2130903285));
        }
        if (i == 2131165226) {
            return b(context, 0);
        }
        if (i == 2131165231) {
            return b(context, Tf.c(context, 2130903283));
        }
        if (i != 2131165285 && i != 2131165286) {
            if (a(this.b, i)) {
                return Tf.d(context, 2130903289);
            }
            if (a(this.e, i)) {
                return L1.v(context, 2131034132);
            }
            if (a(this.f292f, i)) {
                return L1.v(context, 2131034131);
            }
            if (i == 2131165282) {
                return L1.v(context, 2131034134);
            }
            return null;
        }
        return L1.v(context, 2131034135);
    }
}
