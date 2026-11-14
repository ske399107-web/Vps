package o;

import android.os.Parcel;
import android.os.Parcelable;

/* renamed from: o.gg, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0156gg extends AbstractC0119f {
    public static final Parcelable.Creator<C0156gg> CREATOR = new C0099e(8);
    public int c;
    public boolean d;

    public C0156gg(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        boolean z;
        this.c = parcel.readInt();
        if (parcel.readInt() != 0) {
            z = true;
        } else {
            z = false;
        }
        this.d = z;
    }

    @Override // o.AbstractC0119f, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.c);
        parcel.writeInt(this.d ? 1 : 0);
    }
}
