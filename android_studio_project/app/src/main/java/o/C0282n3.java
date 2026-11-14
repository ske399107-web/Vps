package o;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Objects;

/* renamed from: o.n3, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0282n3 implements Parcelable {
    public static final Parcelable.Creator<C0282n3> CREATOR = new C0239l0(5);
    public final Ib a;
    public final Ib b;
    public final C0324p5 c;
    public final Ib d;
    public final int e;

    /* renamed from: f, reason: collision with root package name */
    public final int f258f;
    public final int g;

    public C0282n3(Ib ib, Ib ib2, C0324p5 c0324p5, Ib ib3, int i) {
        Objects.requireNonNull(ib, "start cannot be null");
        Objects.requireNonNull(ib2, "end cannot be null");
        Objects.requireNonNull(c0324p5, "validator cannot be null");
        this.a = ib;
        this.b = ib2;
        this.d = ib3;
        this.e = i;
        this.c = c0324p5;
        if (ib3 != null && ib.a.compareTo(ib3.a) > 0) {
            throw new IllegalArgumentException("start Month cannot be after current Month");
        }
        if (ib3 != null && ib3.a.compareTo(ib2.a) > 0) {
            throw new IllegalArgumentException("current Month cannot be after end Month");
        }
        if (i >= 0 && i <= Xg.c(null).getMaximum(7)) {
            this.g = ib.d(ib2) + 1;
            this.f258f = (ib2.c - ib.c) + 1;
            return;
        }
        throw new IllegalArgumentException("firstDayOfWeek is not valid");
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0282n3)) {
            return false;
        }
        C0282n3 c0282n3 = (C0282n3) obj;
        if (this.a.equals(c0282n3.a) && this.b.equals(c0282n3.b) && Objects.equals(this.d, c0282n3.d) && this.e == c0282n3.e && this.c.equals(c0282n3.c)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, this.b, this.d, Integer.valueOf(this.e), this.c});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.a, 0);
        parcel.writeParcelable(this.b, 0);
        parcel.writeParcelable(this.d, 0);
        parcel.writeParcelable(this.c, 0);
        parcel.writeInt(this.e);
    }
}
