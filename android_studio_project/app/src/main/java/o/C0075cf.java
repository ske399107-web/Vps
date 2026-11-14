package o;

import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import java.util.Arrays;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* renamed from: o.cf, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0075cf {
    public int a;
    public int b;
    public boolean c;
    public boolean d;
    public boolean e;

    /* renamed from: f, reason: collision with root package name */
    public int[] f190f;
    public final /* synthetic */ StaggeredGridLayoutManager g;

    public C0075cf(StaggeredGridLayoutManager staggeredGridLayoutManager) {
        this.g = staggeredGridLayoutManager;
        a();
    }

    public final void a() {
        this.a = -1;
        this.b = PKIFailureInfo.systemUnavail;
        this.c = false;
        this.d = false;
        this.e = false;
        int[] iArr = this.f190f;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
    }
}
