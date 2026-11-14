package o;

import android.util.Log;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.bouncycastle.pqc.crypto.rainbow.GF2Field;
//import org.conscrypt.BuildConfig // replaced by app BuildConfig

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Tg {
    public static volatile int[] e;
    public static int h;
    public static volatile byte[] i;
    public static int k;
    public static int l;
    public static int m;
    public static volatile int p;
    public static final int[][] t;
    public static final Tg a = new Object();
    public static final String[] b = {"NONE", "HELLO", "RELIABLE", "BYEBYE", "VAR", "VAR_RELIABLE"};
    public static final ConcurrentHashMap c = new ConcurrentHashMap();
    public static final ArrayList d = new ArrayList(32);

    /* renamed from: f, reason: collision with root package name */
    public static volatile int f151f = 105;
    public static final ArrayList g = new ArrayList(10);
    public static final HashMap j = new HashMap(8);
    public static final Object n = new Object();

    /* renamed from: o, reason: collision with root package name */
    public static final ArrayList f152o = new ArrayList(80);
    public static int q = -1;
    public static int r = 40;
    public static String s = BuildConfig.FLAVOR;

    /* JADX WARN: Type inference failed for: r0v0, types: [o.Tg, java.lang.Object] */
    static {
        ArrayList arrayList = new ArrayList(120);
        d(arrayList, new int[5], new boolean[5], 0);
        t = (int[][]) arrayList.toArray(new int[0]);
    }

    public static final int a(byte[] bArr, int i2) {
        return ((bArr[i2 + 3] & 255) << 24) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16);
    }

    public static final void d(ArrayList arrayList, int[] iArr, boolean[] zArr, int i2) {
        if (i2 == 5) {
            int[] copyOf = Arrays.copyOf(iArr, iArr.length);
            AbstractC0487x9.n(copyOf, "copyOf(...)");
            arrayList.add(copyOf);
            return;
        }
        for (int i3 = 0; i3 < 5; i3++) {
            if (!zArr[i3]) {
                zArr[i3] = true;
                iArr[i2] = i3;
                d(arrayList, iArr, zArr, 1 + i2);
                zArr[i3] = false;
            }
        }
    }

    public static final int f(byte[] bArr, int i2, int i3, int i4) {
        return ((bArr[i2 + i4] & GF2Field.MASK) ^ i3) & GF2Field.MASK;
    }

    public static String h(byte[] bArr, int i2) {
        AbstractC0487x9.o(bArr, "b");
        int length = bArr.length;
        if (i2 > length) {
            i2 = length;
        }
        StringBuilder sb = new StringBuilder(i2 * 2);
        for (int i3 = 0; i3 < i2; i3++) {
            byte b2 = bArr[i3];
            sb.append(Character.forDigit((b2 & 255) >> 4, 16));
            sb.append(Character.forDigit(b2 & 15, 16));
        }
        String sb2 = sb.toString();
        AbstractC0487x9.n(sb2, "toString(...)");
        return sb2;
    }

    /* JADX WARN: Removed duplicated region for block: B:149:0x01e5  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x01e3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0152  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] i(byte[] r18, int r19, java.lang.String r20, boolean r21) {
        /*
            Method dump skipped, instructions count: 508
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: o.Tg.i(byte[], int, java.lang.String, boolean):byte[]");
    }

    public static byte[] j(int i2, int i3, String str, byte[] bArr) {
        int i4;
        Object putIfAbsent;
        if (i3 >= 8 && i2 >= 0 && (i4 = i2 + i3) <= bArr.length) {
            ConcurrentHashMap concurrentHashMap = c;
            if (str.length() == 0) {
                str = "_";
            }
            Object obj = concurrentHashMap.get(str);
            if (obj == null && (putIfAbsent = concurrentHashMap.putIfAbsent(str, (obj = new Pg()))) != null) {
                obj = putIfAbsent;
            }
            Pg pg = (Pg) obj;
            Og d2 = pg.d(bArr, i3, i2);
            if (d2 == null) {
                return new byte[0];
            }
            int i5 = d2.c;
            int i6 = d2.i;
            if (i5 == 1) {
                Pg.b(pg, bArr, i2 + i6, i4, new StringBuilder());
                return new byte[0];
            }
            if (i3 <= i6) {
                return new byte[0];
            }
            int i7 = i2 + i6;
            if (!m(bArr, i7, i4)) {
                return new byte[0];
            }
            return H2.n0(bArr, i7, i4);
        }
        return new byte[0];
    }

    public static boolean l(String str) {
        AbstractC0487x9.o(str, "s");
        if (str.length() != 5) {
            return false;
        }
        boolean[] zArr = new boolean[5];
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            int charAt = str.charAt(i2) - '0';
            if (charAt < 0 || charAt >= 5 || zArr[charAt]) {
                return false;
            }
            zArr[charAt] = true;
        }
        for (int i3 = 0; i3 < 5; i3++) {
            if (!zArr[i3]) {
                return false;
            }
        }
        return true;
    }

    public static boolean m(byte[] bArr, int i2, int i3) {
        if (i3 - i2 < 8) {
            return false;
        }
        int i4 = bArr[i2] & 255;
        int i5 = bArr[i2 + 1] & 255;
        if (129 <= i4 && i4 < 137 && i5 == 128 && (bArr[i2 + 2] & 255) == 128) {
            return true;
        }
        if (i4 != 0 || 2 > i5 || i5 >= 65) {
            return false;
        }
        return true;
    }

    public static int[] n() {
        int[] iArr = e;
        if (iArr != null) {
            int[] iArr2 = new int[4];
            int i2 = 0;
            for (int i3 : iArr) {
                if (i3 != 2 && i2 < 4) {
                    iArr2[i2] = i3;
                    i2++;
                }
            }
            if (i2 == 4) {
                return iArr2;
            }
        }
        return new int[]{3, 0, 1, 4};
    }

    public static String p() {
        int[] iArr = e;
        if (iArr == null) {
            return BuildConfig.FLAVOR;
        }
        char[] cArr = new char[iArr.length];
        int length = iArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            cArr[i2] = (char) (iArr[i2] + 48);
        }
        return new String(cArr);
    }

    public static void q(byte[] bArr) {
        byte[] copyOf = Arrays.copyOf(bArr, 16);
        AbstractC0487x9.n(copyOf, "copyOf(...)");
        byte[] bArr2 = i;
        if (bArr2 == null || !Arrays.equals(bArr2, copyOf)) {
            i = copyOf;
            p++;
        }
    }

    public static void t(Rg rg) {
        synchronized (n) {
            try {
                ArrayList arrayList = f152o;
                if (arrayList.size() >= 96) {
                    arrayList.remove(0);
                }
                arrayList.add(rg);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static int x(String str) {
        AbstractC0487x9.o(str, "flowId");
        ConcurrentHashMap concurrentHashMap = c;
        if (str.length() == 0) {
            str = "_";
        }
        Pg pg = (Pg) concurrentHashMap.get(str);
        if (pg == null) {
            return -1;
        }
        return pg.c;
    }

    public final synchronized void b(String str, byte[] bArr) {
        try {
            if (bArr.length < 16) {
                return;
            }
            byte[] copyOf = Arrays.copyOf(bArr, 16);
            AbstractC0487x9.n(copyOf, "copyOf(...)");
            ArrayList arrayList = d;
            if (arrayList == null || !arrayList.isEmpty()) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    if (Arrays.equals((byte[]) it.next(), copyOf)) {
                        return;
                    }
                }
            }
            d.add(copyOf);
            p++;
            int i2 = AbstractC0408ta.a;
            AbstractC0408ta.a("key " + str + " " + h(copyOf, 16));
            Log.w("ffrt-moco", "key " + str + " " + h(copyOf, 4));
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void c(String str, String str2) {
        String str3;
        AbstractC0487x9.o(str, "digits");
        if (!l(str)) {
            return;
        }
        if (str2.equals("tcp") && str.charAt(0) != '3' && str.charAt(1) != '3') {
            Log.w("ffrt-moco", "ignore weak " + str2 + " " + str);
            return;
        }
        String p2 = p();
        if (p2.equals(str)) {
            return;
        }
        if (p2.length() > 0 && !str2.equals("tcp5") && !str2.equals("udp")) {
            return;
        }
        int[] iArr = new int[5];
        for (int i2 = 0; i2 < 5; i2++) {
            iArr[i2] = str.charAt(i2) - '0';
        }
        e = iArr;
        int i3 = AbstractC0408ta.a;
        if (str2.length() > 0) {
            str3 = " " + str2;
        } else {
            str3 = BuildConfig.FLAVOR;
        }
        AbstractC0408ta.a("head perm " + str + str3);
        Log.w("ffrt-moco", "head perm " + str + " " + str2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0067, code lost:
    
        if (r8 == null) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final byte[] e(java.lang.String r6, int r7, byte[] r8) {
        /*
            r5 = this;
            r0 = r7 & 1
            r1 = 0
            if (r0 == 0) goto L6a
            int r0 = r8.length
            r2 = 16
            if (r0 < r2) goto L69
            int r0 = r8.length
            int r0 = r0 % 8
            if (r0 == 0) goto L10
            goto L69
        L10:
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>(r2)
            byte[] r3 = o.Tg.i
            if (r3 == 0) goto L1c
            r0.add(r3)
        L1c:
            java.util.ArrayList r6 = r5.w(r6)
            r0.addAll(r6)
            java.util.List r6 = r5.g()
            r0.addAll(r6)
            java.util.HashSet r6 = new java.util.HashSet
            int r3 = r0.size()
            r6.<init>(r3)
            java.util.Iterator r0 = r0.iterator()
            java.lang.String r3 = "iterator(...)"
            o.AbstractC0487x9.n(r0, r3)
        L3c:
            boolean r3 = r0.hasNext()
            if (r3 == 0) goto L66
            java.lang.Object r3 = r0.next()
            java.lang.String r4 = "next(...)"
            o.AbstractC0487x9.n(r3, r4)
            byte[] r3 = (byte[]) r3
            int r4 = r3.length
            if (r4 < r2) goto L3c
            java.lang.String r4 = h(r3, r2)
            boolean r4 = r6.add(r4)
            if (r4 == 0) goto L3c
            byte[] r4 = o.Ha.z(r8, r3)
            if (r4 != 0) goto L61
            goto L3c
        L61:
            q(r3)
            r8 = r4
            goto L67
        L66:
            r8 = r1
        L67:
            if (r8 != 0) goto L6a
        L69:
            return r1
        L6a:
            r6 = 2
            r7 = r7 & r6
            if (r7 != 0) goto L7f
            int r7 = r8.length
            if (r7 < r6) goto La9
            r6 = 0
            r6 = r8[r6]
            r7 = 31
            if (r6 != r7) goto La9
            r6 = 1
            r6 = r8[r6]
            r7 = -117(0xffffffffffffff8b, float:NaN)
            if (r6 != r7) goto La9
        L7f:
            java.util.zip.GZIPInputStream r6 = new java.util.zip.GZIPInputStream     // Catch: java.lang.Throwable -> L98
            java.io.ByteArrayInputStream r7 = new java.io.ByteArrayInputStream     // Catch: java.lang.Throwable -> L98
            r7.<init>(r8)     // Catch: java.lang.Throwable -> L98
            r6.<init>(r7)     // Catch: java.lang.Throwable -> L98
            byte[] r7 = o.L1.R(r6)     // Catch: java.lang.Throwable -> L91
            o.L1.k(r6, r1)     // Catch: java.lang.Throwable -> L98
            goto L9e
        L91:
            r7 = move-exception
            throw r7     // Catch: java.lang.Throwable -> L93
        L93:
            r8 = move-exception
            o.L1.k(r6, r7)     // Catch: java.lang.Throwable -> L98
            throw r8     // Catch: java.lang.Throwable -> L98
        L98:
            r6 = move-exception
            o.de r7 = new o.de
            r7.<init>(r6)
        L9e:
            boolean r6 = r7 instanceof o.C0094de
            if (r6 == 0) goto La3
            r7 = r1
        La3:
            r8 = r7
            byte[] r8 = (byte[]) r8
            if (r8 != 0) goto La9
            return r1
        La9:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: o.Tg.e(java.lang.String, int, byte[]):byte[]");
    }

    public final synchronized List g() {
        return AbstractC0104e4.l0(d);
    }

    public final synchronized void k(int i2, int i3, String str, byte[] bArr) {
        int i4;
        int i5;
        Sg sg;
        int i6;
        int i7;
        int i8;
        try {
            AbstractC0487x9.o(str, "flowId");
            if (e != null) {
                return;
            }
            if (i3 >= 18 && i2 >= 0 && i2 + i3 <= bArr.length) {
                int i9 = bArr[i2] & 255;
                if (90 <= i9 && i9 < 100) {
                    int i10 = i3 - 10;
                    if (i10 % 8 != 0) {
                        return;
                    }
                    int x = x(str);
                    if (x >= 0 && x < 256) {
                        HashSet hashSet = new HashSet(4);
                        int[][] iArr = t;
                        int length = iArr.length;
                        int i11 = 0;
                        while (true) {
                            int i12 = 1;
                            if (i11 >= length) {
                                break;
                            }
                            int[] iArr2 = iArr[i11];
                            int length2 = iArr2.length;
                            int i13 = 2;
                            int i14 = -1;
                            int i15 = -1;
                            int i16 = -1;
                            int i17 = -1;
                            int i18 = -1;
                            int i19 = 0;
                            while (true) {
                                if (i19 < length2) {
                                    int i20 = iArr2[i19];
                                    if (i20 != 0) {
                                        if (i20 != i12) {
                                            if (i20 != 2) {
                                                if (i20 != 3) {
                                                    if (i20 != 4) {
                                                        sg = null;
                                                        break;
                                                    } else {
                                                        int i21 = ((bArr[i2 + i13] & 255) ^ x) | (((bArr[(i13 + 1) + i2] & 255) ^ x) << 8);
                                                        i13 += 2;
                                                        i18 = i21;
                                                    }
                                                } else {
                                                    int i22 = (bArr[i2 + i13] & 255) ^ x;
                                                    i13++;
                                                    i17 = i22;
                                                }
                                            } else {
                                                int i23 = ((bArr[i2 + i13] & 255) ^ x) | (((bArr[(i13 + 1) + i2] & 255) ^ x) << 8);
                                                i13 += 2;
                                                i16 = i23;
                                            }
                                        } else {
                                            int i24 = ((bArr[i2 + i13] & 255) ^ x) | (((bArr[(i13 + 1) + i2] & 255) ^ x) << 8);
                                            i13 += 2;
                                            i15 = i24;
                                        }
                                    } else {
                                        int i25 = (bArr[i2 + i13] & 255) ^ x;
                                        i13++;
                                        i14 = i25;
                                    }
                                    i19++;
                                    i12 = 1;
                                } else if (i13 == 10 && i14 >= 0 && i14 < 6) {
                                    sg = new Sg(i14, i15, i16, i17, i18);
                                } else {
                                    sg = null;
                                }
                            }
                            if (sg != null && sg.a == 2 && (i6 = sg.d) >= 0 && i6 < 2 && sg.e == i10 && 1 <= (i7 = sg.b) && i7 < 2501 && (i8 = sg.c) >= 0 && i8 < 4096) {
                                int i26 = 4;
                                char[] cArr = new char[4];
                                int length3 = iArr2.length;
                                int i27 = 0;
                                int i28 = 0;
                                while (i27 < length3) {
                                    int i29 = iArr2[i27];
                                    if (i29 != 2 && i28 < i26) {
                                        cArr[i28] = (char) (i29 + 48);
                                        i28++;
                                    }
                                    i27++;
                                    i26 = 4;
                                }
                                hashSet.add(new String(cArr, 0, i28));
                            }
                            i11++;
                        }
                        if (hashSet.isEmpty()) {
                            return;
                        }
                        Iterator it = hashSet.iterator();
                        AbstractC0487x9.n(it, "iterator(...)");
                        while (it.hasNext()) {
                            Object next = it.next();
                            AbstractC0487x9.n(next, "next(...)");
                            String str2 = (String) next;
                            HashMap hashMap = j;
                            Integer num = (Integer) hashMap.get(str2);
                            if (num != null) {
                                i5 = num.intValue();
                                i4 = 1;
                            } else {
                                i4 = 1;
                                i5 = 0;
                            }
                            hashMap.put(str2, Integer.valueOf(i5 + i4));
                        }
                        int i30 = k + 1;
                        k = i30;
                        if (i30 < 12) {
                            return;
                        }
                        String str3 = BuildConfig.FLAVOR;
                        int i31 = 0;
                        int i32 = 0;
                        for (Map.Entry entry : j.entrySet()) {
                            String str4 = (String) entry.getKey();
                            int intValue = ((Number) entry.getValue()).intValue();
                            if (intValue > i32) {
                                str3 = str4;
                                i31 = i32;
                                i32 = intValue;
                            } else if (intValue > i31) {
                                i31 = intValue;
                            }
                        }
                        if (str3.length() == 4 && i32 >= 8 && (i31 <= 0 || i32 >= i31 * 2)) {
                            if (str3.length() == 4) {
                                char charAt = str3.charAt(0);
                                String substring = str3.substring(1);
                                AbstractC0487x9.n(substring, "substring(...)");
                                str3 = charAt + "2" + substring;
                            }
                            c(str3, "udp");
                        }
                    }
                }
            }
        } finally {
        }
    }

    public final synchronized void o(int i2) {
        if (100 <= i2 && i2 < 110) {
            f151f = i2;
            ArrayList arrayList = g;
            if (!arrayList.contains(Integer.valueOf(i2))) {
                arrayList.add(Integer.valueOf(i2));
                Log.w("ffrt-moco", "mk_ring " + v());
            }
        }
    }

    public final void r(byte[] bArr, int i2, int i3, String str, boolean z) {
        Qg qg;
        String str2;
        int i4;
        int i5;
        int[] iArr;
        int x;
        int i6;
        int i7;
        int i8;
        int[] iArr2;
        int i9;
        int i10;
        int i11 = 1;
        AbstractC0487x9.o(str, "flowId");
        int i12 = p;
        synchronized (n) {
            ArrayList arrayList = f152o;
            if (!arrayList.isEmpty() && q != i12) {
                q = i12;
                List<Rg> l0 = AbstractC0104e4.l0(arrayList);
                arrayList.clear();
                int i13 = 0;
                for (Rg rg : l0) {
                    byte[] e2 = e(rg.d, rg.b, rg.c);
                    if (e2 == null) {
                        t(rg);
                    } else {
                        byte[] bArr2 = Hb.a;
                        Hb.e(rg.a, e2, true);
                        i13++;
                    }
                }
                if (i13 > 0) {
                    Log.w("ffrt-moco", "game replayed=" + i13 + " pending=" + (l0.size() - i13));
                }
            }
        }
        if (i3 >= 8 && i2 >= 0 && i2 + i3 <= bArr.length && (iArr = e) != null && (x = x(str)) >= 0 && x < 256) {
            int i14 = bArr[i2] & 255;
            if (90 <= i14 && i14 < 100) {
                i6 = 10;
            } else if (100 <= i14 && i14 < 110) {
                iArr = n();
                i6 = 8;
            }
            if (i3 >= i6) {
                int length = iArr.length;
                int i15 = -1;
                int i16 = -1;
                int i17 = -1;
                int i18 = -1;
                int i19 = 0;
                int i20 = 2;
                while (true) {
                    if (i19 < length) {
                        int i21 = iArr[i19];
                        if (i21 != 0) {
                            if (i21 != i11) {
                                if (i21 != 2) {
                                    if (i21 != 3) {
                                        if (i21 != 4) {
                                            break;
                                        }
                                        int i22 = i20;
                                        iArr2 = iArr;
                                        i8 = length;
                                        i9 = 1;
                                        int f2 = f(bArr, i2, x, i22) | (f(bArr, i2, x, i22 + 1) << 8);
                                        i10 = i22 + 2;
                                        i18 = f2;
                                    } else {
                                        i8 = length;
                                        int i23 = i20;
                                        iArr2 = iArr;
                                        i9 = 1;
                                        int f3 = f(bArr, i2, x, i23);
                                        i10 = i23 + 1;
                                        i16 = f3;
                                    }
                                } else {
                                    i8 = length;
                                    int i24 = i20;
                                    iArr2 = iArr;
                                    i9 = 1;
                                    i10 = i24 + 2;
                                }
                            } else {
                                i8 = length;
                                int i25 = i20;
                                iArr2 = iArr;
                                i9 = i11;
                                int f4 = f(bArr, i2, x, i25) | (f(bArr, i2, x, i25 + 1) << 8);
                                i10 = i25 + 2;
                                i17 = f4;
                            }
                        } else {
                            i8 = length;
                            int i26 = i20;
                            iArr2 = iArr;
                            i9 = i11;
                            int f5 = f(bArr, i2, x, i26);
                            i10 = i26 + i9;
                            i15 = f5;
                        }
                        i19 += i9;
                        i11 = i9;
                        iArr = iArr2;
                        length = i8;
                        i20 = i10;
                    } else {
                        int i27 = i11;
                        if (i20 == i6 && i15 >= 0 && i15 < 6 && i16 >= 0 && i16 < 4 && i27 <= i17 && i17 < 2501 && (i7 = i18) == i3 - i6) {
                            qg = new Qg(i17, i16, i7, i6);
                        }
                    }
                }
            }
        }
        qg = null;
        if (qg == null) {
            return;
        }
        if (z) {
            int i28 = qg.a;
            if (101 > i28 || i28 >= 106) {
                return;
            }
        } else if (qg.a != 2001) {
            return;
        }
        if (z && (i5 = qg.a) == 103) {
            byte[] bArr3 = Hb.a;
            Hb.e(i5, new byte[0], true);
            return;
        }
        int i29 = i2 + qg.d;
        byte[] n0 = H2.n0(bArr, i29, qg.c + i29);
        byte[] e3 = e(str, qg.b, n0);
        if (e3 == null) {
            if (z && (i4 = qg.a) != 103) {
                t(new Rg(i4, qg.b, str, n0));
            }
            int i30 = m + 1;
            m = i30;
            if (i30 == 1 || i30 % 20 == 0) {
                int i31 = qg.a;
                if (z) {
                    str2 = "S2C";
                } else {
                    str2 = "C2S";
                }
                Log.w("ffrt-moco", "game_miss cmd=" + i31 + " dir=" + str2 + " body=" + n0.length + " keys=" + (g().size() + w(str).size()));
                return;
            }
            return;
        }
        byte[] bArr4 = Hb.a;
        Hb.e(qg.a, e3, z);
    }

    public final void s(int i2, int i3, String str, byte[] bArr) {
        int i4;
        int i5;
        byte[] z;
        byte[] z2;
        if (i3 < 8 || i2 < 0 || (i4 = i2 + i3) > bArr.length || i3 < 24) {
            return;
        }
        int i6 = bArr[i2] & 255;
        if (90 <= i6 && i6 < 100) {
            i5 = 10;
        } else if (100 <= i6 && i6 < 110) {
            i5 = 8;
        } else {
            return;
        }
        if (i3 > i5) {
            int i7 = i3 - i5;
            if (i7 % 8 == 0) {
                int i8 = i2 + i5;
                if (m(bArr, i8, i7)) {
                    return;
                }
                byte[] n0 = H2.n0(bArr, i8, i4);
                byte[] bArr2 = i;
                if (bArr2 != null && bArr2.length >= 16) {
                    if (r <= 0 || (z2 = Ha.z(n0, bArr2)) == null) {
                        return;
                    }
                    r--;
                    Hb.a(z2);
                    return;
                }
                int x = x(str);
                HashSet hashSet = new HashSet(8);
                ArrayList arrayList = new ArrayList(16);
                arrayList.addAll(w(str));
                arrayList.addAll(g());
                Iterator it = arrayList.iterator();
                AbstractC0487x9.n(it, "iterator(...)");
                while (it.hasNext()) {
                    Object next = it.next();
                    AbstractC0487x9.n(next, "next(...)");
                    byte[] bArr3 = (byte[]) next;
                    if (bArr3.length >= 16) {
                        String h2 = h(bArr3, 8);
                        if (hashSet.add(h2) && (z = Ha.z(n0, bArr3)) != null) {
                            q(bArr3);
                            Hb.a(z);
                            int length = z.length;
                            L1.j(16);
                            String num = Integer.toString(x, 16);
                            AbstractC0487x9.n(num, "toString(...)");
                            Log.w("ffrt-moco", "tea_ok " + h2 + " pt=" + length + " mk=" + i6 + " xor=0x" + num);
                            return;
                        }
                    }
                }
                int i9 = l + 1;
                l = i9;
                if (i9 == 1 || i9 % 40 == 0) {
                    Log.w("ffrt-moco", "tea_miss n=" + i3 + " mk=" + i6 + " keys=" + hashSet.size());
                }
            }
        }
    }

    public final synchronized void u() {
        s = BuildConfig.FLAVOR;
        e = null;
        j.clear();
        k = 0;
        f151f = 105;
        g.clear();
        h = 0;
        i = null;
        l = 0;
        m = 0;
        synchronized (n) {
            f152o.clear();
            q = -1;
        }
        p = 0;
        r = 40;
    }

    public final synchronized String v() {
        ArrayList arrayList = g;
        if (arrayList.isEmpty()) {
            return String.valueOf(f151f);
        }
        StringBuilder sb = new StringBuilder(arrayList.size() * 4);
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (i2 > 0) {
                sb.append(',');
            }
            Object obj = g.get(i2);
            AbstractC0487x9.n(obj, "get(...)");
            sb.append(((Number) obj).intValue());
        }
        String sb2 = sb.toString();
        AbstractC0487x9.n(sb2, "toString(...)");
        return sb2;
    }

    public final ArrayList w(String str) {
        AbstractC0487x9.o(str, "flowId");
        ArrayList arrayList = new ArrayList(12);
        ConcurrentHashMap concurrentHashMap = c;
        if (str.length() == 0) {
            str = "_";
        }
        Pg pg = (Pg) concurrentHashMap.get(str);
        if (pg != null && pg.f137f.length == 16) {
            byte[] copyOf = Arrays.copyOf(pg.f137f, 16);
            AbstractC0487x9.n(copyOf, "copyOf(...)");
            arrayList.add(copyOf);
        }
        arrayList.addAll(g());
        return arrayList;
    }
}
