package o;

import android.os.Parcel;
import android.util.SparseIntArray;
import org.conscrypt.BuildConfig;

/* renamed from: o.mh, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0276mh extends AbstractC0256lh {
    public final SparseIntArray d;
    public final Parcel e;

    /* renamed from: f, reason: collision with root package name */
    public final int f256f;
    public final int g;
    public final String h;
    public int i;
    public int j;
    public int k;

    /* JADX WARN: Type inference failed for: r5v0, types: [o.Qe, o.E2] */
    /* JADX WARN: Type inference failed for: r6v0, types: [o.Qe, o.E2] */
    /* JADX WARN: Type inference failed for: r7v0, types: [o.Qe, o.E2] */
    public C0276mh(Parcel parcel) {
        this(parcel, parcel.dataPosition(), parcel.dataSize(), BuildConfig.FLAVOR, new Qe(0), new Qe(0), new Qe(0));
    }

    @Override // o.AbstractC0256lh
    public final C0276mh a() {
        Parcel parcel = this.e;
        int dataPosition = parcel.dataPosition();
        int i = this.j;
        if (i == this.f256f) {
            i = this.g;
        }
        return new C0276mh(parcel, dataPosition, i, Ve.k(new StringBuilder(), this.h, "  "), this.a, this.b, this.c);
    }

    @Override // o.AbstractC0256lh
    public final boolean e(int i) {
        while (this.j < this.g) {
            int i2 = this.k;
            if (i2 == i) {
                return true;
            }
            if (String.valueOf(i2).compareTo(String.valueOf(i)) > 0) {
                return false;
            }
            int i3 = this.j;
            Parcel parcel = this.e;
            parcel.setDataPosition(i3);
            int readInt = parcel.readInt();
            this.k = parcel.readInt();
            this.j += readInt;
        }
        if (this.k != i) {
            return false;
        }
        return true;
    }

    @Override // o.AbstractC0256lh
    public final void h(int i) {
        int i2 = this.i;
        SparseIntArray sparseIntArray = this.d;
        Parcel parcel = this.e;
        if (i2 >= 0) {
            int i3 = sparseIntArray.get(i2);
            int dataPosition = parcel.dataPosition();
            parcel.setDataPosition(i3);
            parcel.writeInt(dataPosition - i3);
            parcel.setDataPosition(dataPosition);
        }
        this.i = i;
        sparseIntArray.put(i, parcel.dataPosition());
        parcel.writeInt(0);
        parcel.writeInt(i);
    }

    public C0276mh(Parcel parcel, int i, int i2, String str, E2 e2, E2 e22, E2 e23) {
        super(e2, e22, e23);
        this.d = new SparseIntArray();
        this.i = -1;
        this.k = -1;
        this.e = parcel;
        this.f256f = i;
        this.g = i2;
        this.j = i;
        this.h = str;
    }
}
