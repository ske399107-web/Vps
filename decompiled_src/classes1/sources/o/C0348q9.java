package o;

import android.content.ClipDescription;
import android.net.Uri;
import android.view.inputmethod.InputContentInfo;

/* renamed from: o.q9, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0348q9 implements InterfaceC0367r9 {
    public final InputContentInfo a;

    public C0348q9(Object obj) {
        this.a = (InputContentInfo) obj;
    }

    @Override // o.InterfaceC0367r9
    public final void a() {
        this.a.requestPermission();
    }

    @Override // o.InterfaceC0367r9
    public final Uri b() {
        return this.a.getLinkUri();
    }

    @Override // o.InterfaceC0367r9
    public final ClipDescription c() {
        return this.a.getDescription();
    }

    @Override // o.InterfaceC0367r9
    public final Object d() {
        return this.a;
    }

    @Override // o.InterfaceC0367r9
    public final Uri e() {
        return this.a.getContentUri();
    }

    public C0348q9(Uri uri, ClipDescription clipDescription, Uri uri2) {
        this.a = new InputContentInfo(uri, clipDescription, uri2);
    }
}
