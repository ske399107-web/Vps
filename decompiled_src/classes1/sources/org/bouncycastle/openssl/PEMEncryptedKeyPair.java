package org.bouncycastle.openssl;

import java.io.IOException;
import o.AbstractC0214jf;
import org.bouncycastle.operator.OperatorCreationException;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class PEMEncryptedKeyPair {
    private final String dekAlgName;
    private final byte[] iv;
    private final byte[] keyBytes;
    private final PEMKeyPairParser parser;

    public PEMEncryptedKeyPair(String str, byte[] bArr, byte[] bArr2, PEMKeyPairParser pEMKeyPairParser) {
        this.dekAlgName = str;
        this.iv = bArr;
        this.keyBytes = bArr2;
        this.parser = pEMKeyPairParser;
    }

    public PEMKeyPair decryptKeyPair(PEMDecryptorProvider pEMDecryptorProvider) throws IOException {
        try {
            return this.parser.parse(pEMDecryptorProvider.get(this.dekAlgName).decrypt(this.keyBytes, this.iv));
        } catch (IOException e) {
            throw e;
        } catch (OperatorCreationException e2) {
            throw new PEMException("cannot create extraction operator: " + e2.getMessage(), e2);
        } catch (Exception e3) {
            throw new PEMException(AbstractC0214jf.b(e3, new StringBuilder("exception processing key pair: ")), e3);
        }
    }

    public String getDekAlgName() {
        return this.dekAlgName;
    }
}
