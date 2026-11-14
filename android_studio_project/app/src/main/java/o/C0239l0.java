package o;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import androidx.versionedparcelable.ParcelImpl;
import java.util.ArrayList;

/* renamed from: o.l0, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0239l0 implements Parcelable.Creator {
    public final /* synthetic */ int a;

    /* JADX WARN: Type inference failed for: r0v13, types: [o.f8, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v14, types: [java.lang.Object, o.j8] */
    /* JADX WARN: Type inference failed for: r0v16, types: [java.lang.Object, o.Z9] */
    /* JADX WARN: Type inference failed for: r0v17, types: [android.view.View$BaseSavedState, java.lang.Object, o.Xa] */
    /* JADX WARN: Type inference failed for: r0v19, types: [android.view.View$BaseSavedState, java.lang.Object, o.Sb] */
    /* JADX WARN: Type inference failed for: r0v2, types: [android.view.View$BaseSavedState, o.W1, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v21, types: [o.ef, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v22, types: [java.lang.Object, o.ff] */
    /* JADX WARN: Type inference failed for: r0v5, types: [android.view.View$BaseSavedState, o.V2, java.lang.Object] */
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        boolean z;
        boolean z2;
        boolean z3;
        switch (this.a) {
            case 0:
                return new C0259m0(parcel);
            case 1:
                ?? baseSavedState = new View.BaseSavedState(parcel);
                if (parcel.readByte() != 0) {
                    z = true;
                } else {
                    z = false;
                }
                baseSavedState.a = z;
                return baseSavedState;
            case 2:
                return new N2(parcel);
            case 3:
                return new O2(parcel);
            case 4:
                ?? baseSavedState2 = new View.BaseSavedState(parcel);
                baseSavedState2.a = parcel.readFloat();
                baseSavedState2.b = parcel.readFloat();
                ArrayList arrayList = new ArrayList();
                baseSavedState2.c = arrayList;
                parcel.readList(arrayList, Float.class.getClassLoader());
                baseSavedState2.d = parcel.readFloat();
                baseSavedState2.e = parcel.createBooleanArray()[0];
                return baseSavedState2;
            case 5:
                return new C0282n3((Ib) parcel.readParcelable(Ib.class.getClassLoader()), (Ib) parcel.readParcelable(Ib.class.getClassLoader()), (C0324p5) parcel.readParcelable(C0324p5.class.getClassLoader()), (Ib) parcel.readParcelable(Ib.class.getClassLoader()), parcel.readInt());
            case 6:
                return new C0324p5(parcel.readLong());
            case 7:
                ?? obj = new Object();
                obj.a = parcel.readString();
                obj.b = parcel.readInt();
                return obj;
            case 8:
                ?? obj2 = new Object();
                obj2.e = null;
                obj2.f240f = new ArrayList();
                obj2.g = new ArrayList();
                obj2.a = parcel.createStringArrayList();
                obj2.b = parcel.createStringArrayList();
                obj2.c = (N2[]) parcel.createTypedArray(N2.CREATOR);
                obj2.d = parcel.readInt();
                obj2.e = parcel.readString();
                obj2.f240f = parcel.createStringArrayList();
                obj2.g = parcel.createTypedArrayList(O2.CREATOR);
                obj2.h = parcel.createTypedArrayList(C0128f8.CREATOR);
                return obj2;
            case 9:
                return new C0287n8(parcel);
            case 10:
                ?? obj3 = new Object();
                obj3.a = parcel.readInt();
                obj3.b = parcel.readInt();
                boolean z4 = true;
                if (parcel.readInt() != 1) {
                    z4 = false;
                }
                obj3.c = z4;
                return obj3;
            case 11:
                ?? baseSavedState3 = new View.BaseSavedState(parcel);
                baseSavedState3.a = ((Integer) parcel.readValue(Xa.class.getClassLoader())).intValue();
                return baseSavedState3;
            case 12:
                return Ib.a(parcel.readInt(), parcel.readInt());
            case 13:
                ?? baseSavedState4 = new View.BaseSavedState(parcel);
                baseSavedState4.a = parcel.readInt();
                return baseSavedState4;
            case 14:
                return new ParcelImpl(parcel);
            case 15:
                ?? obj4 = new Object();
                obj4.a = parcel.readInt();
                obj4.b = parcel.readInt();
                boolean z5 = true;
                if (parcel.readInt() != 1) {
                    z5 = false;
                }
                obj4.d = z5;
                int readInt = parcel.readInt();
                if (readInt > 0) {
                    int[] iArr = new int[readInt];
                    obj4.c = iArr;
                    parcel.readIntArray(iArr);
                }
                return obj4;
            default:
                ?? obj5 = new Object();
                obj5.a = parcel.readInt();
                obj5.b = parcel.readInt();
                int readInt2 = parcel.readInt();
                obj5.c = readInt2;
                if (readInt2 > 0) {
                    int[] iArr2 = new int[readInt2];
                    obj5.d = iArr2;
                    parcel.readIntArray(iArr2);
                }
                int readInt3 = parcel.readInt();
                obj5.e = readInt3;
                if (readInt3 > 0) {
                    int[] iArr3 = new int[readInt3];
                    obj5.f211f = iArr3;
                    parcel.readIntArray(iArr3);
                }
                boolean z6 = false;
                if (parcel.readInt() == 1) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                obj5.h = z2;
                if (parcel.readInt() == 1) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                obj5.i = z3;
                if (parcel.readInt() == 1) {
                    z6 = true;
                }
                obj5.j = z6;
                obj5.g = parcel.readArrayList(C0115ef.class.getClassLoader());
                return obj5;
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i) {
        switch (this.a) {
            case 0:
                return new C0259m0[i];
            case 1:
                return new W1[i];
            case 2:
                return new N2[i];
            case 3:
                return new O2[i];
            case 4:
                return new V2[i];
            case 5:
                return new C0282n3[i];
            case 6:
                return new C0324p5[i];
            case 7:
                return new C0128f8[i];
            case 8:
                return new C0207j8[i];
            case 9:
                return new C0287n8[i];
            case 10:
                return new Z9[i];
            case 11:
                return new Xa[i];
            case 12:
                return new Ib[i];
            case 13:
                return new Sb[i];
            case 14:
                return new ParcelImpl[i];
            case 15:
                return new C0115ef[i];
            default:
                return new C0135ff[i];
        }
    }
}
