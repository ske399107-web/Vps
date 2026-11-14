package o;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Set;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class G2 implements Collection, Set {
    public int[] a = AbstractC0487x9.m;
    public Object[] b = AbstractC0487x9.n;
    public int c;

    public G2(int i) {
        if (i > 0) {
            L1.c(this, i);
        }
    }

    public final void a(int i) {
        int i2 = this.c;
        Object[] objArr = this.b;
        Object obj = objArr[i];
        if (i2 <= 1) {
            clear();
            return;
        }
        int i3 = i2 - 1;
        int[] iArr = this.a;
        int i4 = 8;
        if (iArr.length > 8 && i2 < iArr.length / 3) {
            if (i2 > 8) {
                i4 = i2 + (i2 >> 1);
            }
            L1.c(this, i4);
            if (i > 0) {
                H2.i0(0, iArr, 0, i, this.a);
                H2.m0(objArr, this.b, 0, i, 6);
            }
            if (i < i3) {
                int i5 = i + 1;
                H2.i0(i, iArr, i5, i2, this.a);
                H2.k0(objArr, this.b, i, i5, i2);
            }
        } else {
            if (i < i3) {
                int i6 = i + 1;
                H2.i0(i, iArr, i6, i2, iArr);
                Object[] objArr2 = this.b;
                H2.k0(objArr2, objArr2, i, i6, i2);
            }
            this.b[i3] = null;
        }
        if (i2 == this.c) {
            this.c = i3;
            return;
        }
        throw new ConcurrentModificationException();
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean add(Object obj) {
        int i;
        int D;
        int i2 = this.c;
        if (obj == null) {
            D = L1.D(this, null, 0);
            i = 0;
        } else {
            int hashCode = obj.hashCode();
            i = hashCode;
            D = L1.D(this, obj, hashCode);
        }
        if (D >= 0) {
            return false;
        }
        int i3 = ~D;
        int[] iArr = this.a;
        if (i2 >= iArr.length) {
            int i4 = 8;
            if (i2 >= 8) {
                i4 = (i2 >> 1) + i2;
            } else if (i2 < 4) {
                i4 = 4;
            }
            Object[] objArr = this.b;
            L1.c(this, i4);
            if (i2 == this.c) {
                int[] iArr2 = this.a;
                if (iArr2.length != 0) {
                    H2.i0(0, iArr, 0, iArr.length, iArr2);
                    H2.m0(objArr, this.b, 0, objArr.length, 6);
                }
            } else {
                throw new ConcurrentModificationException();
            }
        }
        if (i3 < i2) {
            int[] iArr3 = this.a;
            int i5 = i3 + 1;
            H2.i0(i5, iArr3, i3, i2, iArr3);
            Object[] objArr2 = this.b;
            H2.k0(objArr2, objArr2, i5, i3, i2);
        }
        int i6 = this.c;
        if (i2 == i6) {
            int[] iArr4 = this.a;
            if (i3 < iArr4.length) {
                iArr4[i3] = i;
                this.b[i3] = obj;
                this.c = i6 + 1;
                return true;
            }
        }
        throw new ConcurrentModificationException();
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean addAll(Collection collection) {
        AbstractC0487x9.o(collection, "elements");
        int size = collection.size() + this.c;
        int i = this.c;
        int[] iArr = this.a;
        boolean z = false;
        if (iArr.length < size) {
            Object[] objArr = this.b;
            L1.c(this, size);
            int i2 = this.c;
            if (i2 > 0) {
                H2.i0(0, iArr, 0, i2, this.a);
                H2.m0(objArr, this.b, 0, this.c, 6);
            }
        }
        if (this.c == i) {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                z |= add(it.next());
            }
            return z;
        }
        throw new ConcurrentModificationException();
    }

    @Override // java.util.Collection, java.util.Set
    public final void clear() {
        if (this.c != 0) {
            this.a = AbstractC0487x9.m;
            this.b = AbstractC0487x9.n;
            this.c = 0;
        }
        if (this.c == 0) {
        } else {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        int D;
        if (obj == null) {
            D = L1.D(this, null, 0);
        } else {
            D = L1.D(this, obj, obj.hashCode());
        }
        if (D < 0) {
            return false;
        }
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean containsAll(Collection collection) {
        AbstractC0487x9.o(collection, "elements");
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof Set) && this.c == ((Set) obj).size()) {
            try {
                int i = this.c;
                for (int i2 = 0; i2 < i; i2++) {
                    if (((Set) obj).contains(this.b[i2])) {
                    }
                }
                return true;
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        int[] iArr = this.a;
        int i = this.c;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 += iArr[i3];
        }
        return i2;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        if (this.c <= 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new A2(this);
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        int D;
        if (obj == null) {
            D = L1.D(this, null, 0);
        } else {
            D = L1.D(this, obj, obj.hashCode());
        }
        if (D < 0) {
            return false;
        }
        a(D);
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean removeAll(Collection collection) {
        AbstractC0487x9.o(collection, "elements");
        Iterator it = collection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            z |= remove(it.next());
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean retainAll(Collection collection) {
        AbstractC0487x9.o(collection, "elements");
        boolean z = false;
        for (int i = this.c - 1; -1 < i; i--) {
            if (!collection.contains(this.b[i])) {
                a(i);
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public final int size() {
        return this.c;
    }

    @Override // java.util.Collection, java.util.Set
    public final Object[] toArray() {
        Object[] objArr = this.b;
        int i = this.c;
        AbstractC0487x9.o(objArr, "<this>");
        L1.n(i, objArr.length);
        Object[] copyOfRange = Arrays.copyOfRange(objArr, 0, i);
        AbstractC0487x9.n(copyOfRange, "copyOfRange(...)");
        return copyOfRange;
    }

    public final String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.c * 14);
        sb.append('{');
        int i = this.c;
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            Object obj = this.b[i2];
            if (obj != this) {
                sb.append(obj);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        String sb2 = sb.toString();
        AbstractC0487x9.n(sb2, "StringBuilder(capacity).…builderAction).toString()");
        return sb2;
    }

    @Override // java.util.Collection, java.util.Set
    public final Object[] toArray(Object[] objArr) {
        AbstractC0487x9.o(objArr, "array");
        int i = this.c;
        if (objArr.length < i) {
            objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), i);
        } else if (objArr.length > i) {
            objArr[i] = null;
        }
        H2.k0(this.b, objArr, 0, 0, this.c);
        return objArr;
    }
}
