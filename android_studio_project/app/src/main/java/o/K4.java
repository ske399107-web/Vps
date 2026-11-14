package o;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import org.bouncycastle.asn1.BERTags;
import org.bouncycastle.asn1.eac.EACTags;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class K4 {
    public static final int[] d = {0, 4, 8};
    public static final SparseIntArray e;

    /* renamed from: f, reason: collision with root package name */
    public static final SparseIntArray f115f;
    public final HashMap a = new HashMap();
    public final boolean b = true;
    public final HashMap c = new HashMap();

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        e = sparseIntArray;
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        f115f = sparseIntArray2;
        sparseIntArray.append(82, 25);
        sparseIntArray.append(83, 26);
        sparseIntArray.append(85, 29);
        sparseIntArray.append(86, 30);
        sparseIntArray.append(92, 36);
        sparseIntArray.append(91, 35);
        sparseIntArray.append(63, 4);
        sparseIntArray.append(62, 3);
        sparseIntArray.append(58, 1);
        sparseIntArray.append(60, 91);
        sparseIntArray.append(59, 92);
        sparseIntArray.append(101, 6);
        sparseIntArray.append(102, 7);
        sparseIntArray.append(70, 17);
        sparseIntArray.append(71, 18);
        sparseIntArray.append(72, 19);
        sparseIntArray.append(54, 99);
        sparseIntArray.append(0, 27);
        sparseIntArray.append(87, 32);
        sparseIntArray.append(88, 33);
        sparseIntArray.append(69, 10);
        sparseIntArray.append(68, 9);
        sparseIntArray.append(106, 13);
        sparseIntArray.append(109, 16);
        sparseIntArray.append(107, 14);
        sparseIntArray.append(104, 11);
        sparseIntArray.append(108, 15);
        sparseIntArray.append(105, 12);
        sparseIntArray.append(95, 40);
        sparseIntArray.append(80, 39);
        sparseIntArray.append(79, 41);
        sparseIntArray.append(94, 42);
        sparseIntArray.append(78, 20);
        sparseIntArray.append(93, 37);
        sparseIntArray.append(67, 5);
        sparseIntArray.append(81, 87);
        sparseIntArray.append(90, 87);
        sparseIntArray.append(84, 87);
        sparseIntArray.append(61, 87);
        sparseIntArray.append(57, 87);
        sparseIntArray.append(5, 24);
        sparseIntArray.append(7, 28);
        sparseIntArray.append(23, 31);
        sparseIntArray.append(24, 8);
        sparseIntArray.append(6, 34);
        sparseIntArray.append(8, 2);
        sparseIntArray.append(3, 23);
        sparseIntArray.append(4, 21);
        sparseIntArray.append(96, 95);
        sparseIntArray.append(73, 96);
        sparseIntArray.append(2, 22);
        sparseIntArray.append(13, 43);
        sparseIntArray.append(26, 44);
        sparseIntArray.append(21, 45);
        sparseIntArray.append(22, 46);
        sparseIntArray.append(20, 60);
        sparseIntArray.append(18, 47);
        sparseIntArray.append(19, 48);
        sparseIntArray.append(14, 49);
        sparseIntArray.append(15, 50);
        sparseIntArray.append(16, 51);
        sparseIntArray.append(17, 52);
        sparseIntArray.append(25, 53);
        sparseIntArray.append(97, 54);
        sparseIntArray.append(74, 55);
        sparseIntArray.append(98, 56);
        sparseIntArray.append(75, 57);
        sparseIntArray.append(99, 58);
        sparseIntArray.append(76, 59);
        sparseIntArray.append(64, 61);
        sparseIntArray.append(66, 62);
        sparseIntArray.append(65, 63);
        sparseIntArray.append(28, 64);
        sparseIntArray.append(121, 65);
        sparseIntArray.append(35, 66);
        sparseIntArray.append(122, 67);
        sparseIntArray.append(113, 79);
        sparseIntArray.append(1, 38);
        sparseIntArray.append(112, 68);
        sparseIntArray.append(100, 69);
        sparseIntArray.append(77, 70);
        sparseIntArray.append(111, 97);
        sparseIntArray.append(32, 71);
        sparseIntArray.append(30, 72);
        sparseIntArray.append(31, 73);
        sparseIntArray.append(33, 74);
        sparseIntArray.append(29, 75);
        sparseIntArray.append(114, 76);
        sparseIntArray.append(89, 77);
        sparseIntArray.append(123, 78);
        sparseIntArray.append(56, 80);
        sparseIntArray.append(55, 81);
        sparseIntArray.append(116, 82);
        sparseIntArray.append(120, 83);
        sparseIntArray.append(119, 84);
        sparseIntArray.append(118, 85);
        sparseIntArray.append(117, 86);
        sparseIntArray2.append(85, 6);
        sparseIntArray2.append(85, 7);
        sparseIntArray2.append(0, 27);
        sparseIntArray2.append(89, 13);
        sparseIntArray2.append(92, 16);
        sparseIntArray2.append(90, 14);
        sparseIntArray2.append(87, 11);
        sparseIntArray2.append(91, 15);
        sparseIntArray2.append(88, 12);
        sparseIntArray2.append(78, 40);
        sparseIntArray2.append(71, 39);
        sparseIntArray2.append(70, 41);
        sparseIntArray2.append(77, 42);
        sparseIntArray2.append(69, 20);
        sparseIntArray2.append(76, 37);
        sparseIntArray2.append(60, 5);
        sparseIntArray2.append(72, 87);
        sparseIntArray2.append(75, 87);
        sparseIntArray2.append(73, 87);
        sparseIntArray2.append(57, 87);
        sparseIntArray2.append(56, 87);
        sparseIntArray2.append(5, 24);
        sparseIntArray2.append(7, 28);
        sparseIntArray2.append(23, 31);
        sparseIntArray2.append(24, 8);
        sparseIntArray2.append(6, 34);
        sparseIntArray2.append(8, 2);
        sparseIntArray2.append(3, 23);
        sparseIntArray2.append(4, 21);
        sparseIntArray2.append(79, 95);
        sparseIntArray2.append(64, 96);
        sparseIntArray2.append(2, 22);
        sparseIntArray2.append(13, 43);
        sparseIntArray2.append(26, 44);
        sparseIntArray2.append(21, 45);
        sparseIntArray2.append(22, 46);
        sparseIntArray2.append(20, 60);
        sparseIntArray2.append(18, 47);
        sparseIntArray2.append(19, 48);
        sparseIntArray2.append(14, 49);
        sparseIntArray2.append(15, 50);
        sparseIntArray2.append(16, 51);
        sparseIntArray2.append(17, 52);
        sparseIntArray2.append(25, 53);
        sparseIntArray2.append(80, 54);
        sparseIntArray2.append(65, 55);
        sparseIntArray2.append(81, 56);
        sparseIntArray2.append(66, 57);
        sparseIntArray2.append(82, 58);
        sparseIntArray2.append(67, 59);
        sparseIntArray2.append(59, 62);
        sparseIntArray2.append(58, 63);
        sparseIntArray2.append(28, 64);
        sparseIntArray2.append(105, 65);
        sparseIntArray2.append(34, 66);
        sparseIntArray2.append(106, 67);
        sparseIntArray2.append(96, 79);
        sparseIntArray2.append(1, 38);
        sparseIntArray2.append(97, 98);
        sparseIntArray2.append(95, 68);
        sparseIntArray2.append(83, 69);
        sparseIntArray2.append(68, 70);
        sparseIntArray2.append(32, 71);
        sparseIntArray2.append(30, 72);
        sparseIntArray2.append(31, 73);
        sparseIntArray2.append(33, 74);
        sparseIntArray2.append(29, 75);
        sparseIntArray2.append(98, 76);
        sparseIntArray2.append(74, 77);
        sparseIntArray2.append(107, 78);
        sparseIntArray2.append(55, 80);
        sparseIntArray2.append(54, 81);
        sparseIntArray2.append(100, 82);
        sparseIntArray2.append(104, 83);
        sparseIntArray2.append(103, 84);
        sparseIntArray2.append(102, 85);
        sparseIntArray2.append(101, 86);
        sparseIntArray2.append(94, 97);
    }

    public static int[] c(P2 p2, String str) {
        int i;
        String[] split = str.split(",");
        Context context = p2.getContext();
        int[] iArr = new int[split.length];
        int i2 = 0;
        int i3 = 0;
        while (i2 < split.length) {
            String trim = split[i2].trim();
            Object obj = null;
            try {
                i = Zc.class.getField(trim).getInt(null);
            } catch (Exception unused) {
                i = 0;
            }
            if (i == 0) {
                i = context.getResources().getIdentifier(trim, "id", context.getPackageName());
            }
            if (i == 0 && p2.isInEditMode() && (p2.getParent() instanceof ConstraintLayout)) {
                ConstraintLayout constraintLayout = (ConstraintLayout) p2.getParent();
                if (trim != null) {
                    HashMap hashMap = constraintLayout.m;
                    if (hashMap != null && hashMap.containsKey(trim)) {
                        obj = constraintLayout.m.get(trim);
                    }
                } else {
                    constraintLayout.getClass();
                }
                if (obj != null && (obj instanceof Integer)) {
                    i = ((Integer) obj).intValue();
                }
            }
            iArr[i3] = i;
            i2++;
            i3++;
        }
        if (i3 != split.length) {
            return Arrays.copyOf(iArr, i3);
        }
        return iArr;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:10:0x0088. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:128:0x0600. Please report as an issue. */
    /* JADX WARN: Type inference failed for: r3v120, types: [java.lang.Object, o.E4] */
    public static F4 d(Context context, AttributeSet attributeSet, boolean z) {
        int[] iArr;
        int i;
        String str;
        String str2;
        String str3;
        int i2;
        String str4;
        int i3;
        F4 f4 = new F4();
        if (z) {
            iArr = AbstractC0033ad.c;
        } else {
            iArr = AbstractC0033ad.a;
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr);
        int[] iArr2 = d;
        SparseIntArray sparseIntArray = e;
        I4 i4 = f4.b;
        String[] strArr = AbstractC0487x9.p;
        J4 j4 = f4.e;
        H4 h4 = f4.c;
        G4 g4 = f4.d;
        String str5 = "Unknown attribute 0x";
        String str6 = "ConstraintSet";
        if (!z) {
            String str7 = "CURRENTLY UNSUPPORTED";
            String str8 = "Unknown attribute 0x";
            int i5 = 1;
            int indexCount = obtainStyledAttributes.getIndexCount();
            int i6 = 0;
            while (i6 < indexCount) {
                int index = obtainStyledAttributes.getIndex(i6);
                if (index != i5 && 23 != index && 24 != index) {
                    h4.getClass();
                    g4.getClass();
                    j4.getClass();
                }
                switch (sparseIntArray.get(index)) {
                    case 1:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        g4.p = f(obtainStyledAttributes, index, g4.p);
                        i2 = 1;
                        break;
                    case 2:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        g4.I = obtainStyledAttributes.getDimensionPixelSize(index, g4.I);
                        i2 = 1;
                        break;
                    case 3:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        g4.f94o = f(obtainStyledAttributes, index, g4.f94o);
                        i2 = 1;
                        break;
                    case 4:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        g4.n = f(obtainStyledAttributes, index, g4.n);
                        i2 = 1;
                        break;
                    case 5:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        g4.y = obtainStyledAttributes.getString(index);
                        i2 = 1;
                        break;
                    case 6:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        g4.C = obtainStyledAttributes.getDimensionPixelOffset(index, g4.C);
                        i2 = 1;
                        break;
                    case 7:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        g4.D = obtainStyledAttributes.getDimensionPixelOffset(index, g4.D);
                        i2 = 1;
                        break;
                    case 8:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        g4.J = obtainStyledAttributes.getDimensionPixelSize(index, g4.J);
                        i2 = 1;
                        break;
                    case 9:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        g4.v = f(obtainStyledAttributes, index, g4.v);
                        i2 = 1;
                        break;
                    case 10:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        g4.u = f(obtainStyledAttributes, index, g4.u);
                        i2 = 1;
                        break;
                    case 11:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        g4.P = obtainStyledAttributes.getDimensionPixelSize(index, g4.P);
                        i2 = 1;
                        break;
                    case 12:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        g4.Q = obtainStyledAttributes.getDimensionPixelSize(index, g4.Q);
                        i2 = 1;
                        break;
                    case 13:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        g4.M = obtainStyledAttributes.getDimensionPixelSize(index, g4.M);
                        i2 = 1;
                        break;
                    case 14:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        g4.O = obtainStyledAttributes.getDimensionPixelSize(index, g4.O);
                        i2 = 1;
                        break;
                    case 15:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        g4.R = obtainStyledAttributes.getDimensionPixelSize(index, g4.R);
                        i2 = 1;
                        break;
                    case 16:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        g4.N = obtainStyledAttributes.getDimensionPixelSize(index, g4.N);
                        i2 = 1;
                        break;
                    case 17:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        g4.d = obtainStyledAttributes.getDimensionPixelOffset(index, g4.d);
                        i2 = 1;
                        break;
                    case 18:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        g4.e = obtainStyledAttributes.getDimensionPixelOffset(index, g4.e);
                        i2 = 1;
                        break;
                    case 19:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        g4.f93f = obtainStyledAttributes.getFloat(index, g4.f93f);
                        i2 = 1;
                        break;
                    case 20:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        g4.w = obtainStyledAttributes.getFloat(index, g4.w);
                        i2 = 1;
                        break;
                    case 21:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        g4.c = obtainStyledAttributes.getLayoutDimension(index, g4.c);
                        i2 = 1;
                        break;
                    case 22:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        int i7 = obtainStyledAttributes.getInt(index, i4.a);
                        i4.a = i7;
                        i4.a = iArr2[i7];
                        i2 = 1;
                        break;
                    case 23:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        g4.b = obtainStyledAttributes.getLayoutDimension(index, g4.b);
                        i2 = 1;
                        break;
                    case 24:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        g4.F = obtainStyledAttributes.getDimensionPixelSize(index, g4.F);
                        i2 = 1;
                        break;
                    case 25:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        g4.h = f(obtainStyledAttributes, index, g4.h);
                        i2 = 1;
                        break;
                    case 26:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        g4.i = f(obtainStyledAttributes, index, g4.i);
                        i2 = 1;
                        break;
                    case 27:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        g4.E = obtainStyledAttributes.getInt(index, g4.E);
                        i2 = 1;
                        break;
                    case 28:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        g4.G = obtainStyledAttributes.getDimensionPixelSize(index, g4.G);
                        i2 = 1;
                        break;
                    case 29:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        g4.j = f(obtainStyledAttributes, index, g4.j);
                        i2 = 1;
                        break;
                    case 30:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        g4.k = f(obtainStyledAttributes, index, g4.k);
                        i2 = 1;
                        break;
                    case BERTags.DATE /* 31 */:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        g4.K = obtainStyledAttributes.getDimensionPixelSize(index, g4.K);
                        i2 = 1;
                        break;
                    case 32:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        g4.s = f(obtainStyledAttributes, index, g4.s);
                        i2 = 1;
                        break;
                    case 33:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        g4.t = f(obtainStyledAttributes, index, g4.t);
                        i2 = 1;
                        break;
                    case 34:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        g4.H = obtainStyledAttributes.getDimensionPixelSize(index, g4.H);
                        i2 = 1;
                        break;
                    case 35:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        g4.m = f(obtainStyledAttributes, index, g4.m);
                        i2 = 1;
                        break;
                    case 36:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        g4.l = f(obtainStyledAttributes, index, g4.l);
                        i2 = 1;
                        break;
                    case EACTags.APPLICATION_EFFECTIVE_DATE /* 37 */:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        g4.x = obtainStyledAttributes.getFloat(index, g4.x);
                        i2 = 1;
                        break;
                    case EACTags.CARD_EFFECTIVE_DATE /* 38 */:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        f4.a = obtainStyledAttributes.getResourceId(index, f4.a);
                        i2 = 1;
                        break;
                    case EACTags.INTERCHANGE_CONTROL /* 39 */:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        g4.U = obtainStyledAttributes.getFloat(index, g4.U);
                        i2 = 1;
                        break;
                    case 40:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        g4.T = obtainStyledAttributes.getFloat(index, g4.T);
                        i2 = 1;
                        break;
                    case EACTags.INTERCHANGE_PROFILE /* 41 */:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        g4.V = obtainStyledAttributes.getInt(index, g4.V);
                        i2 = 1;
                        break;
                    case EACTags.CURRENCY_CODE /* 42 */:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        g4.W = obtainStyledAttributes.getInt(index, g4.W);
                        i2 = 1;
                        break;
                    case EACTags.DATE_OF_BIRTH /* 43 */:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        i4.c = obtainStyledAttributes.getFloat(index, i4.c);
                        i2 = 1;
                        break;
                    case EACTags.CARDHOLDER_NATIONALITY /* 44 */:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        j4.l = true;
                        j4.m = obtainStyledAttributes.getDimension(index, j4.m);
                        i2 = 1;
                        break;
                    case EACTags.LANGUAGE_PREFERENCES /* 45 */:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        j4.b = obtainStyledAttributes.getFloat(index, j4.b);
                        i2 = 1;
                        break;
                    case 46:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        j4.c = obtainStyledAttributes.getFloat(index, j4.c);
                        i2 = 1;
                        break;
                    case EACTags.PIN_USAGE_POLICY /* 47 */:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        j4.d = obtainStyledAttributes.getFloat(index, j4.d);
                        i2 = 1;
                        break;
                    case 48:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        j4.e = obtainStyledAttributes.getFloat(index, j4.e);
                        i2 = 1;
                        break;
                    case 49:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        j4.f112f = obtainStyledAttributes.getDimension(index, j4.f112f);
                        i2 = 1;
                        break;
                    case 50:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        j4.g = obtainStyledAttributes.getDimension(index, j4.g);
                        i2 = 1;
                        break;
                    case EACTags.TRANSACTION_DATE /* 51 */:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        j4.i = obtainStyledAttributes.getDimension(index, j4.i);
                        i2 = 1;
                        break;
                    case EACTags.CARD_SEQUENCE_NUMBER /* 52 */:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        j4.j = obtainStyledAttributes.getDimension(index, j4.j);
                        i2 = 1;
                        break;
                    case EACTags.SEX /* 53 */:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        j4.k = obtainStyledAttributes.getDimension(index, j4.k);
                        i2 = 1;
                        break;
                    case EACTags.CURRENCY_EXPONENT /* 54 */:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        g4.X = obtainStyledAttributes.getInt(index, g4.X);
                        i2 = 1;
                        break;
                    case 55:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        g4.Y = obtainStyledAttributes.getInt(index, g4.Y);
                        i2 = 1;
                        break;
                    case 56:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        g4.Z = obtainStyledAttributes.getDimensionPixelSize(index, g4.Z);
                        i2 = 1;
                        break;
                    case 57:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        g4.a0 = obtainStyledAttributes.getDimensionPixelSize(index, g4.a0);
                        i2 = 1;
                        break;
                    case EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION /* 58 */:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        g4.b0 = obtainStyledAttributes.getDimensionPixelSize(index, g4.b0);
                        i2 = 1;
                        break;
                    case EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION /* 59 */:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        g4.c0 = obtainStyledAttributes.getDimensionPixelSize(index, g4.c0);
                        i2 = 1;
                        break;
                    case 60:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        j4.a = obtainStyledAttributes.getFloat(index, j4.a);
                        i2 = 1;
                        break;
                    case 61:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        g4.z = f(obtainStyledAttributes, index, g4.z);
                        i2 = 1;
                        break;
                    case 62:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        g4.A = obtainStyledAttributes.getDimensionPixelSize(index, g4.A);
                        i2 = 1;
                        break;
                    case 63:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        g4.B = obtainStyledAttributes.getFloat(index, g4.B);
                        i2 = 1;
                        break;
                    case 64:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        h4.a = f(obtainStyledAttributes, index, h4.a);
                        i2 = 1;
                        break;
                    case EACTags.ELEMENT_LIST /* 65 */:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        str3 = str6;
                        if (obtainStyledAttributes.peekValue(index).type == 3) {
                            obtainStyledAttributes.getString(index);
                            h4.getClass();
                            i2 = 1;
                            break;
                        } else {
                            String str9 = strArr[obtainStyledAttributes.getInteger(index, 0)];
                            h4.getClass();
                            i2 = 1;
                            break;
                        }
                    case EACTags.ADDRESS /* 66 */:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        obtainStyledAttributes.getInt(index, 0);
                        h4.getClass();
                        str3 = str6;
                        i2 = 1;
                        break;
                    case EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE /* 67 */:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        h4.e = obtainStyledAttributes.getFloat(index, h4.e);
                        str3 = str6;
                        i2 = 1;
                        break;
                    case EACTags.APPLICATION_IMAGE /* 68 */:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        i4.d = obtainStyledAttributes.getFloat(index, i4.d);
                        str3 = str6;
                        i2 = 1;
                        break;
                    case EACTags.DISPLAY_IMAGE /* 69 */:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        g4.d0 = obtainStyledAttributes.getFloat(index, 1.0f);
                        str3 = str6;
                        i2 = 1;
                        break;
                    case 70:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        g4.e0 = obtainStyledAttributes.getFloat(index, 1.0f);
                        str3 = str6;
                        i2 = 1;
                        break;
                    case EACTags.MESSAGE_REFERENCE /* 71 */:
                        i = indexCount;
                        str = str7;
                        str2 = str8;
                        Log.e(str6, str);
                        str3 = str6;
                        i2 = 1;
                        break;
                    case 72:
                        i = indexCount;
                        str2 = str8;
                        g4.f0 = obtainStyledAttributes.getInt(index, g4.f0);
                        str = str7;
                        str3 = str6;
                        i2 = 1;
                        break;
                    case 73:
                        i = indexCount;
                        str2 = str8;
                        g4.g0 = obtainStyledAttributes.getDimensionPixelSize(index, g4.g0);
                        str = str7;
                        str3 = str6;
                        i2 = 1;
                        break;
                    case EACTags.CERTIFICATION_AUTHORITY_PUBLIC_KEY /* 74 */:
                        i = indexCount;
                        str2 = str8;
                        g4.j0 = obtainStyledAttributes.getString(index);
                        str = str7;
                        str3 = str6;
                        i2 = 1;
                        break;
                    case EACTags.DEPRECATED /* 75 */:
                        i = indexCount;
                        str2 = str8;
                        g4.n0 = obtainStyledAttributes.getBoolean(index, g4.n0);
                        str = str7;
                        str3 = str6;
                        i2 = 1;
                        break;
                    case 76:
                        i = indexCount;
                        str2 = str8;
                        h4.c = obtainStyledAttributes.getInt(index, h4.c);
                        str = str7;
                        str3 = str6;
                        i2 = 1;
                        break;
                    case EACTags.INTEGRATED_CIRCUIT_MANUFACTURER_ID /* 77 */:
                        i = indexCount;
                        str2 = str8;
                        g4.k0 = obtainStyledAttributes.getString(index);
                        str = str7;
                        str3 = str6;
                        i2 = 1;
                        break;
                    case 78:
                        i = indexCount;
                        str2 = str8;
                        i4.b = obtainStyledAttributes.getInt(index, i4.b);
                        str = str7;
                        str3 = str6;
                        i2 = 1;
                        break;
                    case 79:
                        i = indexCount;
                        str2 = str8;
                        h4.d = obtainStyledAttributes.getFloat(index, h4.d);
                        str = str7;
                        str3 = str6;
                        i2 = 1;
                        break;
                    case EACTags.UNIFORM_RESOURCE_LOCATOR /* 80 */:
                        i = indexCount;
                        str2 = str8;
                        g4.l0 = obtainStyledAttributes.getBoolean(index, g4.l0);
                        str = str7;
                        str3 = str6;
                        i2 = 1;
                        break;
                    case EACTags.ANSWER_TO_RESET /* 81 */:
                        i = indexCount;
                        str2 = str8;
                        g4.m0 = obtainStyledAttributes.getBoolean(index, g4.m0);
                        str = str7;
                        str3 = str6;
                        i2 = 1;
                        break;
                    case EACTags.HISTORICAL_BYTES /* 82 */:
                        i = indexCount;
                        str2 = str8;
                        h4.b = obtainStyledAttributes.getInteger(index, h4.b);
                        str = str7;
                        str3 = str6;
                        i2 = 1;
                        break;
                    case 83:
                        i = indexCount;
                        str2 = str8;
                        j4.h = f(obtainStyledAttributes, index, j4.h);
                        str = str7;
                        str3 = str6;
                        i2 = 1;
                        break;
                    case 84:
                        i = indexCount;
                        str2 = str8;
                        h4.g = obtainStyledAttributes.getInteger(index, h4.g);
                        str = str7;
                        str3 = str6;
                        i2 = 1;
                        break;
                    case 85:
                        i = indexCount;
                        str2 = str8;
                        h4.f100f = obtainStyledAttributes.getFloat(index, h4.f100f);
                        str = str7;
                        str3 = str6;
                        i2 = 1;
                        break;
                    case 86:
                        i = indexCount;
                        str2 = str8;
                        int i8 = obtainStyledAttributes.peekValue(index).type;
                        if (i8 == 1) {
                            h4.i = obtainStyledAttributes.getResourceId(index, -1);
                        } else if (i8 == 3) {
                            String string = obtainStyledAttributes.getString(index);
                            h4.h = string;
                            if (string.indexOf("/") > 0) {
                                h4.i = obtainStyledAttributes.getResourceId(index, -1);
                            }
                        } else {
                            obtainStyledAttributes.getInteger(index, h4.i);
                        }
                        str = str7;
                        str3 = str6;
                        i2 = 1;
                        break;
                    case 87:
                        i = indexCount;
                        str2 = str8;
                        Log.w(str6, "unused attribute 0x" + Integer.toHexString(index) + "   " + sparseIntArray.get(index));
                        str = str7;
                        str3 = str6;
                        i2 = 1;
                        break;
                    case 88:
                    case 89:
                    case 90:
                    default:
                        str2 = str8;
                        StringBuilder sb = new StringBuilder(str2);
                        i = indexCount;
                        sb.append(Integer.toHexString(index));
                        sb.append("   ");
                        sb.append(sparseIntArray.get(index));
                        Log.w(str6, sb.toString());
                        str = str7;
                        str3 = str6;
                        i2 = 1;
                        break;
                    case 91:
                        i = indexCount;
                        str2 = str8;
                        g4.q = f(obtainStyledAttributes, index, g4.q);
                        str = str7;
                        str3 = str6;
                        i2 = 1;
                        break;
                    case 92:
                        i = indexCount;
                        str2 = str8;
                        g4.r = f(obtainStyledAttributes, index, g4.r);
                        str = str7;
                        str3 = str6;
                        i2 = 1;
                        break;
                    case 93:
                        i = indexCount;
                        str2 = str8;
                        g4.L = obtainStyledAttributes.getDimensionPixelSize(index, g4.L);
                        str = str7;
                        str3 = str6;
                        i2 = 1;
                        break;
                    case 94:
                        i = indexCount;
                        str2 = str8;
                        g4.S = obtainStyledAttributes.getDimensionPixelSize(index, g4.S);
                        str = str7;
                        str3 = str6;
                        i2 = 1;
                        break;
                    case 95:
                        i = indexCount;
                        str2 = str8;
                        g(g4, obtainStyledAttributes, index, 0);
                        str = str7;
                        str3 = str6;
                        i2 = 1;
                        break;
                    case 96:
                        i = indexCount;
                        str2 = str8;
                        g(g4, obtainStyledAttributes, index, 1);
                        str = str7;
                        str3 = str6;
                        i2 = 1;
                        break;
                    case 97:
                        i = indexCount;
                        str2 = str8;
                        g4.o0 = obtainStyledAttributes.getInt(index, g4.o0);
                        str = str7;
                        str3 = str6;
                        i2 = 1;
                        break;
                }
                i6 += i2;
                indexCount = i;
                str8 = str2;
                String str10 = str;
                i5 = i2;
                str6 = str3;
                str7 = str10;
            }
            if (g4.j0 != null) {
                g4.i0 = null;
            }
        } else {
            int indexCount2 = obtainStyledAttributes.getIndexCount();
            ?? obj = new Object();
            obj.a = new int[10];
            obj.b = new int[10];
            obj.c = 0;
            obj.d = new int[10];
            obj.e = new float[10];
            obj.f85f = 0;
            obj.g = new int[5];
            obj.h = new String[5];
            obj.i = 0;
            obj.j = new int[4];
            obj.k = new boolean[4];
            obj.l = 0;
            h4.getClass();
            g4.getClass();
            j4.getClass();
            int i9 = 0;
            while (i9 < indexCount2) {
                int index2 = obtainStyledAttributes.getIndex(i9);
                int i10 = indexCount2;
                switch (f115f.get(index2)) {
                    case 2:
                        str4 = str5;
                        obj.b(2, obtainStyledAttributes.getDimensionPixelSize(index2, g4.I));
                        i3 = 1;
                        break;
                    case 3:
                    case 4:
                    case 9:
                    case 10:
                    case 25:
                    case 26:
                    case 29:
                    case 30:
                    case 32:
                    case 33:
                    case 35:
                    case 36:
                    case 61:
                    case 88:
                    case 89:
                    case 90:
                    case 91:
                    case 92:
                    default:
                        StringBuilder sb2 = new StringBuilder(str5);
                        str4 = str5;
                        sb2.append(Integer.toHexString(index2));
                        sb2.append("   ");
                        sb2.append(sparseIntArray.get(index2));
                        Log.w("ConstraintSet", sb2.toString());
                        i3 = 1;
                        break;
                    case 5:
                        str4 = str5;
                        obj.c(5, obtainStyledAttributes.getString(index2));
                        i3 = 1;
                        break;
                    case 6:
                        str4 = str5;
                        obj.b(6, obtainStyledAttributes.getDimensionPixelOffset(index2, g4.C));
                        i3 = 1;
                        break;
                    case 7:
                        str4 = str5;
                        obj.b(7, obtainStyledAttributes.getDimensionPixelOffset(index2, g4.D));
                        i3 = 1;
                        break;
                    case 8:
                        str4 = str5;
                        obj.b(8, obtainStyledAttributes.getDimensionPixelSize(index2, g4.J));
                        i3 = 1;
                        break;
                    case 11:
                        str4 = str5;
                        obj.b(11, obtainStyledAttributes.getDimensionPixelSize(index2, g4.P));
                        i3 = 1;
                        break;
                    case 12:
                        str4 = str5;
                        obj.b(12, obtainStyledAttributes.getDimensionPixelSize(index2, g4.Q));
                        i3 = 1;
                        break;
                    case 13:
                        str4 = str5;
                        obj.b(13, obtainStyledAttributes.getDimensionPixelSize(index2, g4.M));
                        i3 = 1;
                        break;
                    case 14:
                        str4 = str5;
                        obj.b(14, obtainStyledAttributes.getDimensionPixelSize(index2, g4.O));
                        i3 = 1;
                        break;
                    case 15:
                        str4 = str5;
                        obj.b(15, obtainStyledAttributes.getDimensionPixelSize(index2, g4.R));
                        i3 = 1;
                        break;
                    case 16:
                        str4 = str5;
                        obj.b(16, obtainStyledAttributes.getDimensionPixelSize(index2, g4.N));
                        i3 = 1;
                        break;
                    case 17:
                        str4 = str5;
                        obj.b(17, obtainStyledAttributes.getDimensionPixelOffset(index2, g4.d));
                        i3 = 1;
                        break;
                    case 18:
                        str4 = str5;
                        obj.b(18, obtainStyledAttributes.getDimensionPixelOffset(index2, g4.e));
                        i3 = 1;
                        break;
                    case 19:
                        str4 = str5;
                        obj.a(19, obtainStyledAttributes.getFloat(index2, g4.f93f));
                        i3 = 1;
                        break;
                    case 20:
                        str4 = str5;
                        obj.a(20, obtainStyledAttributes.getFloat(index2, g4.w));
                        i3 = 1;
                        break;
                    case 21:
                        str4 = str5;
                        obj.b(21, obtainStyledAttributes.getLayoutDimension(index2, g4.c));
                        i3 = 1;
                        break;
                    case 22:
                        str4 = str5;
                        obj.b(22, iArr2[obtainStyledAttributes.getInt(index2, i4.a)]);
                        i3 = 1;
                        break;
                    case 23:
                        str4 = str5;
                        obj.b(23, obtainStyledAttributes.getLayoutDimension(index2, g4.b));
                        i3 = 1;
                        break;
                    case 24:
                        str4 = str5;
                        obj.b(24, obtainStyledAttributes.getDimensionPixelSize(index2, g4.F));
                        i3 = 1;
                        break;
                    case 27:
                        str4 = str5;
                        obj.b(27, obtainStyledAttributes.getInt(index2, g4.E));
                        i3 = 1;
                        break;
                    case 28:
                        str4 = str5;
                        obj.b(28, obtainStyledAttributes.getDimensionPixelSize(index2, g4.G));
                        i3 = 1;
                        break;
                    case BERTags.DATE /* 31 */:
                        str4 = str5;
                        obj.b(31, obtainStyledAttributes.getDimensionPixelSize(index2, g4.K));
                        i3 = 1;
                        break;
                    case 34:
                        str4 = str5;
                        obj.b(34, obtainStyledAttributes.getDimensionPixelSize(index2, g4.H));
                        i3 = 1;
                        break;
                    case EACTags.APPLICATION_EFFECTIVE_DATE /* 37 */:
                        str4 = str5;
                        obj.a(37, obtainStyledAttributes.getFloat(index2, g4.x));
                        i3 = 1;
                        break;
                    case EACTags.CARD_EFFECTIVE_DATE /* 38 */:
                        str4 = str5;
                        int resourceId = obtainStyledAttributes.getResourceId(index2, f4.a);
                        f4.a = resourceId;
                        obj.b(38, resourceId);
                        i3 = 1;
                        break;
                    case EACTags.INTERCHANGE_CONTROL /* 39 */:
                        str4 = str5;
                        obj.a(39, obtainStyledAttributes.getFloat(index2, g4.U));
                        i3 = 1;
                        break;
                    case 40:
                        str4 = str5;
                        obj.a(40, obtainStyledAttributes.getFloat(index2, g4.T));
                        i3 = 1;
                        break;
                    case EACTags.INTERCHANGE_PROFILE /* 41 */:
                        str4 = str5;
                        obj.b(41, obtainStyledAttributes.getInt(index2, g4.V));
                        i3 = 1;
                        break;
                    case EACTags.CURRENCY_CODE /* 42 */:
                        str4 = str5;
                        obj.b(42, obtainStyledAttributes.getInt(index2, g4.W));
                        i3 = 1;
                        break;
                    case EACTags.DATE_OF_BIRTH /* 43 */:
                        str4 = str5;
                        obj.a(43, obtainStyledAttributes.getFloat(index2, i4.c));
                        i3 = 1;
                        break;
                    case EACTags.CARDHOLDER_NATIONALITY /* 44 */:
                        str4 = str5;
                        obj.d(44, true);
                        obj.a(44, obtainStyledAttributes.getDimension(index2, j4.m));
                        i3 = 1;
                        break;
                    case EACTags.LANGUAGE_PREFERENCES /* 45 */:
                        str4 = str5;
                        obj.a(45, obtainStyledAttributes.getFloat(index2, j4.b));
                        i3 = 1;
                        break;
                    case 46:
                        str4 = str5;
                        obj.a(46, obtainStyledAttributes.getFloat(index2, j4.c));
                        i3 = 1;
                        break;
                    case EACTags.PIN_USAGE_POLICY /* 47 */:
                        str4 = str5;
                        obj.a(47, obtainStyledAttributes.getFloat(index2, j4.d));
                        i3 = 1;
                        break;
                    case 48:
                        str4 = str5;
                        obj.a(48, obtainStyledAttributes.getFloat(index2, j4.e));
                        i3 = 1;
                        break;
                    case 49:
                        str4 = str5;
                        obj.a(49, obtainStyledAttributes.getDimension(index2, j4.f112f));
                        i3 = 1;
                        break;
                    case 50:
                        str4 = str5;
                        obj.a(50, obtainStyledAttributes.getDimension(index2, j4.g));
                        i3 = 1;
                        break;
                    case EACTags.TRANSACTION_DATE /* 51 */:
                        str4 = str5;
                        obj.a(51, obtainStyledAttributes.getDimension(index2, j4.i));
                        i3 = 1;
                        break;
                    case EACTags.CARD_SEQUENCE_NUMBER /* 52 */:
                        str4 = str5;
                        obj.a(52, obtainStyledAttributes.getDimension(index2, j4.j));
                        i3 = 1;
                        break;
                    case EACTags.SEX /* 53 */:
                        str4 = str5;
                        obj.a(53, obtainStyledAttributes.getDimension(index2, j4.k));
                        i3 = 1;
                        break;
                    case EACTags.CURRENCY_EXPONENT /* 54 */:
                        str4 = str5;
                        obj.b(54, obtainStyledAttributes.getInt(index2, g4.X));
                        i3 = 1;
                        break;
                    case 55:
                        str4 = str5;
                        obj.b(55, obtainStyledAttributes.getInt(index2, g4.Y));
                        i3 = 1;
                        break;
                    case 56:
                        str4 = str5;
                        obj.b(56, obtainStyledAttributes.getDimensionPixelSize(index2, g4.Z));
                        i3 = 1;
                        break;
                    case 57:
                        str4 = str5;
                        obj.b(57, obtainStyledAttributes.getDimensionPixelSize(index2, g4.a0));
                        i3 = 1;
                        break;
                    case EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION /* 58 */:
                        str4 = str5;
                        obj.b(58, obtainStyledAttributes.getDimensionPixelSize(index2, g4.b0));
                        i3 = 1;
                        break;
                    case EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION /* 59 */:
                        str4 = str5;
                        obj.b(59, obtainStyledAttributes.getDimensionPixelSize(index2, g4.c0));
                        i3 = 1;
                        break;
                    case 60:
                        str4 = str5;
                        obj.a(60, obtainStyledAttributes.getFloat(index2, j4.a));
                        i3 = 1;
                        break;
                    case 62:
                        str4 = str5;
                        obj.b(62, obtainStyledAttributes.getDimensionPixelSize(index2, g4.A));
                        i3 = 1;
                        break;
                    case 63:
                        str4 = str5;
                        obj.a(63, obtainStyledAttributes.getFloat(index2, g4.B));
                        i3 = 1;
                        break;
                    case 64:
                        str4 = str5;
                        obj.b(64, f(obtainStyledAttributes, index2, h4.a));
                        i3 = 1;
                        break;
                    case EACTags.ELEMENT_LIST /* 65 */:
                        str4 = str5;
                        if (obtainStyledAttributes.peekValue(index2).type == 3) {
                            obj.c(65, obtainStyledAttributes.getString(index2));
                        } else {
                            obj.c(65, strArr[obtainStyledAttributes.getInteger(index2, 0)]);
                        }
                        i3 = 1;
                        break;
                    case EACTags.ADDRESS /* 66 */:
                        str4 = str5;
                        obj.b(66, obtainStyledAttributes.getInt(index2, 0));
                        i3 = 1;
                        break;
                    case EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE /* 67 */:
                        str4 = str5;
                        obj.a(67, obtainStyledAttributes.getFloat(index2, h4.e));
                        i3 = 1;
                        break;
                    case EACTags.APPLICATION_IMAGE /* 68 */:
                        str4 = str5;
                        obj.a(68, obtainStyledAttributes.getFloat(index2, i4.d));
                        i3 = 1;
                        break;
                    case EACTags.DISPLAY_IMAGE /* 69 */:
                        str4 = str5;
                        obj.a(69, obtainStyledAttributes.getFloat(index2, 1.0f));
                        i3 = 1;
                        break;
                    case 70:
                        str4 = str5;
                        obj.a(70, obtainStyledAttributes.getFloat(index2, 1.0f));
                        i3 = 1;
                        break;
                    case EACTags.MESSAGE_REFERENCE /* 71 */:
                        str4 = str5;
                        Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                        i3 = 1;
                        break;
                    case 72:
                        str4 = str5;
                        obj.b(72, obtainStyledAttributes.getInt(index2, g4.f0));
                        i3 = 1;
                        break;
                    case 73:
                        str4 = str5;
                        obj.b(73, obtainStyledAttributes.getDimensionPixelSize(index2, g4.g0));
                        i3 = 1;
                        break;
                    case EACTags.CERTIFICATION_AUTHORITY_PUBLIC_KEY /* 74 */:
                        str4 = str5;
                        obj.c(74, obtainStyledAttributes.getString(index2));
                        i3 = 1;
                        break;
                    case EACTags.DEPRECATED /* 75 */:
                        str4 = str5;
                        obj.d(75, obtainStyledAttributes.getBoolean(index2, g4.n0));
                        i3 = 1;
                        break;
                    case 76:
                        str4 = str5;
                        obj.b(76, obtainStyledAttributes.getInt(index2, h4.c));
                        i3 = 1;
                        break;
                    case EACTags.INTEGRATED_CIRCUIT_MANUFACTURER_ID /* 77 */:
                        str4 = str5;
                        obj.c(77, obtainStyledAttributes.getString(index2));
                        i3 = 1;
                        break;
                    case 78:
                        str4 = str5;
                        obj.b(78, obtainStyledAttributes.getInt(index2, i4.b));
                        i3 = 1;
                        break;
                    case 79:
                        str4 = str5;
                        obj.a(79, obtainStyledAttributes.getFloat(index2, h4.d));
                        i3 = 1;
                        break;
                    case EACTags.UNIFORM_RESOURCE_LOCATOR /* 80 */:
                        str4 = str5;
                        obj.d(80, obtainStyledAttributes.getBoolean(index2, g4.l0));
                        i3 = 1;
                        break;
                    case EACTags.ANSWER_TO_RESET /* 81 */:
                        str4 = str5;
                        obj.d(81, obtainStyledAttributes.getBoolean(index2, g4.m0));
                        i3 = 1;
                        break;
                    case EACTags.HISTORICAL_BYTES /* 82 */:
                        str4 = str5;
                        obj.b(82, obtainStyledAttributes.getInteger(index2, h4.b));
                        i3 = 1;
                        break;
                    case 83:
                        str4 = str5;
                        obj.b(83, f(obtainStyledAttributes, index2, j4.h));
                        i3 = 1;
                        break;
                    case 84:
                        str4 = str5;
                        obj.b(84, obtainStyledAttributes.getInteger(index2, h4.g));
                        i3 = 1;
                        break;
                    case 85:
                        str4 = str5;
                        obj.a(85, obtainStyledAttributes.getFloat(index2, h4.f100f));
                        i3 = 1;
                        break;
                    case 86:
                        str4 = str5;
                        int i11 = obtainStyledAttributes.peekValue(index2).type;
                        if (i11 == 1) {
                            int resourceId2 = obtainStyledAttributes.getResourceId(index2, -1);
                            h4.i = resourceId2;
                            obj.b(89, resourceId2);
                            if (h4.i != -1) {
                                obj.b(88, -2);
                            }
                        } else if (i11 == 3) {
                            String string2 = obtainStyledAttributes.getString(index2);
                            h4.h = string2;
                            obj.c(90, string2);
                            if (h4.h.indexOf("/") > 0) {
                                int resourceId3 = obtainStyledAttributes.getResourceId(index2, -1);
                                h4.i = resourceId3;
                                obj.b(89, resourceId3);
                                obj.b(88, -2);
                            } else {
                                obj.b(88, -1);
                            }
                        } else {
                            obj.b(88, obtainStyledAttributes.getInteger(index2, h4.i));
                        }
                        i3 = 1;
                        break;
                    case 87:
                        str4 = str5;
                        Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index2) + "   " + sparseIntArray.get(index2));
                        i3 = 1;
                        break;
                    case 93:
                        str4 = str5;
                        obj.b(93, obtainStyledAttributes.getDimensionPixelSize(index2, g4.L));
                        i3 = 1;
                        break;
                    case 94:
                        str4 = str5;
                        obj.b(94, obtainStyledAttributes.getDimensionPixelSize(index2, g4.S));
                        i3 = 1;
                        break;
                    case 95:
                        str4 = str5;
                        g(obj, obtainStyledAttributes, index2, 0);
                        i3 = 1;
                        break;
                    case 96:
                        str4 = str5;
                        i3 = 1;
                        g(obj, obtainStyledAttributes, index2, 1);
                        break;
                    case 97:
                        str4 = str5;
                        obj.b(97, obtainStyledAttributes.getInt(index2, g4.o0));
                        i3 = 1;
                        break;
                    case 98:
                        str4 = str5;
                        int i12 = Kb.q;
                        if (obtainStyledAttributes.peekValue(index2).type == 3) {
                            obtainStyledAttributes.getString(index2);
                        } else {
                            f4.a = obtainStyledAttributes.getResourceId(index2, f4.a);
                        }
                        i3 = 1;
                        break;
                    case 99:
                        str4 = str5;
                        obj.d(99, obtainStyledAttributes.getBoolean(index2, g4.g));
                        i3 = 1;
                        break;
                }
                i9 += i3;
                indexCount2 = i10;
                str5 = str4;
            }
        }
        obtainStyledAttributes.recycle();
        return f4;
    }

    public static int f(TypedArray typedArray, int i, int i2) {
        int resourceId = typedArray.getResourceId(i, i2);
        if (resourceId == -1) {
            return typedArray.getInt(i, -1);
        }
        return resourceId;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0043  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void g(java.lang.Object r7, android.content.res.TypedArray r8, int r9, int r10) {
        /*
            Method dump skipped, instructions count: 376
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: o.K4.g(java.lang.Object, android.content.res.TypedArray, int, int):void");
    }

    public static void h(B4 b4, String str) {
        if (str != null) {
            int length = str.length();
            int indexOf = str.indexOf(44);
            char c = 65535;
            int i = 0;
            if (indexOf > 0 && indexOf < length - 1) {
                String substring = str.substring(0, indexOf);
                if (substring.equalsIgnoreCase("W")) {
                    c = 0;
                } else if (substring.equalsIgnoreCase("H")) {
                    c = 1;
                }
                i = indexOf + 1;
            }
            int indexOf2 = str.indexOf(58);
            try {
                if (indexOf2 >= 0 && indexOf2 < length - 1) {
                    String substring2 = str.substring(i, indexOf2);
                    String substring3 = str.substring(indexOf2 + 1);
                    if (substring2.length() > 0 && substring3.length() > 0) {
                        float parseFloat = Float.parseFloat(substring2);
                        float parseFloat2 = Float.parseFloat(substring3);
                        if (parseFloat > 0.0f && parseFloat2 > 0.0f) {
                            if (c == 1) {
                                Math.abs(parseFloat2 / parseFloat);
                            } else {
                                Math.abs(parseFloat / parseFloat2);
                            }
                        }
                    }
                } else {
                    String substring4 = str.substring(i);
                    if (substring4.length() > 0) {
                        Float.parseFloat(substring4);
                    }
                }
            } catch (NumberFormatException unused) {
            }
        }
        b4.G = str;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:43:0x0100. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v4, types: [o.P2, android.view.View, o.z4] */
    /* JADX WARN: Type inference failed for: r8v1, types: [o.Q2, o.b9] */
    public final void a(ConstraintLayout constraintLayout) {
        int i;
        HashMap hashMap;
        String str;
        int i2;
        String str2;
        K4 k4 = this;
        int childCount = constraintLayout.getChildCount();
        HashMap hashMap2 = k4.c;
        HashSet hashSet = new HashSet(hashMap2.keySet());
        int i3 = 0;
        while (i3 < childCount) {
            View childAt = constraintLayout.getChildAt(i3);
            int id = childAt.getId();
            if (!hashMap2.containsKey(Integer.valueOf(id))) {
                StringBuilder sb = new StringBuilder("id unknown ");
                try {
                    str2 = childAt.getContext().getResources().getResourceEntryName(childAt.getId());
                } catch (Exception unused) {
                    str2 = "UNKNOWN";
                }
                sb.append(str2);
                Log.w("ConstraintSet", sb.toString());
            } else {
                if (k4.b && id == -1) {
                    throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
                }
                if (id != -1) {
                    if (hashMap2.containsKey(Integer.valueOf(id))) {
                        hashSet.remove(Integer.valueOf(id));
                        F4 f4 = (F4) hashMap2.get(Integer.valueOf(id));
                        if (f4 != null) {
                            if (childAt instanceof P2) {
                                G4 g4 = f4.d;
                                g4.h0 = 1;
                                P2 p2 = (P2) childAt;
                                p2.setId(id);
                                p2.setType(g4.f0);
                                p2.setMargin(g4.g0);
                                p2.setAllowsGoneWidget(g4.n0);
                                int[] iArr = g4.i0;
                                if (iArr != null) {
                                    p2.setReferencedIds(iArr);
                                } else {
                                    String str3 = g4.j0;
                                    if (str3 != null) {
                                        int[] c = c(p2, str3);
                                        g4.i0 = c;
                                        p2.setReferencedIds(c);
                                    }
                                }
                            }
                            B4 b4 = (B4) childAt.getLayoutParams();
                            b4.a();
                            f4.a(b4);
                            HashMap hashMap3 = f4.f86f;
                            Class<?> cls = childAt.getClass();
                            for (String str4 : hashMap3.keySet()) {
                                C0501y4 c0501y4 = (C0501y4) hashMap3.get(str4);
                                if (!c0501y4.a) {
                                    str = Ve.y("set", str4);
                                    hashMap = hashMap3;
                                } else {
                                    hashMap = hashMap3;
                                    str = str4;
                                }
                                try {
                                    switch (Ve.C(c0501y4.b)) {
                                        case 0:
                                            i2 = childCount;
                                            cls.getMethod(str, Integer.TYPE).invoke(childAt, Integer.valueOf(c0501y4.c));
                                            break;
                                        case 1:
                                            i2 = childCount;
                                            cls.getMethod(str, Float.TYPE).invoke(childAt, Float.valueOf(c0501y4.d));
                                            break;
                                        case 2:
                                            i2 = childCount;
                                            cls.getMethod(str, Integer.TYPE).invoke(childAt, Integer.valueOf(c0501y4.g));
                                            break;
                                        case 3:
                                            Method method = cls.getMethod(str, Drawable.class);
                                            i2 = childCount;
                                            try {
                                                ColorDrawable colorDrawable = new ColorDrawable();
                                                colorDrawable.setColor(c0501y4.g);
                                                method.invoke(childAt, colorDrawable);
                                            } catch (IllegalAccessException e2) {
                                                e = e2;
                                                StringBuilder p = Ve.p(" Custom Attribute \"", str4, "\" not found on ");
                                                p.append(cls.getName());
                                                Log.e("TransitionLayout", p.toString(), e);
                                                hashMap3 = hashMap;
                                                childCount = i2;
                                            } catch (NoSuchMethodException e3) {
                                                e = e3;
                                                Log.e("TransitionLayout", cls.getName() + " must have a method " + str, e);
                                                hashMap3 = hashMap;
                                                childCount = i2;
                                            } catch (InvocationTargetException e4) {
                                                e = e4;
                                                StringBuilder p3 = Ve.p(" Custom Attribute \"", str4, "\" not found on ");
                                                p3.append(cls.getName());
                                                Log.e("TransitionLayout", p3.toString(), e);
                                                hashMap3 = hashMap;
                                                childCount = i2;
                                            }
                                        case 4:
                                            cls.getMethod(str, CharSequence.class).invoke(childAt, c0501y4.e);
                                            i2 = childCount;
                                            break;
                                        case 5:
                                            cls.getMethod(str, Boolean.TYPE).invoke(childAt, Boolean.valueOf(c0501y4.f300f));
                                            i2 = childCount;
                                            break;
                                        case 6:
                                            cls.getMethod(str, Float.TYPE).invoke(childAt, Float.valueOf(c0501y4.d));
                                            i2 = childCount;
                                            break;
                                        case 7:
                                            cls.getMethod(str, Integer.TYPE).invoke(childAt, Integer.valueOf(c0501y4.c));
                                            i2 = childCount;
                                            break;
                                        default:
                                            i2 = childCount;
                                            break;
                                    }
                                } catch (IllegalAccessException e5) {
                                    e = e5;
                                    i2 = childCount;
                                } catch (NoSuchMethodException e6) {
                                    e = e6;
                                    i2 = childCount;
                                } catch (InvocationTargetException e7) {
                                    e = e7;
                                    i2 = childCount;
                                }
                                hashMap3 = hashMap;
                                childCount = i2;
                            }
                            i = childCount;
                            childAt.setLayoutParams(b4);
                            I4 i4 = f4.b;
                            if (i4.b == 0) {
                                childAt.setVisibility(i4.a);
                            }
                            childAt.setAlpha(i4.c);
                            J4 j4 = f4.e;
                            childAt.setRotation(j4.a);
                            childAt.setRotationX(j4.b);
                            childAt.setRotationY(j4.c);
                            childAt.setScaleX(j4.d);
                            childAt.setScaleY(j4.e);
                            if (j4.h != -1) {
                                if (((View) childAt.getParent()).findViewById(j4.h) != null) {
                                    float bottom = (r1.getBottom() + r1.getTop()) / 2.0f;
                                    float right = (r1.getRight() + r1.getLeft()) / 2.0f;
                                    if (childAt.getRight() - childAt.getLeft() > 0 && childAt.getBottom() - childAt.getTop() > 0) {
                                        childAt.setPivotX(right - childAt.getLeft());
                                        childAt.setPivotY(bottom - childAt.getTop());
                                    }
                                }
                            } else {
                                if (!Float.isNaN(j4.f112f)) {
                                    childAt.setPivotX(j4.f112f);
                                }
                                if (!Float.isNaN(j4.g)) {
                                    childAt.setPivotY(j4.g);
                                }
                            }
                            childAt.setTranslationX(j4.i);
                            childAt.setTranslationY(j4.j);
                            childAt.setTranslationZ(j4.k);
                            if (j4.l) {
                                childAt.setElevation(j4.m);
                            }
                        }
                    } else {
                        i = childCount;
                        Log.v("ConstraintSet", "WARNING NO CONSTRAINTS for view " + id);
                    }
                    i3++;
                    k4 = this;
                    childCount = i;
                }
            }
            i = childCount;
            i3++;
            k4 = this;
            childCount = i;
        }
        int i5 = childCount;
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            F4 f42 = (F4) hashMap2.get(num);
            if (f42 != null) {
                G4 g42 = f42.d;
                if (g42.h0 == 1) {
                    Context context = constraintLayout.getContext();
                    ?? view = new View(context);
                    view.a = new int[32];
                    view.g = new HashMap();
                    view.c = context;
                    ?? abstractC0049b9 = new AbstractC0049b9();
                    abstractC0049b9.s0 = 0;
                    abstractC0049b9.t0 = true;
                    abstractC0049b9.u0 = 0;
                    abstractC0049b9.v0 = false;
                    view.j = abstractC0049b9;
                    view.d = abstractC0049b9;
                    view.i();
                    view.setVisibility(8);
                    view.setId(num.intValue());
                    int[] iArr2 = g42.i0;
                    if (iArr2 != null) {
                        view.setReferencedIds(iArr2);
                    } else {
                        String str5 = g42.j0;
                        if (str5 != null) {
                            int[] c2 = c(view, str5);
                            g42.i0 = c2;
                            view.setReferencedIds(c2);
                        }
                    }
                    view.setType(g42.f0);
                    view.setMargin(g42.g0);
                    B4 g = ConstraintLayout.g();
                    view.i();
                    f42.a(g);
                    constraintLayout.addView((View) view, g);
                }
                if (g42.a) {
                    W8 w8 = new W8(constraintLayout.getContext());
                    w8.setId(num.intValue());
                    B4 g2 = ConstraintLayout.g();
                    f42.a(g2);
                    constraintLayout.addView(w8, g2);
                }
            }
        }
        for (int i6 = 0; i6 < i5; i6++) {
            View childAt2 = constraintLayout.getChildAt(i6);
            if (childAt2 instanceof AbstractC0520z4) {
                ((AbstractC0520z4) childAt2).e(constraintLayout);
            }
        }
    }

    public final void b(ConstraintLayout constraintLayout) {
        int i;
        HashMap hashMap;
        HashMap hashMap2;
        K4 k4 = this;
        int childCount = constraintLayout.getChildCount();
        HashMap hashMap3 = k4.c;
        hashMap3.clear();
        int i2 = 0;
        while (i2 < childCount) {
            View childAt = constraintLayout.getChildAt(i2);
            B4 b4 = (B4) childAt.getLayoutParams();
            int id = childAt.getId();
            if (k4.b && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!hashMap3.containsKey(Integer.valueOf(id))) {
                hashMap3.put(Integer.valueOf(id), new F4());
            }
            F4 f4 = (F4) hashMap3.get(Integer.valueOf(id));
            if (f4 == null) {
                i = childCount;
                hashMap = hashMap3;
            } else {
                HashMap hashMap4 = k4.a;
                HashMap hashMap5 = new HashMap();
                Class<?> cls = childAt.getClass();
                for (String str : hashMap4.keySet()) {
                    C0501y4 c0501y4 = (C0501y4) hashMap4.get(str);
                    int i3 = childCount;
                    try {
                        if (str.equals("BackgroundColor")) {
                            hashMap2 = hashMap3;
                            try {
                                hashMap5.put(str, new C0501y4(c0501y4, Integer.valueOf(((ColorDrawable) childAt.getBackground()).getColor())));
                            } catch (IllegalAccessException e2) {
                                e = e2;
                                StringBuilder p = Ve.p(" Custom Attribute \"", str, "\" not found on ");
                                p.append(cls.getName());
                                Log.e("TransitionLayout", p.toString(), e);
                                childCount = i3;
                                hashMap3 = hashMap2;
                            } catch (NoSuchMethodException e3) {
                                e = e3;
                                Log.e("TransitionLayout", cls.getName() + " must have a method " + str, e);
                                childCount = i3;
                                hashMap3 = hashMap2;
                            } catch (InvocationTargetException e4) {
                                e = e4;
                                StringBuilder p2 = Ve.p(" Custom Attribute \"", str, "\" not found on ");
                                p2.append(cls.getName());
                                Log.e("TransitionLayout", p2.toString(), e);
                                childCount = i3;
                                hashMap3 = hashMap2;
                            }
                        } else {
                            hashMap2 = hashMap3;
                            try {
                                hashMap5.put(str, new C0501y4(c0501y4, cls.getMethod("getMap" + str, new Class[0]).invoke(childAt, new Object[0])));
                            } catch (IllegalAccessException e5) {
                                e = e5;
                                StringBuilder p3 = Ve.p(" Custom Attribute \"", str, "\" not found on ");
                                p3.append(cls.getName());
                                Log.e("TransitionLayout", p3.toString(), e);
                                childCount = i3;
                                hashMap3 = hashMap2;
                            } catch (NoSuchMethodException e6) {
                                e = e6;
                                Log.e("TransitionLayout", cls.getName() + " must have a method " + str, e);
                                childCount = i3;
                                hashMap3 = hashMap2;
                            } catch (InvocationTargetException e7) {
                                e = e7;
                                StringBuilder p22 = Ve.p(" Custom Attribute \"", str, "\" not found on ");
                                p22.append(cls.getName());
                                Log.e("TransitionLayout", p22.toString(), e);
                                childCount = i3;
                                hashMap3 = hashMap2;
                            }
                        }
                    } catch (IllegalAccessException e8) {
                        e = e8;
                        hashMap2 = hashMap3;
                    } catch (NoSuchMethodException e9) {
                        e = e9;
                        hashMap2 = hashMap3;
                    } catch (InvocationTargetException e10) {
                        e = e10;
                        hashMap2 = hashMap3;
                    }
                    childCount = i3;
                    hashMap3 = hashMap2;
                }
                i = childCount;
                hashMap = hashMap3;
                f4.f86f = hashMap5;
                f4.a = id;
                int i4 = b4.e;
                G4 g4 = f4.d;
                g4.h = i4;
                g4.i = b4.f69f;
                g4.j = b4.g;
                g4.k = b4.h;
                g4.l = b4.i;
                g4.m = b4.j;
                g4.n = b4.k;
                g4.f94o = b4.l;
                g4.p = b4.m;
                g4.q = b4.n;
                g4.r = b4.f70o;
                g4.s = b4.s;
                g4.t = b4.t;
                g4.u = b4.u;
                g4.v = b4.v;
                g4.w = b4.E;
                g4.x = b4.F;
                g4.y = b4.G;
                g4.z = b4.p;
                g4.A = b4.q;
                g4.B = b4.r;
                g4.C = b4.T;
                g4.D = b4.U;
                g4.E = b4.V;
                g4.f93f = b4.c;
                g4.d = b4.a;
                g4.e = b4.b;
                g4.b = ((ViewGroup.MarginLayoutParams) b4).width;
                g4.c = ((ViewGroup.MarginLayoutParams) b4).height;
                g4.F = ((ViewGroup.MarginLayoutParams) b4).leftMargin;
                g4.G = ((ViewGroup.MarginLayoutParams) b4).rightMargin;
                g4.H = ((ViewGroup.MarginLayoutParams) b4).topMargin;
                g4.I = ((ViewGroup.MarginLayoutParams) b4).bottomMargin;
                g4.L = b4.D;
                g4.T = b4.I;
                g4.U = b4.H;
                g4.W = b4.K;
                g4.V = b4.J;
                g4.l0 = b4.W;
                g4.m0 = b4.X;
                g4.X = b4.L;
                g4.Y = b4.M;
                g4.Z = b4.P;
                g4.a0 = b4.Q;
                g4.b0 = b4.N;
                g4.c0 = b4.O;
                g4.d0 = b4.R;
                g4.e0 = b4.S;
                g4.k0 = b4.Y;
                g4.N = b4.x;
                g4.P = b4.z;
                g4.M = b4.w;
                g4.O = b4.y;
                g4.R = b4.A;
                g4.Q = b4.B;
                g4.S = b4.C;
                g4.o0 = b4.Z;
                g4.J = b4.getMarginEnd();
                g4.K = b4.getMarginStart();
                int visibility = childAt.getVisibility();
                I4 i42 = f4.b;
                i42.a = visibility;
                i42.c = childAt.getAlpha();
                float rotation = childAt.getRotation();
                J4 j4 = f4.e;
                j4.a = rotation;
                j4.b = childAt.getRotationX();
                j4.c = childAt.getRotationY();
                j4.d = childAt.getScaleX();
                j4.e = childAt.getScaleY();
                float pivotX = childAt.getPivotX();
                float pivotY = childAt.getPivotY();
                if (pivotX != 0.0d || pivotY != 0.0d) {
                    j4.f112f = pivotX;
                    j4.g = pivotY;
                }
                j4.i = childAt.getTranslationX();
                j4.j = childAt.getTranslationY();
                j4.k = childAt.getTranslationZ();
                if (j4.l) {
                    j4.m = childAt.getElevation();
                }
                if (childAt instanceof P2) {
                    P2 p23 = (P2) childAt;
                    g4.n0 = p23.getAllowsGoneWidget();
                    g4.i0 = p23.getReferencedIds();
                    g4.f0 = p23.getType();
                    g4.g0 = p23.getMargin();
                }
            }
            i2++;
            k4 = this;
            childCount = i;
            hashMap3 = hashMap;
        }
    }

    public final void e(Context context, int i) {
        XmlResourceParser xml = context.getResources().getXml(i);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 2) {
                    String name = xml.getName();
                    F4 d2 = d(context, Xml.asAttributeSet(xml), false);
                    if (name.equalsIgnoreCase("Guideline")) {
                        d2.d.a = true;
                    }
                    this.c.put(Integer.valueOf(d2.a), d2);
                }
            }
        } catch (IOException e2) {
            Log.e("ConstraintSet", "Error parsing resource: " + i, e2);
        } catch (XmlPullParserException e3) {
            Log.e("ConstraintSet", "Error parsing resource: " + i, e3);
        }
    }
}
