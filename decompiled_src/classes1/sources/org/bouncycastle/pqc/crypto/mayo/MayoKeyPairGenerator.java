package org.bouncycastle.pqc.crypto.mayo;

import java.security.SecureRandom;
import org.bouncycastle.crypto.AsymmetricCipherKeyPair;
import org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.bouncycastle.crypto.KeyGenerationParameters;
import org.bouncycastle.crypto.digests.SHAKEDigest;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.GF16;
import org.bouncycastle.util.Longs;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class MayoKeyPairGenerator implements AsymmetricCipherKeyPairGenerator {
    private MayoParameters p;
    private SecureRandom random;

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public AsymmetricCipherKeyPair generateKeyPair() {
        int mVecLimbs = this.p.getMVecLimbs();
        int m = this.p.getM();
        int v = this.p.getV();
        int o2 = this.p.getO();
        int oBytes = this.p.getOBytes();
        int p1Limbs = this.p.getP1Limbs();
        int p3Limbs = this.p.getP3Limbs();
        int pkSeedBytes = this.p.getPkSeedBytes();
        int skSeedBytes = this.p.getSkSeedBytes();
        byte[] bArr = new byte[this.p.getCpkBytes()];
        byte[] bArr2 = new byte[this.p.getCskBytes()];
        int i = oBytes + pkSeedBytes;
        byte[] bArr3 = new byte[i];
        long[] jArr = new long[this.p.getP2Limbs() + p1Limbs];
        int i2 = v * o2;
        byte[] bArr4 = new byte[i2];
        this.random.nextBytes(bArr2);
        SHAKEDigest sHAKEDigest = new SHAKEDigest(256);
        int i3 = 0;
        sHAKEDigest.update(bArr2, 0, skSeedBytes);
        sHAKEDigest.doFinal(bArr3, 0, i);
        GF16.decode(bArr3, pkSeedBytes, bArr4, 0, i2);
        Utils.expandP1P2(this.p, jArr, bArr3);
        long[] jArr2 = new long[o2 * o2 * mVecLimbs];
        GF16Utils.mulAddMUpperTriangularMatXMat(mVecLimbs, jArr, bArr4, jArr, p1Limbs, v, o2);
        GF16Utils.mulAddMatTransXMMat(mVecLimbs, bArr4, jArr, p1Limbs, jArr2, v, o2);
        System.arraycopy(bArr3, 0, bArr, 0, pkSeedBytes);
        long[] jArr3 = new long[p3Limbs];
        int i4 = o2 * mVecLimbs;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        while (i3 < o2) {
            int i8 = i5;
            int i9 = i6;
            int i10 = i3;
            while (i10 < o2) {
                int i11 = o2;
                long[] jArr4 = jArr2;
                System.arraycopy(jArr4, i6 + i8, jArr3, i7, mVecLimbs);
                if (i3 != i10) {
                    Longs.xorTo(mVecLimbs, jArr4, i9 + i5, jArr3, i7);
                }
                i7 += mVecLimbs;
                i10++;
                i8 += mVecLimbs;
                i9 += i4;
                jArr2 = jArr4;
                o2 = i11;
            }
            i3++;
            i6 += i4;
            i5 += mVecLimbs;
            o2 = o2;
        }
        Utils.packMVecs(jArr3, bArr, pkSeedBytes, p3Limbs / mVecLimbs, m);
        Arrays.clear(bArr4);
        Arrays.clear(jArr2);
        return new AsymmetricCipherKeyPair((AsymmetricKeyParameter) new MayoPublicKeyParameters(this.p, bArr), (AsymmetricKeyParameter) new MayoPrivateKeyParameters(this.p, bArr2));
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public void init(KeyGenerationParameters keyGenerationParameters) {
        this.p = ((MayoKeyGenerationParameters) keyGenerationParameters).getParameters();
        this.random = keyGenerationParameters.getRandom();
    }
}
