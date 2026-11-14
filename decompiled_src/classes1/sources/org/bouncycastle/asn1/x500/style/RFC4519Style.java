package org.bouncycastle.asn1.x500.style;

import java.util.Hashtable;
import o.AbstractC0304o5;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.DERIA5String;
import org.bouncycastle.asn1.DERPrintableString;
import org.bouncycastle.asn1.x500.RDN;
import org.bouncycastle.asn1.x500.X500Name;
import org.bouncycastle.asn1.x500.X500NameStyle;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class RFC4519Style extends AbstractX500NameStyle {
    private static final Hashtable DefaultLookUp;
    private static final Hashtable DefaultSymbols;
    public static final X500NameStyle INSTANCE;
    public static final ASN1ObjectIdentifier businessCategory;
    public static final ASN1ObjectIdentifier c;
    public static final ASN1ObjectIdentifier cn;
    public static final ASN1ObjectIdentifier dc;
    public static final ASN1ObjectIdentifier description;
    public static final ASN1ObjectIdentifier destinationIndicator;
    public static final ASN1ObjectIdentifier distinguishedName;
    public static final ASN1ObjectIdentifier dnQualifier;
    public static final ASN1ObjectIdentifier enhancedSearchGuide;
    public static final ASN1ObjectIdentifier facsimileTelephoneNumber;
    public static final ASN1ObjectIdentifier generationQualifier;
    public static final ASN1ObjectIdentifier givenName;
    public static final ASN1ObjectIdentifier houseIdentifier;
    public static final ASN1ObjectIdentifier initials;
    public static final ASN1ObjectIdentifier internationalISDNNumber;
    public static final ASN1ObjectIdentifier l;
    public static final ASN1ObjectIdentifier member;
    public static final ASN1ObjectIdentifier name;

    /* renamed from: o, reason: collision with root package name */
    public static final ASN1ObjectIdentifier f311o;
    public static final ASN1ObjectIdentifier ou;
    public static final ASN1ObjectIdentifier owner;
    public static final ASN1ObjectIdentifier physicalDeliveryOfficeName;
    public static final ASN1ObjectIdentifier postOfficeBox;
    public static final ASN1ObjectIdentifier postalAddress;
    public static final ASN1ObjectIdentifier postalCode;
    public static final ASN1ObjectIdentifier preferredDeliveryMethod;
    public static final ASN1ObjectIdentifier registeredAddress;
    public static final ASN1ObjectIdentifier roleOccupant;
    public static final ASN1ObjectIdentifier searchGuide;
    public static final ASN1ObjectIdentifier seeAlso;
    public static final ASN1ObjectIdentifier serialNumber;
    public static final ASN1ObjectIdentifier sn;
    public static final ASN1ObjectIdentifier st;
    public static final ASN1ObjectIdentifier street;
    public static final ASN1ObjectIdentifier telephoneNumber;
    public static final ASN1ObjectIdentifier teletexTerminalIdentifier;
    public static final ASN1ObjectIdentifier telexNumber;
    public static final ASN1ObjectIdentifier title;
    public static final ASN1ObjectIdentifier uid;
    public static final ASN1ObjectIdentifier uniqueMember;
    public static final ASN1ObjectIdentifier userPassword;
    public static final ASN1ObjectIdentifier x121Address;
    public static final ASN1ObjectIdentifier x500UniqueIdentifier;
    protected final Hashtable defaultSymbols = AbstractX500NameStyle.copyHashTable(DefaultSymbols);
    protected final Hashtable defaultLookUp = AbstractX500NameStyle.copyHashTable(DefaultLookUp);

    static {
        ASN1ObjectIdentifier w = AbstractC0304o5.w("2.5.4.15");
        businessCategory = w;
        ASN1ObjectIdentifier w2 = AbstractC0304o5.w("2.5.4.6");
        c = w2;
        ASN1ObjectIdentifier w3 = AbstractC0304o5.w("2.5.4.3");
        cn = w3;
        ASN1ObjectIdentifier w4 = AbstractC0304o5.w("0.9.2342.19200300.100.1.25");
        dc = w4;
        ASN1ObjectIdentifier w5 = AbstractC0304o5.w("2.5.4.13");
        description = w5;
        ASN1ObjectIdentifier w6 = AbstractC0304o5.w("2.5.4.27");
        destinationIndicator = w6;
        ASN1ObjectIdentifier w7 = AbstractC0304o5.w("2.5.4.49");
        distinguishedName = w7;
        ASN1ObjectIdentifier w8 = AbstractC0304o5.w("2.5.4.46");
        dnQualifier = w8;
        ASN1ObjectIdentifier w9 = AbstractC0304o5.w("2.5.4.47");
        enhancedSearchGuide = w9;
        ASN1ObjectIdentifier w10 = AbstractC0304o5.w("2.5.4.23");
        facsimileTelephoneNumber = w10;
        ASN1ObjectIdentifier w11 = AbstractC0304o5.w("2.5.4.44");
        generationQualifier = w11;
        ASN1ObjectIdentifier w12 = AbstractC0304o5.w("2.5.4.42");
        givenName = w12;
        ASN1ObjectIdentifier w13 = AbstractC0304o5.w("2.5.4.51");
        houseIdentifier = w13;
        ASN1ObjectIdentifier w14 = AbstractC0304o5.w("2.5.4.43");
        initials = w14;
        ASN1ObjectIdentifier w15 = AbstractC0304o5.w("2.5.4.25");
        internationalISDNNumber = w15;
        ASN1ObjectIdentifier w16 = AbstractC0304o5.w("2.5.4.7");
        l = w16;
        ASN1ObjectIdentifier w17 = AbstractC0304o5.w("2.5.4.31");
        member = w17;
        ASN1ObjectIdentifier w18 = AbstractC0304o5.w("2.5.4.41");
        name = w18;
        ASN1ObjectIdentifier w19 = AbstractC0304o5.w("2.5.4.10");
        f311o = w19;
        ASN1ObjectIdentifier w20 = AbstractC0304o5.w("2.5.4.11");
        ou = w20;
        ASN1ObjectIdentifier w21 = AbstractC0304o5.w("2.5.4.32");
        owner = w21;
        ASN1ObjectIdentifier w22 = AbstractC0304o5.w("2.5.4.19");
        physicalDeliveryOfficeName = w22;
        ASN1ObjectIdentifier w23 = AbstractC0304o5.w("2.5.4.16");
        postalAddress = w23;
        ASN1ObjectIdentifier w24 = AbstractC0304o5.w("2.5.4.17");
        postalCode = w24;
        ASN1ObjectIdentifier w25 = AbstractC0304o5.w("2.5.4.18");
        postOfficeBox = w25;
        ASN1ObjectIdentifier w26 = AbstractC0304o5.w("2.5.4.28");
        preferredDeliveryMethod = w26;
        ASN1ObjectIdentifier w27 = AbstractC0304o5.w("2.5.4.26");
        registeredAddress = w27;
        ASN1ObjectIdentifier w28 = AbstractC0304o5.w("2.5.4.33");
        roleOccupant = w28;
        ASN1ObjectIdentifier w29 = AbstractC0304o5.w("2.5.4.14");
        searchGuide = w29;
        ASN1ObjectIdentifier w30 = AbstractC0304o5.w("2.5.4.34");
        seeAlso = w30;
        ASN1ObjectIdentifier w31 = AbstractC0304o5.w("2.5.4.5");
        serialNumber = w31;
        ASN1ObjectIdentifier w32 = AbstractC0304o5.w("2.5.4.4");
        sn = w32;
        ASN1ObjectIdentifier w33 = AbstractC0304o5.w("2.5.4.8");
        st = w33;
        ASN1ObjectIdentifier w34 = AbstractC0304o5.w("2.5.4.9");
        street = w34;
        ASN1ObjectIdentifier w35 = AbstractC0304o5.w("2.5.4.20");
        telephoneNumber = w35;
        ASN1ObjectIdentifier w36 = AbstractC0304o5.w("2.5.4.22");
        teletexTerminalIdentifier = w36;
        ASN1ObjectIdentifier w37 = AbstractC0304o5.w("2.5.4.21");
        telexNumber = w37;
        ASN1ObjectIdentifier w38 = AbstractC0304o5.w("2.5.4.12");
        title = w38;
        ASN1ObjectIdentifier w39 = AbstractC0304o5.w("0.9.2342.19200300.100.1.1");
        uid = w39;
        ASN1ObjectIdentifier w40 = AbstractC0304o5.w("2.5.4.50");
        uniqueMember = w40;
        ASN1ObjectIdentifier w41 = AbstractC0304o5.w("2.5.4.35");
        userPassword = w41;
        ASN1ObjectIdentifier w42 = AbstractC0304o5.w("2.5.4.24");
        x121Address = w42;
        ASN1ObjectIdentifier w43 = AbstractC0304o5.w("2.5.4.45");
        x500UniqueIdentifier = w43;
        Hashtable hashtable = new Hashtable();
        DefaultSymbols = hashtable;
        Hashtable hashtable2 = new Hashtable();
        DefaultLookUp = hashtable2;
        hashtable.put(w, "businessCategory");
        hashtable.put(w2, "c");
        hashtable.put(w3, "cn");
        hashtable.put(w4, "dc");
        hashtable.put(w5, "description");
        hashtable.put(w6, "destinationIndicator");
        hashtable.put(w7, "distinguishedName");
        hashtable.put(w8, "dnQualifier");
        hashtable.put(w9, "enhancedSearchGuide");
        hashtable.put(w10, "facsimileTelephoneNumber");
        hashtable.put(w11, "generationQualifier");
        hashtable.put(w12, "givenName");
        hashtable.put(w13, "houseIdentifier");
        hashtable.put(w14, "initials");
        hashtable.put(w15, "internationalISDNNumber");
        hashtable.put(w16, "l");
        hashtable.put(w17, "member");
        hashtable.put(w18, "name");
        hashtable.put(w19, "o");
        hashtable.put(w20, "ou");
        hashtable.put(w21, "owner");
        hashtable.put(w22, "physicalDeliveryOfficeName");
        hashtable.put(w23, "postalAddress");
        hashtable.put(w24, "postalCode");
        hashtable.put(w25, "postOfficeBox");
        hashtable.put(w26, "preferredDeliveryMethod");
        hashtable.put(w27, "registeredAddress");
        hashtable.put(w28, "roleOccupant");
        hashtable.put(w29, "searchGuide");
        hashtable.put(w30, "seeAlso");
        hashtable.put(w31, "serialNumber");
        hashtable.put(w32, "sn");
        hashtable.put(w33, "st");
        hashtable.put(w34, "street");
        hashtable.put(w35, "telephoneNumber");
        hashtable.put(w36, "teletexTerminalIdentifier");
        hashtable.put(w37, "telexNumber");
        hashtable.put(w38, "title");
        hashtable.put(w39, "uid");
        hashtable.put(w40, "uniqueMember");
        hashtable.put(w41, "userPassword");
        hashtable.put(w42, "x121Address");
        hashtable.put(w43, "x500UniqueIdentifier");
        hashtable2.put("businesscategory", w);
        hashtable2.put("c", w2);
        hashtable2.put("cn", w3);
        hashtable2.put("dc", w4);
        hashtable2.put("description", w5);
        hashtable2.put("destinationindicator", w6);
        hashtable2.put("distinguishedname", w7);
        hashtable2.put("dnqualifier", w8);
        hashtable2.put("enhancedsearchguide", w9);
        hashtable2.put("facsimiletelephonenumber", w10);
        hashtable2.put("generationqualifier", w11);
        hashtable2.put("givenname", w12);
        hashtable2.put("houseidentifier", w13);
        hashtable2.put("initials", w14);
        hashtable2.put("internationalisdnnumber", w15);
        hashtable2.put("l", w16);
        hashtable2.put("member", w17);
        hashtable2.put("name", w18);
        hashtable2.put("o", w19);
        hashtable2.put("ou", w20);
        hashtable2.put("owner", w21);
        hashtable2.put("physicaldeliveryofficename", w22);
        hashtable2.put("postaladdress", w23);
        hashtable2.put("postalcode", w24);
        hashtable2.put("postofficebox", w25);
        hashtable2.put("preferreddeliverymethod", w26);
        hashtable2.put("registeredaddress", w27);
        hashtable2.put("roleoccupant", w28);
        hashtable2.put("searchguide", w29);
        hashtable2.put("seealso", w30);
        hashtable2.put("serialnumber", w31);
        hashtable2.put("sn", w32);
        hashtable2.put("st", w33);
        hashtable2.put("street", w34);
        hashtable2.put("telephonenumber", w35);
        hashtable2.put("teletexterminalidentifier", w36);
        hashtable2.put("telexnumber", w37);
        hashtable2.put("title", w38);
        hashtable2.put("uid", w39);
        hashtable2.put("uniquemember", w40);
        hashtable2.put("userpassword", w41);
        hashtable2.put("x121address", w42);
        hashtable2.put("x500uniqueidentifier", w43);
        INSTANCE = new RFC4519Style();
    }

    @Override // org.bouncycastle.asn1.x500.X500NameStyle
    public ASN1ObjectIdentifier attrNameToOID(String str) {
        return IETFUtils.decodeAttrName(str, this.defaultLookUp);
    }

    @Override // org.bouncycastle.asn1.x500.style.AbstractX500NameStyle
    public ASN1Encodable encodeStringValue(ASN1ObjectIdentifier aSN1ObjectIdentifier, String str) {
        return aSN1ObjectIdentifier.equals((ASN1Primitive) dc) ? new DERIA5String(str) : (aSN1ObjectIdentifier.equals((ASN1Primitive) c) || aSN1ObjectIdentifier.equals((ASN1Primitive) serialNumber) || aSN1ObjectIdentifier.equals((ASN1Primitive) dnQualifier) || aSN1ObjectIdentifier.equals((ASN1Primitive) telephoneNumber)) ? new DERPrintableString(str) : super.encodeStringValue(aSN1ObjectIdentifier, str);
    }

    @Override // org.bouncycastle.asn1.x500.X500NameStyle
    public RDN[] fromString(String str) {
        RDN[] rDNsFromString = IETFUtils.rDNsFromString(str, this);
        RDN[] rdnArr = new RDN[rDNsFromString.length];
        for (int i = 0; i != rDNsFromString.length; i++) {
            rdnArr[(r0 - i) - 1] = rDNsFromString[i];
        }
        return rdnArr;
    }

    @Override // org.bouncycastle.asn1.x500.X500NameStyle
    public String[] oidToAttrNames(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        return IETFUtils.findAttrNamesForOID(aSN1ObjectIdentifier, this.defaultLookUp);
    }

    @Override // org.bouncycastle.asn1.x500.X500NameStyle
    public String oidToDisplayName(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        return (String) this.defaultSymbols.get(aSN1ObjectIdentifier);
    }

    @Override // org.bouncycastle.asn1.x500.X500NameStyle
    public String toString(X500Name x500Name) {
        StringBuffer stringBuffer = new StringBuffer();
        RDN[] rDNs = x500Name.getRDNs();
        boolean z = true;
        for (int length = rDNs.length - 1; length >= 0; length--) {
            if (z) {
                z = false;
            } else {
                stringBuffer.append(',');
            }
            IETFUtils.appendRDN(stringBuffer, rDNs[length], this.defaultSymbols);
        }
        return stringBuffer.toString();
    }
}
