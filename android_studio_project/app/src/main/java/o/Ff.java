package o;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
//import org.conscrypt.BuildConfig // replaced by app BuildConfig

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class Ff {
    public static volatile int e;

    /* renamed from: f, reason: collision with root package name */
    public static volatile long f88f;
    public static volatile boolean g;
    public static volatile int i;
    public static volatile long j;
    public static volatile long k;
    public static volatile long l;
    public static final HashSet a = new HashSet();
    public static final ConcurrentHashMap b = new ConcurrentHashMap();
    public static final HashSet c = new HashSet();
    public static final byte[] d = new byte[98304];
    public static final Object h = new Object();

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0014, code lost:
    
        r5 = r5 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int a(int r4, int r5, byte[] r6, byte[] r7) {
        /*
            int r0 = r7.length
            int r4 = r4 - r0
            r0 = 0
            if (r5 >= 0) goto L6
            r5 = r0
        L6:
            if (r5 > r4) goto L1b
            r1 = r0
        L9:
            int r2 = r7.length
            if (r1 >= r2) goto L1a
            int r2 = r5 + r1
            r2 = r6[r2]
            r3 = r7[r1]
            if (r2 == r3) goto L17
            int r5 = r5 + 1
            goto L6
        L17:
            int r1 = r1 + 1
            goto L9
        L1a:
            return r5
        L1b:
            r4 = -1
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: o.Ff.a(int, int, byte[], byte[]):int");
    }

    public static void b(byte[] bArr) {
        boolean z;
        int size;
        Cc h2;
        int i2;
        int i3;
        long j2;
        long j3;
        int i4;
        if (bArr.length < 16) {
            return;
        }
        HashMap hashMap = new HashMap();
        int length = bArr.length;
        int i5 = 0;
        while (true) {
            int i6 = 5;
            if (i5 + 2 >= length) {
                break;
            }
            Cc h3 = h(bArr, i5);
            if (h3 != null) {
                int longValue = (int) (((Number) h3.a).longValue() >> 3);
                if (((int) (((Number) h3.a).longValue() & 7)) == 2 && (h2 = h(bArr, ((Number) h3.b).intValue())) != null) {
                    int longValue2 = (int) ((Number) h2.a).longValue();
                    int intValue = ((Number) h2.b).intValue();
                    if (40 <= longValue2 && longValue2 < 801 && (i3 = longValue2 + intValue) <= length) {
                        boolean z2 = false;
                        long j4 = 0;
                        while (intValue < i3) {
                            Cc h4 = h(bArr, intValue);
                            if (h4 == null) {
                                i2 = i5;
                            } else {
                                int intValue2 = ((Number) h4.b).intValue();
                                Number number = (Number) h4.a;
                                i2 = i5;
                                int longValue3 = (int) (number.longValue() >> 3);
                                int longValue4 = (int) (number.longValue() & 7);
                                if (longValue4 != 0) {
                                    if (longValue4 != 1) {
                                        if (longValue4 != 2) {
                                            if (longValue4 == i6) {
                                                intValue = intValue2 + 4;
                                                i5 = i2;
                                            }
                                        } else {
                                            Cc h5 = h(bArr, intValue2);
                                            if (h5 != null) {
                                                int intValue3 = ((Number) h5.b).intValue();
                                                int longValue5 = (int) ((Number) h5.a).longValue();
                                                if (longValue5 >= 0 && (i4 = intValue3 + longValue5) <= i3) {
                                                    if (longValue3 == 2 && 3 <= longValue5 && longValue5 < 17) {
                                                        int i7 = 0;
                                                        for (int i8 = 0; i8 < longValue5; i8++) {
                                                            int i9 = bArr[intValue3 + i8] & 255;
                                                            if ((48 <= i9 && i9 < 58) || ((65 <= i9 && i9 < 91) || ((97 <= i9 && i9 < 123) || i9 == 95))) {
                                                                i7++;
                                                            }
                                                        }
                                                        if (i7 >= 3) {
                                                            z2 = true;
                                                        }
                                                    }
                                                    intValue = i4;
                                                }
                                            }
                                        }
                                    } else {
                                        intValue = intValue2 + 8;
                                    }
                                    i5 = i2;
                                    i6 = 5;
                                } else {
                                    Cc h6 = h(bArr, intValue2);
                                    if (h6 != null) {
                                        intValue = ((Number) h6.b).intValue();
                                        if (longValue3 == 1) {
                                            Number number2 = (Number) h6.a;
                                            if (number2.longValue() > 10000000000L) {
                                                j4 = number2.longValue();
                                            }
                                        }
                                        i5 = i2;
                                        i6 = 5;
                                    }
                                }
                            }
                            j2 = 0;
                            j3 = 0;
                            break;
                        }
                        i2 = i5;
                        j2 = 0;
                        if (!z2 || j4 <= 0) {
                            j4 = 0;
                        }
                        j3 = j4;
                        if (j3 > j2) {
                            Integer valueOf = Integer.valueOf(longValue);
                            Object obj = hashMap.get(valueOf);
                            if (obj == null) {
                                obj = new HashSet();
                                hashMap.put(valueOf, obj);
                            }
                            ((HashSet) obj).add(Long.valueOf(j3));
                        }
                    } else {
                        i2 = i5;
                    }
                    i5 = i2 + 1;
                }
            }
            i5++;
        }
        long j5 = f88f;
        if (j5 == 0) {
            return;
        }
        HashSet hashSet = null;
        for (Object obj2 : hashMap.values()) {
            AbstractC0487x9.n(obj2, "next(...)");
            HashSet hashSet2 = (HashSet) obj2;
            if (hashSet2.contains(Long.valueOf(j5)) && 2 <= (size = hashSet2.size())) {
                if (size < 5 && (hashSet == null || hashSet2.size() > hashSet.size())) {
                    hashSet = hashSet2;
                }
            }
        }
        if (hashSet == null) {
            return;
        }
        HashSet hashSet3 = new HashSet(4);
        long j6 = f88f;
        Iterator it = hashSet.iterator();
        AbstractC0487x9.n(it, "iterator(...)");
        while (it.hasNext()) {
            Object next = it.next();
            AbstractC0487x9.n(next, "next(...)");
            long longValue6 = ((Number) next).longValue();
            if (longValue6 != j6) {
                hashSet3.add(Long.valueOf(longValue6));
            }
        }
        HashSet hashSet4 = a;
        synchronized (hashSet4) {
            if (hashSet4.equals(hashSet3)) {
                if (!hashSet3.isEmpty()) {
                    z = true;
                }
            }
            z = false;
        }
        if (z) {
            f();
            return;
        }
        synchronized (hashSet4) {
            hashSet4.clear();
            hashSet4.addAll(hashSet3);
        }
        f();
        Set keySet = AbstractC0189i9.b.keySet();
        AbstractC0487x9.n(keySet, "<get-keys>(...)");
        Iterator it2 = keySet.iterator();
        while (it2.hasNext()) {
            AbstractC0487x9.o((Integer) it2.next(), "it");
            if (!(!c(r1.intValue()))) {
                it2.remove();
            }
        }
    }

    public static boolean c(int i2) {
        boolean contains;
        if (1 > i2 || i2 >= 9) {
            return false;
        }
        HashSet hashSet = c;
        synchronized (hashSet) {
            contains = hashSet.contains(Integer.valueOf(i2));
        }
        if (!contains) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0064, code lost:
    
        if (r3 != false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x00ea, code lost:
    
        r4 = 0;
     */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0127  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void d(byte[] r23) {
        /*
            Method dump skipped, instructions count: 418
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: o.Ff.d(byte[]):void");
    }

    public static String e(String str) {
        String str2;
        int length = str.length() % 4;
        if (length != 0) {
            int i2 = 4 - length;
            if (i2 >= 0) {
                if (i2 != 0) {
                    str2 = "=";
                    if (i2 != 1) {
                        char charAt = "=".charAt(0);
                        char[] cArr = new char[i2];
                        for (int i3 = 0; i3 < i2; i3++) {
                            cArr[i3] = charAt;
                        }
                        str2 = new String(cArr);
                    }
                } else {
                    str2 = BuildConfig.FLAVOR;
                }
                return str.concat(str2);
            }
            throw new IllegalArgumentException(("Count 'n' must be non-negative, but was " + i2 + '.').toString());
        }
        return str;
    }

    public static void f() {
        HashSet hashSet;
        HashSet hashSet2 = a;
        synchronized (hashSet2) {
            hashSet = new HashSet(hashSet2);
        }
        HashSet hashSet3 = c;
        synchronized (hashSet3) {
            hashSet3.clear();
            for (Map.Entry entry : b.entrySet()) {
                long longValue = ((Number) entry.getKey()).longValue();
                int intValue = ((Number) entry.getValue()).intValue();
                if (hashSet.contains(Long.valueOf(longValue))) {
                    c.add(Integer.valueOf(intValue));
                }
            }
        }
    }

    public static void g(int i2, long j2) {
        boolean contains;
        b.put(Long.valueOf(j2), Integer.valueOf(i2));
        HashSet hashSet = a;
        synchronized (hashSet) {
            contains = hashSet.contains(Long.valueOf(j2));
        }
        if (contains) {
            HashSet hashSet2 = c;
            synchronized (hashSet2) {
                hashSet2.add(Integer.valueOf(i2));
            }
            Set keySet = AbstractC0189i9.b.keySet();
            AbstractC0487x9.n(keySet, "<get-keys>(...)");
            Iterator it = keySet.iterator();
            while (it.hasNext()) {
                AbstractC0487x9.o((Integer) it.next(), "it");
                if (!(!c(r4.intValue()))) {
                    it.remove();
                }
            }
        }
    }

    public static Cc h(byte[] bArr, int i2) {
        if (i2 >= 0 && i2 < bArr.length) {
            long j2 = 0;
            int i3 = 0;
            while (i2 < bArr.length) {
                byte b2 = bArr[i2];
                i2++;
                j2 |= (b2 & Byte.MAX_VALUE) << i3;
                if ((b2 & 255) < 128) {
                    return new Cc(Long.valueOf(j2), Integer.valueOf(i2));
                }
                i3 += 7;
                if (i3 > 56) {
                    break;
                }
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00a7 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00a8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void i(byte[] r13) {
        /*
            Method dump skipped, instructions count: 300
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: o.Ff.i(byte[]):void");
    }
}
