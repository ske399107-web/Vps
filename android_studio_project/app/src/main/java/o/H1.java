package o;

import com.ffrt.proxyread.R;
import android.animation.Animator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Paint;
import android.graphics.Shader;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.text.Editable;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.ActionMode;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.AbsSeekBar;
import android.widget.EditText;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class H1 implements InterfaceC0361r3, M6, InterfaceC0112ec {
    public static final int[] d = {R.attr.indeterminateDrawable, R.attr.progressDrawable};
    public final /* synthetic */ int a;
    public Object b;
    public Object c;

    public /* synthetic */ H1(int i, boolean z) {
        this.a = i;
    }

    public static H1 v(R9 r9) {
        return new H1(r9, ((Mh) r9).d());
    }

    public static int y(int i, int i2) {
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < i; i5++) {
            i3++;
            if (i3 == i2) {
                i4++;
                i3 = 0;
            } else if (i3 > i2) {
                i4++;
                i3 = 1;
            }
        }
        if (i3 + 1 > i2) {
            return i4 + 1;
        }
        return i4;
    }

    public boolean A(View view) {
        C0391sd c0391sd = (C0391sd) this.b;
        int d2 = c0391sd.d();
        int c = c0391sd.c();
        int b = c0391sd.b(view);
        int a = c0391sd.a(view);
        C0336ph c0336ph = (C0336ph) this.c;
        c0336ph.b = d2;
        c0336ph.c = c;
        c0336ph.d = b;
        c0336ph.e = a;
        c0336ph.a = 24579;
        return c0336ph.a();
    }

    public void B(AttributeSet attributeSet, int i) {
        switch (this.a) {
            case 0:
                AbsSeekBar absSeekBar = (AbsSeekBar) this.b;
                C0380s2 y = C0380s2.y(absSeekBar.getContext(), attributeSet, d, i);
                Drawable p = y.p(0);
                if (p != null) {
                    if (p instanceof AnimationDrawable) {
                        AnimationDrawable animationDrawable = (AnimationDrawable) p;
                        int numberOfFrames = animationDrawable.getNumberOfFrames();
                        AnimationDrawable animationDrawable2 = new AnimationDrawable();
                        animationDrawable2.setOneShot(animationDrawable.isOneShot());
                        for (int i2 = 0; i2 < numberOfFrames; i2++) {
                            Drawable N = N(animationDrawable.getFrame(i2), true);
                            N.setLevel(10000);
                            animationDrawable2.addFrame(N, animationDrawable.getDuration(i2));
                        }
                        animationDrawable2.setLevel(10000);
                        p = animationDrawable2;
                    }
                    absSeekBar.setIndeterminateDrawable(p);
                }
                Drawable p2 = y.p(1);
                if (p2 != null) {
                    absSeekBar.setProgressDrawable(N(p2, false));
                }
                y.A();
                return;
            default:
                TypedArray obtainStyledAttributes = ((EditText) this.b).getContext().obtainStyledAttributes(attributeSet, AbstractC0153gd.i, i, 0);
                try {
                    boolean z = true;
                    if (obtainStyledAttributes.hasValue(14)) {
                        z = obtainStyledAttributes.getBoolean(14, true);
                    }
                    obtainStyledAttributes.recycle();
                    M(z);
                    return;
                } catch (Throwable th) {
                    obtainStyledAttributes.recycle();
                    throw th;
                }
        }
    }

    public void C(int i, int i2) {
        int[] iArr = (int[]) this.b;
        if (iArr != null && i < iArr.length) {
            int i3 = i + i2;
            s(i3);
            int[] iArr2 = (int[]) this.b;
            System.arraycopy(iArr2, i, iArr2, i3, (iArr2.length - i) - i2);
            Arrays.fill((int[]) this.b, i, i3, -1);
            ArrayList arrayList = (ArrayList) this.c;
            if (arrayList != null) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    C0115ef c0115ef = (C0115ef) ((ArrayList) this.c).get(size);
                    int i4 = c0115ef.a;
                    if (i4 >= i) {
                        c0115ef.a = i4 + i2;
                    }
                }
            }
        }
    }

    public void D(int i, int i2) {
        int[] iArr = (int[]) this.b;
        if (iArr != null && i < iArr.length) {
            int i3 = i + i2;
            s(i3);
            int[] iArr2 = (int[]) this.b;
            System.arraycopy(iArr2, i3, iArr2, i, (iArr2.length - i) - i2);
            int[] iArr3 = (int[]) this.b;
            Arrays.fill(iArr3, iArr3.length - i2, iArr3.length, -1);
            ArrayList arrayList = (ArrayList) this.c;
            if (arrayList != null) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    C0115ef c0115ef = (C0115ef) ((ArrayList) this.c).get(size);
                    int i4 = c0115ef.a;
                    if (i4 >= i) {
                        if (i4 < i3) {
                            ((ArrayList) this.c).remove(size);
                        } else {
                            c0115ef.a = i4 - i2;
                        }
                    }
                }
            }
        }
    }

    public I6 E(InputConnection inputConnection, EditorInfo editorInfo) {
        C c = (C) this.c;
        if (inputConnection == null) {
            c.getClass();
            inputConnection = null;
        } else {
            H1 h1 = (H1) c.b;
            h1.getClass();
            if (!(inputConnection instanceof I6)) {
                inputConnection = new I6((EditText) h1.b, inputConnection, editorInfo);
            }
        }
        return (I6) inputConnection;
    }

    public void F(AbstractC0160h0 abstractC0160h0) {
        H5 h5 = (H5) this.b;
        ((ActionMode.Callback) h5.a).onDestroyActionMode(h5.e(abstractC0160h0));
        LayoutInflaterFactory2C0439v1 layoutInflaterFactory2C0439v1 = (LayoutInflaterFactory2C0439v1) this.c;
        if (layoutInflaterFactory2C0439v1.w != null) {
            layoutInflaterFactory2C0439v1.l.getDecorView().removeCallbacks(layoutInflaterFactory2C0439v1.x);
        }
        if (layoutInflaterFactory2C0439v1.v != null) {
            Ph ph = layoutInflaterFactory2C0439v1.y;
            if (ph != null) {
                ph.b();
            }
            Ph a = Dh.a(layoutInflaterFactory2C0439v1.v);
            a.a(0.0f);
            layoutInflaterFactory2C0439v1.y = a;
            a.d(new C0220k1(2, this));
        }
        layoutInflaterFactory2C0439v1.u = null;
        ViewGroup viewGroup = layoutInflaterFactory2C0439v1.A;
        WeakHashMap weakHashMap = Dh.a;
        AbstractC0415th.c(viewGroup);
        layoutInflaterFactory2C0439v1.H();
    }

    public boolean G(AbstractC0160h0 abstractC0160h0, MenuC0230kb menuC0230kb) {
        ViewGroup viewGroup = ((LayoutInflaterFactory2C0439v1) this.c).A;
        WeakHashMap weakHashMap = Dh.a;
        AbstractC0415th.c(viewGroup);
        H5 h5 = (H5) this.b;
        C0473wf e = h5.e(abstractC0160h0);
        Qe qe = (Qe) h5.d;
        Menu menu = (Menu) qe.get(menuC0230kb);
        if (menu == null) {
            menu = new Db((Context) h5.b, menuC0230kb);
            qe.put(menuC0230kb, menu);
        }
        return ((ActionMode.Callback) h5.a).onPrepareActionMode(e, menu);
    }

    public void H(F7 f7) {
        int i = f7.b;
        Ud ud = (Ud) this.c;
        C c = (C) this.b;
        if (i == 0) {
            ud.execute(new RunnableC0040b0(c, 4, f7.a));
        } else {
            ud.execute(new T2(c, i, 1));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x022f, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void I(android.content.Context r14, android.content.res.XmlResourceParser r15) {
        /*
            Method dump skipped, instructions count: 670
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: o.H1.I(android.content.Context, android.content.res.XmlResourceParser):void");
    }

    public Wb J(Id id, int i) {
        Ih ih;
        Wb wb;
        Qe qe = (Qe) this.b;
        int d2 = qe.d(id);
        if (d2 >= 0 && (ih = (Ih) qe.i(d2)) != null) {
            int i2 = ih.a;
            if ((i2 & i) != 0) {
                int i3 = i2 & (~i);
                ih.a = i3;
                if (i == 4) {
                    wb = ih.b;
                } else if (i == 8) {
                    wb = ih.c;
                } else {
                    throw new IllegalArgumentException("Must provide flag PRE or POST");
                }
                if ((i3 & 12) == 0) {
                    qe.g(d2);
                    ih.a = 0;
                    ih.b = null;
                    ih.c = null;
                    Ih.d.c(ih);
                }
                return wb;
            }
        }
        return null;
    }

    public void K(Id id) {
        Ih ih = (Ih) ((Qe) this.b).get(id);
        if (ih == null) {
            return;
        }
        ih.a &= -2;
    }

    public void L(Id id) {
        C0526za c0526za = (C0526za) this.c;
        int e = c0526za.e() - 1;
        while (true) {
            if (e < 0) {
                break;
            }
            if (id == c0526za.f(e)) {
                Object[] objArr = c0526za.c;
                Object obj = objArr[e];
                Object obj2 = AbstractC0487x9.v;
                if (obj != obj2) {
                    objArr[e] = obj2;
                    c0526za.a = true;
                }
            } else {
                e--;
            }
        }
        Ih ih = (Ih) ((Qe) this.b).remove(id);
        if (ih != null) {
            ih.a = 0;
            ih.b = null;
            ih.c = null;
            Ih.d.c(ih);
        }
    }

    public void M(boolean z) {
        R6 r6 = (R6) ((H1) ((C) this.c).b).c;
        if (r6.c != z) {
            if (r6.b != null) {
                C6 a = C6.a();
                Q6 q6 = r6.b;
                a.getClass();
                Ha.g(q6, "initCallback cannot be null");
                ReentrantReadWriteLock reentrantReadWriteLock = a.a;
                reentrantReadWriteLock.writeLock().lock();
                try {
                    a.b.remove(q6);
                } finally {
                    reentrantReadWriteLock.writeLock().unlock();
                }
            }
            r6.c = z;
            if (z) {
                R6.a(r6.a, C6.a().b());
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Drawable N(Drawable drawable, boolean z) {
        boolean z2;
        if (drawable instanceof Si) {
            ((Ti) ((Si) drawable)).getClass();
        } else {
            if (drawable instanceof LayerDrawable) {
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                int numberOfLayers = layerDrawable.getNumberOfLayers();
                Drawable[] drawableArr = new Drawable[numberOfLayers];
                for (int i = 0; i < numberOfLayers; i++) {
                    int id = layerDrawable.getId(i);
                    Drawable drawable2 = layerDrawable.getDrawable(i);
                    if (id != 16908301 && id != 16908303) {
                        z2 = false;
                    } else {
                        z2 = true;
                    }
                    drawableArr[i] = N(drawable2, z2);
                }
                LayerDrawable layerDrawable2 = new LayerDrawable(drawableArr);
                for (int i2 = 0; i2 < numberOfLayers; i2++) {
                    layerDrawable2.setId(i2, layerDrawable.getId(i2));
                    layerDrawable2.setLayerGravity(i2, layerDrawable.getLayerGravity(i2));
                    layerDrawable2.setLayerWidth(i2, layerDrawable.getLayerWidth(i2));
                    layerDrawable2.setLayerHeight(i2, layerDrawable.getLayerHeight(i2));
                    layerDrawable2.setLayerInsetLeft(i2, layerDrawable.getLayerInsetLeft(i2));
                    layerDrawable2.setLayerInsetRight(i2, layerDrawable.getLayerInsetRight(i2));
                    layerDrawable2.setLayerInsetTop(i2, layerDrawable.getLayerInsetTop(i2));
                    layerDrawable2.setLayerInsetBottom(i2, layerDrawable.getLayerInsetBottom(i2));
                    layerDrawable2.setLayerInsetStart(i2, layerDrawable.getLayerInsetStart(i2));
                    layerDrawable2.setLayerInsetEnd(i2, layerDrawable.getLayerInsetEnd(i2));
                }
                return layerDrawable2;
            }
            if (drawable instanceof BitmapDrawable) {
                BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
                Bitmap bitmap = bitmapDrawable.getBitmap();
                if (((Bitmap) this.c) == null) {
                    this.c = bitmap;
                }
                ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f}, null, null));
                shapeDrawable.getPaint().setShader(new BitmapShader(bitmap, Shader.TileMode.REPEAT, Shader.TileMode.CLAMP));
                shapeDrawable.getPaint().setColorFilter(bitmapDrawable.getPaint().getColorFilter());
                if (z) {
                    return new ClipDrawable(shapeDrawable, 3, 1);
                }
                return shapeDrawable;
            }
        }
        return drawable;
    }

    public void a(Id id, Wb wb) {
        Qe qe = (Qe) this.b;
        Ih ih = (Ih) qe.get(id);
        if (ih == null) {
            ih = Ih.a();
            qe.put(id, ih);
        }
        ih.c = wb;
        ih.a |= 8;
    }

    @Override // o.M6
    public Object b() {
        return (Wg) this.b;
    }

    public void c(boolean z) {
        T7 t7 = ((C0188i8) this.c).v;
        if (t7 != null) {
            t7.j().l.c(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.b).iterator();
        if (it.hasNext()) {
            if (it.next() == null) {
                if (z) {
                    throw null;
                }
                throw null;
            }
            throw new ClassCastException();
        }
    }

    public void d(boolean z) {
        C0188i8 c0188i8 = (C0188i8) this.c;
        U0 u0 = c0188i8.t.h;
        T7 t7 = c0188i8.v;
        if (t7 != null) {
            t7.j().l.d(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.b).iterator();
        if (it.hasNext()) {
            if (it.next() == null) {
                if (z) {
                    throw null;
                }
                throw null;
            }
            throw new ClassCastException();
        }
    }

    public void e(boolean z) {
        T7 t7 = ((C0188i8) this.c).v;
        if (t7 != null) {
            t7.j().l.e(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.b).iterator();
        if (it.hasNext()) {
            if (it.next() == null) {
                if (z) {
                    throw null;
                }
                throw null;
            }
            throw new ClassCastException();
        }
    }

    public void f(boolean z) {
        T7 t7 = ((C0188i8) this.c).v;
        if (t7 != null) {
            t7.j().l.f(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.b).iterator();
        if (it.hasNext()) {
            if (it.next() == null) {
                if (z) {
                    throw null;
                }
                throw null;
            }
            throw new ClassCastException();
        }
    }

    public void g(boolean z) {
        T7 t7 = ((C0188i8) this.c).v;
        if (t7 != null) {
            t7.j().l.g(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.b).iterator();
        if (it.hasNext()) {
            if (it.next() == null) {
                if (z) {
                    throw null;
                }
                throw null;
            }
            throw new ClassCastException();
        }
    }

    public void h(boolean z) {
        T7 t7 = ((C0188i8) this.c).v;
        if (t7 != null) {
            t7.j().l.h(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.b).iterator();
        if (it.hasNext()) {
            if (it.next() == null) {
                if (z) {
                    throw null;
                }
                throw null;
            }
            throw new ClassCastException();
        }
    }

    public void i(boolean z) {
        C0188i8 c0188i8 = (C0188i8) this.c;
        U0 u0 = c0188i8.t.h;
        T7 t7 = c0188i8.v;
        if (t7 != null) {
            t7.j().l.i(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.b).iterator();
        if (it.hasNext()) {
            if (it.next() == null) {
                if (z) {
                    throw null;
                }
                throw null;
            }
            throw new ClassCastException();
        }
    }

    @Override // o.M6
    public boolean j(CharSequence charSequence, int i, int i2, Lg lg) {
        Spannable spannableString;
        if ((lg.c & 4) > 0) {
            return true;
        }
        if (((Wg) this.b) == null) {
            if (charSequence instanceof Spannable) {
                spannableString = (Spannable) charSequence;
            } else {
                spannableString = new SpannableString(charSequence);
            }
            this.b = new Wg(spannableString);
        }
        ((C0424u6) this.c).getClass();
        ((Wg) this.b).setSpan(new Mg(lg), i, i2, 33);
        return true;
    }

    public void k(boolean z) {
        T7 t7 = ((C0188i8) this.c).v;
        if (t7 != null) {
            t7.j().l.k(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.b).iterator();
        if (it.hasNext()) {
            if (it.next() == null) {
                if (z) {
                    throw null;
                }
                throw null;
            }
            throw new ClassCastException();
        }
    }

    public void l(boolean z) {
        T7 t7 = ((C0188i8) this.c).v;
        if (t7 != null) {
            t7.j().l.l(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.b).iterator();
        if (it.hasNext()) {
            if (it.next() == null) {
                if (z) {
                    throw null;
                }
                throw null;
            }
            throw new ClassCastException();
        }
    }

    public void m(boolean z) {
        T7 t7 = ((C0188i8) this.c).v;
        if (t7 != null) {
            t7.j().l.m(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.b).iterator();
        if (it.hasNext()) {
            if (it.next() == null) {
                if (z) {
                    throw null;
                }
                throw null;
            }
            throw new ClassCastException();
        }
    }

    public void n(boolean z) {
        T7 t7 = ((C0188i8) this.c).v;
        if (t7 != null) {
            t7.j().l.n(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.b).iterator();
        if (it.hasNext()) {
            if (it.next() == null) {
                if (z) {
                    throw null;
                }
                throw null;
            }
            throw new ClassCastException();
        }
    }

    public void o(boolean z) {
        T7 t7 = ((C0188i8) this.c).v;
        if (t7 != null) {
            t7.j().l.o(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.b).iterator();
        if (it.hasNext()) {
            if (it.next() == null) {
                if (z) {
                    throw null;
                }
                throw null;
            }
            throw new ClassCastException();
        }
    }

    public void p(boolean z) {
        T7 t7 = ((C0188i8) this.c).v;
        if (t7 != null) {
            t7.j().l.p(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.b).iterator();
        if (it.hasNext()) {
            if (it.next() == null) {
                if (z) {
                    throw null;
                }
                throw null;
            }
            throw new ClassCastException();
        }
    }

    public void q(boolean z) {
        T7 t7 = ((C0188i8) this.c).v;
        if (t7 != null) {
            t7.j().l.q(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.b).iterator();
        if (it.hasNext()) {
            if (it.next() == null) {
                if (z) {
                    throw null;
                }
                throw null;
            }
            throw new ClassCastException();
        }
    }

    public void r(String str, PrintWriter printWriter) {
        Ze ze = ((C0329pa) this.c).c;
        if (ze.c > 0) {
            printWriter.print(str);
            printWriter.println("Loaders:");
            if (ze.c > 0) {
                if (ze.b[0] == null) {
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(ze.a[0]);
                    printWriter.print(": ");
                    throw null;
                }
                throw new ClassCastException();
            }
        }
    }

    public void s(int i) {
        int[] iArr = (int[]) this.b;
        if (iArr == null) {
            int[] iArr2 = new int[Math.max(i, 10) + 1];
            this.b = iArr2;
            Arrays.fill(iArr2, -1);
        } else if (i >= iArr.length) {
            int length = iArr.length;
            while (length <= i) {
                length *= 2;
            }
            int[] iArr3 = new int[length];
            this.b = iArr3;
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            int[] iArr4 = (int[]) this.b;
            Arrays.fill(iArr4, iArr.length, iArr4.length, -1);
        }
    }

    @Override // o.InterfaceC0361r3
    public void t() {
        ((Animator) this.b).end();
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "Animator from operation " + ((C0055bf) this.c) + " has been canceled.");
        }
    }

    public String toString() {
        int lastIndexOf;
        switch (this.a) {
            case 17:
                StringBuilder sb = new StringBuilder(128);
                sb.append("LoaderManager{");
                sb.append(Integer.toHexString(System.identityHashCode(this)));
                sb.append(" in ");
                R9 r9 = (R9) this.b;
                if (r9 == null) {
                    sb.append("null");
                } else {
                    String simpleName = r9.getClass().getSimpleName();
                    if (simpleName.length() <= 0 && (lastIndexOf = (simpleName = r9.getClass().getName()).lastIndexOf(46)) > 0) {
                        simpleName = simpleName.substring(lastIndexOf + 1);
                    }
                    sb.append(simpleName);
                    sb.append('{');
                    sb.append(Integer.toHexString(System.identityHashCode(r9)));
                }
                sb.append("}}");
                return sb.toString();
            case 18:
                String str = "[ ";
                if (((We) this.b) != null) {
                    for (int i = 0; i < 9; i++) {
                        StringBuilder o2 = Ve.o(str);
                        o2.append(((We) this.b).h[i]);
                        o2.append(" ");
                        str = o2.toString();
                    }
                }
                StringBuilder o3 = AbstractC0304o5.o(str, "] ");
                o3.append((We) this.b);
                return o3.toString();
            case 23:
                return "Bounds{lower=" + ((C0407t9) this.b) + " upper=" + ((C0407t9) this.c) + "}";
            default:
                return super.toString();
        }
    }

    public View u(int i, int i2, int i3, int i4) {
        int i5;
        View u;
        C0391sd c0391sd = (C0391sd) this.b;
        int d2 = c0391sd.d();
        int c = c0391sd.c();
        if (i2 > i) {
            i5 = 1;
        } else {
            i5 = -1;
        }
        View view = null;
        while (i != i2) {
            switch (c0391sd.a) {
                case 0:
                    u = c0391sd.b.u(i);
                    break;
                default:
                    u = c0391sd.b.u(i);
                    break;
            }
            int b = c0391sd.b(u);
            int a = c0391sd.a(u);
            C0336ph c0336ph = (C0336ph) this.c;
            c0336ph.b = d2;
            c0336ph.c = c;
            c0336ph.d = b;
            c0336ph.e = a;
            if (i3 != 0) {
                c0336ph.a = i3;
                if (c0336ph.a()) {
                    return u;
                }
            }
            if (i4 != 0) {
                c0336ph.a = i4;
                if (c0336ph.a()) {
                    view = u;
                }
            }
            i += i5;
        }
        return view;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0099  */
    @Override // o.InterfaceC0112ec
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public o.Mi w(android.view.View r17, o.Mi r18) {
        /*
            r16 = this;
            r0 = r16
            r1 = r17
            r2 = r18
            java.lang.Object r3 = r0.c
            o.Vh r3 = (o.Vh) r3
            int r4 = r3.a
            java.lang.Object r5 = r0.b
            o.h3 r5 = (o.C0163h3) r5
            o.Ki r6 = r2.a
            r7 = 7
            o.t9 r7 = r6.f(r7)
            r8 = 32
            o.t9 r6 = r6.f(r8)
            int r8 = r7.b
            java.lang.Object r9 = r5.b
            com.google.android.material.bottomsheet.BottomSheetBehavior r9 = (com.google.android.material.bottomsheet.BottomSheetBehavior) r9
            r9.w = r8
            boolean r8 = o.Ng.l(r17)
            int r10 = r17.getPaddingBottom()
            int r11 = r17.getPaddingLeft()
            int r12 = r17.getPaddingRight()
            boolean r13 = r9.f48o
            if (r13 == 0) goto L42
            int r10 = r18.a()
            r9.v = r10
            int r14 = r3.c
            int r10 = r10 + r14
        L42:
            int r3 = r3.b
            boolean r14 = r9.p
            int r15 = r7.a
            if (r14 == 0) goto L50
            if (r8 == 0) goto L4e
            r11 = r3
            goto L4f
        L4e:
            r11 = r4
        L4f:
            int r11 = r11 + r15
        L50:
            boolean r14 = r9.q
            int r0 = r7.c
            if (r14 == 0) goto L5c
            if (r8 == 0) goto L59
            goto L5a
        L59:
            r4 = r3
        L5a:
            int r12 = r4 + r0
        L5c:
            android.view.ViewGroup$LayoutParams r3 = r17.getLayoutParams()
            android.view.ViewGroup$MarginLayoutParams r3 = (android.view.ViewGroup.MarginLayoutParams) r3
            boolean r4 = r9.s
            r8 = 1
            if (r4 == 0) goto L6f
            int r4 = r3.leftMargin
            if (r4 == r15) goto L6f
            r3.leftMargin = r15
            r4 = r8
            goto L70
        L6f:
            r4 = 0
        L70:
            boolean r14 = r9.t
            if (r14 == 0) goto L7b
            int r14 = r3.rightMargin
            if (r14 == r0) goto L7b
            r3.rightMargin = r0
            r4 = r8
        L7b:
            boolean r0 = r9.u
            if (r0 == 0) goto L88
            int r0 = r3.topMargin
            int r7 = r7.b
            if (r0 == r7) goto L88
            r3.topMargin = r7
            goto L89
        L88:
            r8 = r4
        L89:
            if (r8 == 0) goto L8e
            r1.setLayoutParams(r3)
        L8e:
            int r0 = r17.getPaddingTop()
            r1.setPadding(r11, r0, r12, r10)
            boolean r0 = r5.a
            if (r0 == 0) goto L9d
            int r1 = r6.d
            r9.m = r1
        L9d:
            if (r13 != 0) goto La1
            if (r0 == 0) goto La4
        La1:
            r9.I()
        La4:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: o.H1.w(android.view.View, o.Mi):o.Mi");
    }

    public KeyListener x(KeyListener keyListener) {
        if (!(keyListener instanceof NumberKeyListener)) {
            ((H1) ((C) this.c).b).getClass();
            if (!(keyListener instanceof L6)) {
                if (keyListener == null) {
                    return null;
                }
                if (!(keyListener instanceof NumberKeyListener)) {
                    return new L6(keyListener);
                }
                return keyListener;
            }
            return keyListener;
        }
        return keyListener;
    }

    public void z() {
        ((SparseIntArray) this.b).clear();
    }

    public /* synthetic */ H1(Object obj, int i, Object obj2) {
        this.a = i;
        this.c = obj;
        this.b = obj2;
    }

    public /* synthetic */ H1(Object obj, Object obj2, int i, boolean z) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    public H1(Qc qc) {
        this.a = 18;
        this.c = qc;
    }

    public H1(R9 r9, Lh lh) {
        C0329pa c0329pa;
        this.a = 17;
        this.b = r9;
        AbstractC0487x9.o(lh, "store");
        C0105e5 c0105e5 = C0105e5.b;
        AbstractC0487x9.o(c0105e5, "defaultCreationExtras");
        String canonicalName = C0329pa.class.getCanonicalName();
        if (canonicalName != null) {
            String concat = "androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(canonicalName);
            AbstractC0487x9.o(concat, "key");
            LinkedHashMap linkedHashMap = lh.a;
            Jh jh = (Jh) linkedHashMap.get(concat);
            if (C0329pa.class.isInstance(jh)) {
                AbstractC0487x9.m(jh, "null cannot be cast to non-null type T of androidx.lifecycle.ViewModelProvider.get");
            } else {
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                linkedHashMap2.putAll(c0105e5.a);
                linkedHashMap2.put(C0424u6.e, concat);
                try {
                    c0329pa = new C0329pa();
                } catch (AbstractMethodError unused) {
                    c0329pa = new C0329pa();
                }
                jh = c0329pa;
                Jh jh2 = (Jh) linkedHashMap.put(concat, jh);
                if (jh2 != null) {
                    jh2.a();
                }
            }
            this.c = (C0329pa) jh;
            return;
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }

    public H1(AbsSeekBar absSeekBar) {
        this.a = 0;
        this.b = absSeekBar;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [android.text.Editable$Factory, o.G6] */
    public H1(EditText editText, int i) {
        this.a = i;
        switch (i) {
            case 11:
                this.b = editText;
                R6 r6 = new R6(editText);
                this.c = r6;
                editText.addTextChangedListener(r6);
                if (G6.b == null) {
                    synchronized (G6.a) {
                        try {
                            if (G6.b == null) {
                                ?? factory = new Editable.Factory();
                                try {
                                    G6.c = Class.forName("android.text.DynamicLayout$ChangeWatcher", false, G6.class.getClassLoader());
                                } catch (Throwable unused) {
                                }
                                G6.b = factory;
                            }
                        } finally {
                        }
                    }
                }
                editText.setEditableFactory(G6.b);
                return;
            default:
                this.b = editText;
                this.c = new C(editText);
                return;
        }
    }

    public H1(C0188i8 c0188i8) {
        this.a = 14;
        this.b = new CopyOnWriteArrayList();
        this.c = c0188i8;
    }

    public H1(Context context) {
        this.a = 5;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Ha.q0(context, 2130903795, Va.class.getCanonicalName()).data, AbstractC0133fd.l);
        C0424u6.b(context, obtainStyledAttributes.getResourceId(4, 0));
        C0424u6.b(context, obtainStyledAttributes.getResourceId(2, 0));
        C0424u6.b(context, obtainStyledAttributes.getResourceId(3, 0));
        C0424u6.b(context, obtainStyledAttributes.getResourceId(5, 0));
        ColorStateList F = Ha.F(context, obtainStyledAttributes, 7);
        this.b = C0424u6.b(context, obtainStyledAttributes.getResourceId(9, 0));
        C0424u6.b(context, obtainStyledAttributes.getResourceId(8, 0));
        this.c = C0424u6.b(context, obtainStyledAttributes.getResourceId(10, 0));
        new Paint().setColor(F.getDefaultColor());
        obtainStyledAttributes.recycle();
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [o.ph, java.lang.Object] */
    public H1(C0391sd c0391sd) {
        this.a = 20;
        this.b = c0391sd;
        ?? obj = new Object();
        obj.a = 0;
        this.c = obj;
    }

    public H1(Animation animation) {
        this.a = 13;
        this.b = animation;
        this.c = null;
    }

    public H1(Animator animator) {
        this.a = 13;
        this.b = null;
        this.c = animator;
    }

    public H1(ArrayList arrayList, ArrayList arrayList2) {
        this.a = 15;
        int size = arrayList.size();
        this.b = new int[size];
        this.c = new float[size];
        for (int i = 0; i < size; i++) {
            ((int[]) this.b)[i] = ((Integer) arrayList.get(i)).intValue();
            ((float[]) this.c)[i] = ((Float) arrayList2.get(i)).floatValue();
        }
    }

    public H1(int i, int i2) {
        this.a = 15;
        this.b = new int[]{i, i2};
        this.c = new float[]{0.0f, 1.0f};
    }

    public H1(int i, int i2, int i3) {
        this.a = 15;
        this.b = new int[]{i, i2, i3};
        this.c = new float[]{0.0f, 0.5f, 1.0f};
    }

    public H1(int i) {
        this.a = i;
        switch (i) {
            case 21:
                this.b = new Qe(0);
                this.c = new C0526za();
                return;
            default:
                this.b = new SparseIntArray();
                this.c = new SparseIntArray();
                return;
        }
    }

    public H1(String str, C0393sf c0393sf) {
        this.a = 10;
        AbstractC0487x9.o(str, "input");
        this.b = str;
        this.c = c0393sf;
    }
}
