package o;

import java.util.ArrayList;

/* renamed from: o.he, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0174he {
    public AbstractC0277mi a;
    public ArrayList b;

    public static long a(P5 p5, long j) {
        AbstractC0277mi abstractC0277mi = p5.d;
        if (abstractC0277mi instanceof C0029a9) {
            return j;
        }
        ArrayList arrayList = p5.k;
        int size = arrayList.size();
        long j2 = j;
        for (int i = 0; i < size; i++) {
            N5 n5 = (N5) arrayList.get(i);
            if (n5 instanceof P5) {
                P5 p52 = (P5) n5;
                if (p52.d != abstractC0277mi) {
                    j2 = Math.min(j2, a(p52, p52.f136f + j));
                }
            }
        }
        if (p5 == abstractC0277mi.i) {
            long j3 = abstractC0277mi.j();
            long j4 = j - j3;
            return Math.min(Math.min(j2, a(abstractC0277mi.h, j4)), j4 - r9.f136f);
        }
        return j2;
    }

    public static long b(P5 p5, long j) {
        AbstractC0277mi abstractC0277mi = p5.d;
        if (abstractC0277mi instanceof C0029a9) {
            return j;
        }
        ArrayList arrayList = p5.k;
        int size = arrayList.size();
        long j2 = j;
        for (int i = 0; i < size; i++) {
            N5 n5 = (N5) arrayList.get(i);
            if (n5 instanceof P5) {
                P5 p52 = (P5) n5;
                if (p52.d != abstractC0277mi) {
                    j2 = Math.max(j2, b(p52, p52.f136f + j));
                }
            }
        }
        if (p5 == abstractC0277mi.h) {
            long j3 = abstractC0277mi.j();
            long j4 = j + j3;
            return Math.max(Math.max(j2, b(abstractC0277mi.i, j4)), j4 - r9.f136f);
        }
        return j2;
    }
}
