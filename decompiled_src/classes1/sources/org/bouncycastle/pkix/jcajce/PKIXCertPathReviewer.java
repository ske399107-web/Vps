package org.bouncycastle.pkix.jcajce;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.URL;
import java.security.GeneralSecurityException;
import java.security.PublicKey;
import java.security.cert.CertPath;
import java.security.cert.CertPathValidatorException;
import java.security.cert.Certificate;
import java.security.cert.CertificateFactory;
import java.security.cert.PKIXCertPathChecker;
import java.security.cert.PKIXParameters;
import java.security.cert.PolicyNode;
import java.security.cert.TrustAnchor;
import java.security.cert.X509CRL;
import java.security.cert.X509CertSelector;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.Vector;
import javax.security.auth.x500.X500Principal;
import org.bouncycastle.asn1.ASN1IA5String;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.x509.AccessDescription;
import org.bouncycastle.asn1.x509.AuthorityInformationAccess;
import org.bouncycastle.asn1.x509.AuthorityKeyIdentifier;
import org.bouncycastle.asn1.x509.BasicConstraints;
import org.bouncycastle.asn1.x509.CRLDistPoint;
import org.bouncycastle.asn1.x509.DistributionPoint;
import org.bouncycastle.asn1.x509.DistributionPointName;
import org.bouncycastle.asn1.x509.Extension;
import org.bouncycastle.asn1.x509.GeneralName;
import org.bouncycastle.asn1.x509.GeneralNames;
import org.bouncycastle.asn1.x509.GeneralSubtree;
import org.bouncycastle.asn1.x509.NameConstraints;
import org.bouncycastle.asn1.x509.qualified.ETSIQCObjectIdentifiers;
import org.bouncycastle.asn1.x509.qualified.MonetaryValue;
import org.bouncycastle.asn1.x509.qualified.QCStatement;
import org.bouncycastle.asn1.x509.qualified.RFC3739QCObjectIdentifiers;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import org.bouncycastle.pkix.PKIXNameConstraintValidator;
import org.bouncycastle.pkix.PKIXNameConstraintValidatorException;
import org.bouncycastle.pkix.util.ErrorBundle;
import org.bouncycastle.pkix.util.filter.TrustedInput;
import org.bouncycastle.pkix.util.filter.UntrustedInput;
import org.bouncycastle.util.Integers;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class PKIXCertPathReviewer extends CertPathValidatorUtilities {
    private static final int NAME_CHECK_MAX = 1024;
    private static final String RESOURCE_NAME = "org.bouncycastle.pkix.CertPathReviewerMessages";
    protected CertPath certPath;
    protected List certs;
    protected Date currentDate;
    protected List[] errors;
    private boolean initialized;
    protected int n;
    protected List[] notifications;
    protected PKIXParameters pkixParams;
    protected PolicyNode policyTree;
    protected PublicKey subjectPublicKey;
    protected TrustAnchor trustAnchor;
    protected Date validDate;
    private static final String QC_STATEMENT = Extension.qCStatements.getId();
    private static final String CRL_DIST_POINTS = Extension.cRLDistributionPoints.getId();
    private static final String AUTH_INFO_ACCESS = Extension.authorityInfoAccess.getId();

    public PKIXCertPathReviewer() {
    }

    private String IPtoString(byte[] bArr) {
        try {
            return InetAddress.getByAddress(bArr).getHostAddress();
        } catch (Exception unused) {
            StringBuffer stringBuffer = new StringBuffer();
            for (int i = 0; i != bArr.length; i++) {
                stringBuffer.append(Integer.toHexString(bArr[i] & 255));
                stringBuffer.append(' ');
            }
            return stringBuffer.toString();
        }
    }

    private void checkCriticalExtensions() {
        List<PKIXCertPathChecker> certPathCheckers = this.pkixParams.getCertPathCheckers();
        Iterator<PKIXCertPathChecker> it = certPathCheckers.iterator();
        while (it.hasNext()) {
            try {
                try {
                    it.next().init(false);
                } catch (CertPathValidatorException e) {
                    throw new CertPathReviewerException(createErrorBundle("CertPathReviewer.certPathCheckerError", new Object[]{e.getMessage(), e, e.getClass().getName()}), e);
                }
            } catch (CertPathReviewerException e2) {
                addError(e2.getErrorMessage(), e2.getIndex());
                return;
            }
        }
        for (int size = this.certs.size() - 1; size >= 0; size--) {
            X509Certificate x509Certificate = (X509Certificate) this.certs.get(size);
            Set<String> criticalExtensionOIDs = x509Certificate.getCriticalExtensionOIDs();
            if (criticalExtensionOIDs != null && !criticalExtensionOIDs.isEmpty()) {
                criticalExtensionOIDs.remove(CertPathValidatorUtilities.KEY_USAGE);
                criticalExtensionOIDs.remove(CertPathValidatorUtilities.CERTIFICATE_POLICIES);
                criticalExtensionOIDs.remove(CertPathValidatorUtilities.POLICY_MAPPINGS);
                criticalExtensionOIDs.remove(CertPathValidatorUtilities.INHIBIT_ANY_POLICY);
                criticalExtensionOIDs.remove(CertPathValidatorUtilities.ISSUING_DISTRIBUTION_POINT);
                criticalExtensionOIDs.remove(CertPathValidatorUtilities.DELTA_CRL_INDICATOR);
                criticalExtensionOIDs.remove(CertPathValidatorUtilities.POLICY_CONSTRAINTS);
                criticalExtensionOIDs.remove(CertPathValidatorUtilities.BASIC_CONSTRAINTS);
                criticalExtensionOIDs.remove(CertPathValidatorUtilities.SUBJECT_ALTERNATIVE_NAME);
                criticalExtensionOIDs.remove(CertPathValidatorUtilities.NAME_CONSTRAINTS);
                if (size == 0) {
                    criticalExtensionOIDs.remove(Extension.extendedKeyUsage.getId());
                }
                String str = QC_STATEMENT;
                if (criticalExtensionOIDs.contains(str) && processQcStatements(x509Certificate, size)) {
                    criticalExtensionOIDs.remove(str);
                }
                Iterator<PKIXCertPathChecker> it2 = certPathCheckers.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().check(x509Certificate, criticalExtensionOIDs);
                    } catch (CertPathValidatorException e3) {
                        throw new CertPathReviewerException(createErrorBundle("CertPathReviewer.criticalExtensionError", new Object[]{e3.getMessage(), e3, e3.getClass().getName()}), e3.getCause(), this.certPath, size);
                    }
                }
                if (!criticalExtensionOIDs.isEmpty()) {
                    Iterator<String> it3 = criticalExtensionOIDs.iterator();
                    while (it3.hasNext()) {
                        addError(createErrorBundle("CertPathReviewer.unknownCriticalExt", new Object[]{new ASN1ObjectIdentifier(it3.next())}), size);
                    }
                }
            }
        }
    }

    private void checkNameConstraints() {
        PKIXNameConstraintValidator pKIXNameConstraintValidator = new PKIXNameConstraintValidator();
        try {
            for (int size = this.certs.size() - 1; size > 0; size--) {
                X509Certificate x509Certificate = (X509Certificate) this.certs.get(size);
                if (!CertPathValidatorUtilities.isSelfIssued(x509Certificate)) {
                    X500Principal subjectPrincipal = CertPathValidatorUtilities.getSubjectPrincipal(x509Certificate);
                    try {
                        ASN1Sequence aSN1Sequence = (ASN1Sequence) new ASN1InputStream(new ByteArrayInputStream(subjectPrincipal.getEncoded())).readObject();
                        try {
                            pKIXNameConstraintValidator.checkPermittedDN(aSN1Sequence);
                            try {
                                pKIXNameConstraintValidator.checkExcludedDN(aSN1Sequence);
                                try {
                                    ASN1Sequence aSN1Sequence2 = (ASN1Sequence) CertPathValidatorUtilities.getExtensionValue(x509Certificate, CertPathValidatorUtilities.SUBJECT_ALTERNATIVE_NAME);
                                    if (aSN1Sequence2 != null) {
                                        if (aSN1Sequence2.size() > 1024) {
                                            throw new CertPathReviewerException(createErrorBundle("CertPathReviewer.subjAltNameExtError"), this.certPath, size);
                                        }
                                        for (int i = 0; i < aSN1Sequence2.size(); i++) {
                                            GeneralName generalName = GeneralName.getInstance(aSN1Sequence2.getObjectAt(i));
                                            try {
                                                pKIXNameConstraintValidator.checkPermitted(generalName);
                                                pKIXNameConstraintValidator.checkExcluded(generalName);
                                            } catch (PKIXNameConstraintValidatorException e) {
                                                throw new CertPathReviewerException(createErrorBundle("CertPathReviewer.notPermittedEmail", new Object[]{new UntrustedInput(generalName)}), e, this.certPath, size);
                                            }
                                        }
                                    }
                                } catch (AnnotatedException e2) {
                                    throw new CertPathReviewerException(createErrorBundle("CertPathReviewer.subjAltNameExtError"), e2, this.certPath, size);
                                }
                            } catch (PKIXNameConstraintValidatorException e3) {
                                throw new CertPathReviewerException(createErrorBundle("CertPathReviewer.excludedDN", new Object[]{new UntrustedInput(subjectPrincipal.getName())}), e3, this.certPath, size);
                            }
                        } catch (PKIXNameConstraintValidatorException e4) {
                            throw new CertPathReviewerException(createErrorBundle("CertPathReviewer.notPermittedDN", new Object[]{new UntrustedInput(subjectPrincipal.getName())}), e4, this.certPath, size);
                        }
                    } catch (IOException e5) {
                        throw new CertPathReviewerException(createErrorBundle("CertPathReviewer.ncSubjectNameError", new Object[]{new UntrustedInput(subjectPrincipal)}), e5, this.certPath, size);
                    }
                }
                try {
                    ASN1Sequence aSN1Sequence3 = (ASN1Sequence) CertPathValidatorUtilities.getExtensionValue(x509Certificate, CertPathValidatorUtilities.NAME_CONSTRAINTS);
                    if (aSN1Sequence3 != null) {
                        NameConstraints nameConstraints = NameConstraints.getInstance(aSN1Sequence3);
                        GeneralSubtree[] permittedSubtrees = nameConstraints.getPermittedSubtrees();
                        if (permittedSubtrees != null) {
                            pKIXNameConstraintValidator.intersectPermittedSubtree(permittedSubtrees);
                        }
                        GeneralSubtree[] excludedSubtrees = nameConstraints.getExcludedSubtrees();
                        if (excludedSubtrees != null) {
                            for (int i2 = 0; i2 != excludedSubtrees.length; i2++) {
                                pKIXNameConstraintValidator.addExcludedSubtree(excludedSubtrees[i2]);
                            }
                        }
                    }
                } catch (AnnotatedException e6) {
                    throw new CertPathReviewerException(createErrorBundle("CertPathReviewer.ncExtError"), e6, this.certPath, size);
                }
            }
        } catch (CertPathReviewerException e7) {
            addError(e7.getErrorMessage(), e7.getIndex());
        }
    }

    private void checkPathLength() {
        BasicConstraints basicConstraints;
        ASN1Integer pathLenConstraintInteger;
        int i = this.n;
        int i2 = 0;
        for (int size = this.certs.size() - 1; size > 0; size--) {
            X509Certificate x509Certificate = (X509Certificate) this.certs.get(size);
            if (!CertPathValidatorUtilities.isSelfIssued(x509Certificate)) {
                if (i <= 0) {
                    addError(createErrorBundle("CertPathReviewer.pathLengthExtended"));
                }
                i--;
                i2++;
            }
            try {
                basicConstraints = BasicConstraints.getInstance(CertPathValidatorUtilities.getExtensionValue(x509Certificate, CertPathValidatorUtilities.BASIC_CONSTRAINTS));
            } catch (AnnotatedException unused) {
                addError(createErrorBundle("CertPathReviewer.processLengthConstError"), size);
                basicConstraints = null;
            }
            if (basicConstraints != null && basicConstraints.isCA() && (pathLenConstraintInteger = basicConstraints.getPathLenConstraintInteger()) != null) {
                i = Math.min(i, pathLenConstraintInteger.intPositiveValueExact());
            }
        }
        addNotification(createErrorBundle("CertPathReviewer.totalPathLength", new Object[]{Integers.valueOf(i2)}));
    }

    /* JADX WARN: Code restructure failed: missing block: B:279:0x0415, code lost:
    
        r27 = r0;
        r26 = r3;
        r28 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:280:0x0421, code lost:
    
        if (org.bouncycastle.pkix.jcajce.CertPathValidatorUtilities.isSelfIssued(r4) != false) goto L327;
     */
    /* JADX WARN: Code restructure failed: missing block: B:281:0x0423, code lost:
    
        if (r8 <= 0) goto L327;
     */
    /* JADX WARN: Code restructure failed: missing block: B:282:0x0425, code lost:
    
        r8 = r8 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:284:0x0427, code lost:
    
        r0 = (org.bouncycastle.asn1.ASN1Sequence) org.bouncycastle.pkix.jcajce.CertPathValidatorUtilities.getExtensionValue(r4, org.bouncycastle.pkix.jcajce.CertPathValidatorUtilities.POLICY_CONSTRAINTS);
     */
    /* JADX WARN: Code restructure failed: missing block: B:285:0x042f, code lost:
    
        if (r0 == null) goto L225;
     */
    /* JADX WARN: Code restructure failed: missing block: B:286:0x0431, code lost:
    
        r0 = r0.getObjects();
        r14 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:288:0x043a, code lost:
    
        if (r0.hasMoreElements() == false) goto L391;
     */
    /* JADX WARN: Code restructure failed: missing block: B:289:0x043c, code lost:
    
        r2 = (org.bouncycastle.asn1.ASN1TaggedObject) r0.nextElement();
     */
    /* JADX WARN: Code restructure failed: missing block: B:290:0x0446, code lost:
    
        if (r2.getTagNo() == 0) goto L390;
     */
    /* JADX WARN: Code restructure failed: missing block: B:293:0x0453, code lost:
    
        if (org.bouncycastle.asn1.ASN1Integer.getInstance(r2, false).intValueExact() != 0) goto L395;
     */
    /* JADX WARN: Code restructure failed: missing block: B:295:0x0455, code lost:
    
        r14 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:303:0x0457, code lost:
    
        r3 = 0;
        r8 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:305:0x045d, code lost:
    
        if (r28 != null) goto L233;
     */
    /* JADX WARN: Code restructure failed: missing block: B:307:0x0465, code lost:
    
        if (r34.pkixParams.isExplicitPolicyRequired() != false) goto L231;
     */
    /* JADX WARN: Code restructure failed: missing block: B:308:0x0467, code lost:
    
        r9 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:309:0x05ab, code lost:
    
        if (r8 > 0) goto L422;
     */
    /* JADX WARN: Code restructure failed: missing block: B:310:0x05ad, code lost:
    
        if (r9 == null) goto L306;
     */
    /* JADX WARN: Code restructure failed: missing block: B:312:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:314:0x05bb, code lost:
    
        throw new org.bouncycastle.pkix.jcajce.CertPathReviewerException(createErrorBundle("CertPathReviewer.invalidPolicy"));
     */
    /* JADX WARN: Code restructure failed: missing block: B:315:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:317:0x0475, code lost:
    
        throw new org.bouncycastle.pkix.jcajce.CertPathReviewerException(createErrorBundle("CertPathReviewer.explicitPolicy"), r34.certPath, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:319:0x047a, code lost:
    
        if (org.bouncycastle.pkix.jcajce.CertPathValidatorUtilities.isAnyPolicy(r27) == false) goto L270;
     */
    /* JADX WARN: Code restructure failed: missing block: B:321:0x0482, code lost:
    
        if (r34.pkixParams.isExplicitPolicyRequired() == false) goto L269;
     */
    /* JADX WARN: Code restructure failed: missing block: B:323:0x0488, code lost:
    
        if (r13.isEmpty() != false) goto L267;
     */
    /* JADX WARN: Code restructure failed: missing block: B:324:0x048a, code lost:
    
        r0 = new java.util.HashSet();
        r14 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:325:0x0492, code lost:
    
        if (r14 >= r26) goto L398;
     */
    /* JADX WARN: Code restructure failed: missing block: B:326:0x0494, code lost:
    
        r4 = r5[r14];
        r6 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:328:0x049b, code lost:
    
        if (r6 >= r4.size()) goto L399;
     */
    /* JADX WARN: Code restructure failed: missing block: B:329:0x049d, code lost:
    
        r9 = (org.bouncycastle.pkix.jcajce.PKIXPolicyNode) r4.get(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:330:0x04ab, code lost:
    
        if (org.bouncycastle.jce.provider.RFC3280CertPathUtilities.ANY_POLICY.equals(r9.getValidPolicy()) == false) goto L400;
     */
    /* JADX WARN: Code restructure failed: missing block: B:331:0x04ad, code lost:
    
        r9 = r9.getChildren();
     */
    /* JADX WARN: Code restructure failed: missing block: B:333:0x04b5, code lost:
    
        if (r9.hasNext() == false) goto L401;
     */
    /* JADX WARN: Code restructure failed: missing block: B:334:0x04b7, code lost:
    
        r0.add(r9.next());
     */
    /* JADX WARN: Code restructure failed: missing block: B:336:0x04bf, code lost:
    
        r6 = r6 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:339:0x04c2, code lost:
    
        r14 = r14 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:341:0x04c5, code lost:
    
        r0 = r0.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:343:0x04cd, code lost:
    
        if (r0.hasNext() == false) goto L402;
     */
    /* JADX WARN: Code restructure failed: missing block: B:344:0x04cf, code lost:
    
        r13.contains(((org.bouncycastle.pkix.jcajce.PKIXPolicyNode) r0.next()).getValidPolicy());
     */
    /* JADX WARN: Code restructure failed: missing block: B:346:0x04dd, code lost:
    
        r0 = r34.n - 1;
        r15 = r28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:347:0x04e3, code lost:
    
        if (r0 < 0) goto L403;
     */
    /* JADX WARN: Code restructure failed: missing block: B:348:0x04e5, code lost:
    
        r2 = r5[r0];
        r14 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:350:0x04ec, code lost:
    
        if (r14 >= r2.size()) goto L404;
     */
    /* JADX WARN: Code restructure failed: missing block: B:351:0x04ee, code lost:
    
        r4 = (org.bouncycastle.pkix.jcajce.PKIXPolicyNode) r2.get(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:352:0x04f8, code lost:
    
        if (r4.hasChildren() != false) goto L406;
     */
    /* JADX WARN: Code restructure failed: missing block: B:353:0x04fa, code lost:
    
        r15 = org.bouncycastle.pkix.jcajce.CertPathValidatorUtilities.removePolicyNode(r15, r5, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:355:0x04fe, code lost:
    
        r14 = r14 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:358:0x0501, code lost:
    
        r0 = r0 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:360:0x0504, code lost:
    
        r9 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:362:0x0512, code lost:
    
        throw new org.bouncycastle.pkix.jcajce.CertPathReviewerException(createErrorBundle("CertPathReviewer.explicitPolicy"), r34.certPath, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:363:0x0513, code lost:
    
        r9 = r28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:364:0x0517, code lost:
    
        r0 = new java.util.HashSet();
        r14 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:365:0x051f, code lost:
    
        if (r14 >= r26) goto L407;
     */
    /* JADX WARN: Code restructure failed: missing block: B:366:0x0521, code lost:
    
        r4 = r5[r14];
        r6 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:368:0x0528, code lost:
    
        if (r6 >= r4.size()) goto L408;
     */
    /* JADX WARN: Code restructure failed: missing block: B:369:0x052a, code lost:
    
        r9 = (org.bouncycastle.pkix.jcajce.PKIXPolicyNode) r4.get(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:370:0x0538, code lost:
    
        if (org.bouncycastle.jce.provider.RFC3280CertPathUtilities.ANY_POLICY.equals(r9.getValidPolicy()) == false) goto L409;
     */
    /* JADX WARN: Code restructure failed: missing block: B:371:0x053a, code lost:
    
        r9 = r9.getChildren();
     */
    /* JADX WARN: Code restructure failed: missing block: B:373:0x0542, code lost:
    
        if (r9.hasNext() == false) goto L410;
     */
    /* JADX WARN: Code restructure failed: missing block: B:374:0x0544, code lost:
    
        r10 = (org.bouncycastle.pkix.jcajce.PKIXPolicyNode) r9.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:375:0x0552, code lost:
    
        if (org.bouncycastle.jce.provider.RFC3280CertPathUtilities.ANY_POLICY.equals(r10.getValidPolicy()) != false) goto L413;
     */
    /* JADX WARN: Code restructure failed: missing block: B:377:0x0554, code lost:
    
        r0.add(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:382:0x0558, code lost:
    
        r6 = r6 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:385:0x055b, code lost:
    
        r14 = r14 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:387:0x055e, code lost:
    
        r0 = r0.iterator();
        r15 = r28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:389:0x0568, code lost:
    
        if (r0.hasNext() == false) goto L415;
     */
    /* JADX WARN: Code restructure failed: missing block: B:390:0x056a, code lost:
    
        r2 = (org.bouncycastle.pkix.jcajce.PKIXPolicyNode) r0.next();
        r6 = r27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:391:0x057a, code lost:
    
        if (r6.contains(r2.getValidPolicy()) != false) goto L417;
     */
    /* JADX WARN: Code restructure failed: missing block: B:392:0x057c, code lost:
    
        r15 = org.bouncycastle.pkix.jcajce.CertPathValidatorUtilities.removePolicyNode(r15, r5, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:394:0x0581, code lost:
    
        r27 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:397:0x0584, code lost:
    
        if (r15 == null) goto L266;
     */
    /* JADX WARN: Code restructure failed: missing block: B:398:0x0586, code lost:
    
        r0 = r34.n - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:399:0x058a, code lost:
    
        if (r0 < 0) goto L418;
     */
    /* JADX WARN: Code restructure failed: missing block: B:400:0x058c, code lost:
    
        r2 = r5[r0];
        r14 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:402:0x0593, code lost:
    
        if (r14 >= r2.size()) goto L419;
     */
    /* JADX WARN: Code restructure failed: missing block: B:403:0x0595, code lost:
    
        r4 = (org.bouncycastle.pkix.jcajce.PKIXPolicyNode) r2.get(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:404:0x059f, code lost:
    
        if (r4.hasChildren() != false) goto L421;
     */
    /* JADX WARN: Code restructure failed: missing block: B:405:0x05a1, code lost:
    
        r15 = org.bouncycastle.pkix.jcajce.CertPathValidatorUtilities.removePolicyNode(r15, r5, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:407:0x05a5, code lost:
    
        r14 = r14 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:410:0x05a8, code lost:
    
        r0 = r0 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:413:0x045a, code lost:
    
        r3 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:415:0x05c7, code lost:
    
        throw new org.bouncycastle.pkix.jcajce.CertPathReviewerException(createErrorBundle("CertPathReviewer.policyConstExtError"), r34.certPath, r12);
     */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0389 A[Catch: CertPathReviewerException -> 0x00da, AnnotatedException -> 0x03dd, TryCatch #8 {AnnotatedException -> 0x03dd, blocks: (B:172:0x037f, B:174:0x0389, B:175:0x038d, B:177:0x0393, B:191:0x03a3, B:180:0x03b0), top: B:171:0x037f, outer: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:224:0x0139 A[Catch: CertPathReviewerException -> 0x00da, TRY_LEAVE, TryCatch #4 {CertPathReviewerException -> 0x00da, blocks: (B:15:0x006f, B:19:0x007d, B:21:0x0088, B:25:0x0096, B:26:0x00a1, B:28:0x00a7, B:31:0x00c8, B:32:0x00d0, B:34:0x00d6, B:40:0x00de, B:41:0x00e9, B:47:0x00f5, B:50:0x00fc, B:51:0x0105, B:53:0x010b, B:56:0x0115, B:62:0x011c, B:64:0x0120, B:69:0x020a, B:71:0x0210, B:72:0x0213, B:74:0x0219, B:76:0x0225, B:83:0x022d, B:81:0x0230, B:87:0x0233, B:89:0x0239, B:90:0x0242, B:92:0x0248, B:101:0x026b, B:102:0x0276, B:103:0x0277, B:109:0x027b, B:111:0x0283, B:112:0x0287, B:114:0x028d, B:117:0x02ad, B:119:0x02b7, B:121:0x02ba, B:122:0x02c5, B:124:0x02c6, B:125:0x02d1, B:128:0x02d4, B:129:0x02e1, B:131:0x02e7, B:133:0x030d, B:135:0x0325, B:136:0x031c, B:139:0x032c, B:140:0x0332, B:142:0x0338, B:145:0x0340, B:159:0x0362, B:154:0x0346, B:155:0x0351, B:150:0x0353, B:151:0x035f, B:163:0x036a, B:172:0x037f, B:174:0x0389, B:175:0x038d, B:177:0x0393, B:191:0x03a3, B:180:0x03b0, B:201:0x03bd, B:203:0x03c7, B:107:0x03fc, B:210:0x03cf, B:211:0x03dc, B:213:0x03dd, B:214:0x03e8, B:219:0x03ea, B:220:0x03f7, B:221:0x012f, B:222:0x0133, B:224:0x0139, B:227:0x014f, B:229:0x0159, B:230:0x015e, B:232:0x0164, B:233:0x0172, B:235:0x0178, B:261:0x0184, B:245:0x0191, B:246:0x0197, B:248:0x019d, B:256:0x01b6, B:237:0x0187, B:244:0x018b, B:263:0x01ef, B:268:0x01fe, B:269:0x0209, B:276:0x0409, B:277:0x0414, B:279:0x0415, B:284:0x0427, B:286:0x0431, B:287:0x0436, B:289:0x043c, B:292:0x044a, B:306:0x045f, B:313:0x05b0, B:314:0x05bb, B:316:0x046a, B:317:0x0475, B:318:0x0476, B:320:0x047c, B:322:0x0484, B:324:0x048a, B:326:0x0494, B:327:0x0497, B:329:0x049d, B:331:0x04ad, B:332:0x04b1, B:334:0x04b7, B:336:0x04bf, B:339:0x04c2, B:341:0x04c5, B:342:0x04c9, B:344:0x04cf, B:346:0x04dd, B:348:0x04e5, B:349:0x04e8, B:351:0x04ee, B:353:0x04fa, B:355:0x04fe, B:358:0x0501, B:361:0x0507, B:362:0x0512, B:364:0x0517, B:366:0x0521, B:367:0x0524, B:369:0x052a, B:371:0x053a, B:372:0x053e, B:374:0x0544, B:377:0x0554, B:382:0x0558, B:385:0x055b, B:387:0x055e, B:388:0x0564, B:390:0x056a, B:392:0x057c, B:398:0x0586, B:400:0x058c, B:401:0x058f, B:403:0x0595, B:405:0x05a1, B:407:0x05a5, B:410:0x05a8, B:414:0x05bc, B:415:0x05c7), top: B:14:0x006f, inners: #0, #1, #2, #3, #5, #6, #7, #8, #9 }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x011c A[Catch: CertPathReviewerException -> 0x00da, TryCatch #4 {CertPathReviewerException -> 0x00da, blocks: (B:15:0x006f, B:19:0x007d, B:21:0x0088, B:25:0x0096, B:26:0x00a1, B:28:0x00a7, B:31:0x00c8, B:32:0x00d0, B:34:0x00d6, B:40:0x00de, B:41:0x00e9, B:47:0x00f5, B:50:0x00fc, B:51:0x0105, B:53:0x010b, B:56:0x0115, B:62:0x011c, B:64:0x0120, B:69:0x020a, B:71:0x0210, B:72:0x0213, B:74:0x0219, B:76:0x0225, B:83:0x022d, B:81:0x0230, B:87:0x0233, B:89:0x0239, B:90:0x0242, B:92:0x0248, B:101:0x026b, B:102:0x0276, B:103:0x0277, B:109:0x027b, B:111:0x0283, B:112:0x0287, B:114:0x028d, B:117:0x02ad, B:119:0x02b7, B:121:0x02ba, B:122:0x02c5, B:124:0x02c6, B:125:0x02d1, B:128:0x02d4, B:129:0x02e1, B:131:0x02e7, B:133:0x030d, B:135:0x0325, B:136:0x031c, B:139:0x032c, B:140:0x0332, B:142:0x0338, B:145:0x0340, B:159:0x0362, B:154:0x0346, B:155:0x0351, B:150:0x0353, B:151:0x035f, B:163:0x036a, B:172:0x037f, B:174:0x0389, B:175:0x038d, B:177:0x0393, B:191:0x03a3, B:180:0x03b0, B:201:0x03bd, B:203:0x03c7, B:107:0x03fc, B:210:0x03cf, B:211:0x03dc, B:213:0x03dd, B:214:0x03e8, B:219:0x03ea, B:220:0x03f7, B:221:0x012f, B:222:0x0133, B:224:0x0139, B:227:0x014f, B:229:0x0159, B:230:0x015e, B:232:0x0164, B:233:0x0172, B:235:0x0178, B:261:0x0184, B:245:0x0191, B:246:0x0197, B:248:0x019d, B:256:0x01b6, B:237:0x0187, B:244:0x018b, B:263:0x01ef, B:268:0x01fe, B:269:0x0209, B:276:0x0409, B:277:0x0414, B:279:0x0415, B:284:0x0427, B:286:0x0431, B:287:0x0436, B:289:0x043c, B:292:0x044a, B:306:0x045f, B:313:0x05b0, B:314:0x05bb, B:316:0x046a, B:317:0x0475, B:318:0x0476, B:320:0x047c, B:322:0x0484, B:324:0x048a, B:326:0x0494, B:327:0x0497, B:329:0x049d, B:331:0x04ad, B:332:0x04b1, B:334:0x04b7, B:336:0x04bf, B:339:0x04c2, B:341:0x04c5, B:342:0x04c9, B:344:0x04cf, B:346:0x04dd, B:348:0x04e5, B:349:0x04e8, B:351:0x04ee, B:353:0x04fa, B:355:0x04fe, B:358:0x0501, B:361:0x0507, B:362:0x0512, B:364:0x0517, B:366:0x0521, B:367:0x0524, B:369:0x052a, B:371:0x053a, B:372:0x053e, B:374:0x0544, B:377:0x0554, B:382:0x0558, B:385:0x055b, B:387:0x055e, B:388:0x0564, B:390:0x056a, B:392:0x057c, B:398:0x0586, B:400:0x058c, B:401:0x058f, B:403:0x0595, B:405:0x05a1, B:407:0x05a5, B:410:0x05a8, B:414:0x05bc, B:415:0x05c7), top: B:14:0x006f, inners: #0, #1, #2, #3, #5, #6, #7, #8, #9 }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0210 A[Catch: CertPathReviewerException -> 0x00da, TryCatch #4 {CertPathReviewerException -> 0x00da, blocks: (B:15:0x006f, B:19:0x007d, B:21:0x0088, B:25:0x0096, B:26:0x00a1, B:28:0x00a7, B:31:0x00c8, B:32:0x00d0, B:34:0x00d6, B:40:0x00de, B:41:0x00e9, B:47:0x00f5, B:50:0x00fc, B:51:0x0105, B:53:0x010b, B:56:0x0115, B:62:0x011c, B:64:0x0120, B:69:0x020a, B:71:0x0210, B:72:0x0213, B:74:0x0219, B:76:0x0225, B:83:0x022d, B:81:0x0230, B:87:0x0233, B:89:0x0239, B:90:0x0242, B:92:0x0248, B:101:0x026b, B:102:0x0276, B:103:0x0277, B:109:0x027b, B:111:0x0283, B:112:0x0287, B:114:0x028d, B:117:0x02ad, B:119:0x02b7, B:121:0x02ba, B:122:0x02c5, B:124:0x02c6, B:125:0x02d1, B:128:0x02d4, B:129:0x02e1, B:131:0x02e7, B:133:0x030d, B:135:0x0325, B:136:0x031c, B:139:0x032c, B:140:0x0332, B:142:0x0338, B:145:0x0340, B:159:0x0362, B:154:0x0346, B:155:0x0351, B:150:0x0353, B:151:0x035f, B:163:0x036a, B:172:0x037f, B:174:0x0389, B:175:0x038d, B:177:0x0393, B:191:0x03a3, B:180:0x03b0, B:201:0x03bd, B:203:0x03c7, B:107:0x03fc, B:210:0x03cf, B:211:0x03dc, B:213:0x03dd, B:214:0x03e8, B:219:0x03ea, B:220:0x03f7, B:221:0x012f, B:222:0x0133, B:224:0x0139, B:227:0x014f, B:229:0x0159, B:230:0x015e, B:232:0x0164, B:233:0x0172, B:235:0x0178, B:261:0x0184, B:245:0x0191, B:246:0x0197, B:248:0x019d, B:256:0x01b6, B:237:0x0187, B:244:0x018b, B:263:0x01ef, B:268:0x01fe, B:269:0x0209, B:276:0x0409, B:277:0x0414, B:279:0x0415, B:284:0x0427, B:286:0x0431, B:287:0x0436, B:289:0x043c, B:292:0x044a, B:306:0x045f, B:313:0x05b0, B:314:0x05bb, B:316:0x046a, B:317:0x0475, B:318:0x0476, B:320:0x047c, B:322:0x0484, B:324:0x048a, B:326:0x0494, B:327:0x0497, B:329:0x049d, B:331:0x04ad, B:332:0x04b1, B:334:0x04b7, B:336:0x04bf, B:339:0x04c2, B:341:0x04c5, B:342:0x04c9, B:344:0x04cf, B:346:0x04dd, B:348:0x04e5, B:349:0x04e8, B:351:0x04ee, B:353:0x04fa, B:355:0x04fe, B:358:0x0501, B:361:0x0507, B:362:0x0512, B:364:0x0517, B:366:0x0521, B:367:0x0524, B:369:0x052a, B:371:0x053a, B:372:0x053e, B:374:0x0544, B:377:0x0554, B:382:0x0558, B:385:0x055b, B:387:0x055e, B:388:0x0564, B:390:0x056a, B:392:0x057c, B:398:0x0586, B:400:0x058c, B:401:0x058f, B:403:0x0595, B:405:0x05a1, B:407:0x05a5, B:410:0x05a8, B:414:0x05bc, B:415:0x05c7), top: B:14:0x006f, inners: #0, #1, #2, #3, #5, #6, #7, #8, #9 }] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0239 A[Catch: CertPathReviewerException -> 0x00da, TryCatch #4 {CertPathReviewerException -> 0x00da, blocks: (B:15:0x006f, B:19:0x007d, B:21:0x0088, B:25:0x0096, B:26:0x00a1, B:28:0x00a7, B:31:0x00c8, B:32:0x00d0, B:34:0x00d6, B:40:0x00de, B:41:0x00e9, B:47:0x00f5, B:50:0x00fc, B:51:0x0105, B:53:0x010b, B:56:0x0115, B:62:0x011c, B:64:0x0120, B:69:0x020a, B:71:0x0210, B:72:0x0213, B:74:0x0219, B:76:0x0225, B:83:0x022d, B:81:0x0230, B:87:0x0233, B:89:0x0239, B:90:0x0242, B:92:0x0248, B:101:0x026b, B:102:0x0276, B:103:0x0277, B:109:0x027b, B:111:0x0283, B:112:0x0287, B:114:0x028d, B:117:0x02ad, B:119:0x02b7, B:121:0x02ba, B:122:0x02c5, B:124:0x02c6, B:125:0x02d1, B:128:0x02d4, B:129:0x02e1, B:131:0x02e7, B:133:0x030d, B:135:0x0325, B:136:0x031c, B:139:0x032c, B:140:0x0332, B:142:0x0338, B:145:0x0340, B:159:0x0362, B:154:0x0346, B:155:0x0351, B:150:0x0353, B:151:0x035f, B:163:0x036a, B:172:0x037f, B:174:0x0389, B:175:0x038d, B:177:0x0393, B:191:0x03a3, B:180:0x03b0, B:201:0x03bd, B:203:0x03c7, B:107:0x03fc, B:210:0x03cf, B:211:0x03dc, B:213:0x03dd, B:214:0x03e8, B:219:0x03ea, B:220:0x03f7, B:221:0x012f, B:222:0x0133, B:224:0x0139, B:227:0x014f, B:229:0x0159, B:230:0x015e, B:232:0x0164, B:233:0x0172, B:235:0x0178, B:261:0x0184, B:245:0x0191, B:246:0x0197, B:248:0x019d, B:256:0x01b6, B:237:0x0187, B:244:0x018b, B:263:0x01ef, B:268:0x01fe, B:269:0x0209, B:276:0x0409, B:277:0x0414, B:279:0x0415, B:284:0x0427, B:286:0x0431, B:287:0x0436, B:289:0x043c, B:292:0x044a, B:306:0x045f, B:313:0x05b0, B:314:0x05bb, B:316:0x046a, B:317:0x0475, B:318:0x0476, B:320:0x047c, B:322:0x0484, B:324:0x048a, B:326:0x0494, B:327:0x0497, B:329:0x049d, B:331:0x04ad, B:332:0x04b1, B:334:0x04b7, B:336:0x04bf, B:339:0x04c2, B:341:0x04c5, B:342:0x04c9, B:344:0x04cf, B:346:0x04dd, B:348:0x04e5, B:349:0x04e8, B:351:0x04ee, B:353:0x04fa, B:355:0x04fe, B:358:0x0501, B:361:0x0507, B:362:0x0512, B:364:0x0517, B:366:0x0521, B:367:0x0524, B:369:0x052a, B:371:0x053a, B:372:0x053e, B:374:0x0544, B:377:0x0554, B:382:0x0558, B:385:0x055b, B:387:0x055e, B:388:0x0564, B:390:0x056a, B:392:0x057c, B:398:0x0586, B:400:0x058c, B:401:0x058f, B:403:0x0595, B:405:0x05a1, B:407:0x05a5, B:410:0x05a8, B:414:0x05bc, B:415:0x05c7), top: B:14:0x006f, inners: #0, #1, #2, #3, #5, #6, #7, #8, #9 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void checkPolicy() {
        /*
            Method dump skipped, instructions count: 1492
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.pkix.jcajce.PKIXCertPathReviewer.checkPolicy():void");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(15:(2:91|92)|(4:(16:94|95|96|(12:98|99|(2:102|100)|103|104|(2:107|105)|108|109|110|111|112|113)|120|99|(1:100)|103|104|(1:105)|108|109|110|111|112|113)|111|112|113)|123|95|96|(0)|120|99|(1:100)|103|104|(1:105)|108|109|110) */
    /* JADX WARN: Can't wrap try/catch for region: R(15:32|(2:140|141)(3:34|(2:135|136)(2:36|(2:132|(1:134)))|38)|(2:39|40)|41|(19:91|92|(16:94|95|96|(12:98|99|(2:102|100)|103|104|(2:107|105)|108|109|110|111|112|113)|120|99|(1:100)|103|104|(1:105)|108|109|110|111|112|113)|123|95|96|(0)|120|99|(1:100)|103|104|(1:105)|108|109|110|111|112|113)(1:43)|(1:47)|48|(11:50|(1:54)|55|56|57|58|59|(1:61)(1:84)|63|64|(1:70))(1:90)|71|72|73|75|76|78|79) */
    /* JADX WARN: Can't wrap try/catch for region: R(16:91|92|(4:(16:94|95|96|(12:98|99|(2:102|100)|103|104|(2:107|105)|108|109|110|111|112|113)|120|99|(1:100)|103|104|(1:105)|108|109|110|111|112|113)|111|112|113)|123|95|96|(0)|120|99|(1:100)|103|104|(1:105)|108|109|110) */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x02ea, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x02eb, code lost:
    
        r17 = r6;
        r12 = r7;
        r19 = r8;
        r23 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x027a, code lost:
    
        addError(createErrorBundle("CertPathReviewer.crlAuthInfoAccError"), r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x034e, code lost:
    
        if (r1.isCA() == false) goto L133;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0396, code lost:
    
        addError(createErrorBundle("CertPathReviewer.pubKeyError"), r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0394, code lost:
    
        r9 = r23;
     */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0296 A[LOOP:1: B:100:0x0290->B:102:0x0296, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:107:0x02b7 A[LOOP:2: B:105:0x02b1->B:107:0x02b7, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:11:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x02fc  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0304  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x032b  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x037d  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0256 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0275 A[Catch: AnnotatedException -> 0x027a, TRY_LEAVE, TryCatch #9 {AnnotatedException -> 0x027a, blocks: (B:96:0x026d, B:98:0x0275), top: B:95:0x026d }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void checkSignatures() {
        /*
            Method dump skipped, instructions count: 941
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.pkix.jcajce.PKIXCertPathReviewer.checkSignatures():void");
    }

    private static ErrorBundle createErrorBundle(String str) {
        ErrorBundle errorBundle = new ErrorBundle(RESOURCE_NAME, str);
        errorBundle.setClassLoader(PKIXCertPathReviewer.class.getClassLoader());
        return errorBundle;
    }

    private X509CRL getCRL(String str) throws CertPathReviewerException {
        try {
            URL url = new URL(str);
            if (!url.getProtocol().equals("http") && !url.getProtocol().equals("https")) {
                return null;
            }
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setDoInput(true);
            httpURLConnection.connect();
            if (httpURLConnection.getResponseCode() == 200) {
                return (X509CRL) CertificateFactory.getInstance("X.509", BouncyCastleProvider.PROVIDER_NAME).generateCRL(httpURLConnection.getInputStream());
            }
            throw new Exception(httpURLConnection.getResponseMessage());
        } catch (Exception e) {
            throw new CertPathReviewerException(createErrorBundle("CertPathReviewer.loadCrlDistPointError", new Object[]{new UntrustedInput(str), e.getMessage(), e, e.getClass().getName()}));
        }
    }

    private boolean processQcStatements(X509Certificate x509Certificate, int i) {
        ErrorBundle createErrorBundle;
        String str;
        try {
            ASN1Sequence aSN1Sequence = (ASN1Sequence) CertPathValidatorUtilities.getExtensionValue(x509Certificate, QC_STATEMENT);
            boolean z = false;
            for (int i2 = 0; i2 < aSN1Sequence.size(); i2++) {
                QCStatement qCStatement = QCStatement.getInstance(aSN1Sequence.getObjectAt(i2));
                if (ETSIQCObjectIdentifiers.id_etsi_qcs_QcCompliance.equals((ASN1Primitive) qCStatement.getStatementId())) {
                    str = "CertPathReviewer.QcEuCompliance";
                } else {
                    if (!RFC3739QCObjectIdentifiers.id_qcs_pkixQCSyntax_v1.equals((ASN1Primitive) qCStatement.getStatementId())) {
                        if (ETSIQCObjectIdentifiers.id_etsi_qcs_QcSSCD.equals((ASN1Primitive) qCStatement.getStatementId())) {
                            str = "CertPathReviewer.QcSSCD";
                        } else if (ETSIQCObjectIdentifiers.id_etsi_qcs_LimiteValue.equals((ASN1Primitive) qCStatement.getStatementId())) {
                            MonetaryValue monetaryValue = MonetaryValue.getInstance(qCStatement.getStatementInfo());
                            monetaryValue.getCurrency();
                            double doubleValue = monetaryValue.getAmount().doubleValue() * Math.pow(10.0d, monetaryValue.getExponent().doubleValue());
                            createErrorBundle = monetaryValue.getCurrency().isAlphabetic() ? createErrorBundle("CertPathReviewer.QcLimitValueAlpha", new Object[]{monetaryValue.getCurrency().getAlphabetic(), new TrustedInput(new Double(doubleValue)), monetaryValue}) : createErrorBundle("CertPathReviewer.QcLimitValueNum", new Object[]{Integers.valueOf(monetaryValue.getCurrency().getNumeric()), new TrustedInput(new Double(doubleValue)), monetaryValue});
                            addNotification(createErrorBundle, i);
                        } else {
                            addNotification(createErrorBundle("CertPathReviewer.QcUnknownStatement", new Object[]{qCStatement.getStatementId(), new UntrustedInput(qCStatement)}), i);
                            z = true;
                        }
                    }
                }
                createErrorBundle = createErrorBundle(str);
                addNotification(createErrorBundle, i);
            }
            return !z;
        } catch (AnnotatedException unused) {
            addError(createErrorBundle("CertPathReviewer.QcStatementExtError"), i);
            return false;
        }
    }

    public void addError(ErrorBundle errorBundle) {
        this.errors[0].add(errorBundle);
    }

    public void addNotification(ErrorBundle errorBundle) {
        this.notifications[0].add(errorBundle);
    }

    /* JADX WARN: Removed duplicated region for block: B:168:0x0231  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0204  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x021a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void checkCRLs(java.security.cert.PKIXParameters r21, java.security.cert.X509Certificate r22, java.util.Date r23, java.security.cert.X509Certificate r24, java.security.PublicKey r25, java.util.Vector r26, int r27) throws org.bouncycastle.pkix.jcajce.CertPathReviewerException {
        /*
            Method dump skipped, instructions count: 953
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.pkix.jcajce.PKIXCertPathReviewer.checkCRLs(java.security.cert.PKIXParameters, java.security.cert.X509Certificate, java.util.Date, java.security.cert.X509Certificate, java.security.PublicKey, java.util.Vector, int):void");
    }

    public void checkRevocation(PKIXParameters pKIXParameters, X509Certificate x509Certificate, Date date, X509Certificate x509Certificate2, PublicKey publicKey, Vector vector, Vector vector2, int i) throws CertPathReviewerException {
        checkCRLs(pKIXParameters, x509Certificate, date, x509Certificate2, publicKey, vector, i);
    }

    public void doChecks() {
        if (!this.initialized) {
            throw new IllegalStateException("Object not initialized. Call init() first.");
        }
        if (this.notifications != null) {
            return;
        }
        int i = this.n;
        this.notifications = new List[i + 1];
        this.errors = new List[i + 1];
        int i2 = 0;
        while (true) {
            List[] listArr = this.notifications;
            if (i2 >= listArr.length) {
                checkSignatures();
                checkNameConstraints();
                checkPathLength();
                checkPolicy();
                checkCriticalExtensions();
                return;
            }
            listArr[i2] = new ArrayList();
            this.errors[i2] = new ArrayList();
            i2++;
        }
    }

    public Vector getCRLDistUrls(CRLDistPoint cRLDistPoint) {
        Vector vector = new Vector();
        if (cRLDistPoint != null) {
            for (DistributionPoint distributionPoint : cRLDistPoint.getDistributionPoints()) {
                DistributionPointName distributionPoint2 = distributionPoint.getDistributionPoint();
                if (distributionPoint2.getType() == 0) {
                    GeneralName[] names = GeneralNames.getInstance(distributionPoint2.getName()).getNames();
                    for (int i = 0; i < names.length; i++) {
                        if (names[i].getTagNo() == 6) {
                            vector.add(((ASN1IA5String) names[i].getName()).getString());
                        }
                    }
                }
            }
        }
        return vector;
    }

    public CertPath getCertPath() {
        return this.certPath;
    }

    public int getCertPathSize() {
        return this.n;
    }

    public List getErrors(int i) {
        doChecks();
        return this.errors[i + 1];
    }

    public List getNotifications(int i) {
        doChecks();
        return this.notifications[i + 1];
    }

    public Vector getOCSPUrls(AuthorityInformationAccess authorityInformationAccess) {
        Vector vector = new Vector();
        if (authorityInformationAccess != null) {
            AccessDescription[] accessDescriptions = authorityInformationAccess.getAccessDescriptions();
            for (int i = 0; i < accessDescriptions.length; i++) {
                if (accessDescriptions[i].getAccessMethod().equals((ASN1Primitive) AccessDescription.id_ad_ocsp)) {
                    GeneralName accessLocation = accessDescriptions[i].getAccessLocation();
                    if (accessLocation.getTagNo() == 6) {
                        vector.add(((ASN1IA5String) accessLocation.getName()).getString());
                    }
                }
            }
        }
        return vector;
    }

    public PolicyNode getPolicyTree() {
        doChecks();
        return this.policyTree;
    }

    public PublicKey getSubjectPublicKey() {
        doChecks();
        return this.subjectPublicKey;
    }

    public TrustAnchor getTrustAnchor() {
        doChecks();
        return this.trustAnchor;
    }

    public Collection getTrustAnchors(X509Certificate x509Certificate, Set set) throws CertPathReviewerException {
        ArrayList arrayList = new ArrayList();
        Iterator it = set.iterator();
        X509CertSelector x509CertSelector = new X509CertSelector();
        try {
            x509CertSelector.setSubject(CertPathValidatorUtilities.getEncodedIssuerPrincipal(x509Certificate).getEncoded());
            byte[] extensionValue = x509Certificate.getExtensionValue(Extension.authorityKeyIdentifier.getId());
            if (extensionValue != null) {
                AuthorityKeyIdentifier authorityKeyIdentifier = AuthorityKeyIdentifier.getInstance(ASN1Primitive.fromByteArray(((ASN1OctetString) ASN1Primitive.fromByteArray(extensionValue)).getOctets()));
                if (authorityKeyIdentifier.getAuthorityCertSerialNumber() != null) {
                    x509CertSelector.setSerialNumber(authorityKeyIdentifier.getAuthorityCertSerialNumber());
                } else {
                    byte[] keyIdentifier = authorityKeyIdentifier.getKeyIdentifier();
                    if (keyIdentifier != null) {
                        x509CertSelector.setSubjectKeyIdentifier(new DEROctetString(keyIdentifier).getEncoded());
                    }
                }
            }
            while (it.hasNext()) {
                TrustAnchor trustAnchor = (TrustAnchor) it.next();
                if (trustAnchor.getTrustedCert() != null) {
                    if (x509CertSelector.match(trustAnchor.getTrustedCert())) {
                        arrayList.add(trustAnchor);
                    }
                } else if (trustAnchor.getCAName() != null && trustAnchor.getCAPublicKey() != null && CertPathValidatorUtilities.getEncodedIssuerPrincipal(x509Certificate).equals(new X500Principal(trustAnchor.getCAName()))) {
                    arrayList.add(trustAnchor);
                }
            }
            return arrayList;
        } catch (IOException unused) {
            throw new CertPathReviewerException(createErrorBundle("CertPathReviewer.trustAnchorIssuerError"));
        }
    }

    public void init(CertPath certPath, PKIXParameters pKIXParameters) throws CertPathReviewerException {
        if (this.initialized) {
            throw new IllegalStateException("object is already initialized!");
        }
        this.initialized = true;
        if (certPath == null) {
            throw new NullPointerException("certPath was null");
        }
        List<? extends Certificate> certificates = certPath.getCertificates();
        if (certificates.size() != 1) {
            HashSet hashSet = new HashSet();
            Iterator<TrustAnchor> it = pKIXParameters.getTrustAnchors().iterator();
            while (it.hasNext()) {
                hashSet.add(it.next().getTrustedCert());
            }
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i != certificates.size(); i++) {
                if (!hashSet.contains(certificates.get(i))) {
                    arrayList.add(certificates.get(i));
                }
            }
            try {
                this.certPath = CertificateFactory.getInstance("X.509", BouncyCastleProvider.PROVIDER_NAME).generateCertPath(arrayList);
                this.certs = arrayList;
            } catch (GeneralSecurityException unused) {
                throw new IllegalStateException("unable to rebuild certpath");
            }
        } else {
            this.certPath = certPath;
            this.certs = certPath.getCertificates();
        }
        this.n = this.certs.size();
        if (this.certs.isEmpty()) {
            throw new CertPathReviewerException(createErrorBundle("CertPathReviewer.emptyCertPath"));
        }
        this.pkixParams = (PKIXParameters) pKIXParameters.clone();
        Date date = new Date();
        this.currentDate = date;
        this.validDate = CertPathValidatorUtilities.getValidityDate(this.pkixParams, date);
        this.notifications = null;
        this.errors = null;
        this.trustAnchor = null;
        this.subjectPublicKey = null;
        this.policyTree = null;
    }

    public boolean isValidCertPath() {
        doChecks();
        int i = 0;
        while (true) {
            List[] listArr = this.errors;
            if (i >= listArr.length) {
                return true;
            }
            if (!listArr[i].isEmpty()) {
                return false;
            }
            i++;
        }
    }

    public PKIXCertPathReviewer(CertPath certPath, PKIXParameters pKIXParameters) throws CertPathReviewerException {
        init(certPath, pKIXParameters);
    }

    private static ErrorBundle createErrorBundle(String str, Object[] objArr) {
        ErrorBundle errorBundle = new ErrorBundle(RESOURCE_NAME, str, objArr);
        errorBundle.setClassLoader(PKIXCertPathReviewer.class.getClassLoader());
        return errorBundle;
    }

    public void addError(ErrorBundle errorBundle, int i) {
        if (i < -1 || i >= this.n) {
            throw new IndexOutOfBoundsException();
        }
        this.errors[i + 1].add(errorBundle);
    }

    public void addNotification(ErrorBundle errorBundle, int i) {
        if (i < -1 || i >= this.n) {
            throw new IndexOutOfBoundsException();
        }
        this.notifications[i + 1].add(errorBundle);
    }

    public List[] getErrors() {
        doChecks();
        return this.errors;
    }

    public List[] getNotifications() {
        doChecks();
        return this.notifications;
    }
}
