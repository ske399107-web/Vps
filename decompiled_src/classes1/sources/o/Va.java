package o;

import android.R;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.widget.GridView;
import android.widget.ListAdapter;
import android.widget.Scroller;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;
import java.util.ArrayList;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Va<S> extends Fc {
    public int U;
    public C0282n3 V;
    public Ib W;
    public int X;
    public H1 Y;
    public RecyclerView Z;
    public RecyclerView a0;
    public View b0;
    public View c0;
    public View d0;
    public View e0;

    public final void G(Ib ib) {
        boolean z;
        com.google.android.material.datepicker.c cVar = (com.google.android.material.datepicker.c) this.a0.getAdapter();
        int d = cVar.c.a.d(ib);
        int d2 = d - cVar.c.a.d(this.W);
        boolean z2 = false;
        if (Math.abs(d2) > 3) {
            z = true;
        } else {
            z = false;
        }
        if (d2 > 0) {
            z2 = true;
        }
        this.W = ib;
        if (z && z2) {
            this.a0.Y(d - 3);
            this.a0.post(new T2(this, d, 3));
        } else if (z) {
            this.a0.Y(d + 3);
            this.a0.post(new T2(this, d, 3));
        } else {
            this.a0.post(new T2(this, d, 3));
        }
    }

    public final void H(int i) {
        this.X = i;
        if (i == 2) {
            this.Z.getLayoutManager().n0(this.W.c - ((Wi) this.Z.getAdapter()).c.V.a.c);
            this.d0.setVisibility(0);
            this.e0.setVisibility(8);
            this.b0.setVisibility(8);
            this.c0.setVisibility(8);
            return;
        }
        if (i == 1) {
            this.d0.setVisibility(8);
            this.e0.setVisibility(0);
            this.b0.setVisibility(0);
            this.c0.setVisibility(0);
            G(this.W);
        }
    }

    @Override // o.T7
    public final void s(Bundle bundle) {
        super.s(bundle);
        if (bundle == null) {
            bundle = this.f146f;
        }
        this.U = bundle.getInt("THEME_RES_ID_KEY");
        if (bundle.getParcelable("GRID_SELECTOR_KEY") == null) {
            this.V = (C0282n3) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
            if (bundle.getParcelable("DAY_VIEW_DECORATOR_KEY") == null) {
                this.W = (Ib) bundle.getParcelable("CURRENT_MONTH_KEY");
                return;
            }
            throw new ClassCastException();
        }
        throw new ClassCastException();
    }

    @Override // o.T7
    public final View t(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        int i;
        int i2;
        C0344q5 c0344q5;
        Ac ac;
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(h(), this.U);
        this.Y = new H1(contextThemeWrapper);
        LayoutInflater cloneInContext = layoutInflater.cloneInContext(contextThemeWrapper);
        Ib ib = this.V.a;
        if (C0051bb.J(contextThemeWrapper, R.attr.windowFullscreen)) {
            i = 2131427412;
            i2 = 1;
        } else {
            i = 2131427407;
            i2 = 0;
        }
        View inflate = cloneInContext.inflate(i, viewGroup, false);
        Resources resources = C().getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(2131100299) + resources.getDimensionPixelOffset(2131100301) + resources.getDimensionPixelSize(2131100300);
        int dimensionPixelSize = resources.getDimensionPixelSize(2131100284);
        int i3 = Jb.d;
        inflate.setMinimumHeight(dimensionPixelOffset + dimensionPixelSize + (resources.getDimensionPixelOffset(2131100298) * (i3 - 1)) + (resources.getDimensionPixelSize(2131100279) * i3) + resources.getDimensionPixelOffset(2131100276));
        GridView gridView = (GridView) inflate.findViewById(2131231012);
        Dh.l(gridView, new Ra(0));
        int i4 = this.V.e;
        if (i4 > 0) {
            c0344q5 = new C0344q5(i4);
        } else {
            c0344q5 = new C0344q5();
        }
        gridView.setAdapter((ListAdapter) c0344q5);
        gridView.setNumColumns(ib.d);
        gridView.setEnabled(false);
        this.a0 = (RecyclerView) inflate.findViewById(2131231015);
        this.a0.setLayoutManager(new Sa(this, i2, i2));
        this.a0.setTag("MONTHS_VIEW_GROUP_TAG");
        com.google.android.material.datepicker.c cVar = new com.google.android.material.datepicker.c(contextThemeWrapper, this.V, new C(19, this));
        this.a0.setAdapter(cVar);
        int integer = contextThemeWrapper.getResources().getInteger(2131296306);
        RecyclerView recyclerView3 = (RecyclerView) inflate.findViewById(2131231018);
        this.Z = recyclerView3;
        if (recyclerView3 != null) {
            recyclerView3.setHasFixedSize(true);
            this.Z.setLayoutManager(new GridLayoutManager(integer));
            this.Z.setAdapter(new Wi(this));
            this.Z.g(new Ta(this));
        }
        if (inflate.findViewById(2131231005) != null) {
            MaterialButton materialButton = (MaterialButton) inflate.findViewById(2131231005);
            materialButton.setTag("SELECTOR_TOGGLE_TAG");
            Dh.l(materialButton, new J3(2, this));
            View findViewById = inflate.findViewById(2131231007);
            this.b0 = findViewById;
            findViewById.setTag("NAVIGATION_PREV_TAG");
            View findViewById2 = inflate.findViewById(2131231006);
            this.c0 = findViewById2;
            findViewById2.setTag("NAVIGATION_NEXT_TAG");
            this.d0 = inflate.findViewById(2131231018);
            this.e0 = inflate.findViewById(2131231011);
            H(1);
            materialButton.setText(this.W.c());
            this.a0.h(new Ua(this, cVar, materialButton));
            materialButton.setOnClickListener(new P(2, this));
            this.c0.setOnClickListener(new Qa(this, cVar, 1));
            this.b0.setOnClickListener(new Qa(this, cVar, 0));
        }
        if (!C0051bb.J(contextThemeWrapper, R.attr.windowFullscreen) && (recyclerView2 = (ac = new Ac()).a) != (recyclerView = this.a0)) {
            Te te = ac.b;
            if (recyclerView2 != null) {
                ArrayList arrayList = recyclerView2.e0;
                if (arrayList != null) {
                    arrayList.remove(te);
                }
                ac.a.setOnFlingListener(null);
            }
            ac.a = recyclerView;
            if (recyclerView != null) {
                if (recyclerView.getOnFlingListener() == null) {
                    ac.a.h(te);
                    ac.a.setOnFlingListener(ac);
                    new Scroller(ac.a.getContext(), new DecelerateInterpolator());
                    ac.f();
                } else {
                    throw new IllegalStateException("An instance of OnFlingListener already set.");
                }
            }
        }
        this.a0.Y(cVar.c.a.d(this.W));
        Dh.l(this.a0, new Ra(1));
        return inflate;
    }

    @Override // o.T7
    public final void x(Bundle bundle) {
        bundle.putInt("THEME_RES_ID_KEY", this.U);
        bundle.putParcelable("GRID_SELECTOR_KEY", null);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.V);
        bundle.putParcelable("DAY_VIEW_DECORATOR_KEY", null);
        bundle.putParcelable("CURRENT_MONTH_KEY", this.W);
    }
}
