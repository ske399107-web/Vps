package androidx.core.app;

import android.app.PendingIntent;
import android.os.Parcel;
import android.text.TextUtils;
import androidx.core.graphics.drawable.IconCompat;
import o.AbstractC0256lh;
import o.C0276mh;
import o.InterfaceC0296nh;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class RemoteActionCompatParcelizer {
    public static RemoteActionCompat read(AbstractC0256lh abstractC0256lh) {
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat();
        InterfaceC0296nh interfaceC0296nh = remoteActionCompat.a;
        boolean z = true;
        if (abstractC0256lh.e(1)) {
            interfaceC0296nh = abstractC0256lh.g();
        }
        remoteActionCompat.a = (IconCompat) interfaceC0296nh;
        CharSequence charSequence = remoteActionCompat.b;
        if (abstractC0256lh.e(2)) {
            charSequence = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(((C0276mh) abstractC0256lh).e);
        }
        remoteActionCompat.b = charSequence;
        CharSequence charSequence2 = remoteActionCompat.c;
        if (abstractC0256lh.e(3)) {
            charSequence2 = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(((C0276mh) abstractC0256lh).e);
        }
        remoteActionCompat.c = charSequence2;
        remoteActionCompat.d = (PendingIntent) abstractC0256lh.f(remoteActionCompat.d, 4);
        boolean z2 = remoteActionCompat.e;
        if (abstractC0256lh.e(5)) {
            if (((C0276mh) abstractC0256lh).e.readInt() != 0) {
                z2 = true;
            } else {
                z2 = false;
            }
        }
        remoteActionCompat.e = z2;
        boolean z3 = remoteActionCompat.f35f;
        if (abstractC0256lh.e(6)) {
            if (((C0276mh) abstractC0256lh).e.readInt() == 0) {
                z = false;
            }
            z3 = z;
        }
        remoteActionCompat.f35f = z3;
        return remoteActionCompat;
    }

    public static void write(RemoteActionCompat remoteActionCompat, AbstractC0256lh abstractC0256lh) {
        abstractC0256lh.getClass();
        IconCompat iconCompat = remoteActionCompat.a;
        abstractC0256lh.h(1);
        abstractC0256lh.i(iconCompat);
        CharSequence charSequence = remoteActionCompat.b;
        abstractC0256lh.h(2);
        Parcel parcel = ((C0276mh) abstractC0256lh).e;
        TextUtils.writeToParcel(charSequence, parcel, 0);
        CharSequence charSequence2 = remoteActionCompat.c;
        abstractC0256lh.h(3);
        TextUtils.writeToParcel(charSequence2, parcel, 0);
        PendingIntent pendingIntent = remoteActionCompat.d;
        abstractC0256lh.h(4);
        parcel.writeParcelable(pendingIntent, 0);
        boolean z = remoteActionCompat.e;
        abstractC0256lh.h(5);
        parcel.writeInt(z ? 1 : 0);
        boolean z2 = remoteActionCompat.f35f;
        abstractC0256lh.h(6);
        parcel.writeInt(z2 ? 1 : 0);
    }
}
