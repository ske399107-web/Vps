package org.bouncycastle.asn1.util;

import java.math.BigInteger;
import o.AbstractC0304o5;
import o.Ve;
import org.bouncycastle.asn1.ASN1BMPString;
import org.bouncycastle.asn1.ASN1BitString;
import org.bouncycastle.asn1.ASN1Boolean;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Enumerated;
import org.bouncycastle.asn1.ASN1External;
import org.bouncycastle.asn1.ASN1GeneralizedTime;
import org.bouncycastle.asn1.ASN1GraphicString;
import org.bouncycastle.asn1.ASN1IA5String;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1Null;
import org.bouncycastle.asn1.ASN1NumericString;
import org.bouncycastle.asn1.ASN1ObjectDescriptor;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1PrintableString;
import org.bouncycastle.asn1.ASN1RelativeOID;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1Set;
import org.bouncycastle.asn1.ASN1T61String;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.ASN1UTCTime;
import org.bouncycastle.asn1.ASN1UTF8String;
import org.bouncycastle.asn1.ASN1Util;
import org.bouncycastle.asn1.ASN1VideotexString;
import org.bouncycastle.asn1.ASN1VisibleString;
import org.bouncycastle.asn1.BEROctetString;
import org.bouncycastle.asn1.BERSequence;
import org.bouncycastle.asn1.BERSet;
import org.bouncycastle.asn1.BERTaggedObject;
import org.bouncycastle.asn1.DERBitString;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERSet;
import org.bouncycastle.asn1.DERTaggedObject;
import org.bouncycastle.asn1.DLBitString;
import org.bouncycastle.util.Strings;
import org.bouncycastle.util.encoders.Hex;
import org.conscrypt.BuildConfig;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class ASN1Dump {
    private static final int SAMPLE_SIZE = 32;
    private static final String TAB = "    ";

    public static void _dumpAsString(String str, boolean z, ASN1Primitive aSN1Primitive, StringBuffer stringBuffer) {
        StringBuilder sb;
        String str2;
        ASN1Primitive externalContent;
        String string;
        BigInteger value;
        String id;
        String lineSeparator = Strings.lineSeparator();
        stringBuffer.append(str);
        if (aSN1Primitive instanceof ASN1Null) {
            stringBuffer.append("NULL");
            stringBuffer.append(lineSeparator);
            return;
        }
        int i = 0;
        if (aSN1Primitive instanceof ASN1Sequence) {
            stringBuffer.append(aSN1Primitive instanceof BERSequence ? "BER Sequence" : aSN1Primitive instanceof DERSequence ? "DER Sequence" : "Sequence");
            stringBuffer.append(lineSeparator);
            ASN1Sequence aSN1Sequence = (ASN1Sequence) aSN1Primitive;
            String h = Ve.h(str, TAB);
            int size = aSN1Sequence.size();
            while (i < size) {
                _dumpAsString(h, z, aSN1Sequence.getObjectAt(i).toASN1Primitive(), stringBuffer);
                i++;
            }
            return;
        }
        if (aSN1Primitive instanceof ASN1Set) {
            stringBuffer.append(aSN1Primitive instanceof BERSet ? "BER Set" : aSN1Primitive instanceof DERSet ? "DER Set" : "Set");
            stringBuffer.append(lineSeparator);
            ASN1Set aSN1Set = (ASN1Set) aSN1Primitive;
            String h2 = Ve.h(str, TAB);
            int size2 = aSN1Set.size();
            while (i < size2) {
                _dumpAsString(h2, z, aSN1Set.getObjectAt(i).toASN1Primitive(), stringBuffer);
                i++;
            }
            return;
        }
        if (!(aSN1Primitive instanceof ASN1TaggedObject)) {
            if (aSN1Primitive instanceof ASN1ObjectIdentifier) {
                sb = new StringBuilder("ObjectIdentifier(");
                id = ((ASN1ObjectIdentifier) aSN1Primitive).getId();
            } else {
                if (!(aSN1Primitive instanceof ASN1RelativeOID)) {
                    if (aSN1Primitive instanceof ASN1Boolean) {
                        sb = new StringBuilder("Boolean(");
                        sb.append(((ASN1Boolean) aSN1Primitive).isTrue());
                    } else {
                        if (!(aSN1Primitive instanceof ASN1Integer)) {
                            if (aSN1Primitive instanceof ASN1OctetString) {
                                ASN1OctetString aSN1OctetString = (ASN1OctetString) aSN1Primitive;
                                stringBuffer.append(aSN1Primitive instanceof BEROctetString ? "BER Constructed Octet String[" : "DER Octet String[");
                                stringBuffer.append(aSN1OctetString.getOctetsLength() + "]" + lineSeparator);
                                if (z) {
                                    dumpBinaryDataAsString(stringBuffer, str, aSN1OctetString.getOctets());
                                    return;
                                }
                                return;
                            }
                            if (aSN1Primitive instanceof ASN1BitString) {
                                ASN1BitString aSN1BitString = (ASN1BitString) aSN1Primitive;
                                stringBuffer.append(aSN1BitString instanceof DERBitString ? "DER Bit String[" : aSN1BitString instanceof DLBitString ? "DL Bit String[" : "BER Bit String[");
                                stringBuffer.append(aSN1BitString.getBytesLength() + ", " + aSN1BitString.getPadBits() + "]" + lineSeparator);
                                if (z) {
                                    dumpBinaryDataAsString(stringBuffer, str, aSN1BitString.getBytes());
                                    return;
                                }
                                return;
                            }
                            if (aSN1Primitive instanceof ASN1IA5String) {
                                sb = new StringBuilder("IA5String(");
                                string = ((ASN1IA5String) aSN1Primitive).getString();
                            } else if (aSN1Primitive instanceof ASN1UTF8String) {
                                sb = new StringBuilder("UTF8String(");
                                string = ((ASN1UTF8String) aSN1Primitive).getString();
                            } else if (aSN1Primitive instanceof ASN1NumericString) {
                                sb = new StringBuilder("NumericString(");
                                string = ((ASN1NumericString) aSN1Primitive).getString();
                            } else if (aSN1Primitive instanceof ASN1PrintableString) {
                                sb = new StringBuilder("PrintableString(");
                                string = ((ASN1PrintableString) aSN1Primitive).getString();
                            } else if (aSN1Primitive instanceof ASN1VisibleString) {
                                sb = new StringBuilder("VisibleString(");
                                string = ((ASN1VisibleString) aSN1Primitive).getString();
                            } else if (aSN1Primitive instanceof ASN1BMPString) {
                                sb = new StringBuilder("BMPString(");
                                string = ((ASN1BMPString) aSN1Primitive).getString();
                            } else if (aSN1Primitive instanceof ASN1T61String) {
                                sb = new StringBuilder("T61String(");
                                string = ((ASN1T61String) aSN1Primitive).getString();
                            } else if (aSN1Primitive instanceof ASN1GraphicString) {
                                sb = new StringBuilder("GraphicString(");
                                string = ((ASN1GraphicString) aSN1Primitive).getString();
                            } else if (aSN1Primitive instanceof ASN1VideotexString) {
                                sb = new StringBuilder("VideotexString(");
                                string = ((ASN1VideotexString) aSN1Primitive).getString();
                            } else if (aSN1Primitive instanceof ASN1UTCTime) {
                                sb = new StringBuilder("UTCTime(");
                                string = ((ASN1UTCTime) aSN1Primitive).getTime();
                            } else if (aSN1Primitive instanceof ASN1GeneralizedTime) {
                                sb = new StringBuilder("GeneralizedTime(");
                                string = ((ASN1GeneralizedTime) aSN1Primitive).getTime();
                            } else if (aSN1Primitive instanceof ASN1Enumerated) {
                                sb = new StringBuilder("DER Enumerated(");
                                value = ((ASN1Enumerated) aSN1Primitive).getValue();
                            } else if (aSN1Primitive instanceof ASN1ObjectDescriptor) {
                                sb = new StringBuilder("ObjectDescriptor(");
                                string = ((ASN1ObjectDescriptor) aSN1Primitive).getBaseGraphicString().getString();
                            } else {
                                if (!(aSN1Primitive instanceof ASN1External)) {
                                    sb = new StringBuilder();
                                    sb.append(aSN1Primitive.toString());
                                    sb.append(lineSeparator);
                                    stringBuffer.append(sb.toString());
                                    return;
                                }
                                ASN1External aSN1External = (ASN1External) aSN1Primitive;
                                stringBuffer.append("External " + lineSeparator);
                                str2 = str + TAB;
                                if (aSN1External.getDirectReference() != null) {
                                    StringBuilder o2 = AbstractC0304o5.o(str2, "Direct Reference: ");
                                    o2.append(aSN1External.getDirectReference().getId());
                                    o2.append(lineSeparator);
                                    stringBuffer.append(o2.toString());
                                }
                                if (aSN1External.getIndirectReference() != null) {
                                    StringBuilder o3 = AbstractC0304o5.o(str2, "Indirect Reference: ");
                                    o3.append(aSN1External.getIndirectReference().toString());
                                    o3.append(lineSeparator);
                                    stringBuffer.append(o3.toString());
                                }
                                if (aSN1External.getDataValueDescriptor() != null) {
                                    _dumpAsString(str2, z, aSN1External.getDataValueDescriptor(), stringBuffer);
                                }
                                StringBuilder o4 = AbstractC0304o5.o(str2, "Encoding: ");
                                o4.append(aSN1External.getEncoding());
                                o4.append(lineSeparator);
                                stringBuffer.append(o4.toString());
                                externalContent = aSN1External.getExternalContent();
                            }
                            sb.append(string);
                            sb.append(") ");
                            sb.append(lineSeparator);
                            stringBuffer.append(sb.toString());
                            return;
                        }
                        sb = new StringBuilder("Integer(");
                        value = ((ASN1Integer) aSN1Primitive).getValue();
                        sb.append(value);
                    }
                    sb.append(")");
                    sb.append(lineSeparator);
                    stringBuffer.append(sb.toString());
                    return;
                }
                sb = new StringBuilder("RelativeOID(");
                id = ((ASN1RelativeOID) aSN1Primitive).getId();
            }
            sb.append(id);
            sb.append(")");
            sb.append(lineSeparator);
            stringBuffer.append(sb.toString());
            return;
        }
        stringBuffer.append(aSN1Primitive instanceof BERTaggedObject ? "BER Tagged " : aSN1Primitive instanceof DERTaggedObject ? "DER Tagged " : "Tagged ");
        ASN1TaggedObject aSN1TaggedObject = (ASN1TaggedObject) aSN1Primitive;
        stringBuffer.append(ASN1Util.getTagText(aSN1TaggedObject));
        if (!aSN1TaggedObject.isExplicit()) {
            stringBuffer.append(" IMPLICIT");
        }
        stringBuffer.append(lineSeparator);
        str2 = str + TAB;
        externalContent = aSN1TaggedObject.getBaseObject().toASN1Primitive();
        _dumpAsString(str2, z, externalContent, stringBuffer);
    }

    private static void appendAscString(StringBuffer stringBuffer, byte[] bArr, int i, int i2) {
        for (int i3 = i; i3 != i + i2; i3++) {
            byte b = bArr[i3];
            if (b >= 32 && b <= 126) {
                stringBuffer.append((char) b);
            }
        }
    }

    public static String dumpAsString(Object obj) {
        return dumpAsString(obj, false);
    }

    private static void dumpBinaryDataAsString(StringBuffer stringBuffer, String str, byte[] bArr) {
        if (bArr.length < 1) {
            return;
        }
        String lineSeparator = Strings.lineSeparator();
        String h = Ve.h(str, TAB);
        for (int i = 0; i < bArr.length; i += 32) {
            int min = Math.min(bArr.length - i, 32);
            stringBuffer.append(h);
            stringBuffer.append(Hex.toHexString(bArr, i, min));
            for (int i2 = min; i2 < 32; i2++) {
                stringBuffer.append("  ");
            }
            stringBuffer.append(TAB);
            appendAscString(stringBuffer, bArr, i, min);
            stringBuffer.append(lineSeparator);
        }
    }

    public static String dumpAsString(Object obj, boolean z) {
        ASN1Primitive aSN1Primitive;
        if (obj instanceof ASN1Primitive) {
            aSN1Primitive = (ASN1Primitive) obj;
        } else {
            if (!(obj instanceof ASN1Encodable)) {
                return "unknown object type " + obj.toString();
            }
            aSN1Primitive = ((ASN1Encodable) obj).toASN1Primitive();
        }
        StringBuffer stringBuffer = new StringBuffer();
        _dumpAsString(BuildConfig.FLAVOR, z, aSN1Primitive, stringBuffer);
        return stringBuffer.toString();
    }
}
