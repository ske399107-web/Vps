package org.bouncycastle.math.ec.custom.sec;

import o.AbstractC0304o5;
import org.bouncycastle.math.ec.ECConstants;
import org.bouncycastle.math.ec.ECCurve;
import org.bouncycastle.math.ec.ECFieldElement;
import org.bouncycastle.math.ec.ECPoint;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class SecT131R1Point extends ECPoint.AbstractF2m {
    public SecT131R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        super(eCCurve, eCFieldElement, eCFieldElement2);
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECPoint add(ECPoint eCPoint) {
        ECFieldElement eCFieldElement;
        ECFieldElement eCFieldElement2;
        ECFieldElement eCFieldElement3;
        ECFieldElement eCFieldElement4;
        ECFieldElement eCFieldElement5;
        ECFieldElement eCFieldElement6;
        ECFieldElement eCFieldElement7;
        if (isInfinity()) {
            return eCPoint;
        }
        if (eCPoint.isInfinity()) {
            return this;
        }
        ECCurve curve = getCurve();
        ECFieldElement eCFieldElement8 = this.x;
        ECFieldElement rawXCoord = eCPoint.getRawXCoord();
        if (eCFieldElement8.isZero()) {
            if (rawXCoord.isZero()) {
                return curve.getInfinity();
            }
            return eCPoint.add(this);
        }
        ECFieldElement eCFieldElement9 = this.y;
        ECFieldElement eCFieldElement10 = this.zs[0];
        ECFieldElement rawYCoord = eCPoint.getRawYCoord();
        ECFieldElement zCoord = eCPoint.getZCoord(0);
        boolean isOne = eCFieldElement10.isOne();
        if (!isOne) {
            eCFieldElement = rawXCoord.multiply(eCFieldElement10);
            eCFieldElement2 = rawYCoord.multiply(eCFieldElement10);
        } else {
            eCFieldElement = rawXCoord;
            eCFieldElement2 = rawYCoord;
        }
        boolean isOne2 = zCoord.isOne();
        if (!isOne2) {
            eCFieldElement8 = eCFieldElement8.multiply(zCoord);
            eCFieldElement3 = eCFieldElement9.multiply(zCoord);
        } else {
            eCFieldElement3 = eCFieldElement9;
        }
        ECFieldElement add = eCFieldElement3.add(eCFieldElement2);
        ECFieldElement add2 = eCFieldElement8.add(eCFieldElement);
        if (add2.isZero()) {
            if (add.isZero()) {
                return twice();
            }
            return curve.getInfinity();
        }
        if (rawXCoord.isZero()) {
            ECPoint normalize = normalize();
            ECFieldElement xCoord = normalize.getXCoord();
            ECFieldElement yCoord = normalize.getYCoord();
            ECFieldElement divide = yCoord.add(rawYCoord).divide(xCoord);
            eCFieldElement5 = AbstractC0304o5.x(divide, divide, xCoord).add(curve.getA());
            if (eCFieldElement5.isZero()) {
                return new SecT131R1Point(curve, eCFieldElement5, curve.getB().sqrt());
            }
            eCFieldElement7 = divide.multiply(xCoord.add(eCFieldElement5)).add(eCFieldElement5).add(yCoord).divide(eCFieldElement5).add(eCFieldElement5);
            eCFieldElement6 = curve.fromBigInteger(ECConstants.ONE);
        } else {
            ECFieldElement square = add2.square();
            ECFieldElement multiply = add.multiply(eCFieldElement8);
            ECFieldElement multiply2 = add.multiply(eCFieldElement);
            ECFieldElement multiply3 = multiply.multiply(multiply2);
            if (multiply3.isZero()) {
                return new SecT131R1Point(curve, multiply3, curve.getB().sqrt());
            }
            ECFieldElement multiply4 = add.multiply(square);
            if (!isOne2) {
                eCFieldElement4 = multiply4.multiply(zCoord);
            } else {
                eCFieldElement4 = multiply4;
            }
            ECFieldElement squarePlusProduct = multiply2.add(square).squarePlusProduct(eCFieldElement4, eCFieldElement9.add(eCFieldElement10));
            if (!isOne) {
                eCFieldElement4 = eCFieldElement4.multiply(eCFieldElement10);
            }
            eCFieldElement5 = multiply3;
            eCFieldElement6 = eCFieldElement4;
            eCFieldElement7 = squarePlusProduct;
        }
        return new SecT131R1Point(curve, eCFieldElement5, eCFieldElement7, new ECFieldElement[]{eCFieldElement6});
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECPoint detach() {
        return new SecT131R1Point(null, getAffineXCoord(), getAffineYCoord());
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public boolean getCompressionYTilde() {
        ECFieldElement rawXCoord = getRawXCoord();
        return (rawXCoord.isZero() || getRawYCoord().testBitZero() == rawXCoord.testBitZero()) ? false : true;
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECFieldElement getYCoord() {
        ECFieldElement eCFieldElement = this.x;
        ECFieldElement eCFieldElement2 = this.y;
        if (isInfinity() || eCFieldElement.isZero()) {
            return eCFieldElement2;
        }
        ECFieldElement multiply = eCFieldElement2.add(eCFieldElement).multiply(eCFieldElement);
        ECFieldElement eCFieldElement3 = this.zs[0];
        return !eCFieldElement3.isOne() ? multiply.divide(eCFieldElement3) : multiply;
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECPoint negate() {
        if (isInfinity()) {
            return this;
        }
        ECFieldElement eCFieldElement = this.x;
        if (eCFieldElement.isZero()) {
            return this;
        }
        ECFieldElement eCFieldElement2 = this.y;
        ECFieldElement eCFieldElement3 = this.zs[0];
        return new SecT131R1Point(this.curve, eCFieldElement, eCFieldElement2.add(eCFieldElement3), new ECFieldElement[]{eCFieldElement3});
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECPoint twice() {
        ECFieldElement multiply;
        ECFieldElement square;
        ECFieldElement multiply2;
        if (isInfinity()) {
            return this;
        }
        ECCurve curve = getCurve();
        ECFieldElement eCFieldElement = this.x;
        if (eCFieldElement.isZero()) {
            return curve.getInfinity();
        }
        ECFieldElement eCFieldElement2 = this.y;
        ECFieldElement eCFieldElement3 = this.zs[0];
        boolean isOne = eCFieldElement3.isOne();
        if (isOne) {
            multiply = eCFieldElement2;
        } else {
            multiply = eCFieldElement2.multiply(eCFieldElement3);
        }
        if (isOne) {
            square = eCFieldElement3;
        } else {
            square = eCFieldElement3.square();
        }
        ECFieldElement a = curve.getA();
        if (!isOne) {
            a = a.multiply(square);
        }
        ECFieldElement x = AbstractC0304o5.x(eCFieldElement2, multiply, a);
        if (x.isZero()) {
            return new SecT131R1Point(curve, x, curve.getB().sqrt());
        }
        ECFieldElement square2 = x.square();
        if (isOne) {
            multiply2 = x;
        } else {
            multiply2 = x.multiply(square);
        }
        if (!isOne) {
            eCFieldElement = eCFieldElement.multiply(eCFieldElement3);
        }
        return new SecT131R1Point(curve, square2, eCFieldElement.squarePlusProduct(x, multiply).add(square2).add(multiply2), new ECFieldElement[]{multiply2});
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECPoint twicePlus(ECPoint eCPoint) {
        if (isInfinity()) {
            return eCPoint;
        }
        if (eCPoint.isInfinity()) {
            return twice();
        }
        ECCurve curve = getCurve();
        ECFieldElement eCFieldElement = this.x;
        if (eCFieldElement.isZero()) {
            return eCPoint;
        }
        ECFieldElement rawXCoord = eCPoint.getRawXCoord();
        ECFieldElement zCoord = eCPoint.getZCoord(0);
        if (rawXCoord.isZero() || !zCoord.isOne()) {
            return twice().add(eCPoint);
        }
        ECFieldElement eCFieldElement2 = this.y;
        ECFieldElement eCFieldElement3 = this.zs[0];
        ECFieldElement rawYCoord = eCPoint.getRawYCoord();
        ECFieldElement square = eCFieldElement.square();
        ECFieldElement square2 = eCFieldElement2.square();
        ECFieldElement square3 = eCFieldElement3.square();
        ECFieldElement add = curve.getA().multiply(square3).add(square2).add(eCFieldElement2.multiply(eCFieldElement3));
        ECFieldElement addOne = rawYCoord.addOne();
        ECFieldElement multiplyPlusProduct = curve.getA().add(addOne).multiply(square3).add(square2).multiplyPlusProduct(add, square, square3);
        ECFieldElement multiply = rawXCoord.multiply(square3);
        ECFieldElement square4 = multiply.add(add).square();
        if (square4.isZero()) {
            return multiplyPlusProduct.isZero() ? eCPoint.twice() : curve.getInfinity();
        }
        if (multiplyPlusProduct.isZero()) {
            return new SecT131R1Point(curve, multiplyPlusProduct, curve.getB().sqrt());
        }
        ECFieldElement multiply2 = multiplyPlusProduct.square().multiply(multiply);
        ECFieldElement multiply3 = multiplyPlusProduct.multiply(square4).multiply(square3);
        return new SecT131R1Point(curve, multiply2, multiplyPlusProduct.add(square4).square().multiplyPlusProduct(add, addOne, multiply3), new ECFieldElement[]{multiply3});
    }

    public SecT131R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr) {
        super(eCCurve, eCFieldElement, eCFieldElement2, eCFieldElementArr);
    }
}
