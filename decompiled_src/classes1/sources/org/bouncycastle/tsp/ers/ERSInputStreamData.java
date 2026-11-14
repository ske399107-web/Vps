package org.bouncycastle.tsp.ers;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import o.Ve;
import org.bouncycastle.operator.DigestCalculator;
import org.bouncycastle.util.io.Streams;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class ERSInputStreamData extends ERSCachingData {
    private final byte[] contentBytes;
    private final File contentFile;

    public ERSInputStreamData(File file) throws FileNotFoundException {
        if (file.isDirectory()) {
            throw new IllegalArgumentException("directory not allowed");
        }
        if (file.exists()) {
            this.contentBytes = null;
            this.contentFile = file;
        } else {
            throw new FileNotFoundException(file + " not found");
        }
    }

    @Override // org.bouncycastle.tsp.ers.ERSCachingData
    public byte[] calculateHash(DigestCalculator digestCalculator, byte[] bArr) {
        byte[] bArr2;
        byte[] bArr3 = this.contentBytes;
        if (bArr3 != null) {
            bArr2 = ERSUtil.calculateDigest(digestCalculator, bArr3);
        } else {
            try {
                FileInputStream fileInputStream = new FileInputStream(this.contentFile);
                byte[] calculateDigest = ERSUtil.calculateDigest(digestCalculator, fileInputStream);
                fileInputStream.close();
                bArr2 = calculateDigest;
            } catch (IOException e) {
                throw ExpUtil.createIllegalState(Ve.d(e, new StringBuilder("unable to open content: ")), e);
            }
        }
        if (bArr != null) {
            return ERSUtil.concatPreviousHashes(digestCalculator, bArr, bArr2);
        }
        return bArr2;
    }

    public ERSInputStreamData(InputStream inputStream) {
        try {
            this.contentBytes = Streams.readAll(inputStream);
            this.contentFile = null;
        } catch (IOException e) {
            throw ExpUtil.createIllegalState(Ve.d(e, new StringBuilder("unable to open content: ")), e);
        }
    }
}
