package o;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* renamed from: o.p5, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0324p5 implements Parcelable {
    public static final Parcelable.Creator<C0324p5> CREATOR = new C0239l0(6);
    public final long a;

    public C0324p5(long j) {
        this.a = j;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof C0324p5) && this.a == ((C0324p5) obj).a) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.a)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.a);
    }
}
