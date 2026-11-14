package org.bouncycastle.pqc.crypto.xmss;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import o.AbstractC0214jf;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.util.Integers;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class XMSSMTParameters {
    private static final Map<Integer, XMSSMTParameters> paramsLookupTable;
    private final int height;
    private final int layers;
    private final XMSSOid oid;
    private final XMSSParameters xmssParams;

    static {
        HashMap hashMap = new HashMap();
        Integer valueOf = Integers.valueOf(1);
        ASN1ObjectIdentifier aSN1ObjectIdentifier = NISTObjectIdentifiers.id_sha256;
        hashMap.put(valueOf, new XMSSMTParameters(20, 2, aSN1ObjectIdentifier));
        AbstractC0214jf.e(20, 4, aSN1ObjectIdentifier, hashMap, Integers.valueOf(2));
        AbstractC0214jf.e(40, 2, aSN1ObjectIdentifier, hashMap, Integers.valueOf(3));
        AbstractC0214jf.e(40, 4, aSN1ObjectIdentifier, hashMap, Integers.valueOf(4));
        AbstractC0214jf.e(40, 8, aSN1ObjectIdentifier, hashMap, Integers.valueOf(5));
        AbstractC0214jf.e(60, 3, aSN1ObjectIdentifier, hashMap, Integers.valueOf(6));
        AbstractC0214jf.e(60, 6, aSN1ObjectIdentifier, hashMap, Integers.valueOf(7));
        AbstractC0214jf.e(60, 12, aSN1ObjectIdentifier, hashMap, Integers.valueOf(8));
        Integer valueOf2 = Integers.valueOf(9);
        ASN1ObjectIdentifier aSN1ObjectIdentifier2 = NISTObjectIdentifiers.id_sha512;
        hashMap.put(valueOf2, new XMSSMTParameters(20, 2, aSN1ObjectIdentifier2));
        AbstractC0214jf.e(20, 4, aSN1ObjectIdentifier2, hashMap, Integers.valueOf(10));
        AbstractC0214jf.e(40, 2, aSN1ObjectIdentifier2, hashMap, Integers.valueOf(11));
        AbstractC0214jf.e(40, 4, aSN1ObjectIdentifier2, hashMap, Integers.valueOf(12));
        AbstractC0214jf.e(40, 8, aSN1ObjectIdentifier2, hashMap, Integers.valueOf(13));
        AbstractC0214jf.e(60, 3, aSN1ObjectIdentifier2, hashMap, Integers.valueOf(14));
        AbstractC0214jf.e(60, 6, aSN1ObjectIdentifier2, hashMap, Integers.valueOf(15));
        AbstractC0214jf.e(60, 12, aSN1ObjectIdentifier2, hashMap, Integers.valueOf(16));
        Integer valueOf3 = Integers.valueOf(17);
        ASN1ObjectIdentifier aSN1ObjectIdentifier3 = NISTObjectIdentifiers.id_shake128;
        hashMap.put(valueOf3, new XMSSMTParameters(20, 2, aSN1ObjectIdentifier3));
        AbstractC0214jf.e(20, 4, aSN1ObjectIdentifier3, hashMap, Integers.valueOf(18));
        AbstractC0214jf.e(40, 2, aSN1ObjectIdentifier3, hashMap, Integers.valueOf(19));
        AbstractC0214jf.e(40, 4, aSN1ObjectIdentifier3, hashMap, Integers.valueOf(20));
        AbstractC0214jf.e(40, 8, aSN1ObjectIdentifier3, hashMap, Integers.valueOf(21));
        AbstractC0214jf.e(60, 3, aSN1ObjectIdentifier3, hashMap, Integers.valueOf(22));
        AbstractC0214jf.e(60, 6, aSN1ObjectIdentifier3, hashMap, Integers.valueOf(23));
        AbstractC0214jf.e(60, 12, aSN1ObjectIdentifier3, hashMap, Integers.valueOf(24));
        Integer valueOf4 = Integers.valueOf(25);
        ASN1ObjectIdentifier aSN1ObjectIdentifier4 = NISTObjectIdentifiers.id_shake256;
        hashMap.put(valueOf4, new XMSSMTParameters(20, 2, aSN1ObjectIdentifier4));
        AbstractC0214jf.e(20, 4, aSN1ObjectIdentifier4, hashMap, Integers.valueOf(26));
        AbstractC0214jf.e(40, 2, aSN1ObjectIdentifier4, hashMap, Integers.valueOf(27));
        AbstractC0214jf.e(40, 4, aSN1ObjectIdentifier4, hashMap, Integers.valueOf(28));
        AbstractC0214jf.e(40, 8, aSN1ObjectIdentifier4, hashMap, Integers.valueOf(29));
        AbstractC0214jf.e(60, 3, aSN1ObjectIdentifier4, hashMap, Integers.valueOf(30));
        AbstractC0214jf.e(60, 6, aSN1ObjectIdentifier4, hashMap, Integers.valueOf(31));
        AbstractC0214jf.e(60, 12, aSN1ObjectIdentifier4, hashMap, Integers.valueOf(32));
        paramsLookupTable = Collections.unmodifiableMap(hashMap);
    }

    public XMSSMTParameters(int i, int i2, ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        this.height = i;
        this.layers = i2;
        this.xmssParams = new XMSSParameters(xmssTreeHeight(i, i2), aSN1ObjectIdentifier);
        this.oid = DefaultXMSSMTOid.lookup(getTreeDigest(), getTreeDigestSize(), getWinternitzParameter(), getLen(), getHeight(), i2);
    }

    public static XMSSMTParameters lookupByOID(int i) {
        return paramsLookupTable.get(Integers.valueOf(i));
    }

    private static int xmssTreeHeight(int i, int i2) throws IllegalArgumentException {
        if (i < 2) {
            throw new IllegalArgumentException("totalHeight must be > 1");
        }
        if (i % i2 != 0) {
            throw new IllegalArgumentException("layers must divide totalHeight without remainder");
        }
        int i3 = i / i2;
        if (i3 != 1) {
            return i3;
        }
        throw new IllegalArgumentException("height / layers must be greater than 1");
    }

    public int getHeight() {
        return this.height;
    }

    public int getLayers() {
        return this.layers;
    }

    public int getLen() {
        return this.xmssParams.getLen();
    }

    public XMSSOid getOid() {
        return this.oid;
    }

    public String getTreeDigest() {
        return this.xmssParams.getTreeDigest();
    }

    public ASN1ObjectIdentifier getTreeDigestOID() {
        return this.xmssParams.getTreeDigestOID();
    }

    public int getTreeDigestSize() {
        return this.xmssParams.getTreeDigestSize();
    }

    public WOTSPlus getWOTSPlus() {
        return this.xmssParams.getWOTSPlus();
    }

    public int getWinternitzParameter() {
        return this.xmssParams.getWinternitzParameter();
    }

    public XMSSParameters getXMSSParameters() {
        return this.xmssParams;
    }

    public XMSSMTParameters(int i, int i2, Digest digest) {
        this(i, i2, DigestUtil.getDigestOID(digest.getAlgorithmName()));
    }
}
