package org.bouncycastle.pqc.crypto.snova;

import java.lang.reflect.Array;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
class MapGroup2 {
    public final byte[][][][] f11;
    public final byte[][][][] f12;
    public final byte[][][][] f21;

    public MapGroup2(SnovaParameters snovaParameters) {
        int m = snovaParameters.getM();
        int v = snovaParameters.getV();
        int o2 = snovaParameters.getO();
        int lsq = snovaParameters.getLsq();
        Class cls = Byte.TYPE;
        this.f11 = (byte[][][][]) Array.newInstance((Class<?>) cls, m, v, v, lsq);
        this.f12 = (byte[][][][]) Array.newInstance((Class<?>) cls, m, v, o2, lsq);
        this.f21 = (byte[][][][]) Array.newInstance((Class<?>) cls, m, o2, v, lsq);
    }
}
