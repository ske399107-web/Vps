package o;

import java.io.Serializable;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class F9 implements Serializable {
    public final String toString() {
        Ld.a.getClass();
        String obj = getClass().getGenericInterfaces()[0].toString();
        if (obj.startsWith("kotlin.jvm.functions.")) {
            obj = obj.substring(21);
        }
        AbstractC0487x9.n(obj, "renderLambdaToString(...)");
        return obj;
    }
}
