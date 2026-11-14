package o;

import com.ffrt.proxyread.PacketEngine;

/* renamed from: o.vc, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final /* synthetic */ class C0450vc implements InterfaceC0426u8 {
    public final /* synthetic */ int a;
    public final /* synthetic */ PacketEngine b;
    public final /* synthetic */ C0509yc c;

    public /* synthetic */ C0450vc(PacketEngine packetEngine, C0509yc c0509yc, int i) {
        this.a = i;
        this.b = packetEngine;
        this.c = c0509yc;
    }

    @Override // o.InterfaceC0426u8
    public final Object a() {
        switch (this.a) {
            case 0:
                return PacketEngine.e(this.b, this.c);
            default:
                return PacketEngine.a(this.b, this.c);
        }
    }
}
