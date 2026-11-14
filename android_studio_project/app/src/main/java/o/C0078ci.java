package o;

import android.graphics.Matrix;
import android.os.Build;
import android.view.View;

/* renamed from: o.ci, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class C0078ci extends Ng {
    public static boolean e = true;

    /* renamed from: f, reason: collision with root package name */
    public static boolean f191f = true;
    public static boolean g = true;
    public static boolean h = true;

    public void B(View view, int i, int i2, int i3, int i4) {
        if (g) {
            try {
                AbstractC0038ai.a(view, i, i2, i3, i4);
            } catch (NoSuchMethodError unused) {
                g = false;
            }
        }
    }

    public void C(View view, Matrix matrix) {
        if (e) {
            try {
                Zh.b(view, matrix);
            } catch (NoSuchMethodError unused) {
                e = false;
            }
        }
    }

    public void D(View view, Matrix matrix) {
        if (f191f) {
            try {
                Zh.c(view, matrix);
            } catch (NoSuchMethodError unused) {
                f191f = false;
            }
        }
    }

    @Override // o.Ng
    public void y(View view, int i) {
        if (Build.VERSION.SDK_INT == 28) {
            super.y(view, i);
        } else if (h) {
            try {
                AbstractC0058bi.a(view, i);
            } catch (NoSuchMethodError unused) {
                h = false;
            }
        }
    }
}
