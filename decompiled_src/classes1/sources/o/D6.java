package o;

import android.content.Context;
import android.content.Intent;
import android.widget.TextView;
import com.ffrt.proxyread.LoginActivity;
import com.ffrt.proxyread.MainActivity;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ThreadPoolExecutor;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final /* synthetic */ class D6 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ D6(Object obj, Object obj2, Object obj3, int i) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
        this.d = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.a) {
            case 0:
                C c = (C) this.b;
                L1 l1 = (L1) this.c;
                ThreadPoolExecutor threadPoolExecutor = (ThreadPoolExecutor) this.d;
                c.getClass();
                try {
                    C7 p = L1.p((Context) c.b);
                    if (p != null) {
                        B7 b7 = (B7) ((B6) p.b);
                        synchronized (b7.d) {
                            b7.f72f = threadPoolExecutor;
                        }
                        ((B6) p.b).f(new E6(l1, threadPoolExecutor));
                        return;
                    }
                    throw new RuntimeException("EmojiCompat font provider not available on this device.");
                } catch (Throwable th) {
                    l1.K(th);
                    threadPoolExecutor.shutdown();
                    return;
                }
            default:
                int i = LoginActivity.y;
                LoginActivity loginActivity = (LoginActivity) this.c;
                int color = loginActivity.getColor(2131034137);
                TextView textView = (TextView) this.b;
                textView.setTextColor(color);
                C0264m5 c0264m5 = (C0264m5) this.d;
                List i0 = AbstractC0124f4.i0(c0264m5.c, c0264m5.g);
                ArrayList arrayList = new ArrayList();
                for (Object obj : i0) {
                    if (!AbstractC0413tf.G0((String) obj)) {
                        arrayList.add(obj);
                    }
                }
                String k0 = AbstractC0104e4.k0(arrayList, " · ", null, 62);
                if (AbstractC0413tf.G0(k0)) {
                    k0 = "OK";
                }
                textView.setText(k0);
                loginActivity.startActivity(new Intent(loginActivity, (Class<?>) MainActivity.class));
                loginActivity.finish();
                return;
        }
    }
}
