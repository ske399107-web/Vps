package o;

import java.util.Comparator;

/* renamed from: o.c5, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0065c5 implements Comparator {
    public final /* synthetic */ int a;

    public /* synthetic */ C0065c5(int i) {
        this.a = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0064, code lost:
    
        if (r3 == null) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0066, code lost:
    
        r0 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x006f, code lost:
    
        if (r3 != false) goto L29;
     */
    @Override // java.util.Comparator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int compare(java.lang.Object r7, java.lang.Object r8) {
        /*
            r6 = this;
            r0 = -1
            r1 = 1
            r2 = 0
            int r3 = r6.a
            switch(r3) {
                case 0: goto L83;
                case 1: goto L50;
                case 2: goto L38;
                case 3: goto L20;
                case 4: goto L16;
                default: goto L8;
            }
        L8:
            android.view.View r7 = (android.view.View) r7
            android.view.View r8 = (android.view.View) r8
            int r7 = r7.getTop()
            int r8 = r8.getTop()
            int r7 = r7 - r8
            return r7
        L16:
            o.We r7 = (o.We) r7
            o.We r8 = (o.We) r8
            int r7 = r7.b
            int r8 = r8.b
            int r7 = r7 - r8
            return r7
        L20:
            o.d7 r7 = (o.C0087d7) r7
            int r7 = r7.a
            java.lang.Integer r7 = java.lang.Integer.valueOf(r7)
            o.d7 r8 = (o.C0087d7) r8
            int r8 = r8.a
            java.lang.Integer r8 = java.lang.Integer.valueOf(r8)
            if (r7 != r8) goto L33
            goto L37
        L33:
            int r2 = r7.compareTo(r8)
        L37:
            return r2
        L38:
            o.d7 r7 = (o.C0087d7) r7
            int r7 = r7.a
            java.lang.Integer r7 = java.lang.Integer.valueOf(r7)
            o.d7 r8 = (o.C0087d7) r8
            int r8 = r8.a
            java.lang.Integer r8 = java.lang.Integer.valueOf(r8)
            if (r7 != r8) goto L4b
            goto L4f
        L4b:
            int r2 = r7.compareTo(r8)
        L4f:
            return r2
        L50:
            o.S8 r7 = (o.S8) r7
            o.S8 r8 = (o.S8) r8
            androidx.recyclerview.widget.RecyclerView r3 = r7.d
            if (r3 != 0) goto L5a
            r4 = r1
            goto L5b
        L5a:
            r4 = r2
        L5b:
            androidx.recyclerview.widget.RecyclerView r5 = r8.d
            if (r5 != 0) goto L61
            r5 = r1
            goto L62
        L61:
            r5 = r2
        L62:
            if (r4 == r5) goto L69
            if (r3 != 0) goto L67
        L66:
            r0 = r1
        L67:
            r2 = r0
            goto L82
        L69:
            boolean r3 = r7.a
            boolean r4 = r8.a
            if (r3 == r4) goto L72
            if (r3 == 0) goto L66
            goto L67
        L72:
            int r0 = r8.b
            int r1 = r7.b
            int r0 = r0 - r1
            if (r0 == 0) goto L7a
            goto L67
        L7a:
            int r7 = r7.c
            int r8 = r8.c
            int r7 = r7 - r8
            if (r7 == 0) goto L82
            r2 = r7
        L82:
            return r2
        L83:
            android.view.View r7 = (android.view.View) r7
            android.view.View r8 = (android.view.View) r8
            java.util.WeakHashMap r3 = o.Dh.a
            float r7 = o.AbstractC0455vh.g(r7)
            float r8 = o.AbstractC0455vh.g(r8)
            int r3 = (r7 > r8 ? 1 : (r7 == r8 ? 0 : -1))
            if (r3 <= 0) goto L96
            goto L9d
        L96:
            int r7 = (r7 > r8 ? 1 : (r7 == r8 ? 0 : -1))
            if (r7 >= 0) goto L9c
            r0 = r1
            goto L9d
        L9c:
            r0 = r2
        L9d:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: o.C0065c5.compare(java.lang.Object, java.lang.Object):int");
    }
}
