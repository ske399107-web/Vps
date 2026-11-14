package o;

import android.content.Context;
import android.content.IntentFilter;
import android.view.MenuItem;
import java.util.HashSet;

/* renamed from: o.s1, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class AbstractC0379s1 {
    public Object a;
    public Object b;

    public AbstractC0379s1(Context context) {
        this.a = context;
    }

    public void c() {
        C0359r1 c0359r1 = (C0359r1) this.a;
        if (c0359r1 != null) {
            try {
                ((LayoutInflaterFactory2C0439v1) this.b).k.unregisterReceiver(c0359r1);
            } catch (IllegalArgumentException unused) {
            }
            this.a = null;
        }
    }

    public void d() {
        C0055bf c0055bf = (C0055bf) this.a;
        HashSet hashSet = c0055bf.e;
        if (hashSet.remove((C0381s3) this.b) && hashSet.isEmpty()) {
            c0055bf.b();
        }
    }

    public abstract IntentFilter e();

    public abstract int f();

    public MenuItem g(MenuItem menuItem) {
        if (menuItem instanceof Af) {
            Af af = (Af) menuItem;
            if (((Qe) this.b) == null) {
                this.b = new Qe(0);
            }
            MenuItem menuItem2 = (MenuItem) ((Qe) this.b).get(af);
            if (menuItem2 == null) {
                MenuItemC0369rb menuItemC0369rb = new MenuItemC0369rb((Context) this.a, af);
                ((Qe) this.b).put(af, menuItemC0369rb);
                return menuItemC0369rb;
            }
            return menuItem2;
        }
        return menuItem;
    }

    public abstract void h();

    public void i() {
        c();
        IntentFilter e = e();
        if (e.countActions() == 0) {
            return;
        }
        if (((C0359r1) this.a) == null) {
            this.a = new C0359r1(this);
        }
        ((LayoutInflaterFactory2C0439v1) this.b).k.registerReceiver((C0359r1) this.a, e);
    }

    public AbstractC0379s1(C0055bf c0055bf, C0381s3 c0381s3) {
        this.a = c0055bf;
        this.b = c0381s3;
    }

    public AbstractC0379s1(LayoutInflaterFactory2C0439v1 layoutInflaterFactory2C0439v1) {
        this.b = layoutInflaterFactory2C0439v1;
    }
}
