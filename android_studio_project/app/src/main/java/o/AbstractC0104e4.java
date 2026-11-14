package o;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
//import org.conscrypt.BuildConfig // replaced by app BuildConfig

/* renamed from: o.e4, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class AbstractC0104e4 extends AbstractC0223k4 {
    public static String k0(Collection collection, String str, F8 f8, int i) {
        String str2;
        if ((i & 1) != 0) {
            str = ", ";
        }
        int i2 = i & 2;
        String str3 = BuildConfig.FLAVOR;
        if (i2 != 0) {
            str2 = BuildConfig.FLAVOR;
        } else {
            str2 = "[";
        }
        if ((i & 4) == 0) {
            str3 = "]";
        }
        if ((i & 32) != 0) {
            f8 = null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append((CharSequence) str2);
        int i3 = 0;
        for (Object obj : collection) {
            boolean z = true;
            i3++;
            if (i3 > 1) {
                sb.append((CharSequence) str);
            }
            if (f8 != null) {
                sb.append((CharSequence) f8.b(obj));
            } else {
                if (obj != null) {
                    z = obj instanceof CharSequence;
                }
                if (z) {
                    sb.append((CharSequence) obj);
                } else if (obj instanceof Character) {
                    sb.append(((Character) obj).charValue());
                } else {
                    sb.append((CharSequence) obj.toString());
                }
            }
        }
        sb.append((CharSequence) str3);
        return sb.toString();
    }

    public static List l0(ArrayList arrayList) {
        AbstractC0487x9.o(arrayList, "<this>");
        V6 v6 = V6.a;
        int size = arrayList.size();
        if (size != 0) {
            if (size != 1) {
                return new ArrayList(arrayList);
            }
            return L1.H(arrayList.get(0));
        }
        return v6;
    }
}
