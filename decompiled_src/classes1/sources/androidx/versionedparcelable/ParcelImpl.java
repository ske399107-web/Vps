package androidx.versionedparcelable;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import o.C0239l0;
import o.C0276mh;
import o.InterfaceC0296nh;

@SuppressLint({"BanParcelableUsage"})
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class ParcelImpl implements Parcelable {
    public static final Parcelable.Creator<ParcelImpl> CREATOR = new C0239l0(14);
    public final InterfaceC0296nh a;

    public ParcelImpl(Parcel parcel) {
        this.a = new C0276mh(parcel).g();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        new C0276mh(parcel).i(this.a);
    }
}
