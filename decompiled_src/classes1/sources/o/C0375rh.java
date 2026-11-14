package o;

import android.text.TextUtils;
import android.view.View;

/* renamed from: o.rh, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0375rh extends Ef {
    public final /* synthetic */ int e;

    public C0375rh(int i, Class cls, int i2, int i3, int i4) {
        this.e = i4;
        this.a = i;
        this.d = cls;
        this.c = i2;
        this.b = i3;
    }

    @Override // o.Ef
    public final Object b(View view) {
        switch (this.e) {
            case 0:
                return Boolean.valueOf(AbstractC0514yh.c(view));
            case 1:
                return AbstractC0514yh.a(view);
            case 2:
                return Ah.a(view);
            default:
                return Boolean.valueOf(AbstractC0514yh.b(view));
        }
    }

    @Override // o.Ef
    public final void c(View view, Object obj) {
        switch (this.e) {
            case 0:
                AbstractC0514yh.f(view, ((Boolean) obj).booleanValue());
                return;
            case 1:
                AbstractC0514yh.e(view, (CharSequence) obj);
                return;
            case 2:
                Ah.b(view, (CharSequence) obj);
                return;
            default:
                AbstractC0514yh.d(view, ((Boolean) obj).booleanValue());
                return;
        }
    }

    @Override // o.Ef
    public final boolean e(Object obj, Object obj2) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        switch (this.e) {
            case 0:
                Boolean bool = (Boolean) obj;
                Boolean bool2 = (Boolean) obj2;
                boolean z5 = false;
                if (bool != null && bool.booleanValue()) {
                    z = true;
                } else {
                    z = false;
                }
                if (bool2 != null && bool2.booleanValue()) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (z == z2) {
                    z5 = true;
                }
                return !z5;
            case 1:
                return !TextUtils.equals((CharSequence) obj, (CharSequence) obj2);
            case 2:
                return !TextUtils.equals((CharSequence) obj, (CharSequence) obj2);
            default:
                Boolean bool3 = (Boolean) obj;
                Boolean bool4 = (Boolean) obj2;
                boolean z6 = false;
                if (bool3 != null && bool3.booleanValue()) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (bool4 != null && bool4.booleanValue()) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (z3 == z4) {
                    z6 = true;
                }
                return !z6;
        }
    }
}
