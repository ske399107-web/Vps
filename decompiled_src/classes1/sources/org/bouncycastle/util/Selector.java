package org.bouncycastle.util;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public interface Selector<T> extends Cloneable {
    Object clone();

    boolean match(T t);
}
