package o;

import android.content.Context;
import com.ffrt.proxyread.WirelessPair;

/* renamed from: o.r0, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final /* synthetic */ class C0358r0 implements InterfaceC0426u8 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ C0358r0(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    @Override // o.InterfaceC0426u8
    public final Object a() {
        boolean t;
        Ug start$lambda$2;
        switch (this.a) {
            case 0:
                Context context = (Context) this.b;
                AbstractC0487x9.l(context);
                int i = AbstractC0458w0.f290f;
                if (AbstractC0487x9.D()) {
                    t = true;
                    AbstractC0487x9.T = true;
                } else {
                    t = AbstractC0487x9.t(context, i, 0L);
                }
                AbstractC0458w0.i = false;
                if (t) {
                    AbstractC0458w0.g = "ADB local đã nối lại.";
                    int i2 = AbstractC0408ta.a;
                } else if (!AbstractC0487x9.T) {
                    AbstractC0458w0.g = "Chưa nối. Vuốt thông báo, nhập mã 6 số, bấm Kết nối.";
                }
                AbstractC0458w0.a();
                return Ug.a;
            case 1:
                ((U0) this.b).reportFullyDrawn();
                return null;
            default:
                start$lambda$2 = WirelessPair.start$lambda$2((String) this.b);
                return start$lambda$2;
        }
    }
}
