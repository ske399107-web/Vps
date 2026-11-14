package io.github.muntashirakon.crypto.spake2;

import javax.security.auth.Destroyable;
import o.Ve;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class Spake2Context implements Destroyable {
    public final long a;
    public final byte[] b = new byte[32];
    public boolean c;

    static {
        System.loadLibrary("spake2");
    }

    public Spake2Context(int i, byte[] bArr, byte[] bArr2) {
        long allocNewContext = allocNewContext(Ve.C(i), bArr, bArr2);
        this.a = allocNewContext;
        if (allocNewContext != 0) {
        } else {
            throw new UnsupportedOperationException("Could not allocate native context");
        }
    }

    private static native long allocNewContext(int i, byte[] bArr, byte[] bArr2);

    private static native void destroy(long j);

    private static native byte[] generateMessage(long j, byte[] bArr);

    private static native byte[] processMessage(long j, byte[] bArr);

    public final byte[] a(byte[] bArr) {
        if (!this.c) {
            byte[] generateMessage = generateMessage(this.a, bArr);
            if (generateMessage != null) {
                System.arraycopy(generateMessage, 0, this.b, 0, 32);
                return generateMessage;
            }
            throw new IllegalStateException("Generated empty message");
        }
        throw new IllegalStateException("The context was destroyed.");
    }

    public final byte[] b(byte[] bArr) {
        if (!this.c) {
            byte[] processMessage = processMessage(this.a, bArr);
            if (processMessage != null) {
                return processMessage;
            }
            throw new IllegalStateException("No key was returned");
        }
        throw new IllegalStateException("The context was destroyed.");
    }

    @Override // javax.security.auth.Destroyable
    public final void destroy() {
        this.c = true;
        destroy(this.a);
    }

    @Override // javax.security.auth.Destroyable
    public final boolean isDestroyed() {
        return this.c;
    }
}
