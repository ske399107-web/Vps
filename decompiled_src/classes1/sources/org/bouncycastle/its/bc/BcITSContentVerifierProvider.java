package org.bouncycastle.its.bc;

import java.io.IOException;
import java.io.OutputStream;
import o.AbstractC0214jf;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.crypto.ExtendedDigest;
import org.bouncycastle.crypto.params.ECPublicKeyParameters;
import org.bouncycastle.crypto.signers.DSADigestSigner;
import org.bouncycastle.crypto.signers.ECDSASigner;
import org.bouncycastle.its.ITSCertificate;
import org.bouncycastle.its.operator.ITSContentVerifierProvider;
import org.bouncycastle.oer.OEREncoder;
import org.bouncycastle.oer.its.ieee1609dot2.VerificationKeyIndicator;
import org.bouncycastle.oer.its.ieee1609dot2.basetypes.PublicVerificationKey;
import org.bouncycastle.oer.its.template.ieee1609dot2.IEEE1609dot2;
import org.bouncycastle.operator.ContentVerifier;
import org.bouncycastle.operator.OperatorCreationException;
import org.bouncycastle.operator.bc.BcDefaultDigestProvider;
import org.bouncycastle.util.Arrays;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class BcITSContentVerifierProvider implements ITSContentVerifierProvider {
    private final AlgorithmIdentifier digestAlgo;
    private final ITSCertificate issuer;
    private final byte[] parentData;
    private final ECPublicKeyParameters pubParams;
    private final int sigChoice;

    public BcITSContentVerifierProvider(ITSCertificate iTSCertificate) throws IOException {
        AlgorithmIdentifier algorithmIdentifier;
        this.issuer = iTSCertificate;
        this.parentData = iTSCertificate.getEncoded();
        VerificationKeyIndicator verifyKeyIndicator = iTSCertificate.toASN1Structure().getToBeSigned().getVerifyKeyIndicator();
        if (!(verifyKeyIndicator.getVerificationKeyIndicator() instanceof PublicVerificationKey)) {
            throw new IllegalStateException("not public verification key");
        }
        PublicVerificationKey publicVerificationKey = PublicVerificationKey.getInstance(verifyKeyIndicator.getVerificationKeyIndicator());
        this.sigChoice = publicVerificationKey.getChoice();
        int choice = publicVerificationKey.getChoice();
        if (choice == 0) {
            algorithmIdentifier = new AlgorithmIdentifier(NISTObjectIdentifiers.id_sha256);
        } else if (choice == 1) {
            algorithmIdentifier = new AlgorithmIdentifier(NISTObjectIdentifiers.id_sha256);
        } else {
            if (choice != 2) {
                throw new IllegalStateException("unknown key type");
            }
            algorithmIdentifier = new AlgorithmIdentifier(NISTObjectIdentifiers.id_sha384);
        }
        this.digestAlgo = algorithmIdentifier;
        this.pubParams = (ECPublicKeyParameters) new BcITSPublicVerificationKey(publicVerificationKey).getKey();
    }

    @Override // org.bouncycastle.its.operator.ITSContentVerifierProvider
    public ContentVerifier get(int i) throws OperatorCreationException {
        byte[] bArr;
        if (this.sigChoice == i) {
            final ExtendedDigest extendedDigest = BcDefaultDigestProvider.INSTANCE.get(this.digestAlgo);
            final byte[] bArr2 = new byte[extendedDigest.getDigestSize()];
            byte[] bArr3 = this.parentData;
            extendedDigest.update(bArr3, 0, bArr3.length);
            extendedDigest.doFinal(bArr2, 0);
            if (this.issuer.getIssuer().isSelf()) {
                bArr = new byte[extendedDigest.getDigestSize()];
            } else {
                bArr = null;
            }
            final byte[] bArr4 = bArr;
            if (bArr4 != null) {
                byte[] byteArray = OEREncoder.toByteArray(this.issuer.toASN1Structure().getToBeSigned(), IEEE1609dot2.ToBeSignedCertificate.build());
                extendedDigest.update(byteArray, 0, byteArray.length);
                extendedDigest.doFinal(bArr4, 0);
            }
            final OutputStream outputStream = new OutputStream() { // from class: org.bouncycastle.its.bc.BcITSContentVerifierProvider.1
                @Override // java.io.OutputStream
                public void write(int i2) throws IOException {
                    extendedDigest.update((byte) i2);
                }

                @Override // java.io.OutputStream
                public void write(byte[] bArr5) throws IOException {
                    extendedDigest.update(bArr5, 0, bArr5.length);
                }

                @Override // java.io.OutputStream
                public void write(byte[] bArr5, int i2, int i3) throws IOException {
                    extendedDigest.update(bArr5, i2, i3);
                }
            };
            return new ContentVerifier() { // from class: org.bouncycastle.its.bc.BcITSContentVerifierProvider.2
                final DSADigestSigner signer;

                {
                    this.signer = new DSADigestSigner(new ECDSASigner(), BcDefaultDigestProvider.INSTANCE.get(BcITSContentVerifierProvider.this.digestAlgo));
                }

                @Override // org.bouncycastle.operator.ContentVerifier
                public AlgorithmIdentifier getAlgorithmIdentifier() {
                    return null;
                }

                @Override // org.bouncycastle.operator.ContentVerifier
                public OutputStream getOutputStream() {
                    return outputStream;
                }

                @Override // org.bouncycastle.operator.ContentVerifier
                public boolean verify(byte[] bArr5) {
                    int digestSize = extendedDigest.getDigestSize();
                    byte[] bArr6 = new byte[digestSize];
                    extendedDigest.doFinal(bArr6, 0);
                    this.signer.init(false, BcITSContentVerifierProvider.this.pubParams);
                    this.signer.update(bArr6, 0, digestSize);
                    byte[] bArr7 = bArr4;
                    if (bArr7 == null || !Arrays.areEqual(bArr6, bArr7)) {
                        DSADigestSigner dSADigestSigner = this.signer;
                        byte[] bArr8 = bArr2;
                        dSADigestSigner.update(bArr8, 0, bArr8.length);
                    } else {
                        int digestSize2 = extendedDigest.getDigestSize();
                        byte[] bArr9 = new byte[digestSize2];
                        extendedDigest.doFinal(bArr9, 0);
                        this.signer.update(bArr9, 0, digestSize2);
                    }
                    return this.signer.verifySignature(bArr5);
                }
            };
        }
        throw new OperatorCreationException(AbstractC0214jf.a(i, "wrong verifier for algorithm: "));
    }

    @Override // org.bouncycastle.its.operator.ITSContentVerifierProvider
    public ITSCertificate getAssociatedCertificate() {
        return this.issuer;
    }

    @Override // org.bouncycastle.its.operator.ITSContentVerifierProvider
    public boolean hasAssociatedCertificate() {
        return this.issuer != null;
    }
}
