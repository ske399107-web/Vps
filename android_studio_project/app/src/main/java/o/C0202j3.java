package o;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.AbsSavedState;
import com.google.android.material.bottomsheet.BottomSheetBehavior;

/* renamed from: o.j3, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0202j3 extends AbstractC0119f {
    public static final Parcelable.Creator<C0202j3> CREATOR = new C0099e(1);
    public final int c;
    public final int d;
    public final boolean e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f239f;
    public final boolean g;

    public C0202j3(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.c = parcel.readInt();
        this.d = parcel.readInt();
        this.e = parcel.readInt() == 1;
        this.f239f = parcel.readInt() == 1;
        this.g = parcel.readInt() == 1;
    }

    @Override // o.AbstractC0119f, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.c);
        parcel.writeInt(this.d);
        parcel.writeInt(this.e ? 1 : 0);
        parcel.writeInt(this.f239f ? 1 : 0);
        parcel.writeInt(this.g ? 1 : 0);
    }

    public C0202j3(AbsSavedState absSavedState, BottomSheetBehavior bottomSheetBehavior) {
        super(absSavedState);
        this.c = bottomSheetBehavior.L;
        this.d = bottomSheetBehavior.e;
        this.e = bottomSheetBehavior.b;
        this.f239f = bottomSheetBehavior.I;
        this.g = bottomSheetBehavior.J;
    }
}
