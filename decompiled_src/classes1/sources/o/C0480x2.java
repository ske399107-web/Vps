package o;

import java.lang.reflect.Array;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

/* renamed from: o.x2, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0480x2 extends AbstractList implements List {
    public static final Object[] d = new Object[0];
    public int a;
    public Object[] b = d;
    public int c;

    public final void a(int i, Collection collection) {
        Iterator it = collection.iterator();
        int length = this.b.length;
        while (i < length && it.hasNext()) {
            this.b[i] = it.next();
            i++;
        }
        int i2 = this.a;
        for (int i3 = 0; i3 < i2 && it.hasNext(); i3++) {
            this.b[i3] = it.next();
        }
        this.c = collection.size() + this.c;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        int i2;
        int i3 = this.c;
        if (i < 0 || i > i3) {
            throw new IndexOutOfBoundsException("index: " + i + ", size: " + i3);
        }
        if (i == i3) {
            addLast(obj);
            return;
        }
        if (i == 0) {
            addFirst(obj);
            return;
        }
        g();
        b(this.c + 1);
        int f2 = f(this.a + i);
        int i4 = this.c;
        if (i < ((i4 + 1) >> 1)) {
            if (f2 == 0) {
                Object[] objArr = this.b;
                AbstractC0487x9.o(objArr, "<this>");
                f2 = objArr.length;
            }
            int i5 = f2 - 1;
            int i6 = this.a;
            if (i6 == 0) {
                Object[] objArr2 = this.b;
                AbstractC0487x9.o(objArr2, "<this>");
                i2 = objArr2.length - 1;
            } else {
                i2 = i6 - 1;
            }
            int i7 = this.a;
            if (i5 >= i7) {
                Object[] objArr3 = this.b;
                objArr3[i2] = objArr3[i7];
                H2.k0(objArr3, objArr3, i7, i7 + 1, i5 + 1);
            } else {
                Object[] objArr4 = this.b;
                H2.k0(objArr4, objArr4, i7 - 1, i7, objArr4.length);
                Object[] objArr5 = this.b;
                objArr5[objArr5.length - 1] = objArr5[0];
                H2.k0(objArr5, objArr5, 0, 1, i5 + 1);
            }
            this.b[i5] = obj;
            this.a = i2;
        } else {
            int f3 = f(this.a + i4);
            if (f2 < f3) {
                Object[] objArr6 = this.b;
                H2.k0(objArr6, objArr6, f2 + 1, f2, f3);
            } else {
                Object[] objArr7 = this.b;
                H2.k0(objArr7, objArr7, 1, 0, f3);
                Object[] objArr8 = this.b;
                objArr8[0] = objArr8[objArr8.length - 1];
                H2.k0(objArr8, objArr8, f2 + 1, f2, objArr8.length - 1);
            }
            this.b[f2] = obj;
        }
        this.c++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection collection) {
        AbstractC0487x9.o(collection, "elements");
        int i2 = this.c;
        if (i >= 0 && i <= i2) {
            if (collection.isEmpty()) {
                return false;
            }
            if (i == this.c) {
                return addAll(collection);
            }
            g();
            b(collection.size() + this.c);
            int f2 = f(this.a + this.c);
            int f3 = f(this.a + i);
            int size = collection.size();
            if (i < ((this.c + 1) >> 1)) {
                int i3 = this.a;
                int i4 = i3 - size;
                if (f3 < i3) {
                    Object[] objArr = this.b;
                    H2.k0(objArr, objArr, i4, i3, objArr.length);
                    if (size >= f3) {
                        Object[] objArr2 = this.b;
                        H2.k0(objArr2, objArr2, objArr2.length - size, 0, f3);
                    } else {
                        Object[] objArr3 = this.b;
                        H2.k0(objArr3, objArr3, objArr3.length - size, 0, size);
                        Object[] objArr4 = this.b;
                        H2.k0(objArr4, objArr4, 0, size, f3);
                    }
                } else if (i4 >= 0) {
                    Object[] objArr5 = this.b;
                    H2.k0(objArr5, objArr5, i4, i3, f3);
                } else {
                    Object[] objArr6 = this.b;
                    i4 += objArr6.length;
                    int i5 = f3 - i3;
                    int length = objArr6.length - i4;
                    if (length >= i5) {
                        H2.k0(objArr6, objArr6, i4, i3, f3);
                    } else {
                        H2.k0(objArr6, objArr6, i4, i3, i3 + length);
                        Object[] objArr7 = this.b;
                        H2.k0(objArr7, objArr7, 0, this.a + length, f3);
                    }
                }
                this.a = i4;
                a(d(f3 - size), collection);
            } else {
                int i6 = f3 + size;
                if (f3 < f2) {
                    int i7 = size + f2;
                    Object[] objArr8 = this.b;
                    if (i7 <= objArr8.length) {
                        H2.k0(objArr8, objArr8, i6, f3, f2);
                    } else if (i6 >= objArr8.length) {
                        H2.k0(objArr8, objArr8, i6 - objArr8.length, f3, f2);
                    } else {
                        int length2 = f2 - (i7 - objArr8.length);
                        H2.k0(objArr8, objArr8, 0, length2, f2);
                        Object[] objArr9 = this.b;
                        H2.k0(objArr9, objArr9, i6, f3, length2);
                    }
                } else {
                    Object[] objArr10 = this.b;
                    H2.k0(objArr10, objArr10, size, 0, f2);
                    Object[] objArr11 = this.b;
                    if (i6 >= objArr11.length) {
                        H2.k0(objArr11, objArr11, i6 - objArr11.length, f3, objArr11.length);
                    } else {
                        H2.k0(objArr11, objArr11, 0, objArr11.length - size, objArr11.length);
                        Object[] objArr12 = this.b;
                        H2.k0(objArr12, objArr12, i6, f3, objArr12.length - size);
                    }
                }
                a(f3, collection);
            }
            return true;
        }
        throw new IndexOutOfBoundsException("index: " + i + ", size: " + i2);
    }

    public final void addFirst(Object obj) {
        g();
        b(this.c + 1);
        int i = this.a;
        if (i == 0) {
            Object[] objArr = this.b;
            AbstractC0487x9.o(objArr, "<this>");
            i = objArr.length;
        }
        int i2 = i - 1;
        this.a = i2;
        this.b[i2] = obj;
        this.c++;
    }

    public final void addLast(Object obj) {
        g();
        b(this.c + 1);
        this.b[f(this.a + this.c)] = obj;
        this.c++;
    }

    public final void b(int i) {
        if (i >= 0) {
            Object[] objArr = this.b;
            if (i <= objArr.length) {
                return;
            }
            if (objArr == d) {
                if (i < 10) {
                    i = 10;
                }
                this.b = new Object[i];
                return;
            }
            int length = objArr.length;
            int i2 = length + (length >> 1);
            if (i2 - i < 0) {
                i2 = i;
            }
            if (i2 - 2147483639 > 0) {
                if (i > 2147483639) {
                    i2 = Integer.MAX_VALUE;
                } else {
                    i2 = 2147483639;
                }
            }
            Object[] objArr2 = new Object[i2];
            H2.k0(objArr, objArr2, 0, this.a, objArr.length);
            Object[] objArr3 = this.b;
            int length2 = objArr3.length;
            int i3 = this.a;
            H2.k0(objArr3, objArr2, length2 - i3, 0, i3);
            this.a = 0;
            this.b = objArr2;
            return;
        }
        throw new IllegalStateException("Deque is too big.");
    }

    public final int c(int i) {
        AbstractC0487x9.o(this.b, "<this>");
        if (i == r0.length - 1) {
            return 0;
        }
        return i + 1;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        if (!isEmpty()) {
            g();
            e(this.a, f(this.a + this.c));
        }
        this.a = 0;
        this.c = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        if (indexOf(obj) != -1) {
            return true;
        }
        return false;
    }

    public final int d(int i) {
        if (i < 0) {
            return i + this.b.length;
        }
        return i;
    }

    public final void e(int i, int i2) {
        if (i < i2) {
            Object[] objArr = this.b;
            AbstractC0487x9.o(objArr, "<this>");
            Arrays.fill(objArr, i, i2, (Object) null);
        } else {
            Object[] objArr2 = this.b;
            Arrays.fill(objArr2, i, objArr2.length, (Object) null);
            Object[] objArr3 = this.b;
            AbstractC0487x9.o(objArr3, "<this>");
            Arrays.fill(objArr3, 0, i2, (Object) null);
        }
    }

    public final int f(int i) {
        Object[] objArr = this.b;
        if (i >= objArr.length) {
            return i - objArr.length;
        }
        return i;
    }

    public final void g() {
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        int i2 = this.c;
        if (i >= 0 && i < i2) {
            return this.b[f(this.a + i)];
        }
        throw new IndexOutOfBoundsException("index: " + i + ", size: " + i2);
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        int i;
        int f2 = f(this.a + this.c);
        int i2 = this.a;
        if (i2 < f2) {
            while (i2 < f2) {
                if (AbstractC0487x9.b(obj, this.b[i2])) {
                    i = this.a;
                } else {
                    i2++;
                }
            }
            return -1;
        }
        if (i2 >= f2) {
            int length = this.b.length;
            while (true) {
                if (i2 < length) {
                    if (AbstractC0487x9.b(obj, this.b[i2])) {
                        i = this.a;
                        break;
                    }
                    i2++;
                } else {
                    for (int i3 = 0; i3 < f2; i3++) {
                        if (AbstractC0487x9.b(obj, this.b[i3])) {
                            i2 = i3 + this.b.length;
                            i = this.a;
                        }
                    }
                    return -1;
                }
            }
        } else {
            return -1;
        }
        return i2 - i;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        if (this.c == 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        int length;
        int i;
        int f2 = f(this.a + this.c);
        int i2 = this.a;
        if (i2 < f2) {
            length = f2 - 1;
            if (i2 <= length) {
                while (!AbstractC0487x9.b(obj, this.b[length])) {
                    if (length != i2) {
                        length--;
                    }
                }
                i = this.a;
                return length - i;
            }
            return -1;
        }
        if (i2 > f2) {
            int i3 = f2 - 1;
            while (true) {
                if (-1 < i3) {
                    if (AbstractC0487x9.b(obj, this.b[i3])) {
                        length = i3 + this.b.length;
                        i = this.a;
                        break;
                    }
                    i3--;
                } else {
                    Object[] objArr = this.b;
                    AbstractC0487x9.o(objArr, "<this>");
                    length = objArr.length - 1;
                    int i4 = this.a;
                    if (i4 <= length) {
                        while (!AbstractC0487x9.b(obj, this.b[length])) {
                            if (length != i4) {
                                length--;
                            }
                        }
                        i = this.a;
                    }
                }
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object remove(int i) {
        int i2 = this.c;
        if (i < 0 || i >= i2) {
            throw new IndexOutOfBoundsException("index: " + i + ", size: " + i2);
        }
        if (i == i2 - 1) {
            return removeLast();
        }
        if (i == 0) {
            return removeFirst();
        }
        g();
        int f2 = f(this.a + i);
        Object[] objArr = this.b;
        Object obj = objArr[f2];
        int i3 = this.c;
        if (i < (i3 >> 1)) {
            int i4 = this.a;
            if (f2 >= i4) {
                H2.k0(objArr, objArr, i4 + 1, i4, f2);
            } else {
                H2.k0(objArr, objArr, 1, 0, f2);
                Object[] objArr2 = this.b;
                objArr2[0] = objArr2[objArr2.length - 1];
                int i5 = this.a;
                H2.k0(objArr2, objArr2, i5 + 1, i5, objArr2.length - 1);
            }
            Object[] objArr3 = this.b;
            int i6 = this.a;
            objArr3[i6] = null;
            this.a = c(i6);
        } else {
            int f3 = f((i3 - 1) + this.a);
            if (f2 <= f3) {
                Object[] objArr4 = this.b;
                H2.k0(objArr4, objArr4, f2, f2 + 1, f3 + 1);
            } else {
                Object[] objArr5 = this.b;
                H2.k0(objArr5, objArr5, f2, f2 + 1, objArr5.length);
                Object[] objArr6 = this.b;
                objArr6[objArr6.length - 1] = objArr6[0];
                H2.k0(objArr6, objArr6, 0, 1, f3 + 1);
            }
            this.b[f3] = null;
        }
        this.c--;
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean removeAll(Collection collection) {
        int f2;
        AbstractC0487x9.o(collection, "elements");
        boolean z = false;
        z = false;
        z = false;
        if (!isEmpty() && this.b.length != 0) {
            int f3 = f(this.a + this.c);
            int i = this.a;
            if (i < f3) {
                f2 = i;
                while (i < f3) {
                    Object obj = this.b[i];
                    if (!collection.contains(obj)) {
                        this.b[f2] = obj;
                        f2++;
                    } else {
                        z = true;
                    }
                    i++;
                }
                Object[] objArr = this.b;
                AbstractC0487x9.o(objArr, "<this>");
                Arrays.fill(objArr, f2, f3, (Object) null);
            } else {
                int length = this.b.length;
                boolean z2 = false;
                int i2 = i;
                while (i < length) {
                    Object[] objArr2 = this.b;
                    Object obj2 = objArr2[i];
                    objArr2[i] = null;
                    if (!collection.contains(obj2)) {
                        this.b[i2] = obj2;
                        i2++;
                    } else {
                        z2 = true;
                    }
                    i++;
                }
                f2 = f(i2);
                for (int i3 = 0; i3 < f3; i3++) {
                    Object[] objArr3 = this.b;
                    Object obj3 = objArr3[i3];
                    objArr3[i3] = null;
                    if (!collection.contains(obj3)) {
                        this.b[f2] = obj3;
                        f2 = c(f2);
                    } else {
                        z2 = true;
                    }
                }
                z = z2;
            }
            if (z) {
                g();
                this.c = d(f2 - this.a);
            }
        }
        return z;
    }

    public final Object removeFirst() {
        if (!isEmpty()) {
            g();
            Object[] objArr = this.b;
            int i = this.a;
            Object obj = objArr[i];
            objArr[i] = null;
            this.a = c(i);
            this.c--;
            return obj;
        }
        throw new NoSuchElementException("ArrayDeque is empty.");
    }

    public final Object removeLast() {
        if (!isEmpty()) {
            g();
            int f2 = f((this.c - 1) + this.a);
            Object[] objArr = this.b;
            Object obj = objArr[f2];
            objArr[f2] = null;
            this.c--;
            return obj;
        }
        throw new NoSuchElementException("ArrayDeque is empty.");
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        AbstractC0487x9.p(i, i2, this.c);
        int i3 = i2 - i;
        if (i3 == 0) {
            return;
        }
        if (i3 == this.c) {
            clear();
            return;
        }
        if (i3 == 1) {
            remove(i);
            return;
        }
        g();
        if (i < this.c - i2) {
            int f2 = f((i - 1) + this.a);
            int f3 = f((i2 - 1) + this.a);
            while (i > 0) {
                int i4 = f2 + 1;
                int min = Math.min(i, Math.min(i4, f3 + 1));
                Object[] objArr = this.b;
                int i5 = f3 - min;
                int i6 = f2 - min;
                H2.k0(objArr, objArr, i5 + 1, i6 + 1, i4);
                f2 = d(i6);
                f3 = d(i5);
                i -= min;
            }
            int f4 = f(this.a + i3);
            e(this.a, f4);
            this.a = f4;
        } else {
            int f5 = f(this.a + i2);
            int f6 = f(this.a + i);
            int i7 = this.c;
            while (true) {
                i7 -= i2;
                if (i7 <= 0) {
                    break;
                }
                Object[] objArr2 = this.b;
                i2 = Math.min(i7, Math.min(objArr2.length - f5, objArr2.length - f6));
                Object[] objArr3 = this.b;
                int i8 = f5 + i2;
                H2.k0(objArr3, objArr3, f6, f5, i8);
                f5 = f(i8);
                f6 = f(f6 + i2);
            }
            int f7 = f(this.a + this.c);
            e(d(f7 - i3), f7);
        }
        this.c -= i3;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean retainAll(Collection collection) {
        int f2;
        AbstractC0487x9.o(collection, "elements");
        boolean z = false;
        z = false;
        z = false;
        if (!isEmpty() && this.b.length != 0) {
            int f3 = f(this.a + this.c);
            int i = this.a;
            if (i < f3) {
                f2 = i;
                while (i < f3) {
                    Object obj = this.b[i];
                    if (collection.contains(obj)) {
                        this.b[f2] = obj;
                        f2++;
                    } else {
                        z = true;
                    }
                    i++;
                }
                Object[] objArr = this.b;
                AbstractC0487x9.o(objArr, "<this>");
                Arrays.fill(objArr, f2, f3, (Object) null);
            } else {
                int length = this.b.length;
                boolean z2 = false;
                int i2 = i;
                while (i < length) {
                    Object[] objArr2 = this.b;
                    Object obj2 = objArr2[i];
                    objArr2[i] = null;
                    if (collection.contains(obj2)) {
                        this.b[i2] = obj2;
                        i2++;
                    } else {
                        z2 = true;
                    }
                    i++;
                }
                f2 = f(i2);
                for (int i3 = 0; i3 < f3; i3++) {
                    Object[] objArr3 = this.b;
                    Object obj3 = objArr3[i3];
                    objArr3[i3] = null;
                    if (collection.contains(obj3)) {
                        this.b[f2] = obj3;
                        f2 = c(f2);
                    } else {
                        z2 = true;
                    }
                }
                z = z2;
            }
            if (z) {
                g();
                this.c = d(f2 - this.a);
            }
        }
        return z;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        int i2 = this.c;
        if (i >= 0 && i < i2) {
            int f2 = f(this.a + i);
            Object[] objArr = this.b;
            Object obj2 = objArr[f2];
            objArr[f2] = obj;
            return obj2;
        }
        throw new IndexOutOfBoundsException("index: " + i + ", size: " + i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.c;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray() {
        return toArray(new Object[this.c]);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray(Object[] objArr) {
        AbstractC0487x9.o(objArr, "array");
        int length = objArr.length;
        int i = this.c;
        if (length < i) {
            Object newInstance = Array.newInstance(objArr.getClass().getComponentType(), i);
            AbstractC0487x9.m(newInstance, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.arrayOfNulls>");
            objArr = (Object[]) newInstance;
        }
        int f2 = f(this.a + this.c);
        int i2 = this.a;
        if (i2 < f2) {
            H2.m0(this.b, objArr, i2, f2, 2);
        } else if (!isEmpty()) {
            Object[] objArr2 = this.b;
            H2.k0(objArr2, objArr, 0, this.a, objArr2.length);
            Object[] objArr3 = this.b;
            H2.k0(objArr3, objArr, objArr3.length - this.a, 0, f2);
        }
        int i3 = this.c;
        if (i3 < objArr.length) {
            objArr[i3] = null;
        }
        return objArr;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        int indexOf = indexOf(obj);
        if (indexOf == -1) {
            return false;
        }
        remove(indexOf);
        return true;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        addLast(obj);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        AbstractC0487x9.o(collection, "elements");
        if (collection.isEmpty()) {
            return false;
        }
        g();
        b(collection.size() + this.c);
        a(f(this.a + this.c), collection);
        return true;
    }
}
