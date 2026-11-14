package o;

import android.content.Context;
import android.os.Handler;
import com.ffrt.proxyread.PacketEngine;
import com.ffrt.proxyread.VpnCaptureService;
//import org.conscrypt.BuildConfig // replaced by app BuildConfig

/* renamed from: o.t0, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final /* synthetic */ class C0398t0 implements InterfaceC0426u8 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Context c;

    public /* synthetic */ C0398t0(Object obj, Context context, int i) {
        this.a = i;
        this.b = obj;
        this.c = context;
    }

    @Override // o.InterfaceC0426u8
    public final Object a() {
        boolean z;
        String str;
        String concat;
        Ug startCapture$lambda$4;
        switch (this.a) {
            case 0:
                C0438v0 c0438v0 = (C0438v0) this.b;
                Context context = this.c;
                String str2 = "Ghép xong. Bấm Nối lại.";
                Handler handler = AbstractC0458w0.a;
                try {
                    int i = c0438v0.b;
                    if (1 <= i && i < 65536) {
                        AbstractC0458w0.e = i;
                    }
                    for (int i2 = 0; AbstractC0458w0.e == 0 && AbstractC0458w0.f290f == 0 && i2 < 50; i2++) {
                        Thread.sleep(100L);
                    }
                } catch (Exception e) {
                    e = e;
                    z = false;
                }
                if (AbstractC0458w0.e > 0) {
                    AbstractC0487x9.J(context, AbstractC0458w0.e, c0438v0.a);
                    try {
                        AbstractC0458w0.g = "Ghép xong, đang nối…";
                        AbstractC0458w0.a();
                        if (!AbstractC0487x9.t(context, AbstractC0458w0.f290f, 500L) && !AbstractC0487x9.a(context, AbstractC0458w0.f290f)) {
                            throw new IllegalStateException("Ghép xong. Bấm Nối lại.");
                        }
                        AbstractC0458w0.g = "ADB local đã nối.";
                        AbstractC0458w0.h = false;
                        int i3 = AbstractC0408ta.a;
                        AbstractC0458w0.a();
                    } catch (Exception e2) {
                        z = true;
                        e = e2;
                        AbstractC0458w0.h = false;
                        if (!AbstractC0487x9.a(context, AbstractC0458w0.f290f) && !AbstractC0487x9.D()) {
                            if (!z) {
                                String message = e.getMessage();
                                if (message != null) {
                                    str = AbstractC0413tf.L0(message).toString();
                                } else {
                                    str = null;
                                }
                                if (str == null) {
                                    str = BuildConfig.FLAVOR;
                                }
                                if (str.length() > 0 && !str.equals("null")) {
                                    concat = "Lỗi: ".concat(str);
                                } else {
                                    concat = "Lỗi: ".concat(e.getClass().getSimpleName());
                                }
                                str2 = concat;
                            }
                            AbstractC0458w0.g = str2;
                            int i4 = AbstractC0408ta.a;
                            AbstractC0408ta.a("ADB " + e.getClass().getSimpleName() + " " + e.getMessage());
                            AbstractC0458w0.a();
                        } else {
                            AbstractC0458w0.g = "ADB local đã nối.";
                            int i5 = AbstractC0408ta.a;
                            AbstractC0408ta.a("ADB connected after ".concat(e.getClass().getSimpleName()));
                            AbstractC0458w0.a();
                        }
                        return Ug.a;
                    }
                    return Ug.a;
                }
                throw new IllegalStateException("Chưa thấy cổng ghép. Giữ hộp thoại mã 6 số mở rồi gửi lại.");
            default:
                startCapture$lambda$4 = VpnCaptureService.startCapture$lambda$4((PacketEngine) this.b, (VpnCaptureService) this.c);
                return startCapture$lambda$4;
        }
    }
}
