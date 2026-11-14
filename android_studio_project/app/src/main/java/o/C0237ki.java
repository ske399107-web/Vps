package o;

import com.ffrt.proxyread.VpsSession;
import com.ffrt.proxyread.WirelessPair;

/* renamed from: o.ki, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final /* synthetic */ class C0237ki implements InterfaceC0426u8 {
    public final /* synthetic */ int a;

    public /* synthetic */ C0237ki(int i) {
        this.a = i;
    }

    @Override // o.InterfaceC0426u8
    public final Object a() {
        switch (this.a) {
            case 0:
                try {
                    VpsSession.a();
                } catch (Exception unused) {
                }
                return Ug.a;
            default:
                return WirelessPair.c();
        }
    }
}
