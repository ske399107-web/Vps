package org.bouncycastle.oer.its.ieee1609dot2.basetypes;

import o.AbstractC0214jf;
import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERTaggedObject;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class GeographicRegion extends ASN1Object implements ASN1Choice {
    public static final int circularRegion = 0;
    public static final int identifiedRegion = 3;
    public static final int polygonalRegion = 2;
    public static final int rectangularRegion = 1;
    private final int choice;
    private final ASN1Encodable geographicRegion;

    public GeographicRegion(int i, ASN1Encodable aSN1Encodable) {
        this.choice = i;
        this.geographicRegion = aSN1Encodable;
    }

    public static GeographicRegion circularRegion(CircularRegion circularRegion2) {
        return new GeographicRegion(0, circularRegion2);
    }

    public static GeographicRegion getInstance(Object obj) {
        if (obj instanceof GeographicRegion) {
            return (GeographicRegion) obj;
        }
        if (obj != null) {
            return new GeographicRegion(ASN1TaggedObject.getInstance(obj, 128));
        }
        return null;
    }

    public static GeographicRegion identifiedRegion(SequenceOfIdentifiedRegion sequenceOfIdentifiedRegion) {
        return new GeographicRegion(3, sequenceOfIdentifiedRegion);
    }

    public static GeographicRegion polygonalRegion(PolygonalRegion polygonalRegion2) {
        return new GeographicRegion(2, polygonalRegion2);
    }

    public static GeographicRegion rectangularRegion(SequenceOfRectangularRegion sequenceOfRectangularRegion) {
        return new GeographicRegion(1, sequenceOfRectangularRegion);
    }

    public int getChoice() {
        return this.choice;
    }

    public ASN1Encodable getGeographicRegion() {
        return this.geographicRegion;
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        return new DERTaggedObject(this.choice, this.geographicRegion);
    }

    private GeographicRegion(ASN1TaggedObject aSN1TaggedObject) {
        ASN1Encodable circularRegion2;
        int tagNo = aSN1TaggedObject.getTagNo();
        this.choice = tagNo;
        if (tagNo == 0) {
            circularRegion2 = CircularRegion.getInstance(aSN1TaggedObject.getExplicitBaseObject());
        } else if (tagNo == 1) {
            circularRegion2 = SequenceOfRectangularRegion.getInstance(aSN1TaggedObject.getExplicitBaseObject());
        } else {
            if (tagNo != 2) {
                if (tagNo != 3) {
                    throw new IllegalArgumentException(AbstractC0214jf.a(tagNo, "invalid choice value "));
                }
                this.geographicRegion = SequenceOfIdentifiedRegion.getInstance(aSN1TaggedObject.getExplicitBaseObject());
                return;
            }
            circularRegion2 = PolygonalRegion.getInstance(aSN1TaggedObject.getExplicitBaseObject());
        }
        this.geographicRegion = circularRegion2;
    }
}
