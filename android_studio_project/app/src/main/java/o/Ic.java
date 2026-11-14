package o;

import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;
import org.bouncycastle.crypto.digests.Blake2xsDigest;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Ic extends AbstractC0159h {
    @Override // o.AbstractC0212jd
    public final int b() {
        return ThreadLocalRandom.current().nextInt(1, Blake2xsDigest.UNKNOWN_DIGEST_LENGTH);
    }

    @Override // o.AbstractC0159h
    public final Random c() {
        ThreadLocalRandom current = ThreadLocalRandom.current();
        AbstractC0487x9.n(current, "current(...)");
        return current;
    }
}
