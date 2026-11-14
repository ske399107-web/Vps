package o;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.FragmentContainerView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Y7 implements LayoutInflater.Factory2 {
    public final C0188i8 a;

    public Y7(C0188i8 c0188i8) {
        this.a = c0188i8;
    }

    @Override // android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        boolean z;
        androidx.fragment.app.a f2;
        boolean equals = FragmentContainerView.class.getName().equals(str);
        C0188i8 c0188i8 = this.a;
        if (equals) {
            return new FragmentContainerView(context, attributeSet, c0188i8);
        }
        if (!"fragment".equals(str)) {
            return null;
        }
        String attributeValue = attributeSet.getAttributeValue(null, "class");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC0093dd.a);
        if (attributeValue == null) {
            attributeValue = obtainStyledAttributes.getString(0);
        }
        int resourceId = obtainStyledAttributes.getResourceId(1, -1);
        String string = obtainStyledAttributes.getString(2);
        obtainStyledAttributes.recycle();
        if (attributeValue != null) {
            try {
                z = T7.class.isAssignableFrom(C0088d8.b(context.getClassLoader(), attributeValue));
            } catch (ClassNotFoundException unused) {
                z = false;
            }
            if (z) {
                int id = view != null ? view.getId() : 0;
                if (id == -1 && resourceId == -1 && string == null) {
                    throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + attributeValue);
                }
                T7 B = resourceId != -1 ? c0188i8.B(resourceId) : null;
                if (B == null && string != null) {
                    H5 h5 = c0188i8.c;
                    ArrayList arrayList = (ArrayList) h5.a;
                    int size = arrayList.size() - 1;
                    while (true) {
                        if (size >= 0) {
                            T7 t7 = (T7) arrayList.get(size);
                            if (t7 != null && string.equals(t7.x)) {
                                B = t7;
                                break;
                            }
                            size--;
                        } else {
                            Iterator it = ((HashMap) h5.b).values().iterator();
                            while (true) {
                                if (!it.hasNext()) {
                                    B = null;
                                    break;
                                }
                                androidx.fragment.app.a aVar = (androidx.fragment.app.a) it.next();
                                if (aVar != null) {
                                    B = aVar.c;
                                    if (string.equals(B.x)) {
                                        break;
                                    }
                                }
                            }
                        }
                    }
                }
                if (B == null && id != -1) {
                    B = c0188i8.B(id);
                }
                if (B == null) {
                    C0088d8 D = c0188i8.D();
                    context.getClassLoader();
                    B = D.a(attributeValue);
                    B.m = true;
                    B.v = resourceId != 0 ? resourceId : id;
                    B.w = id;
                    B.x = string;
                    B.n = true;
                    B.r = c0188i8;
                    V7 v7 = c0188i8.t;
                    B.s = v7;
                    U0 u0 = v7.h;
                    B.C = true;
                    if ((v7 == null ? null : v7.g) != null) {
                        B.C = true;
                    }
                    f2 = c0188i8.a(B);
                    if (Log.isLoggable("FragmentManager", 2)) {
                        Log.v("FragmentManager", "Fragment " + B + " has been inflated via the <fragment> tag: id=0x" + Integer.toHexString(resourceId));
                    }
                } else if (!B.n) {
                    B.n = true;
                    B.r = c0188i8;
                    V7 v72 = c0188i8.t;
                    B.s = v72;
                    U0 u02 = v72.h;
                    B.C = true;
                    if ((v72 == null ? null : v72.g) != null) {
                        B.C = true;
                    }
                    f2 = c0188i8.f(B);
                    if (Log.isLoggable("FragmentManager", 2)) {
                        Log.v("FragmentManager", "Retained Fragment " + B + " has been re-attached via the <fragment> tag: id=0x" + Integer.toHexString(resourceId));
                    }
                } else {
                    throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(id) + " with another fragment for " + attributeValue);
                }
                ViewGroup viewGroup = (ViewGroup) view;
                C0327p8 c0327p8 = AbstractC0347q8.a;
                AbstractC0347q8.b(new C0267m8(B, "Attempting to use <fragment> tag to add fragment " + B + " to container " + viewGroup));
                AbstractC0347q8.a(B).getClass();
                B.D = viewGroup;
                f2.k();
                f2.j();
                View view2 = B.E;
                if (view2 != null) {
                    if (resourceId != 0) {
                        view2.setId(resourceId);
                    }
                    if (B.E.getTag() == null) {
                        B.E.setTag(string);
                    }
                    B.E.addOnAttachStateChangeListener(new X7(this, f2));
                    return B.E;
                }
                throw new IllegalStateException(AbstractC0304o5.h("Fragment ", attributeValue, " did not create a view."));
            }
        }
        return null;
    }
}
