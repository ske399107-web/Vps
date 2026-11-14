package o;

import java.util.HashMap;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.pqc.crypto.xmss.XMSSMTParameters;

/* renamed from: o.jf, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract /* synthetic */ class AbstractC0214jf {
    public static String a(int i, String str) {
        return str + i;
    }

    public static String b(Exception exc, StringBuilder sb) {
        sb.append(exc.getMessage());
        return sb.toString();
    }

    public static String c(IllegalArgumentException illegalArgumentException, StringBuilder sb) {
        sb.append(illegalArgumentException.getMessage());
        return sb.toString();
    }

    public static String d(ASN1TaggedObject aSN1TaggedObject, StringBuilder sb) {
        sb.append(aSN1TaggedObject.getTagNo());
        return sb.toString();
    }

    public static void e(int i, int i2, ASN1ObjectIdentifier aSN1ObjectIdentifier, HashMap hashMap, Integer num) {
        hashMap.put(num, new XMSSMTParameters(i, i2, aSN1ObjectIdentifier));
    }
}
