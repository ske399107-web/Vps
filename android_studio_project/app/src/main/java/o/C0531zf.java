package o;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.SubMenu;
import java.io.IOException;
import org.bouncycastle.crypto.digests.Blake2xsDigest;
import org.xmlpull.v1.XmlPullParserException;

/* renamed from: o.zf, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0531zf extends MenuInflater {
    public static final Class[] e;

    /* renamed from: f, reason: collision with root package name */
    public static final Class[] f309f;
    public final Object[] a;
    public final Object[] b;
    public final Context c;
    public Object d;

    static {
        Class[] clsArr = {Context.class};
        e = clsArr;
        f309f = clsArr;
    }

    public C0531zf(Context context) {
        super(context);
        this.c = context;
        Object[] objArr = {context};
        this.a = objArr;
        this.b = objArr;
    }

    public static Object a(Object obj) {
        if (obj instanceof Activity) {
            return obj;
        }
        if (obj instanceof ContextWrapper) {
            return a(((ContextWrapper) obj).getBaseContext());
        }
        return obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r4v60 */
    public final void b(XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Menu menu) {
        ?? r4;
        int i;
        boolean z;
        char charAt;
        char charAt2;
        boolean z2;
        ColorStateList colorStateList;
        int resourceId;
        C0512yf c0512yf = new C0512yf(this, menu);
        int eventType = xmlResourceParser.getEventType();
        while (true) {
            r4 = 1;
            i = 2;
            if (eventType == 2) {
                String name = xmlResourceParser.getName();
                if (name.equals("menu")) {
                    eventType = xmlResourceParser.next();
                } else {
                    throw new RuntimeException("Expecting menu, got ".concat(name));
                }
            } else {
                eventType = xmlResourceParser.next();
                if (eventType == 1) {
                    break;
                }
            }
        }
        boolean z3 = false;
        boolean z4 = false;
        String str = null;
        while (!z3) {
            if (eventType != r4) {
                if (eventType != i) {
                    if (eventType == 3) {
                        String name2 = xmlResourceParser.getName();
                        if (z4 && name2.equals(str)) {
                            z = r4;
                            z4 = false;
                            str = null;
                            eventType = xmlResourceParser.next();
                            r4 = z;
                            i = 2;
                            z4 = z4;
                        } else if (name2.equals("group")) {
                            c0512yf.b = 0;
                            c0512yf.c = 0;
                            c0512yf.d = 0;
                            c0512yf.e = 0;
                            c0512yf.f304f = r4;
                            c0512yf.g = r4;
                        } else if (name2.equals("item")) {
                            if (!c0512yf.h) {
                                ActionProviderVisibilityListenerC0310ob actionProviderVisibilityListenerC0310ob = c0512yf.z;
                                if (actionProviderVisibilityListenerC0310ob != null && actionProviderVisibilityListenerC0310ob.b.hasSubMenu()) {
                                    c0512yf.h = r4;
                                    c0512yf.b(c0512yf.a.addSubMenu(c0512yf.b, c0512yf.i, c0512yf.j, c0512yf.k).getItem());
                                } else {
                                    c0512yf.h = r4;
                                    c0512yf.b(c0512yf.a.add(c0512yf.b, c0512yf.i, c0512yf.j, c0512yf.k));
                                }
                            }
                        } else if (name2.equals("menu")) {
                            z = r4;
                            z3 = z;
                        }
                    }
                    z = r4;
                } else {
                    if (!z4) {
                        String name3 = xmlResourceParser.getName();
                        boolean equals = name3.equals("group");
                        C0531zf c0531zf = c0512yf.E;
                        if (equals) {
                            TypedArray obtainStyledAttributes = c0531zf.c.obtainStyledAttributes(attributeSet, AbstractC0153gd.p);
                            c0512yf.b = obtainStyledAttributes.getResourceId(r4, 0);
                            c0512yf.c = obtainStyledAttributes.getInt(3, 0);
                            c0512yf.d = obtainStyledAttributes.getInt(4, 0);
                            c0512yf.e = obtainStyledAttributes.getInt(5, 0);
                            c0512yf.f304f = obtainStyledAttributes.getBoolean(2, r4);
                            c0512yf.g = obtainStyledAttributes.getBoolean(0, r4);
                            obtainStyledAttributes.recycle();
                        } else {
                            if (name3.equals("item")) {
                                Context context = c0531zf.c;
                                TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, AbstractC0153gd.q);
                                c0512yf.i = obtainStyledAttributes2.getResourceId(2, 0);
                                c0512yf.j = (obtainStyledAttributes2.getInt(5, c0512yf.c) & (-65536)) | (obtainStyledAttributes2.getInt(6, c0512yf.d) & Blake2xsDigest.UNKNOWN_DIGEST_LENGTH);
                                c0512yf.k = obtainStyledAttributes2.getText(7);
                                c0512yf.l = obtainStyledAttributes2.getText(8);
                                c0512yf.m = obtainStyledAttributes2.getResourceId(0, 0);
                                String string = obtainStyledAttributes2.getString(9);
                                if (string == null) {
                                    charAt = 0;
                                } else {
                                    charAt = string.charAt(0);
                                }
                                c0512yf.n = charAt;
                                c0512yf.f305o = obtainStyledAttributes2.getInt(16, 4096);
                                String string2 = obtainStyledAttributes2.getString(10);
                                if (string2 == null) {
                                    charAt2 = 0;
                                } else {
                                    charAt2 = string2.charAt(0);
                                }
                                c0512yf.p = charAt2;
                                c0512yf.q = obtainStyledAttributes2.getInt(20, 4096);
                                if (obtainStyledAttributes2.hasValue(11)) {
                                    c0512yf.r = obtainStyledAttributes2.getBoolean(11, false) ? 1 : 0;
                                } else {
                                    c0512yf.r = c0512yf.e;
                                }
                                c0512yf.s = obtainStyledAttributes2.getBoolean(3, false);
                                c0512yf.t = obtainStyledAttributes2.getBoolean(4, c0512yf.f304f);
                                c0512yf.u = obtainStyledAttributes2.getBoolean(1, c0512yf.g);
                                c0512yf.v = obtainStyledAttributes2.getInt(21, -1);
                                c0512yf.y = obtainStyledAttributes2.getString(12);
                                c0512yf.w = obtainStyledAttributes2.getResourceId(13, 0);
                                c0512yf.x = obtainStyledAttributes2.getString(15);
                                String string3 = obtainStyledAttributes2.getString(14);
                                if (string3 != null) {
                                    z2 = true;
                                } else {
                                    z2 = false;
                                }
                                if (z2 && c0512yf.w == 0 && c0512yf.x == null) {
                                    c0512yf.z = (ActionProviderVisibilityListenerC0310ob) c0512yf.a(string3, f309f, c0531zf.b);
                                } else {
                                    if (z2) {
                                        Log.w("SupportMenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
                                    }
                                    c0512yf.z = null;
                                }
                                c0512yf.A = obtainStyledAttributes2.getText(17);
                                c0512yf.B = obtainStyledAttributes2.getText(22);
                                if (obtainStyledAttributes2.hasValue(19)) {
                                    c0512yf.D = AbstractC0166h6.c(obtainStyledAttributes2.getInt(19, -1), c0512yf.D);
                                } else {
                                    c0512yf.D = null;
                                }
                                if (obtainStyledAttributes2.hasValue(18)) {
                                    if (!obtainStyledAttributes2.hasValue(18) || (resourceId = obtainStyledAttributes2.getResourceId(18, 0)) == 0 || (colorStateList = L1.v(context, resourceId)) == null) {
                                        colorStateList = obtainStyledAttributes2.getColorStateList(18);
                                    }
                                    c0512yf.C = colorStateList;
                                } else {
                                    c0512yf.C = null;
                                }
                                obtainStyledAttributes2.recycle();
                                c0512yf.h = false;
                                z = true;
                            } else if (name3.equals("menu")) {
                                z = true;
                                c0512yf.h = true;
                                SubMenu addSubMenu = c0512yf.a.addSubMenu(c0512yf.b, c0512yf.i, c0512yf.j, c0512yf.k);
                                c0512yf.b(addSubMenu.getItem());
                                b(xmlResourceParser, attributeSet, addSubMenu);
                            } else {
                                z = true;
                                str = name3;
                                z4 = true;
                            }
                            eventType = xmlResourceParser.next();
                            r4 = z;
                            i = 2;
                            z4 = z4;
                        }
                    }
                    z = r4;
                }
                eventType = xmlResourceParser.next();
                r4 = z;
                i = 2;
                z4 = z4;
            } else {
                throw new RuntimeException("Unexpected end of document");
            }
        }
    }

    @Override // android.view.MenuInflater
    public final void inflate(int i, Menu menu) {
        if (!(menu instanceof MenuC0230kb)) {
            super.inflate(i, menu);
            return;
        }
        XmlResourceParser xmlResourceParser = null;
        boolean z = false;
        try {
            try {
                xmlResourceParser = this.c.getResources().getLayout(i);
                AttributeSet asAttributeSet = Xml.asAttributeSet(xmlResourceParser);
                if (menu instanceof MenuC0230kb) {
                    MenuC0230kb menuC0230kb = (MenuC0230kb) menu;
                    if (!menuC0230kb.p) {
                        menuC0230kb.w();
                        z = true;
                    }
                }
                b(xmlResourceParser, asAttributeSet, menu);
                if (z) {
                    ((MenuC0230kb) menu).v();
                }
                xmlResourceParser.close();
            } catch (IOException e2) {
                throw new InflateException("Error inflating menu XML", e2);
            } catch (XmlPullParserException e3) {
                throw new InflateException("Error inflating menu XML", e3);
            }
        } catch (Throwable th) {
            if (z) {
                ((MenuC0230kb) menu).v();
            }
            if (xmlResourceParser != null) {
                xmlResourceParser.close();
            }
            throw th;
        }
    }
}
