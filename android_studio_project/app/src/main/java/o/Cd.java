package o;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Cd extends AbstractC0119f {
    public static final Parcelable.Creator<Cd> CREATOR = new C0099e(5);
    public Parcelable c;

    public Cd(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.c = parcel.readParcelable(classLoader == null ? AbstractC0431ud.class.getClassLoader() : classLoader);
    }

    @Override // o.AbstractC0119f, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeParcelable(this.c, 0);
    }
}
