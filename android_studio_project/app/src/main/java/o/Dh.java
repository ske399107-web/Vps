package o;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class Dh {
    public static WeakHashMap a;
    public static Field b;
    public static boolean c;
    public static final int[] d = {2131230737, 2131230738, 2131230749, 2131230760, 2131230763, 2131230764, 2131230765, 2131230766, 2131230767, 2131230768, 2131230739, 2131230740, 2131230741, 2131230742, 2131230743, 2131230744, 2131230745, 2131230746, 2131230747, 2131230748, 2131230750, 2131230751, 2131230752, 2131230753, 2131230754, 2131230755, 2131230756, 2131230757, 2131230758, 2131230759, 2131230761, 2131230762};
    public static final C0356qh e = new Object();

    /* renamed from: f, reason: collision with root package name */
    public static final ViewTreeObserverOnGlobalLayoutListenerC0395sh f82f = new ViewTreeObserverOnGlobalLayoutListenerC0395sh();

    public static Ph a(View view) {
        if (a == null) {
            a = new WeakHashMap();
        }
        Ph ph = (Ph) a.get(view);
        if (ph == null) {
            Ph ph2 = new Ph(view);
            a.put(view, ph2);
            return ph2;
        }
        return ph;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v5, types: [o.Ch, java.lang.Object] */
    public static boolean b(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        ArrayList arrayList = Ch.d;
        Ch ch = (Ch) view.getTag(2131231178);
        Ch ch2 = ch;
        if (ch == null) {
            ?? obj = new Object();
            obj.a = null;
            obj.b = null;
            obj.c = null;
            view.setTag(2131231178, obj);
            ch2 = obj;
        }
        if (keyEvent.getAction() == 0) {
            WeakHashMap weakHashMap = ch2.a;
            if (weakHashMap != null) {
                weakHashMap.clear();
            }
            ArrayList arrayList2 = Ch.d;
            if (!arrayList2.isEmpty()) {
                synchronized (arrayList2) {
                    try {
                        if (ch2.a == null) {
                            ch2.a = new WeakHashMap();
                        }
                        for (int size = arrayList2.size() - 1; size >= 0; size--) {
                            ArrayList arrayList3 = Ch.d;
                            View view2 = (View) ((WeakReference) arrayList3.get(size)).get();
                            if (view2 == null) {
                                arrayList3.remove(size);
                            } else {
                                ch2.a.put(view2, Boolean.TRUE);
                                for (ViewParent parent = view2.getParent(); parent instanceof View; parent = parent.getParent()) {
                                    ch2.a.put((View) parent, Boolean.TRUE);
                                }
                            }
                        }
                    } finally {
                    }
                }
            }
        }
        View a2 = ch2.a(view);
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (a2 != null && !KeyEvent.isModifierKey(keyCode)) {
                if (ch2.b == null) {
                    ch2.b = new SparseArray();
                }
                ch2.b.put(keyCode, new WeakReference(a2));
            }
        }
        if (a2 == null) {
            return false;
        }
        return true;
    }

    public static View.AccessibilityDelegate c(View view) {
        if (Build.VERSION.SDK_INT >= 29) {
            return AbstractC0533zh.a(view);
        }
        if (c) {
            return null;
        }
        if (b == null) {
            try {
                Field declaredField = View.class.getDeclaredField("mAccessibilityDelegate");
                b = declaredField;
                declaredField.setAccessible(true);
            } catch (Throwable unused) {
                c = true;
                return null;
            }
        }
        try {
            Object obj = b.get(view);
            if (!(obj instanceof View.AccessibilityDelegate)) {
                return null;
            }
            return (View.AccessibilityDelegate) obj;
        } catch (Throwable unused2) {
            c = true;
            return null;
        }
    }

    public static CharSequence d(View view) {
        Object tag;
        if (Build.VERSION.SDK_INT >= 28) {
            tag = AbstractC0514yh.a(view);
        } else {
            tag = view.getTag(2131231171);
            if (!CharSequence.class.isInstance(tag)) {
                tag = null;
            }
        }
        return (CharSequence) tag;
    }

    public static ArrayList e(View view) {
        ArrayList arrayList = (ArrayList) view.getTag(2131231168);
        if (arrayList == null) {
            ArrayList arrayList2 = new ArrayList();
            view.setTag(2131231168, arrayList2);
            return arrayList2;
        }
        return arrayList;
    }

    public static String[] f(A1 a1) {
        if (Build.VERSION.SDK_INT >= 31) {
            return Bh.a(a1);
        }
        return (String[]) a1.getTag(2131231174);
    }

    public static void g(View view, int i) {
        boolean z;
        AccessibilityManager accessibilityManager = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        if (!accessibilityManager.isEnabled()) {
            return;
        }
        if (d(view) != null && view.isShown() && view.getWindowVisibility() == 0) {
            z = true;
        } else {
            z = false;
        }
        int i2 = 32;
        if (view.getAccessibilityLiveRegion() == 0 && !z) {
            if (i == 32) {
                AccessibilityEvent obtain = AccessibilityEvent.obtain();
                view.onInitializeAccessibilityEvent(obtain);
                obtain.setEventType(32);
                obtain.setContentChangeTypes(i);
                obtain.setSource(view);
                view.onPopulateAccessibilityEvent(obtain);
                obtain.getText().add(d(view));
                accessibilityManager.sendAccessibilityEvent(obtain);
                return;
            }
            if (view.getParent() != null) {
                try {
                    view.getParent().notifySubtreeAccessibilityStateChanged(view, view, i);
                    return;
                } catch (AbstractMethodError e2) {
                    Log.e("ViewCompat", view.getParent().getClass().getSimpleName().concat(" does not fully implement ViewParent"), e2);
                    return;
                }
            }
            return;
        }
        AccessibilityEvent obtain2 = AccessibilityEvent.obtain();
        if (!z) {
            i2 = 2048;
        }
        obtain2.setEventType(i2);
        obtain2.setContentChangeTypes(i);
        if (z) {
            obtain2.getText().add(d(view));
            if (view.getImportantForAccessibility() == 0) {
                view.setImportantForAccessibility(1);
            }
        }
        view.sendAccessibilityEventUnchecked(obtain2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static T4 h(View view, T4 t4) {
        if (Log.isLoggable("ViewCompat", 3)) {
            Log.d("ViewCompat", "performReceiveContent: " + t4 + ", view=" + view.getClass().getSimpleName() + "[" + view.getId() + "]");
        }
        if (Build.VERSION.SDK_INT >= 31) {
            return Bh.b(view, t4);
        }
        Rf rf = (Rf) view.getTag(2131231173);
        InterfaceC0331pc interfaceC0331pc = e;
        if (rf != null) {
            T4 a2 = Rf.a(view, t4);
            if (a2 == null) {
                return null;
            }
            if (view instanceof InterfaceC0331pc) {
                interfaceC0331pc = (InterfaceC0331pc) view;
            }
            return interfaceC0331pc.a(a2);
        }
        if (view instanceof InterfaceC0331pc) {
            interfaceC0331pc = (InterfaceC0331pc) view;
        }
        return interfaceC0331pc.a(t4);
    }

    public static void i(View view, int i) {
        ArrayList e2 = e(view);
        for (int i2 = 0; i2 < e2.size(); i2++) {
            if (((C0496y) e2.get(i2)).a() == i) {
                e2.remove(i2);
                return;
            }
        }
    }

    public static void j(View view, C0496y c0496y, N n) {
        r rVar;
        C0496y c0496y2 = new C0496y(null, c0496y.b, null, n, c0496y.c);
        View.AccessibilityDelegate c2 = c(view);
        if (c2 == null) {
            rVar = null;
        } else if (c2 instanceof C0338q) {
            rVar = ((C0338q) c2).a;
        } else {
            rVar = new r(c2);
        }
        if (rVar == null) {
            rVar = new r();
        }
        l(view, rVar);
        i(view, c0496y2.a());
        e(view).add(c0496y2);
        g(view, 0);
    }

    public static void k(View view, Context context, int[] iArr, AttributeSet attributeSet, TypedArray typedArray, int i) {
        if (Build.VERSION.SDK_INT >= 29) {
            AbstractC0533zh.b(view, context, iArr, attributeSet, typedArray, i, 0);
        }
    }

    public static void l(View view, r rVar) {
        C0338q c0338q;
        if (rVar == null && (c(view) instanceof C0338q)) {
            rVar = new r();
        }
        if (view.getImportantForAccessibility() == 0) {
            view.setImportantForAccessibility(1);
        }
        if (rVar == null) {
            c0338q = null;
        } else {
            c0338q = rVar.b;
        }
        view.setAccessibilityDelegate(c0338q);
    }

    public static void m(View view, CharSequence charSequence) {
        boolean z;
        new C0375rh(2131231171, CharSequence.class, 8, 28, 1).d(view, charSequence);
        ViewTreeObserverOnGlobalLayoutListenerC0395sh viewTreeObserverOnGlobalLayoutListenerC0395sh = f82f;
        if (charSequence != null) {
            WeakHashMap weakHashMap = viewTreeObserverOnGlobalLayoutListenerC0395sh.a;
            if (view.isShown() && view.getWindowVisibility() == 0) {
                z = true;
            } else {
                z = false;
            }
            weakHashMap.put(view, Boolean.valueOf(z));
            view.addOnAttachStateChangeListener(viewTreeObserverOnGlobalLayoutListenerC0395sh);
            if (view.isAttachedToWindow()) {
                view.getViewTreeObserver().addOnGlobalLayoutListener(viewTreeObserverOnGlobalLayoutListenerC0395sh);
                return;
            }
            return;
        }
        viewTreeObserverOnGlobalLayoutListenerC0395sh.a.remove(view);
        view.removeOnAttachStateChangeListener(viewTreeObserverOnGlobalLayoutListenerC0395sh);
        view.getViewTreeObserver().removeOnGlobalLayoutListener(viewTreeObserverOnGlobalLayoutListenerC0395sh);
    }
}
