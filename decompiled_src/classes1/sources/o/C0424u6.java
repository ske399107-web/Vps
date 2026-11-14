package o;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.View;
import java.io.Serializable;
import org.conscrypt.BuildConfig;

/* renamed from: o.u6, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class C0424u6 implements InterfaceC0527zb, Vc {
    public static final C0424u6 b = new C0424u6(1);
    public static final C0424u6 c = new C0424u6(2);
    public static final C0424u6 d = new C0424u6(3);
    public static final C0424u6 e = new C0424u6(4);
    public final /* synthetic */ int a;

    public /* synthetic */ C0424u6(int i) {
        this.a = i;
    }

    public static C0424u6 b(Context context, int i) {
        boolean z;
        if (i != 0) {
            z = true;
        } else {
            z = false;
        }
        Ha.e(z, "Cannot create a CalendarItemStyle with a styleResId of 0");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, AbstractC0133fd.m);
        Rect rect = new Rect(obtainStyledAttributes.getDimensionPixelOffset(0, 0), obtainStyledAttributes.getDimensionPixelOffset(2, 0), obtainStyledAttributes.getDimensionPixelOffset(1, 0), obtainStyledAttributes.getDimensionPixelOffset(3, 0));
        Ha.F(context, obtainStyledAttributes, 4);
        Ha.F(context, obtainStyledAttributes, 9);
        Ha.F(context, obtainStyledAttributes, 7);
        obtainStyledAttributes.getDimensionPixelSize(8, 0);
        Ae.a(context, obtainStyledAttributes.getResourceId(5, 0), obtainStyledAttributes.getResourceId(6, 0), new C0139g(0)).a();
        obtainStyledAttributes.recycle();
        C0424u6 c0424u6 = new C0424u6(8);
        Ha.f(rect.left);
        Ha.f(rect.top);
        Ha.f(rect.right);
        Ha.f(rect.bottom);
        return c0424u6;
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0045, code lost:
    
        if (java.lang.Character.isHighSurrogate(r5) != false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0082, code lost:
    
        if (java.lang.Character.isLowSurrogate(r5) != false) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0075, code lost:
    
        if (r11 != false) goto L46;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean j(o.I6 r7, android.text.Editable r8, int r9, int r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 240
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: o.C0424u6.j(o.I6, android.text.Editable, int, int, boolean):boolean");
    }

    private final void k() {
    }

    private final void l(int i, Serializable serializable) {
    }

    @Override // o.InterfaceC0527zb
    public void a(MenuC0230kb menuC0230kb, boolean z) {
    }

    public boolean c() {
        return this instanceof Ja;
    }

    public B0 d(Context context) {
        AbstractC0487x9.o(context, "ctx");
        B0 b0 = B0.d;
        if (b0 == null) {
            synchronized (this) {
                b0 = B0.d;
                if (b0 == null) {
                    b0 = new B0(context);
                    B0.d = b0;
                }
            }
        }
        return b0;
    }

    @Override // o.Vc
    public void e(int i, Serializable serializable) {
        String str;
        switch (this.a) {
            case 20:
                return;
            default:
                switch (i) {
                    case 1:
                        str = "RESULT_INSTALL_SUCCESS";
                        break;
                    case 2:
                        str = "RESULT_ALREADY_INSTALLED";
                        break;
                    case 3:
                        str = "RESULT_UNSUPPORTED_ART_VERSION";
                        break;
                    case 4:
                        str = "RESULT_NOT_WRITABLE";
                        break;
                    case 5:
                        str = "RESULT_DESIRED_FORMAT_UNSUPPORTED";
                        break;
                    case 6:
                        str = "RESULT_BASELINE_PROFILE_NOT_FOUND";
                        break;
                    case 7:
                        str = "RESULT_IO_EXCEPTION";
                        break;
                    case 8:
                        str = "RESULT_PARSE_EXCEPTION";
                        break;
                    case 9:
                    default:
                        str = BuildConfig.FLAVOR;
                        break;
                    case 10:
                        str = "RESULT_INSTALL_SKIP_FILE_SUCCESS";
                        break;
                    case 11:
                        str = "RESULT_DELETE_SKIP_FILE_SUCCESS";
                        break;
                }
                if (i != 6 && i != 7 && i != 8) {
                    Log.d("ProfileInstaller", str);
                    return;
                } else {
                    Log.e("ProfileInstaller", str, (Throwable) serializable);
                    return;
                }
        }
    }

    public void f(float f2, float f3, float f4, Ke ke) {
        ke.c(f2, 0.0f);
    }

    @Override // o.InterfaceC0527zb
    public boolean g(MenuC0230kb menuC0230kb) {
        return false;
    }

    public Signature[] h(PackageManager packageManager, String str) {
        return packageManager.getPackageInfo(str, 64).signatures;
    }

    @Override // o.Vc
    public void i() {
        switch (this.a) {
            case 20:
                return;
            default:
                Log.d("ProfileInstaller", "DIAGNOSTIC_PROFILE_IS_COMPRESSED");
                return;
        }
    }

    public /* synthetic */ C0424u6(View view, int i) {
        this.a = i;
    }

    public C0424u6(View view) {
        this.a = 29;
        if (Build.VERSION.SDK_INT >= 30) {
            new C0424u6(view, 28);
        } else {
            new C0424u6(view, 28);
        }
    }
}
