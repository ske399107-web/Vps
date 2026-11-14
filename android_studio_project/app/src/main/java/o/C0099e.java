package o;

import android.os.Parcel;
import android.os.Parcelable;

/* renamed from: o.e, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0099e implements Parcelable.ClassLoaderCreator {
    public final /* synthetic */ int a;

    public /* synthetic */ C0099e(int i) {
        this.a = i;
    }

    @Override // android.os.Parcelable.ClassLoaderCreator
    public final Object createFromParcel(Parcel parcel, ClassLoader classLoader) {
        switch (this.a) {
            case 0:
                if (parcel.readParcelable(classLoader) == null) {
                    return AbstractC0119f.b;
                }
                throw new IllegalStateException("superState must be null");
            case 1:
                return new C0202j3(parcel, classLoader);
            case 2:
                return new K3(parcel, classLoader);
            case 3:
                return new C0045b5(parcel, classLoader);
            case 4:
                return new Na(parcel, classLoader);
            case 5:
                return new Cd(parcel, classLoader);
            case 6:
                return new Pe(parcel, classLoader);
            case 7:
                return new Pf(parcel, classLoader);
            default:
                return new C0156gg(parcel, classLoader);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i) {
        switch (this.a) {
            case 0:
                return new AbstractC0119f[i];
            case 1:
                return new C0202j3[i];
            case 2:
                return new K3[i];
            case 3:
                return new C0045b5[i];
            case 4:
                return new Na[i];
            case 5:
                return new Cd[i];
            case 6:
                return new Pe[i];
            case 7:
                return new Pf[i];
            default:
                return new C0156gg[i];
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        switch (this.a) {
            case 0:
                if (parcel.readParcelable(null) == null) {
                    return AbstractC0119f.b;
                }
                throw new IllegalStateException("superState must be null");
            case 1:
                return new C0202j3(parcel, (ClassLoader) null);
            case 2:
                return new K3(parcel, null);
            case 3:
                return new C0045b5(parcel, null);
            case 4:
                return new Na(parcel, null);
            case 5:
                return new Cd(parcel, null);
            case 6:
                return new Pe(parcel, (ClassLoader) null);
            case 7:
                return new Pf(parcel, null);
            default:
                return new C0156gg(parcel, null);
        }
    }
}
