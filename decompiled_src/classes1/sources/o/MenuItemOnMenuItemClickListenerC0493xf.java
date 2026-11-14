package o;

import android.view.MenuItem;
import java.lang.reflect.Method;

/* renamed from: o.xf, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class MenuItemOnMenuItemClickListenerC0493xf implements MenuItem.OnMenuItemClickListener {
    public static final Class[] d = {MenuItem.class};
    public final /* synthetic */ int a = 0;
    public Object b;
    public Object c;

    public /* synthetic */ MenuItemOnMenuItemClickListenerC0493xf() {
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public final boolean onMenuItemClick(MenuItem menuItem) {
        switch (this.a) {
            case 0:
                Method method = (Method) this.c;
                try {
                    Class<?> returnType = method.getReturnType();
                    Class<?> cls = Boolean.TYPE;
                    Object obj = this.b;
                    if (returnType == cls) {
                        return ((Boolean) method.invoke(obj, menuItem)).booleanValue();
                    }
                    method.invoke(obj, menuItem);
                    return true;
                } catch (Exception e) {
                    throw new RuntimeException(e);
                }
            default:
                return ((MenuItem.OnMenuItemClickListener) this.b).onMenuItemClick(((MenuItemC0369rb) this.c).g(menuItem));
        }
    }

    public MenuItemOnMenuItemClickListenerC0493xf(MenuItemC0369rb menuItemC0369rb, MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.c = menuItemC0369rb;
        this.b = onMenuItemClickListener;
    }
}
