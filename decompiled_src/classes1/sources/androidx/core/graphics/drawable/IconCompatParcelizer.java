package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.os.Parcel;
import android.os.Parcelable;
import java.nio.charset.Charset;
import o.AbstractC0256lh;
import o.C0276mh;
import org.bouncycastle.asn1.isismtt.ocsp.RequestedCertificate;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class IconCompatParcelizer {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:23:0x00ac. Please report as an issue. */
    public static IconCompat read(AbstractC0256lh abstractC0256lh) {
        IconCompat iconCompat = new IconCompat();
        int i = iconCompat.a;
        if (abstractC0256lh.e(1)) {
            i = ((C0276mh) abstractC0256lh).e.readInt();
        }
        iconCompat.a = i;
        byte[] bArr = iconCompat.c;
        if (abstractC0256lh.e(2)) {
            Parcel parcel = ((C0276mh) abstractC0256lh).e;
            int readInt = parcel.readInt();
            if (readInt < 0) {
                bArr = null;
            } else {
                byte[] bArr2 = new byte[readInt];
                parcel.readByteArray(bArr2);
                bArr = bArr2;
            }
        }
        iconCompat.c = bArr;
        iconCompat.d = abstractC0256lh.f(iconCompat.d, 3);
        int i2 = iconCompat.e;
        if (abstractC0256lh.e(4)) {
            i2 = ((C0276mh) abstractC0256lh).e.readInt();
        }
        iconCompat.e = i2;
        int i3 = iconCompat.f36f;
        if (abstractC0256lh.e(5)) {
            i3 = ((C0276mh) abstractC0256lh).e.readInt();
        }
        iconCompat.f36f = i3;
        iconCompat.g = (ColorStateList) abstractC0256lh.f(iconCompat.g, 6);
        String str = iconCompat.i;
        if (abstractC0256lh.e(7)) {
            str = ((C0276mh) abstractC0256lh).e.readString();
        }
        iconCompat.i = str;
        String str2 = iconCompat.j;
        if (abstractC0256lh.e(8)) {
            str2 = ((C0276mh) abstractC0256lh).e.readString();
        }
        iconCompat.j = str2;
        iconCompat.h = PorterDuff.Mode.valueOf(iconCompat.i);
        switch (iconCompat.a) {
            case RequestedCertificate.certificate /* -1 */:
                Parcelable parcelable = iconCompat.d;
                if (parcelable != null) {
                    iconCompat.b = parcelable;
                    return iconCompat;
                }
                throw new IllegalArgumentException("Invalid icon");
            case 0:
            default:
                return iconCompat;
            case 1:
            case 5:
                Parcelable parcelable2 = iconCompat.d;
                if (parcelable2 != null) {
                    iconCompat.b = parcelable2;
                } else {
                    byte[] bArr3 = iconCompat.c;
                    iconCompat.b = bArr3;
                    iconCompat.a = 3;
                    iconCompat.e = 0;
                    iconCompat.f36f = bArr3.length;
                }
                return iconCompat;
            case 2:
            case 4:
            case 6:
                String str3 = new String(iconCompat.c, Charset.forName("UTF-16"));
                iconCompat.b = str3;
                if (iconCompat.a == 2 && iconCompat.j == null) {
                    iconCompat.j = str3.split(":", -1)[0];
                }
                return iconCompat;
            case 3:
                iconCompat.b = iconCompat.c;
                return iconCompat;
        }
    }

    public static void write(IconCompat iconCompat, AbstractC0256lh abstractC0256lh) {
        abstractC0256lh.getClass();
        iconCompat.i = iconCompat.h.name();
        switch (iconCompat.a) {
            case RequestedCertificate.certificate /* -1 */:
                iconCompat.d = (Parcelable) iconCompat.b;
                break;
            case 1:
            case 5:
                iconCompat.d = (Parcelable) iconCompat.b;
                break;
            case 2:
                iconCompat.c = ((String) iconCompat.b).getBytes(Charset.forName("UTF-16"));
                break;
            case 3:
                iconCompat.c = (byte[]) iconCompat.b;
                break;
            case 4:
            case 6:
                iconCompat.c = iconCompat.b.toString().getBytes(Charset.forName("UTF-16"));
                break;
        }
        int i = iconCompat.a;
        if (-1 != i) {
            abstractC0256lh.h(1);
            ((C0276mh) abstractC0256lh).e.writeInt(i);
        }
        byte[] bArr = iconCompat.c;
        if (bArr != null) {
            abstractC0256lh.h(2);
            int length = bArr.length;
            Parcel parcel = ((C0276mh) abstractC0256lh).e;
            parcel.writeInt(length);
            parcel.writeByteArray(bArr);
        }
        Parcelable parcelable = iconCompat.d;
        if (parcelable != null) {
            abstractC0256lh.h(3);
            ((C0276mh) abstractC0256lh).e.writeParcelable(parcelable, 0);
        }
        int i2 = iconCompat.e;
        if (i2 != 0) {
            abstractC0256lh.h(4);
            ((C0276mh) abstractC0256lh).e.writeInt(i2);
        }
        int i3 = iconCompat.f36f;
        if (i3 != 0) {
            abstractC0256lh.h(5);
            ((C0276mh) abstractC0256lh).e.writeInt(i3);
        }
        ColorStateList colorStateList = iconCompat.g;
        if (colorStateList != null) {
            abstractC0256lh.h(6);
            ((C0276mh) abstractC0256lh).e.writeParcelable(colorStateList, 0);
        }
        String str = iconCompat.i;
        if (str != null) {
            abstractC0256lh.h(7);
            ((C0276mh) abstractC0256lh).e.writeString(str);
        }
        String str2 = iconCompat.j;
        if (str2 != null) {
            abstractC0256lh.h(8);
            ((C0276mh) abstractC0256lh).e.writeString(str2);
        }
    }
}
