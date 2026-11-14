package o;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

/* renamed from: o.j4, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class AbstractC0203j4 extends AbstractC0184i4 {
    public static void j0(ArrayList arrayList, Comparator comparator) {
        if (arrayList.size() > 1) {
            Collections.sort(arrayList, comparator);
        }
    }
}
