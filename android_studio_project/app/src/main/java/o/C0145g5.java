package o;

import com.google.android.material.internal.CheckableImageButton;

/* renamed from: o.g5, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0145g5 extends AbstractC0067c7 {
    public final /* synthetic */ int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0145g5(C0047b7 c0047b7, int i) {
        super(c0047b7);
        this.e = i;
    }

    @Override // o.AbstractC0067c7
    public void r() {
        switch (this.e) {
            case 0:
                C0047b7 c0047b7 = this.b;
                c0047b7.f183o = null;
                CheckableImageButton checkableImageButton = c0047b7.g;
                checkableImageButton.setOnLongClickListener(null);
                L1.Z(checkableImageButton, null);
                return;
            default:
                return;
        }
    }
}
