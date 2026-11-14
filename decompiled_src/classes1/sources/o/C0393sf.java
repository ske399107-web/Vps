package o;

import java.util.NoSuchElementException;

/* renamed from: o.sf, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final /* synthetic */ class C0393sf implements J8 {
    public final /* synthetic */ char[] a;

    public /* synthetic */ C0393sf(char[] cArr) {
        this.a = cArr;
    }

    @Override // o.J8
    public final Object a(Object obj, Object obj2) {
        int i;
        CharSequence charSequence = (CharSequence) obj;
        int intValue = ((Integer) obj2).intValue();
        AbstractC0487x9.o(charSequence, "$this$DelimitedRangesSequence");
        char[] cArr = this.a;
        AbstractC0487x9.o(charSequence, "<this>");
        if (cArr.length == 1 && (charSequence instanceof String)) {
            int length = cArr.length;
            if (length != 0) {
                if (length == 1) {
                    i = ((String) charSequence).indexOf(cArr[0], intValue);
                } else {
                    throw new IllegalArgumentException("Array has more than one element.");
                }
            } else {
                throw new NoSuchElementException("Array is empty.");
            }
        } else {
            if (intValue < 0) {
                intValue = 0;
            }
            int E0 = AbstractC0413tf.E0(charSequence);
            if (intValue <= E0) {
                loop0: while (true) {
                    char charAt = charSequence.charAt(intValue);
                    for (char c : cArr) {
                        if (L1.t(c, charAt, false)) {
                            i = intValue;
                            break loop0;
                        }
                    }
                    if (intValue == E0) {
                        break;
                    }
                    intValue++;
                }
            }
            i = -1;
        }
        if (i < 0) {
            return null;
        }
        return new Cc(Integer.valueOf(i), 1);
    }
}
