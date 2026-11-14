package o;

import android.content.ClipData;
import android.content.ClipDescription;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.util.Log;
import android.widget.TextView;
import com.ffrt.proxyread.MainActivity;
import com.google.android.material.button.MaterialButton;

/* renamed from: o.s0, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final /* synthetic */ class C0378s0 implements F8 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ C0378s0(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    public boolean a(C c, int i, Bundle bundle) {
        Q4 q4;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 25 && (i & 1) != 0) {
            try {
                ((InterfaceC0367r9) c.b).a();
                Parcelable parcelable = (Parcelable) ((InterfaceC0367r9) c.b).d();
                if (bundle == null) {
                    bundle = new Bundle();
                } else {
                    bundle = new Bundle(bundle);
                }
                bundle.putParcelable("androidx.core.view.extra.INPUT_CONTENT_INFO", parcelable);
            } catch (Exception e) {
                Log.w("InputConnectionCompat", "Can't insert content from IME; requestPermission() failed", e);
                return false;
            }
        }
        ClipDescription c2 = ((InterfaceC0367r9) c.b).c();
        InterfaceC0367r9 interfaceC0367r9 = (InterfaceC0367r9) c.b;
        ClipData clipData = new ClipData(c2, new ClipData.Item(interfaceC0367r9.e()));
        if (i2 >= 31) {
            q4 = new C(clipData, 2);
        } else {
            R4 r4 = new R4();
            r4.b = clipData;
            r4.c = 2;
            q4 = r4;
        }
        q4.r(interfaceC0367r9.b());
        q4.p(bundle);
        if (Dh.h((A1) this.b, q4.build()) != null) {
            return false;
        }
        return true;
    }

    @Override // o.F8
    public Object b(Object obj) {
        String str;
        String str2;
        switch (this.a) {
            case 0:
                Context context = (Context) this.b;
                C0478x0 c0478x0 = (C0478x0) obj;
                AbstractC0487x9.o(c0478x0, "hit");
                String str3 = c0478x0.a;
                int hashCode = str3.hashCode();
                Handler handler = AbstractC0458w0.a;
                if (hashCode != -1181281975) {
                    if (hashCode != -46718530) {
                        if (hashCode == 1799571623 && str3.equals("_adb-tls-pairing._tcp.")) {
                            AbstractC0458w0.e = c0478x0.c;
                        }
                    } else if (str3.equals("_adb._tcp.") && AbstractC0458w0.f290f == 0) {
                        AbstractC0458w0.f290f = c0478x0.c;
                    }
                } else if (str3.equals("_adb-tls-connect._tcp.")) {
                    AbstractC0458w0.f290f = c0478x0.c;
                    if (context.getSharedPreferences("adb_session", 0).getBoolean("paired", false) && !AbstractC0487x9.T) {
                        AbstractC0458w0.c(context);
                    }
                }
                if (!AbstractC0487x9.T && !AbstractC0458w0.h) {
                    if (AbstractC0458w0.e > 0) {
                        str = AbstractC0214jf.a(AbstractC0458w0.e, "ghép :");
                    } else {
                        str = "chưa thấy cổng ghép";
                    }
                    if (AbstractC0458w0.f290f > 0) {
                        str2 = AbstractC0214jf.a(AbstractC0458w0.f290f, "nối :");
                    } else {
                        str2 = "chưa thấy cổng nối";
                    }
                    AbstractC0458w0.g = "127.0.0.1 · " + str + " · " + str2;
                    AbstractC0458w0.a();
                }
                int i = AbstractC0408ta.a;
                AbstractC0408ta.a("mDNS " + c0478x0.a + " :" + c0478x0.c);
                return Ug.a;
            default:
                String str4 = (String) obj;
                int i2 = MainActivity.I;
                AbstractC0487x9.o(str4, "text");
                MainActivity mainActivity = (MainActivity) this.b;
                TextView textView = mainActivity.A;
                if (textView != null) {
                    textView.setText(str4);
                }
                mainActivity.u();
                MaterialButton materialButton = mainActivity.E;
                if (materialButton != null) {
                    materialButton.setEnabled(!mainActivity.G);
                }
                return Ug.a;
        }
    }
}
