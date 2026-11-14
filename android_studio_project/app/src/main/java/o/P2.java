package o;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class P2 extends AbstractC0520z4 {
    public int h;
    public int i;
    public Q2 j;

    public boolean getAllowsGoneWidget() {
        return this.j.t0;
    }

    public int getMargin() {
        return this.j.u0;
    }

    public int getType() {
        return this.h;
    }

    @Override // o.AbstractC0520z4
    public final void h(L4 l4, boolean z) {
        int i = this.h;
        this.i = i;
        if (z) {
            if (i == 5) {
                this.i = 1;
            } else if (i == 6) {
                this.i = 0;
            }
        } else if (i == 5) {
            this.i = 0;
        } else if (i == 6) {
            this.i = 1;
        }
        if (l4 instanceof Q2) {
            ((Q2) l4).s0 = this.i;
        }
    }

    public void setAllowsGoneWidget(boolean z) {
        this.j.t0 = z;
    }

    public void setDpMargin(int i) {
        this.j.u0 = (int) ((i * getResources().getDisplayMetrics().density) + 0.5f);
    }

    public void setMargin(int i) {
        this.j.u0 = i;
    }

    public void setType(int i) {
        this.h = i;
    }
}
