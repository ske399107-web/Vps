package o;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* renamed from: o.j8, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0207j8 implements Parcelable {
    public static final Parcelable.Creator<C0207j8> CREATOR = new C0239l0(8);
    public ArrayList a;
    public ArrayList b;
    public N2[] c;
    public int d;
    public String e;

    /* renamed from: f, reason: collision with root package name */
    public ArrayList f240f;
    public ArrayList g;
    public ArrayList h;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeStringList(this.a);
        parcel.writeStringList(this.b);
        parcel.writeTypedArray(this.c, i);
        parcel.writeInt(this.d);
        parcel.writeString(this.e);
        parcel.writeStringList(this.f240f);
        parcel.writeTypedList(this.g);
        parcel.writeTypedList(this.h);
    }
}
