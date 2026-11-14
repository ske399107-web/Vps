package o;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class N2 implements Parcelable {
    public static final Parcelable.Creator<N2> CREATOR = new C0239l0(2);
    public final int[] a;
    public final ArrayList b;
    public final int[] c;
    public final int[] d;
    public final int e;

    /* renamed from: f, reason: collision with root package name */
    public final String f126f;
    public final int g;
    public final int h;
    public final CharSequence i;
    public final int j;
    public final CharSequence k;
    public final ArrayList l;
    public final ArrayList m;
    public final boolean n;

    public N2(M2 m2) {
        int size = m2.a.size();
        this.a = new int[size * 6];
        if (m2.g) {
            this.b = new ArrayList(size);
            this.c = new int[size];
            this.d = new int[size];
            int i = 0;
            for (int i2 = 0; i2 < size; i2++) {
                C0366r8 c0366r8 = (C0366r8) m2.a.get(i2);
                int i3 = i + 1;
                this.a[i] = c0366r8.a;
                ArrayList arrayList = this.b;
                T7 t7 = c0366r8.b;
                arrayList.add(t7 != null ? t7.e : null);
                int[] iArr = this.a;
                iArr[i3] = c0366r8.c ? 1 : 0;
                iArr[i + 2] = c0366r8.d;
                iArr[i + 3] = c0366r8.e;
                int i4 = i + 5;
                iArr[i + 4] = c0366r8.f273f;
                i += 6;
                iArr[i4] = c0366r8.g;
                this.c[i2] = c0366r8.h.ordinal();
                this.d[i2] = c0366r8.i.ordinal();
            }
            this.e = m2.f122f;
            this.f126f = m2.h;
            this.g = m2.r;
            this.h = m2.i;
            this.i = m2.j;
            this.j = m2.k;
            this.k = m2.l;
            this.l = m2.m;
            this.m = m2.n;
            this.n = m2.f123o;
            return;
        }
        throw new IllegalStateException("Not on back stack");
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeIntArray(this.a);
        parcel.writeStringList(this.b);
        parcel.writeIntArray(this.c);
        parcel.writeIntArray(this.d);
        parcel.writeInt(this.e);
        parcel.writeString(this.f126f);
        parcel.writeInt(this.g);
        parcel.writeInt(this.h);
        TextUtils.writeToParcel(this.i, parcel, 0);
        parcel.writeInt(this.j);
        TextUtils.writeToParcel(this.k, parcel, 0);
        parcel.writeStringList(this.l);
        parcel.writeStringList(this.m);
        parcel.writeInt(this.n ? 1 : 0);
    }

    public N2(Parcel parcel) {
        this.a = parcel.createIntArray();
        this.b = parcel.createStringArrayList();
        this.c = parcel.createIntArray();
        this.d = parcel.createIntArray();
        this.e = parcel.readInt();
        this.f126f = parcel.readString();
        this.g = parcel.readInt();
        this.h = parcel.readInt();
        Parcelable.Creator creator = TextUtils.CHAR_SEQUENCE_CREATOR;
        this.i = (CharSequence) creator.createFromParcel(parcel);
        this.j = parcel.readInt();
        this.k = (CharSequence) creator.createFromParcel(parcel);
        this.l = parcel.createStringArrayList();
        this.m = parcel.createStringArrayList();
        this.n = parcel.readInt() != 0;
    }
}
