package org.bouncycastle.pqc.crypto.mldsa;

import o.Ve;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class PolyVecMatrix {
    private final PolyVecL[] matrix;

    public PolyVecMatrix(MLDSAEngine mLDSAEngine) {
        int dilithiumK = mLDSAEngine.getDilithiumK();
        this.matrix = new PolyVecL[dilithiumK];
        for (int i = 0; i < dilithiumK; i++) {
            this.matrix[i] = new PolyVecL(mLDSAEngine);
        }
    }

    private String addString() {
        String str = "[";
        for (int i = 0; i < this.matrix.length; i++) {
            StringBuilder o2 = Ve.o(str + "Outer Matrix " + i + " [");
            o2.append(this.matrix[i].toString());
            String sb = o2.toString();
            if (i == this.matrix.length - 1) {
                str = Ve.h(sb, "]\n");
            } else {
                str = Ve.h(sb, "],\n");
            }
        }
        return Ve.h(str, "]\n");
    }

    public void expandMatrix(byte[] bArr) {
        int i = 0;
        while (true) {
            PolyVecL[] polyVecLArr = this.matrix;
            if (i >= polyVecLArr.length) {
                return;
            }
            polyVecLArr[i].uniformBlocks(bArr, i << 8);
            i++;
        }
    }

    public void pointwiseMontgomery(PolyVecK polyVecK, PolyVecL polyVecL) {
        for (int i = 0; i < this.matrix.length; i++) {
            polyVecK.getVectorIndex(i).pointwiseAccountMontgomery(this.matrix[i], polyVecL);
        }
    }

    public String toString(String str) {
        return str.concat(": \n" + addString());
    }
}
