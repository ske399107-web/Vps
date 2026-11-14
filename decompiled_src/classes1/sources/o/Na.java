package o;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Na extends AbstractC0119f {
    public static final Parcelable.Creator<Na> CREATOR = new C0099e(4);
    public boolean c;

    public Na(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        if (classLoader == null) {
            Na.class.getClassLoader();
        }
        this.c = parcel.readInt() == 1;
    }

    @Override // o.AbstractC0119f, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.c ? 1 : 0);
    }
}
