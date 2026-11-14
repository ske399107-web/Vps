package o;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class K3 extends AbstractC0119f {
    public static final Parcelable.Creator<K3> CREATOR = new C0099e(2);
    public boolean c;

    public K3(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.c = parcel.readInt() == 1;
    }

    @Override // o.AbstractC0119f, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.c ? 1 : 0);
    }
}
