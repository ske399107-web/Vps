package androidx.emoji2.text;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.lifecycle.ProcessLifecycleInitializer;
import androidx.lifecycle.a;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import o.AbstractC0462w4;
import o.AbstractC0522z6;
import o.C;
import o.C0380s2;
import o.C5;
import o.C6;
import o.F6;
import o.InterfaceC0288n9;
import o.R9;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class EmojiCompatInitializer implements InterfaceC0288n9 {
    @Override // o.InterfaceC0288n9
    public final List a() {
        return Collections.singletonList(ProcessLifecycleInitializer.class);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [o.C7, o.z6] */
    @Override // o.InterfaceC0288n9
    public final Object b(Context context) {
        Object obj;
        ?? abstractC0522z6 = new AbstractC0522z6(new C(context));
        abstractC0522z6.a = 1;
        if (C6.k == null) {
            synchronized (C6.j) {
                try {
                    if (C6.k == null) {
                        C6.k = new C6(abstractC0522z6);
                    }
                } finally {
                }
            }
        }
        C0380s2 r = C0380s2.r(context);
        r.getClass();
        synchronized (C0380s2.f275f) {
            try {
                obj = ((HashMap) r.b).get(ProcessLifecycleInitializer.class);
                if (obj == null) {
                    obj = r.k(ProcessLifecycleInitializer.class, new HashSet());
                }
            } finally {
            }
        }
        final a e = ((R9) obj).e();
        e.a(new C5(this) { // from class: androidx.emoji2.text.EmojiCompatInitializer.1
            @Override // o.C5
            public final void a() {
                Handler handler;
                if (Build.VERSION.SDK_INT >= 28) {
                    handler = AbstractC0462w4.a(Looper.getMainLooper());
                } else {
                    handler = new Handler(Looper.getMainLooper());
                }
                handler.postDelayed(new F6(0), 500L);
                e.f(this);
            }
        });
        return Boolean.TRUE;
    }
}
