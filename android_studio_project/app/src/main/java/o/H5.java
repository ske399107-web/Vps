package o;

import android.content.Context;
import android.graphics.Typeface;
import android.util.Log;
import android.util.SparseArray;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class H5 implements InterfaceC0361r3 {
    public final Object a;
    public final Object b;
    public final Object c;
    public Object d;

    public H5(int i) {
        switch (i) {
            case 2:
                this.a = new ArrayList();
                this.b = new HashMap();
                this.c = new HashMap();
                return;
            case 5:
                this.a = new Qe(0);
                this.b = new SparseArray();
                this.c = new C0526za();
                this.d = new Qe(0);
                return;
            default:
                this.a = new Jc(10);
                this.b = new Qe(0);
                this.c = new ArrayList();
                this.d = new HashSet();
                return;
        }
    }

    public void a(T7 t7) {
        if (!((ArrayList) this.a).contains(t7)) {
            synchronized (((ArrayList) this.a)) {
                ((ArrayList) this.a).add(t7);
            }
            t7.k = true;
            return;
        }
        throw new IllegalStateException("Fragment already added: " + t7);
    }

    public void b(Object obj, ArrayList arrayList, HashSet hashSet) {
        if (arrayList.contains(obj)) {
            return;
        }
        if (!hashSet.contains(obj)) {
            hashSet.add(obj);
            ArrayList arrayList2 = (ArrayList) ((Qe) this.b).get(obj);
            if (arrayList2 != null) {
                int size = arrayList2.size();
                for (int i = 0; i < size; i++) {
                    b(arrayList2.get(i), arrayList, hashSet);
                }
            }
            hashSet.remove(obj);
            arrayList.add(obj);
            return;
        }
        throw new RuntimeException("This graph contains cyclic dependencies");
    }

    public T7 c(String str) {
        androidx.fragment.app.a aVar = (androidx.fragment.app.a) ((HashMap) this.b).get(str);
        if (aVar != null) {
            return aVar.c;
        }
        return null;
    }

    public T7 d(String str) {
        for (androidx.fragment.app.a aVar : ((HashMap) this.b).values()) {
            if (aVar != null) {
                T7 t7 = aVar.c;
                if (!str.equals(t7.e)) {
                    t7 = t7.t.c.d(str);
                }
                if (t7 != null) {
                    return t7;
                }
            }
        }
        return null;
    }

    public C0473wf e(AbstractC0160h0 abstractC0160h0) {
        ArrayList arrayList = (ArrayList) this.c;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            C0473wf c0473wf = (C0473wf) arrayList.get(i);
            if (c0473wf != null && c0473wf.b == abstractC0160h0) {
                return c0473wf;
            }
        }
        C0473wf c0473wf2 = new C0473wf((Context) this.b, abstractC0160h0);
        arrayList.add(c0473wf2);
        return c0473wf2;
    }

    public ArrayList f() {
        ArrayList arrayList = new ArrayList();
        for (androidx.fragment.app.a aVar : ((HashMap) this.b).values()) {
            if (aVar != null) {
                arrayList.add(aVar);
            }
        }
        return arrayList;
    }

    public ArrayList g() {
        ArrayList arrayList = new ArrayList();
        for (androidx.fragment.app.a aVar : ((HashMap) this.b).values()) {
            if (aVar != null) {
                arrayList.add(aVar.c);
            } else {
                arrayList.add(null);
            }
        }
        return arrayList;
    }

    public List h() {
        ArrayList arrayList;
        if (((ArrayList) this.a).isEmpty()) {
            return Collections.emptyList();
        }
        synchronized (((ArrayList) this.a)) {
            arrayList = new ArrayList((ArrayList) this.a);
        }
        return arrayList;
    }

    public void i(androidx.fragment.app.a aVar) {
        T7 t7 = aVar.c;
        String str = t7.e;
        HashMap hashMap = (HashMap) this.b;
        if (hashMap.get(str) != null) {
            return;
        }
        hashMap.put(t7.e, aVar);
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "Added fragment to active set " + t7);
        }
    }

    public void j(androidx.fragment.app.a aVar) {
        T7 t7 = aVar.c;
        if (t7.A) {
            ((C0227k8) this.d).d(t7);
        }
        if (((androidx.fragment.app.a) ((HashMap) this.b).put(t7.e, null)) != null && Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "Removed fragment from active set " + t7);
        }
    }

    public boolean k(AbstractC0160h0 abstractC0160h0, MenuItem menuItem) {
        return ((ActionMode.Callback) this.a).onActionItemClicked(e(abstractC0160h0), new MenuItemC0369rb((Context) this.b, (Af) menuItem));
    }

    public boolean l(AbstractC0160h0 abstractC0160h0, MenuC0230kb menuC0230kb) {
        C0473wf e = e(abstractC0160h0);
        Qe qe = (Qe) this.d;
        Menu menu = (Menu) qe.get(menuC0230kb);
        if (menu == null) {
            menu = new Db((Context) this.b, menuC0230kb);
            qe.put(menuC0230kb, menu);
        }
        return ((ActionMode.Callback) this.a).onCreateActionMode(e, menu);
    }

    @Override // o.InterfaceC0361r3
    public void t() {
        View view = (View) this.a;
        view.clearAnimation();
        ((ViewGroup) this.b).endViewTransition(view);
        ((I5) this.c).d();
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "Animation from operation " + ((C0055bf) this.d) + " has been cancelled.");
        }
    }

    public H5(Typeface typeface, Fb fb) {
        int i;
        int i2;
        this.d = typeface;
        this.a = fb;
        this.c = new Gb(1024);
        int a = fb.a(6);
        if (a != 0) {
            int i3 = a + fb.a;
            i = ((ByteBuffer) fb.d).getInt(((ByteBuffer) fb.d).getInt(i3) + i3);
        } else {
            i = 0;
        }
        this.b = new char[i * 2];
        int a2 = fb.a(6);
        if (a2 != 0) {
            int i4 = a2 + fb.a;
            i2 = ((ByteBuffer) fb.d).getInt(((ByteBuffer) fb.d).getInt(i4) + i4);
        } else {
            i2 = 0;
        }
        for (int i5 = 0; i5 < i2; i5++) {
            Lg lg = new Lg(this, i5);
            Eb c = lg.c();
            int a3 = c.a(4);
            Character.toChars(a3 != 0 ? ((ByteBuffer) c.d).getInt(a3 + c.a) : 0, (char[]) this.b, i5 * 2);
            Ha.e(lg.b() > 0, "invalid metadata codepoint length");
            ((Gb) this.c).a(lg, 0, lg.b() - 1);
        }
    }

    public H5(Context context, ActionMode.Callback callback) {
        this.b = context;
        this.a = callback;
        this.c = new ArrayList();
        this.d = new Qe(0);
    }

    public H5(View view, ViewGroup viewGroup, I5 i5, C0055bf c0055bf) {
        this.a = view;
        this.b = viewGroup;
        this.c = i5;
        this.d = c0055bf;
    }
}
