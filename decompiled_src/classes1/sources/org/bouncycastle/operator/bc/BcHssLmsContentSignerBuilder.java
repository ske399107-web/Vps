package org.bouncycastle.operator.bc;

import java.io.ByteArrayOutputStream;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoException;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.Signer;
import org.bouncycastle.operator.OperatorCreationException;
import org.bouncycastle.pqc.crypto.MessageSigner;
import org.bouncycastle.pqc.crypto.lms.HSSPrivateKeyParameters;
import org.bouncycastle.pqc.crypto.lms.HSSPublicKeyParameters;
import org.bouncycastle.pqc.crypto.lms.HSSSigner;
import org.bouncycastle.pqc.crypto.lms.LMSPrivateKeyParameters;
import org.bouncycastle.pqc.crypto.lms.LMSPublicKeyParameters;
import org.bouncycastle.pqc.crypto.lms.LMSSigner;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class BcHssLmsContentSignerBuilder extends BcContentSignerBuilder {
    private static final AlgorithmIdentifier sigAlgId = new AlgorithmIdentifier(PKCSObjectIdentifiers.id_alg_hss_lms_hashsig);

    /* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
    public static class HssSigner implements Signer {
        private MessageSigner signer;
        private final ByteArrayOutputStream stream = new ByteArrayOutputStream();

        @Override // org.bouncycastle.crypto.Signer
        public byte[] generateSignature() throws CryptoException, DataLengthException {
            byte[] byteArray = this.stream.toByteArray();
            this.stream.reset();
            return this.signer.generateSignature(byteArray);
        }

        @Override // org.bouncycastle.crypto.Signer
        public void init(boolean z, CipherParameters cipherParameters) {
            MessageSigner hSSSigner;
            if ((cipherParameters instanceof HSSPublicKeyParameters) || (cipherParameters instanceof HSSPrivateKeyParameters)) {
                hSSSigner = new HSSSigner();
            } else {
                if (!(cipherParameters instanceof LMSPublicKeyParameters) && !(cipherParameters instanceof LMSPrivateKeyParameters)) {
                    throw new IllegalArgumentException("Incorrect Key Parameters");
                }
                hSSSigner = new LMSSigner();
            }
            this.signer = hSSSigner;
            this.signer.init(z, cipherParameters);
        }

        @Override // org.bouncycastle.crypto.Signer
        public void reset() {
            this.stream.reset();
        }

        @Override // org.bouncycastle.crypto.Signer
        public void update(byte b) {
            this.stream.write(b);
        }

        @Override // org.bouncycastle.crypto.Signer
        public boolean verifySignature(byte[] bArr) {
            byte[] byteArray = this.stream.toByteArray();
            this.stream.reset();
            return this.signer.verifySignature(byteArray, bArr);
        }

        @Override // org.bouncycastle.crypto.Signer
        public void update(byte[] bArr, int i, int i2) {
            this.stream.write(bArr, i, i2);
        }
    }

    public BcHssLmsContentSignerBuilder() {
        super(sigAlgId, null);
    }

    @Override // org.bouncycastle.operator.bc.BcContentSignerBuilder
    public Signer createSigner(AlgorithmIdentifier algorithmIdentifier, AlgorithmIdentifier algorithmIdentifier2) throws OperatorCreationException {
        return new HssSigner();
    }
}
