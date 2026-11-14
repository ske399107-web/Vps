package org.bouncycastle.operator.bc;

import java.io.IOException;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;
import org.bouncycastle.crypto.Signer;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.operator.OperatorCreationException;
import org.bouncycastle.operator.bc.BcHssLmsContentSignerBuilder;
import org.bouncycastle.pqc.crypto.util.PublicKeyFactory;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class BcHssLmsContentVerifierProviderBuilder extends BcContentVerifierProviderBuilder {
    @Override // org.bouncycastle.operator.bc.BcContentVerifierProviderBuilder
    public Signer createSigner(AlgorithmIdentifier algorithmIdentifier) throws OperatorCreationException {
        return new BcHssLmsContentSignerBuilder.HssSigner();
    }

    @Override // org.bouncycastle.operator.bc.BcContentVerifierProviderBuilder
    public AsymmetricKeyParameter extractKeyParameters(SubjectPublicKeyInfo subjectPublicKeyInfo) throws IOException {
        return PublicKeyFactory.createKey(subjectPublicKeyInfo);
    }
}
