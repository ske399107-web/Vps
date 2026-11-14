package org.bouncycastle.pkix.util.filter;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class TrustedInput {
    protected Object input;

    public TrustedInput(Object obj) {
        this.input = obj;
    }

    public Object getInput() {
        return this.input;
    }

    public String toString() {
        return this.input.toString();
    }
}
