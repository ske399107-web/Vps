package o;

import android.content.ClipData;
import android.content.ClipDescription;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.view.ContentInfo;
import android.view.MenuItem;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.EditText;
import android.widget.TextView;
import androidx.appcompat.widget.ActionMenuView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.profileinstaller.ProfileInstallReceiver;
import com.google.android.material.behavior.SwipeDismissBehavior;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Objects;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.conscrypt.BuildConfig;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class C implements InterfaceC0527zb, InterfaceC0191ib, InterfaceC0142g2, InterfaceC0270mb, Q4, S4, InterfaceC0112ec, B6, M6, Ma, Vc, InterfaceC0361r3, N {
    public static C c;
    public final /* synthetic */ int a;
    public Object b;

    public /* synthetic */ C(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    public static C B(boolean z, int i, int i2, int i3, int i4) {
        return new C(0, AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, false, z));
    }

    public void A() {
        ((V7) this.b).j.L();
    }

    public boolean C(int i, int i2, Bundle bundle) {
        return false;
    }

    @Override // o.InterfaceC0527zb
    public void a(MenuC0230kb menuC0230kb, boolean z) {
        if (menuC0230kb instanceof SubMenuC0433uf) {
            ((SubMenuC0433uf) menuC0230kb).z.k().c(false);
        }
        InterfaceC0527zb interfaceC0527zb = ((C0080d0) this.b).e;
        if (interfaceC0527zb != null) {
            interfaceC0527zb.a(menuC0230kb, z);
        }
    }

    @Override // o.M6
    public Object b() {
        return this;
    }

    @Override // o.Q4
    public T4 build() {
        ContentInfo build;
        build = ((ContentInfo.Builder) this.b).build();
        return new T4(new C(build));
    }

    @Override // o.S4
    public ClipData c() {
        ClipData clip;
        clip = ((ContentInfo) this.b).getClip();
        return clip;
    }

    @Override // o.N
    public boolean d(View view) {
        int width;
        SwipeDismissBehavior swipeDismissBehavior = (SwipeDismissBehavior) this.b;
        boolean z = false;
        if (!swipeDismissBehavior.r(view)) {
            return false;
        }
        WeakHashMap weakHashMap = Dh.a;
        if (view.getLayoutDirection() == 1) {
            z = true;
        }
        int i = swipeDismissBehavior.d;
        if ((i == 0 && z) || (i == 1 && !z)) {
            width = -view.getWidth();
        } else {
            width = view.getWidth();
        }
        view.offsetLeftAndRight(width);
        view.setAlpha(0.0f);
        return true;
    }

    @Override // o.Vc
    public void e(int i, Serializable serializable) {
        String str;
        switch (i) {
            case 1:
                str = "RESULT_INSTALL_SUCCESS";
                break;
            case 2:
                str = "RESULT_ALREADY_INSTALLED";
                break;
            case 3:
                str = "RESULT_UNSUPPORTED_ART_VERSION";
                break;
            case 4:
                str = "RESULT_NOT_WRITABLE";
                break;
            case 5:
                str = "RESULT_DESIRED_FORMAT_UNSUPPORTED";
                break;
            case 6:
                str = "RESULT_BASELINE_PROFILE_NOT_FOUND";
                break;
            case 7:
                str = "RESULT_IO_EXCEPTION";
                break;
            case 8:
                str = "RESULT_PARSE_EXCEPTION";
                break;
            case 9:
            default:
                str = BuildConfig.FLAVOR;
                break;
            case 10:
                str = "RESULT_INSTALL_SKIP_FILE_SUCCESS";
                break;
            case 11:
                str = "RESULT_DELETE_SKIP_FILE_SUCCESS";
                break;
        }
        if (i != 6 && i != 7 && i != 8) {
            Log.d("ProfileInstaller", str);
        } else {
            Log.e("ProfileInstaller", str, (Throwable) serializable);
        }
        ((ProfileInstallReceiver) this.b).setResultCode(i);
    }

    @Override // o.B6
    public void f(L1 l1) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new ThreadFactoryC0442v4("EmojiCompatInitializer"));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        threadPoolExecutor.execute(new D6(this, l1, threadPoolExecutor, 0));
    }

    @Override // o.InterfaceC0527zb
    public boolean g(MenuC0230kb menuC0230kb) {
        C0080d0 c0080d0 = (C0080d0) this.b;
        if (menuC0230kb == c0080d0.c) {
            return false;
        }
        ((SubMenuC0433uf) menuC0230kb).A.getClass();
        c0080d0.getClass();
        InterfaceC0527zb interfaceC0527zb = c0080d0.e;
        if (interfaceC0527zb == null) {
            return false;
        }
        return interfaceC0527zb.g(menuC0230kb);
    }

    @Override // o.S4
    public int h() {
        int flags;
        flags = ((ContentInfo) this.b).getFlags();
        return flags;
    }

    @Override // o.Vc
    public void i() {
        Log.d("ProfileInstaller", "DIAGNOSTIC_PROFILE_IS_COMPRESSED");
    }

    @Override // o.M6
    public boolean j(CharSequence charSequence, int i, int i2, Lg lg) {
        if (TextUtils.equals(charSequence.subSequence(i, i2), (String) this.b)) {
            lg.c = (lg.c & 3) | 4;
            return false;
        }
        return true;
    }

    @Override // o.InterfaceC0191ib
    public boolean k(MenuC0230kb menuC0230kb, MenuItem menuItem) {
        InterfaceC0140g0 interfaceC0140g0 = ((ActionMenuView) this.b).z;
        if (interfaceC0140g0 != null) {
            Iterator it = ((CopyOnWriteArrayList) ((C0056bg) interfaceC0140g0).a.G.d).iterator();
            while (it.hasNext()) {
                if (((C0068c8) it.next()).a.p()) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // o.InterfaceC0270mb
    public void l(MenuC0230kb menuC0230kb, C0290nb c0290nb) {
        A3 a3 = (A3) this.b;
        C0519z3 c0519z3 = null;
        a3.f62f.removeCallbacksAndMessages(null);
        ArrayList arrayList = a3.h;
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i < size) {
                if (menuC0230kb == ((C0519z3) arrayList.get(i)).b) {
                    break;
                } else {
                    i++;
                }
            } else {
                i = -1;
                break;
            }
        }
        if (i == -1) {
            return;
        }
        int i2 = i + 1;
        if (i2 < arrayList.size()) {
            c0519z3 = (C0519z3) arrayList.get(i2);
        }
        a3.f62f.postAtTime(new RunnableC0500y3(this, c0519z3, c0290nb, menuC0230kb), menuC0230kb, SystemClock.uptimeMillis() + 200);
    }

    @Override // o.S4
    public ContentInfo m() {
        return (ContentInfo) this.b;
    }

    @Override // o.InterfaceC0142g2
    public void n(int i) {
    }

    @Override // o.InterfaceC0270mb
    public void o(MenuC0230kb menuC0230kb, C0290nb c0290nb) {
        ((A3) this.b).f62f.removeCallbacksAndMessages(menuC0230kb);
    }

    @Override // o.Q4
    public void p(Bundle bundle) {
        ((ContentInfo.Builder) this.b).setExtras(bundle);
    }

    @Override // o.InterfaceC0142g2
    public void q(int i) {
    }

    @Override // o.Q4
    public void r(Uri uri) {
        ((ContentInfo.Builder) this.b).setLinkUri(uri);
    }

    @Override // o.S4
    public int s() {
        int source;
        source = ((ContentInfo) this.b).getSource();
        return source;
    }

    @Override // o.InterfaceC0361r3
    public void t() {
        ((C0055bf) this.b).a();
    }

    public String toString() {
        switch (this.a) {
            case 8:
                return "ContentInfoCompat{" + ((ContentInfo) this.b) + "}";
            default:
                return super.toString();
        }
    }

    @Override // o.InterfaceC0142g2
    public void u(int i, float f2) {
    }

    @Override // o.InterfaceC0191ib
    public void v(MenuC0230kb menuC0230kb) {
        C0056bg c0056bg = ((ActionMenuView) this.b).u;
        if (c0056bg != null) {
            c0056bg.v(menuC0230kb);
        }
    }

    @Override // o.InterfaceC0112ec
    public Mi w(View view, Mi mi) {
        boolean z;
        boolean z2;
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) this.b;
        if (!Objects.equals(coordinatorLayout.n, mi)) {
            coordinatorLayout.n = mi;
            if (mi.d() > 0) {
                z = true;
            } else {
                z = false;
            }
            coordinatorLayout.f34o = z;
            if (!z && coordinatorLayout.getBackground() == null) {
                z2 = true;
            } else {
                z2 = false;
            }
            coordinatorLayout.setWillNotDraw(z2);
            Ki ki = mi.a;
            if (!ki.m()) {
                int childCount = coordinatorLayout.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View childAt = coordinatorLayout.getChildAt(i);
                    WeakHashMap weakHashMap = Dh.a;
                    if (childAt.getFitsSystemWindows() && ((Z4) childAt.getLayoutParams()).a != null && ki.m()) {
                        break;
                    }
                }
            }
            coordinatorLayout.requestLayout();
        }
        return mi;
    }

    @Override // o.Q4
    public void x(int i) {
        ((ContentInfo.Builder) this.b).setFlags(i);
    }

    public D y(int i) {
        return null;
    }

    public D z(int i) {
        return null;
    }

    public C(TextView textView) {
        this.a = 14;
        this.b = new P6(textView);
    }

    public C(EditText editText) {
        this.a = 12;
        this.b = new H1(editText, 11);
    }

    public C(int i) {
        this.a = i;
        switch (i) {
            case 17:
                this.b = new LinkedHashMap(0, 0.75f, true);
                return;
            case 26:
                this.b = new Object();
                new Handler(Looper.getMainLooper(), new Se(this));
                return;
            case 29:
                return;
            default:
                if (Build.VERSION.SDK_INT >= 26) {
                    this.b = new E(this);
                    return;
                } else {
                    this.b = new E(this);
                    return;
                }
        }
    }

    public C(Context context) {
        this.a = 11;
        this.b = context.getApplicationContext();
    }

    public C(Uri uri, ClipDescription clipDescription, Uri uri2) {
        this.a = 16;
        if (Build.VERSION.SDK_INT >= 25) {
            this.b = new C0348q9(uri, clipDescription, uri2);
        } else {
            this.b = new C0380s2(uri, clipDescription, uri2, 6);
        }
    }

    public C(ContentInfo contentInfo) {
        this.a = 8;
        contentInfo.getClass();
        this.b = AbstractC0143g3.g(contentInfo);
    }

    public C(ClipData clipData, int i) {
        this.a = 7;
        this.b = AbstractC0143g3.e(clipData, i);
    }
}
