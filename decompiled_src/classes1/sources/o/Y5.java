package o;

import com.ffrt.proxyread.VpnCaptureService;
import java.net.Inet4Address;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final /* synthetic */ class Y5 implements F8, Of {
    public static final Y5 b = new Y5(4);
    public static final Y5 c = new Y5(5);
    public static final Y5 d = new Y5(6);
    public static final Y5 e = new Y5(7);

    /* renamed from: f, reason: collision with root package name */
    public static final Y5 f166f = new Y5(8);
    public final /* synthetic */ int a;

    public /* synthetic */ Y5(int i) {
        this.a = i;
    }

    @Override // o.F8
    public Object b(Object obj) {
        switch (this.a) {
            case 2:
                int intValue = ((Integer) obj).intValue();
                boolean z = false;
                if (1 <= intValue && intValue < 51) {
                    z = true;
                }
                return Boolean.valueOf(z);
            default:
                return VpnCaptureService.b((Inet4Address) obj);
        }
    }
}
