package o;

import androidx.recyclerview.widget.RecyclerView;
import java.util.Arrays;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class R8 {
    public int a;
    public int b;
    public int[] c;
    public int d;

    public final void a(int i, int i2) {
        if (i >= 0) {
            if (i2 >= 0) {
                int i3 = this.d;
                int i4 = i3 * 2;
                int[] iArr = this.c;
                if (iArr == null) {
                    int[] iArr2 = new int[4];
                    this.c = iArr2;
                    Arrays.fill(iArr2, -1);
                } else if (i4 >= iArr.length) {
                    int[] iArr3 = new int[i3 * 4];
                    this.c = iArr3;
                    System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
                }
                int[] iArr4 = this.c;
                iArr4[i4] = i;
                iArr4[i4 + 1] = i2;
                this.d++;
                return;
            }
            throw new IllegalArgumentException("Pixel distance must be non-negative");
        }
        throw new IllegalArgumentException("Layout positions must be non-negative");
    }

    public final void b(RecyclerView recyclerView, boolean z) {
        this.d = 0;
        int[] iArr = this.c;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
        AbstractC0431ud abstractC0431ud = recyclerView.l;
        if (recyclerView.k != null && abstractC0431ud != null && abstractC0431ud.i) {
            if (z) {
                if (!recyclerView.d.f()) {
                    abstractC0431ud.i(recyclerView.k.a(), this);
                }
            } else if (!recyclerView.K()) {
                abstractC0431ud.h(this.a, this.b, recyclerView.c0, this);
            }
            int i = this.d;
            if (i > abstractC0431ud.j) {
                abstractC0431ud.j = i;
                abstractC0431ud.k = z;
                recyclerView.b.k();
            }
        }
    }
}
