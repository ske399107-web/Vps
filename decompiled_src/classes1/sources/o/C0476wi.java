package o;

import android.graphics.Insets;
import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import android.view.WindowInsetsAnimation;
import android.view.WindowInsetsAnimation$Callback;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

/* renamed from: o.wi, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0476wi extends WindowInsetsAnimation$Callback {
    public final R4 a;
    public List b;
    public ArrayList c;
    public final HashMap d;

    public C0476wi(R4 r4) {
        super(0);
        this.d = new HashMap();
        this.a = r4;
    }

    public final zi a(WindowInsetsAnimation windowInsetsAnimation) {
        zi ziVar = (zi) this.d.get(windowInsetsAnimation);
        if (ziVar == null) {
            ziVar = new zi(0, null, 0L);
            if (Build.VERSION.SDK_INT >= 30) {
                ziVar.a = new xi(windowInsetsAnimation);
            }
            this.d.put(windowInsetsAnimation, ziVar);
        }
        return ziVar;
    }

    public final void onEnd(WindowInsetsAnimation windowInsetsAnimation) {
        R4 r4 = this.a;
        a(windowInsetsAnimation);
        ((View) r4.e).setTranslationY(0.0f);
        this.d.remove(windowInsetsAnimation);
    }

    public final void onPrepare(WindowInsetsAnimation windowInsetsAnimation) {
        R4 r4 = this.a;
        a(windowInsetsAnimation);
        View view = (View) r4.e;
        int[] iArr = (int[]) r4.f142f;
        view.getLocationOnScreen(iArr);
        r4.c = iArr[1];
    }

    public final WindowInsets onProgress(WindowInsets windowInsets, List list) {
        float fraction;
        ArrayList arrayList = this.c;
        if (arrayList == null) {
            ArrayList arrayList2 = new ArrayList(list.size());
            this.c = arrayList2;
            this.b = Collections.unmodifiableList(arrayList2);
        } else {
            arrayList.clear();
        }
        for (int size = list.size() - 1; size >= 0; size--) {
            WindowInsetsAnimation j = AbstractC0437v.j(list.get(size));
            zi a = a(j);
            fraction = j.getFraction();
            a.a.d(fraction);
            this.c.add(a);
        }
        R4 r4 = this.a;
        Mi g = Mi.g(null, windowInsets);
        r4.a(g, this.b);
        return g.f();
    }

    public final WindowInsetsAnimation.Bounds onStart(WindowInsetsAnimation windowInsetsAnimation, WindowInsetsAnimation.Bounds bounds) {
        Insets lowerBound;
        Insets upperBound;
        R4 r4 = this.a;
        a(windowInsetsAnimation);
        lowerBound = bounds.getLowerBound();
        C0407t9 c = C0407t9.c(lowerBound);
        upperBound = bounds.getUpperBound();
        C0407t9 c2 = C0407t9.c(upperBound);
        View view = (View) r4.e;
        int[] iArr = (int[]) r4.f142f;
        view.getLocationOnScreen(iArr);
        int i = r4.c - iArr[1];
        r4.d = i;
        view.setTranslationY(i);
        AbstractC0437v.m();
        return AbstractC0437v.h(c.d(), c2.d());
    }
}
