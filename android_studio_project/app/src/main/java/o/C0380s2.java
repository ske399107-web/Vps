package o;

import android.content.ClipDescription;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.location.LocationManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Trace;
import android.text.Editable;
import android.text.Selection;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

/* renamed from: o.s2, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0380s2 implements InterfaceC0367r9 {
    public static volatile C0380s2 e;

    /* renamed from: f, reason: collision with root package name */
    public static final Object f275f = new Object();
    public static C0380s2 g;
    public final /* synthetic */ int a;
    public Object b;
    public Object c;
    public Object d;

    public /* synthetic */ C0380s2() {
        this.a = 2;
    }

    public static boolean h(Editable editable, KeyEvent keyEvent, boolean z) {
        Mg[] mgArr;
        if (!KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState())) {
            return false;
        }
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        if (selectionStart != -1 && selectionEnd != -1 && selectionStart == selectionEnd && (mgArr = (Mg[]) editable.getSpans(selectionStart, selectionEnd, Mg.class)) != null && mgArr.length > 0) {
            for (Mg mg : mgArr) {
                int spanStart = editable.getSpanStart(mg);
                int spanEnd = editable.getSpanEnd(mg);
                if ((z && spanStart == selectionStart) || ((!z && spanEnd == selectionStart) || (selectionStart > spanStart && selectionStart < spanEnd))) {
                    editable.delete(spanStart, spanEnd);
                    return true;
                }
            }
        }
        return false;
    }

    public static C0380s2 r(Context context) {
        if (e == null) {
            synchronized (f275f) {
                try {
                    if (e == null) {
                        e = new C0380s2(context);
                    }
                } finally {
                }
            }
        }
        return e;
    }

    public static C0380s2 y(Context context, AttributeSet attributeSet, int[] iArr, int i) {
        return new C0380s2(context, context.obtainStyledAttributes(attributeSet, iArr, i, 0));
    }

    public void A() {
        ((TypedArray) this.b).recycle();
    }

    public void B(M4 m4, int i, int i2, int i3) {
        m4.getClass();
        int i4 = m4.b0;
        int i5 = m4.c0;
        m4.b0 = 0;
        m4.c0 = 0;
        m4.O(i2);
        m4.L(i3);
        if (i4 < 0) {
            m4.b0 = 0;
        } else {
            m4.b0 = i4;
        }
        if (i5 < 0) {
            m4.c0 = 0;
        } else {
            m4.c0 = i5;
        }
        M4 m42 = (M4) this.d;
        m42.t0 = i;
        m42.U();
    }

    public void C(View view) {
        if (((ArrayList) this.d).remove(view)) {
            C0252ld c0252ld = (C0252ld) this.b;
            Id I = RecyclerView.I(view);
            if (I != null) {
                int i = I.p;
                RecyclerView recyclerView = c0252ld.a;
                if (recyclerView.L()) {
                    I.q = i;
                    recyclerView.p0.add(I);
                } else {
                    WeakHashMap weakHashMap = Dh.a;
                    I.a.setImportantForAccessibility(i);
                }
                I.p = 0;
            }
        }
    }

    public void D(M4 m4) {
        ArrayList arrayList = (ArrayList) this.b;
        arrayList.clear();
        int size = m4.q0.size();
        for (int i = 0; i < size; i++) {
            L4 l4 = (L4) m4.q0.get(i);
            int[] iArr = l4.p0;
            if (iArr[0] == 3 || iArr[1] == 3) {
                arrayList.add(l4);
            }
        }
        m4.s0.b = true;
    }

    @Override // o.InterfaceC0367r9
    public void a() {
    }

    @Override // o.InterfaceC0367r9
    public Uri b() {
        return (Uri) this.d;
    }

    @Override // o.InterfaceC0367r9
    public ClipDescription c() {
        return (ClipDescription) this.c;
    }

    @Override // o.InterfaceC0367r9
    public Object d() {
        return null;
    }

    @Override // o.InterfaceC0367r9
    public Uri e() {
        return (Uri) this.b;
    }

    public void f(View view, int i, boolean z) {
        int s;
        RecyclerView recyclerView = ((C0252ld) this.b).a;
        if (i < 0) {
            s = recyclerView.getChildCount();
        } else {
            s = s(i);
        }
        ((L3) this.c).e(s, z);
        if (z) {
            w(view);
        }
        recyclerView.addView(view, s);
        RecyclerView.I(view);
    }

    public void g(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        int s;
        RecyclerView recyclerView = ((C0252ld) this.b).a;
        if (i < 0) {
            s = recyclerView.getChildCount();
        } else {
            s = s(i);
        }
        ((L3) this.c).e(s, z);
        if (z) {
            w(view);
        }
        Id I = RecyclerView.I(view);
        if (I != null) {
            if (!I.k() && !I.p()) {
                throw new IllegalArgumentException("Called attach on a child which is not detached: " + I + recyclerView.y());
            }
            I.j &= -257;
        }
        recyclerView.attachViewToParent(view, s, layoutParams);
    }

    public void i(int i) {
        Id I;
        int s = s(i);
        ((L3) this.c).f(s);
        RecyclerView recyclerView = ((C0252ld) this.b).a;
        View childAt = recyclerView.getChildAt(s);
        if (childAt != null && (I = RecyclerView.I(childAt)) != null) {
            if (I.k() && !I.p()) {
                throw new IllegalArgumentException("called detach on an already detached child " + I + recyclerView.y());
            }
            I.a(256);
        }
        recyclerView.detachViewFromParent(s);
    }

    public void j(Bundle bundle) {
        HashSet hashSet;
        String string = ((Context) this.d).getString(2131623964);
        if (bundle != null) {
            try {
                HashSet hashSet2 = new HashSet();
                Iterator<String> it = bundle.keySet().iterator();
                while (true) {
                    boolean hasNext = it.hasNext();
                    hashSet = (HashSet) this.c;
                    if (!hasNext) {
                        break;
                    }
                    String next = it.next();
                    if (string.equals(bundle.getString(next, null))) {
                        Class<?> cls = Class.forName(next);
                        if (InterfaceC0288n9.class.isAssignableFrom(cls)) {
                            hashSet.add(cls);
                        }
                    }
                }
                Iterator it2 = hashSet.iterator();
                while (it2.hasNext()) {
                    k((Class) it2.next(), hashSet2);
                }
            } catch (ClassNotFoundException e2) {
                throw new RuntimeException(e2);
            }
        }
    }

    public Object k(Class cls, HashSet hashSet) {
        Object obj;
        if (Ha.Y()) {
            try {
                Ha.a(cls.getSimpleName());
            } catch (Throwable th) {
                Trace.endSection();
                throw th;
            }
        }
        if (!hashSet.contains(cls)) {
            HashMap hashMap = (HashMap) this.b;
            if (!hashMap.containsKey(cls)) {
                hashSet.add(cls);
                try {
                    InterfaceC0288n9 interfaceC0288n9 = (InterfaceC0288n9) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                    List<Class> a = interfaceC0288n9.a();
                    if (!a.isEmpty()) {
                        for (Class cls2 : a) {
                            if (!hashMap.containsKey(cls2)) {
                                k(cls2, hashSet);
                            }
                        }
                    }
                    obj = interfaceC0288n9.b((Context) this.d);
                    hashSet.remove(cls);
                    hashMap.put(cls, obj);
                } catch (Throwable th2) {
                    throw new RuntimeException(th2);
                }
            } else {
                obj = hashMap.get(cls);
            }
            Trace.endSection();
            return obj;
        }
        throw new IllegalStateException("Cannot initialize " + cls.getName() + ". Cycle detected.");
    }

    public View l(int i) {
        return ((C0252ld) this.b).a.getChildAt(s(i));
    }

    public int m() {
        return ((C0252ld) this.b).a.getChildCount() - ((ArrayList) this.d).size();
    }

    public ColorStateList n(int i) {
        int resourceId;
        ColorStateList v;
        TypedArray typedArray = (TypedArray) this.b;
        if (typedArray.hasValue(i) && (resourceId = typedArray.getResourceId(i, 0)) != 0 && (v = L1.v((Context) this.d, resourceId)) != null) {
            return v;
        }
        return typedArray.getColorStateList(i);
    }

    public Drawable o(int i) {
        int resourceId;
        TypedArray typedArray = (TypedArray) this.b;
        if (typedArray.hasValue(i) && (resourceId = typedArray.getResourceId(i, 0)) != 0) {
            return L1.z((Context) this.d, resourceId);
        }
        return typedArray.getDrawable(i);
    }

    public Drawable p(int i) {
        int resourceId;
        Drawable d;
        if (((TypedArray) this.b).hasValue(i) && (resourceId = ((TypedArray) this.b).getResourceId(i, 0)) != 0) {
            C0498y1 a = C0498y1.a();
            Context context = (Context) this.d;
            synchronized (a) {
                d = a.a.d(context, resourceId, true);
            }
            return d;
        }
        return null;
    }

    public Typeface q(int i, int i2, C0022a2 c0022a2) {
        int resourceId = ((TypedArray) this.b).getResourceId(i, 0);
        if (resourceId == 0) {
            return null;
        }
        if (((TypedValue) this.c) == null) {
            this.c = new TypedValue();
        }
        TypedValue typedValue = (TypedValue) this.c;
        ThreadLocal threadLocal = AbstractC0054be.a;
        Context context = (Context) this.d;
        if (context.isRestricted()) {
            return null;
        }
        return AbstractC0054be.b(context, resourceId, typedValue, i2, c0022a2, true, false);
    }

    public int s(int i) {
        if (i < 0) {
            return -1;
        }
        int childCount = ((C0252ld) this.b).a.getChildCount();
        int i2 = i;
        while (i2 < childCount) {
            L3 l3 = (L3) this.c;
            int b = i - (i2 - l3.b(i2));
            if (b == 0) {
                while (l3.d(i2)) {
                    i2++;
                }
                return i2;
            }
            i2 += b;
        }
        return -1;
    }

    public View t(int i) {
        return ((C0252ld) this.b).a.getChildAt(i);
    }

    public String toString() {
        switch (this.a) {
            case 3:
                return ((L3) this.c).toString() + ", hidden list:" + ((ArrayList) this.d).size();
            default:
                return super.toString();
        }
    }

    public int u() {
        return ((C0252ld) this.b).a.getChildCount();
    }

    public boolean v(CharSequence charSequence, int i, int i2, Lg lg) {
        int i3;
        if ((lg.c & 3) == 0) {
            C0423u5 c0423u5 = (C0423u5) this.d;
            Eb c = lg.c();
            int a = c.a(8);
            if (a != 0) {
                ((ByteBuffer) c.d).getShort(a + c.a);
            }
            c0423u5.getClass();
            ThreadLocal threadLocal = C0423u5.b;
            if (threadLocal.get() == null) {
                threadLocal.set(new StringBuilder());
            }
            StringBuilder sb = (StringBuilder) threadLocal.get();
            sb.setLength(0);
            while (i < i2) {
                sb.append(charSequence.charAt(i));
                i++;
            }
            TextPaint textPaint = c0423u5.a;
            String sb2 = sb.toString();
            int i4 = Bc.a;
            boolean hasGlyph = textPaint.hasGlyph(sb2);
            int i5 = lg.c & 4;
            if (hasGlyph) {
                i3 = i5 | 2;
            } else {
                i3 = i5 | 1;
            }
            lg.c = i3;
        }
        if ((lg.c & 3) == 2) {
            return true;
        }
        return false;
    }

    public void w(View view) {
        ((ArrayList) this.d).add(view);
        C0252ld c0252ld = (C0252ld) this.b;
        Id I = RecyclerView.I(view);
        if (I != null) {
            int i = I.q;
            View view2 = I.a;
            if (i != -1) {
                I.p = i;
            } else {
                WeakHashMap weakHashMap = Dh.a;
                I.p = view2.getImportantForAccessibility();
            }
            RecyclerView recyclerView = c0252ld.a;
            if (recyclerView.L()) {
                I.q = 4;
                recyclerView.p0.add(I);
            } else {
                WeakHashMap weakHashMap2 = Dh.a;
                view2.setImportantForAccessibility(4);
            }
        }
    }

    public boolean x(int i, C4 c4, L4 l4) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        int[] iArr = l4.p0;
        int i2 = iArr[0];
        C0063c3 c0063c3 = (C0063c3) this.c;
        c0063c3.a = i2;
        c0063c3.b = iArr[1];
        c0063c3.c = l4.q();
        c0063c3.d = l4.k();
        c0063c3.i = false;
        c0063c3.j = i;
        if (c0063c3.a == 3) {
            z = true;
        } else {
            z = false;
        }
        if (c0063c3.b == 3) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z && l4.W > 0.0f) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (z2 && l4.W > 0.0f) {
            z4 = true;
        } else {
            z4 = false;
        }
        int[] iArr2 = l4.t;
        if (z3 && iArr2[0] == 4) {
            c0063c3.a = 1;
        }
        if (z4 && iArr2[1] == 4) {
            c0063c3.b = 1;
        }
        c4.b(l4, c0063c3);
        l4.O(c0063c3.e);
        l4.L(c0063c3.f188f);
        l4.E = c0063c3.h;
        l4.I(c0063c3.g);
        c0063c3.j = 0;
        return c0063c3.i;
    }

    public Object z(CharSequence charSequence, int i, int i2, int i3, boolean z, M6 m6) {
        int i4;
        Gb gb;
        char c;
        N6 n6 = new N6((Gb) ((H5) this.c).c);
        int codePointAt = Character.codePointAt(charSequence, i);
        boolean z2 = true;
        int i5 = 0;
        int i6 = i;
        loop0: while (true) {
            i4 = i6;
            while (i6 < i2 && i5 < i3 && z2) {
                SparseArray sparseArray = n6.c.a;
                if (sparseArray == null) {
                    gb = null;
                } else {
                    gb = (Gb) sparseArray.get(codePointAt);
                }
                if (n6.a != 2) {
                    if (gb == null) {
                        n6.a();
                        c = 1;
                    } else {
                        n6.a = 2;
                        n6.c = gb;
                        n6.f127f = 1;
                        c = 2;
                    }
                } else {
                    if (gb != null) {
                        n6.c = gb;
                        n6.f127f++;
                    } else {
                        if (codePointAt == 65038) {
                            n6.a();
                        } else if (codePointAt != 65039) {
                            Gb gb2 = n6.c;
                            if (gb2.b != null) {
                                if (n6.f127f == 1) {
                                    if (n6.b()) {
                                        n6.d = n6.c;
                                        n6.a();
                                    } else {
                                        n6.a();
                                    }
                                } else {
                                    n6.d = gb2;
                                    n6.a();
                                }
                                c = 3;
                            } else {
                                n6.a();
                            }
                        }
                        c = 1;
                    }
                    c = 2;
                }
                n6.e = codePointAt;
                if (c != 1) {
                    if (c != 2) {
                        if (c == 3) {
                            if (z || !v(charSequence, i4, i6, n6.d.b)) {
                                z2 = m6.j(charSequence, i4, i6, n6.d.b);
                                i5++;
                            }
                        }
                    } else {
                        int charCount = Character.charCount(codePointAt) + i6;
                        if (charCount < i2) {
                            codePointAt = Character.codePointAt(charSequence, charCount);
                        }
                        i6 = charCount;
                    }
                } else {
                    i6 = Character.charCount(Character.codePointAt(charSequence, i4)) + i4;
                    if (i6 < i2) {
                        codePointAt = Character.codePointAt(charSequence, i6);
                    }
                }
            }
        }
        if (n6.a == 2 && n6.c.b != null && ((n6.f127f > 1 || n6.b()) && i5 < i3 && z2 && (z || !v(charSequence, i4, i6, n6.c.b)))) {
            m6.j(charSequence, i4, i6, n6.c.b);
        }
        return m6.b();
    }

    public /* synthetic */ C0380s2(Object obj, Object obj2, Object obj3, int i) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
        this.d = obj3;
    }

    public C0380s2(C0252ld c0252ld) {
        this.a = 3;
        this.b = c0252ld;
        this.c = new L3();
        this.d = new ArrayList();
    }

    public C0380s2(Runnable runnable) {
        this.a = 7;
        this.d = new CopyOnWriteArrayList();
        this.b = new HashMap();
        this.c = runnable;
    }

    public C0380s2(Context context, TypedArray typedArray) {
        this.a = 8;
        this.d = context;
        this.b = typedArray;
    }

    public C0380s2(Context context, LocationManager locationManager) {
        this.a = 9;
        this.c = new Object();
        this.d = context;
        this.b = locationManager;
    }

    public C0380s2(Context context) {
        this.a = 0;
        this.d = context.getApplicationContext();
        this.c = new HashSet();
        this.b = new HashMap();
    }

    public C0380s2(M4 m4) {
        this.a = 1;
        this.b = new ArrayList();
        this.c = new Object();
        this.d = m4;
    }

    public C0380s2(H5 h5, C0424u6 c0424u6, C0423u5 c0423u5, Set set) {
        this.a = 5;
        this.b = c0424u6;
        this.c = h5;
        this.d = c0423u5;
        if (set.isEmpty()) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            int[] iArr = (int[]) it.next();
            String str = new String(iArr, 0, iArr.length);
            z(str, 0, str.length(), 1, true, new C(13, str));
        }
    }
}
