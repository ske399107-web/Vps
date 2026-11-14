package o;

import android.os.Parcel;
import android.os.Parcelable;

/* renamed from: o.f8, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0128f8 implements Parcelable {
    public static final Parcelable.Creator<C0128f8> CREATOR = new C0239l0(7);
    public String a;
    public int b;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeInt(this.b);
    }
}
