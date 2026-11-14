package org.bouncycastle.asn1.eac;

import java.io.IOException;
import java.util.Enumeration;
import o.AbstractC0214jf;
import o.Ve;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1ParsingException;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.util.Arrays;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class CVCertificate extends ASN1Object {
    private static int bodyValid = 1;
    private static int signValid = 2;
    private CertificateBody certificateBody;
    private byte[] signature;
    private int valid;

    public CVCertificate(ASN1InputStream aSN1InputStream) throws IOException {
        initFrom(aSN1InputStream);
    }

    public static CVCertificate getInstance(Object obj) {
        if (obj instanceof CVCertificate) {
            return (CVCertificate) obj;
        }
        if (obj != null) {
            try {
                return new CVCertificate(ASN1TaggedObject.getInstance(obj, 64));
            } catch (IOException e) {
                throw new ASN1ParsingException(Ve.d(e, new StringBuilder("unable to parse data: ")), e);
            }
        }
        return null;
    }

    private void initFrom(ASN1InputStream aSN1InputStream) throws IOException {
        while (true) {
            ASN1Primitive readObject = aSN1InputStream.readObject();
            if (readObject == null) {
                return;
            }
            if (!(readObject instanceof ASN1TaggedObject)) {
                throw new IOException("Invalid Input Stream for creating an Iso7816CertificateStructure");
            }
            setPrivateData((ASN1TaggedObject) readObject);
        }
    }

    private void setPrivateData(ASN1TaggedObject aSN1TaggedObject) throws IOException {
        this.valid = 0;
        if (aSN1TaggedObject.hasTag(64, 33)) {
            Enumeration objects = ASN1Sequence.getInstance(aSN1TaggedObject.getBaseUniversal(false, 16)).getObjects();
            while (objects.hasMoreElements()) {
                Object nextElement = objects.nextElement();
                if (nextElement instanceof ASN1TaggedObject) {
                    ASN1TaggedObject aSN1TaggedObject2 = ASN1TaggedObject.getInstance(nextElement, 64);
                    int tagNo = aSN1TaggedObject2.getTagNo();
                    if (tagNo != 55) {
                        if (tagNo == 78) {
                            this.certificateBody = CertificateBody.getInstance(aSN1TaggedObject2);
                            this.valid |= bodyValid;
                        } else {
                            throw new IOException(AbstractC0214jf.d(aSN1TaggedObject2, new StringBuilder("Invalid tag, not an Iso7816CertificateStructure :")));
                        }
                    } else {
                        this.signature = ASN1OctetString.getInstance(aSN1TaggedObject2.getBaseUniversal(false, 4)).getOctets();
                        this.valid |= signValid;
                    }
                } else {
                    throw new IOException("Invalid Object, not an Iso7816CertificateStructure");
                }
            }
            if (this.valid == (signValid | bodyValid)) {
                return;
            } else {
                throw new IOException(AbstractC0214jf.d(aSN1TaggedObject, new StringBuilder("invalid CARDHOLDER_CERTIFICATE :")));
            }
        }
        throw new IOException(AbstractC0214jf.d(aSN1TaggedObject, new StringBuilder("not a CARDHOLDER_CERTIFICATE :")));
    }

    public CertificationAuthorityReference getAuthorityReference() throws IOException {
        return this.certificateBody.getCertificationAuthorityReference();
    }

    public CertificateBody getBody() {
        return this.certificateBody;
    }

    public int getCertificateType() {
        return this.certificateBody.getCertificateType();
    }

    public PackedDate getEffectiveDate() throws IOException {
        return this.certificateBody.getCertificateEffectiveDate();
    }

    public PackedDate getExpirationDate() throws IOException {
        return this.certificateBody.getCertificateExpirationDate();
    }

    public ASN1ObjectIdentifier getHolderAuthorization() throws IOException {
        return this.certificateBody.getCertificateHolderAuthorization().getOid();
    }

    public Flags getHolderAuthorizationRights() throws IOException {
        return new Flags(this.certificateBody.getCertificateHolderAuthorization().getAccessRights() & 31);
    }

    public int getHolderAuthorizationRole() throws IOException {
        return this.certificateBody.getCertificateHolderAuthorization().getAccessRights() & 192;
    }

    public CertificateHolderReference getHolderReference() throws IOException {
        return this.certificateBody.getCertificateHolderReference();
    }

    public int getRole() throws IOException {
        return this.certificateBody.getCertificateHolderAuthorization().getAccessRights();
    }

    public byte[] getSignature() {
        return Arrays.clone(this.signature);
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        return EACTagged.create(33, new DERSequence(this.certificateBody, EACTagged.create(55, this.signature)));
    }

    private CVCertificate(ASN1TaggedObject aSN1TaggedObject) throws IOException {
        setPrivateData(aSN1TaggedObject);
    }

    public CVCertificate(CertificateBody certificateBody, byte[] bArr) throws IOException {
        this.certificateBody = certificateBody;
        this.signature = Arrays.clone(bArr);
        this.valid = this.valid | bodyValid | signValid;
    }
}
