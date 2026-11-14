package o;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* renamed from: o.tf, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class AbstractC0413tf extends AbstractC0373rf {
    public static boolean D0(String str, boolean z, String str2) {
        AbstractC0487x9.o(str, "<this>");
        if (F0(str, str2, 0, z) < 0) {
            return false;
        }
        return true;
    }

    public static final int E0(CharSequence charSequence) {
        AbstractC0487x9.o(charSequence, "<this>");
        return charSequence.length() - 1;
    }

    public static final int F0(String str, String str2, int i, boolean z) {
        boolean regionMatches;
        AbstractC0487x9.o(str, "<this>");
        AbstractC0487x9.o(str2, "string");
        if (!z) {
            return str.indexOf(str2, i);
        }
        int length = str.length();
        if (i < 0) {
            i = 0;
        }
        int length2 = str.length();
        if (length > length2) {
            length = length2;
        }
        int i2 = new AbstractC0427u9(i, length, 1).b;
        if (str != null && str2 != null) {
            if (i <= i2) {
                while (true) {
                    int length3 = str2.length();
                    AbstractC0487x9.o(str, "other");
                    if (!z) {
                        regionMatches = str2.regionMatches(0, str, i, length3);
                    } else {
                        regionMatches = str2.regionMatches(z, 0, str, i, length3);
                    }
                    if (regionMatches) {
                        break;
                    }
                    if (i == i2) {
                        break;
                    }
                    i++;
                }
            }
            return -1;
        }
        if (i <= i2) {
            loop1: while (true) {
                int length4 = str2.length();
                AbstractC0487x9.o(str, "other");
                if (i >= 0 && str2.length() - length4 >= 0 && i <= str.length() - length4) {
                    for (int i3 = 0; i3 < length4; i3++) {
                        if (L1.t(str2.charAt(i3), str.charAt(i + i3), z)) {
                        }
                    }
                    break loop1;
                }
                if (i == i2) {
                    break;
                }
                i++;
            }
            return i;
        }
        return -1;
    }

    public static boolean G0(String str) {
        AbstractC0487x9.o(str, "<this>");
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (!Character.isWhitespace(charAt) && !Character.isSpaceChar(charAt)) {
                return false;
            }
        }
        return true;
    }

    public static String H0(String str, char c) {
        AbstractC0487x9.o(str, "<this>");
        String replace = str.replace(c, ' ');
        AbstractC0487x9.n(replace, "replace(...)");
        return replace;
    }

    public static List I0(String str, char[] cArr) {
        AbstractC0487x9.o(str, "<this>");
        int i = 10;
        if (cArr.length == 1) {
            String valueOf = String.valueOf(cArr[0]);
            int F0 = F0(str, valueOf, 0, false);
            if (F0 != -1) {
                ArrayList arrayList = new ArrayList(10);
                int i2 = 0;
                do {
                    arrayList.add(str.subSequence(i2, F0).toString());
                    i2 = valueOf.length() + F0;
                    F0 = F0(str, valueOf, i2, false);
                } while (F0 != -1);
                arrayList.add(str.subSequence(i2, str.length()).toString());
                return arrayList;
            }
            return L1.H(str.toString());
        }
        Iterable c0492xe = new C0492xe(new H1(str, new C0393sf(cArr)));
        if (c0492xe instanceof Collection) {
            i = ((Collection) c0492xe).size();
        }
        ArrayList arrayList2 = new ArrayList(i);
        Iterator it = c0492xe.iterator();
        while (true) {
            M5 m5 = (M5) it;
            if (m5.hasNext()) {
                C0467w9 c0467w9 = (C0467w9) m5.next();
                arrayList2.add(str.subSequence(c0467w9.a, c0467w9.b + 1).toString());
            } else {
                return arrayList2;
            }
        }
    }

    public static String J0(String str, char c) {
        AbstractC0487x9.o(str, "<this>");
        AbstractC0487x9.o(str, "missingDelimiterValue");
        int lastIndexOf = str.lastIndexOf(c, E0(str));
        if (lastIndexOf != -1) {
            String substring = str.substring(lastIndexOf + 1, str.length());
            AbstractC0487x9.n(substring, "substring(...)");
            return substring;
        }
        return str;
    }

    public static Integer K0(String str) {
        boolean z;
        int i;
        Integer valueOf;
        int i2;
        AbstractC0487x9.o(str, "<this>");
        L1.j(10);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i3 = 0;
        char charAt = str.charAt(0);
        int i4 = -2147483647;
        if (charAt < '0') {
            i = 1;
            if (length == 1) {
                return null;
            }
            if (charAt != '+') {
                if (charAt != '-') {
                    return null;
                }
                i4 = PKIFailureInfo.systemUnavail;
                z = true;
            } else {
                z = false;
            }
        } else {
            z = false;
            i = 0;
        }
        int i5 = -59652323;
        while (i < length) {
            int digit = Character.digit((int) str.charAt(i), 10);
            if (digit < 0) {
                return null;
            }
            if ((i3 < i5 && (i5 != -59652323 || i3 < (i5 = i4 / 10))) || (i2 = i3 * 10) < i4 + digit) {
                return null;
            }
            i3 = i2 - digit;
            i++;
        }
        if (z) {
            valueOf = Integer.valueOf(i3);
        } else {
            valueOf = Integer.valueOf(-i3);
        }
        return valueOf;
    }

    public static CharSequence L0(String str) {
        int i;
        boolean z;
        AbstractC0487x9.o(str, "<this>");
        int length = str.length() - 1;
        int i2 = 0;
        boolean z2 = false;
        while (i2 <= length) {
            if (!z2) {
                i = i2;
            } else {
                i = length;
            }
            char charAt = str.charAt(i);
            if (!Character.isWhitespace(charAt) && !Character.isSpaceChar(charAt)) {
                z = false;
            } else {
                z = true;
            }
            if (!z2) {
                if (!z) {
                    z2 = true;
                } else {
                    i2++;
                }
            } else {
                if (!z) {
                    break;
                }
                length--;
            }
        }
        return str.subSequence(i2, length + 1);
    }
}
