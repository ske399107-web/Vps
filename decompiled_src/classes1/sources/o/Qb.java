package o;

import androidx.core.widget.NestedScrollView;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class Qb {
    public static void a(NestedScrollView nestedScrollView, float f2) {
        try {
            nestedScrollView.setFrameContentVelocity(f2);
        } catch (LinkageError unused) {
        }
    }
}
