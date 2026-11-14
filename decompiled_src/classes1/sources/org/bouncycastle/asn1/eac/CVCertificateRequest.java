package org.bouncycastle.asn1.eac;

import java.io.IOException;
import java.util.Enumeration;
import o.AbstractC0214jf;
import o.Ve;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1ParsingException;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.util.Arrays;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class CVCertificateRequest extends ASN1Object {
    private static final int bodyValid = 1;
    private static final int signValid = 2;
    private CertificateBody certificateBody;
    private byte[] innerSignature = null;
    private final ASN1TaggedObject original;
    private byte[] outerSignature;

    private CVCertificateRequest(ASN1TaggedObject aSN1TaggedObject) throws IOException {
        this.outerSignature = null;
        this.original = aSN1TaggedObject;
        if (!aSN1TaggedObject.hasTag(64, 7)) {
            initCertBody(aSN1TaggedObject);
            return;
        }
        ASN1Sequence aSN1Sequence = ASN1Sequence.getInstance(aSN1TaggedObject.getBaseUniversal(false, 16));
        initCertBody(ASN1TaggedObject.getInstance(aSN1Sequence.getObjectAt(0), 64));
        this.outerSignature = ASN1OctetString.getInstance(ASN1TaggedObject.getInstance(aSN1Sequence.getObjectAt(aSN1Sequence.size() - 1)).getBaseUniversal(false, 4)).getOctets();
    }

    public static CVCertificateRequest getInstance(Object obj) {
        if (obj instanceof CVCertificateRequest) {
            return (CVCertificateRequest) obj;
        }
        if (obj != null) {
            try {
                return new CVCertificateRequest(ASN1TaggedObject.getInstance(obj, 64));
            } catch (IOException e) {
                throw new ASN1ParsingException(Ve.d(e, new StringBuilder("unable to parse data: ")), e);
            }
        }
        return null;
    }

    private void initCertBody(ASN1TaggedObject aSN1TaggedObject) throws IOException {
        if (aSN1TaggedObject.hasTag(64, 33)) {
            Enumeration objects = ASN1Sequence.getInstance(aSN1TaggedObject.getBaseUniversal(false, 16)).getObjects();
            int i = 0;
            while (objects.hasMoreElements()) {
                ASN1TaggedObject aSN1TaggedObject2 = ASN1TaggedObject.getInstance(objects.nextElement(), 64);
                int tagNo = aSN1TaggedObject2.getTagNo();
                if (tagNo != 55) {
                    if (tagNo == 78) {
                        this.certificateBody = CertificateBody.getInstance(aSN1TaggedObject2);
                        i |= 1;
                    } else {
                        throw new IOException(AbstractC0214jf.d(aSN1TaggedObject2, new StringBuilder("Invalid tag, not an CV Certificate Request element:")));
                    }
                } else {
                    this.innerSignature = ASN1OctetString.getInstance(aSN1TaggedObject2.getBaseUniversal(false, 4)).getOctets();
                    i |= 2;
                }
            }
            if ((i & 3) != 0) {
                return;
            } else {
                throw new IOException(AbstractC0214jf.d(aSN1TaggedObject, new StringBuilder("Invalid CARDHOLDER_CERTIFICATE in request:")));
            }
        }
        throw new IOException(AbstractC0214jf.d(aSN1TaggedObject, new StringBuilder("not a CARDHOLDER_CERTIFICATE in request:")));
    }

    public CertificateBody getCertificateBody() {
        return this.certificateBody;
    }

    public byte[] getInnerSignature() {
        return Arrays.clone(this.innerSignature);
    }

    public byte[] getOuterSignature() {
        return Arrays.clone(this.outerSignature);
    }

    public PublicKeyDataObject getPublicKey() {
        return this.certificateBody.getPublicKey();
    }

    public boolean hasOuterSignature() {
        return this.outerSignature != null;
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1TaggedObject aSN1TaggedObject = this.original;
        return aSN1TaggedObject != null ? aSN1TaggedObject : EACTagged.create(33, new DERSequence(this.certificateBody, EACTagged.create(55, this.innerSignature)));
    }
}
