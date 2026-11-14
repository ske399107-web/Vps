package org.bouncycastle.asn1.x9;

import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.math.ec.ECFieldElement;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class X9FieldElement extends ASN1Object {
    private static X9IntegerConverter converter = new X9IntegerConverter();

    /* renamed from: f, reason: collision with root package name */
    protected ECFieldElement f312f;

    public X9FieldElement(ECFieldElement eCFieldElement) {
        this.f312f = eCFieldElement;
    }

    public ECFieldElement getValue() {
        return this.f312f;
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        return new DEROctetString(converter.integerToBytes(this.f312f.toBigInteger(), converter.getByteLength(this.f312f)));
    }
}
