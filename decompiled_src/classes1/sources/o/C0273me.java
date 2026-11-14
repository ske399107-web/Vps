package o;

import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* renamed from: o.me, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class C0273me implements Iterable {
    public C0213je a;
    public C0213je b;
    public final WeakHashMap c = new WeakHashMap();
    public int d = 0;

    public C0213je a(Object obj) {
        C0213je c0213je = this.a;
        while (c0213je != null && !c0213je.a.equals(obj)) {
            c0213je = c0213je.c;
        }
        return c0213je;
    }

    public Object b(Object obj) {
        C0213je a = a(obj);
        if (a == null) {
            return null;
        }
        this.d--;
        WeakHashMap weakHashMap = this.c;
        if (!weakHashMap.isEmpty()) {
            Iterator it = weakHashMap.keySet().iterator();
            while (it.hasNext()) {
                ((AbstractC0253le) it.next()).a(a);
            }
        }
        C0213je c0213je = a.d;
        if (c0213je != null) {
            c0213je.c = a.c;
        } else {
            this.a = a.c;
        }
        C0213je c0213je2 = a.c;
        if (c0213je2 != null) {
            c0213je2.d = c0213je;
        } else {
            this.b = c0213je;
        }
        a.c = null;
        a.d = null;
        return a.b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0048, code lost:
    
        if (r3.hasNext() != false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0050, code lost:
    
        if (((o.C0194ie) r7).hasNext() != false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:?, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0054, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(java.lang.Object r7) {
        /*
            r6 = this;
            r0 = 1
            if (r7 != r6) goto L4
            return r0
        L4:
            boolean r1 = r7 instanceof o.C0273me
            r2 = 0
            if (r1 != 0) goto La
            return r2
        La:
            o.me r7 = (o.C0273me) r7
            int r1 = r6.d
            int r3 = r7.d
            if (r1 == r3) goto L13
            return r2
        L13:
            java.util.Iterator r1 = r6.iterator()
            java.util.Iterator r7 = r7.iterator()
        L1b:
            r3 = r1
            o.ie r3 = (o.C0194ie) r3
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L44
            r4 = r7
            o.ie r4 = (o.C0194ie) r4
            boolean r5 = r4.hasNext()
            if (r5 == 0) goto L44
            java.lang.Object r3 = r3.next()
            java.util.Map$Entry r3 = (java.util.Map.Entry) r3
            java.lang.Object r4 = r4.next()
            if (r3 != 0) goto L3b
            if (r4 != 0) goto L43
        L3b:
            if (r3 == 0) goto L1b
            boolean r3 = r3.equals(r4)
            if (r3 != 0) goto L1b
        L43:
            return r2
        L44:
            boolean r1 = r3.hasNext()
            if (r1 != 0) goto L53
            o.ie r7 = (o.C0194ie) r7
            boolean r7 = r7.hasNext()
            if (r7 != 0) goto L53
            goto L54
        L53:
            r0 = r2
        L54:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: o.C0273me.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        Iterator it = iterator();
        int i = 0;
        while (true) {
            C0194ie c0194ie = (C0194ie) it;
            if (c0194ie.hasNext()) {
                i += ((Map.Entry) c0194ie.next()).hashCode();
            } else {
                return i;
            }
        }
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        C0194ie c0194ie = new C0194ie(this.a, this.b, 0);
        this.c.put(c0194ie, Boolean.FALSE);
        return c0194ie;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("[");
        Iterator it = iterator();
        while (true) {
            C0194ie c0194ie = (C0194ie) it;
            if (c0194ie.hasNext()) {
                sb.append(((Map.Entry) c0194ie.next()).toString());
                if (c0194ie.hasNext()) {
                    sb.append(", ");
                }
            } else {
                sb.append("]");
                return sb.toString();
            }
        }
    }
}
