package o;

import android.content.res.ColorStateList;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import org.bouncycastle.pqc.crypto.rainbow.GF2Field;

/* renamed from: o.db, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class C0091db extends Drawable.ConstantState {
    public Ae a;
    public C0464w6 b;
    public ColorStateList c;
    public ColorStateList d;
    public ColorStateList e;

    /* renamed from: f, reason: collision with root package name */
    public PorterDuff.Mode f199f;
    public Rect g;
    public final float h;
    public float i;
    public float j;
    public int k;
    public float l;
    public float m;
    public int n;

    /* renamed from: o, reason: collision with root package name */
    public int f200o;
    public int p;
    public final Paint.Style q;

    public C0091db(Ae ae) {
        this.c = null;
        this.d = null;
        this.e = null;
        this.f199f = PorterDuff.Mode.SRC_IN;
        this.g = null;
        this.h = 1.0f;
        this.i = 1.0f;
        this.k = GF2Field.MASK;
        this.l = 0.0f;
        this.m = 0.0f;
        this.n = 0;
        this.f200o = 0;
        this.p = 0;
        this.q = Paint.Style.FILL_AND_STROKE;
        this.a = ae;
        this.b = null;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final int getChangingConfigurations() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable() {
        C0111eb c0111eb = new C0111eb(this);
        c0111eb.e = true;
        return c0111eb;
    }

    public C0091db(C0091db c0091db) {
        this.c = null;
        this.d = null;
        this.e = null;
        this.f199f = PorterDuff.Mode.SRC_IN;
        this.g = null;
        this.h = 1.0f;
        this.i = 1.0f;
        this.k = GF2Field.MASK;
        this.l = 0.0f;
        this.m = 0.0f;
        this.n = 0;
        this.f200o = 0;
        this.p = 0;
        this.q = Paint.Style.FILL_AND_STROKE;
        this.a = c0091db.a;
        this.b = c0091db.b;
        this.j = c0091db.j;
        this.c = c0091db.c;
        this.d = c0091db.d;
        this.f199f = c0091db.f199f;
        this.e = c0091db.e;
        this.k = c0091db.k;
        this.h = c0091db.h;
        this.p = c0091db.p;
        this.n = c0091db.n;
        this.i = c0091db.i;
        this.l = c0091db.l;
        this.m = c0091db.m;
        this.f200o = c0091db.f200o;
        this.q = c0091db.q;
        if (c0091db.g != null) {
            this.g = new Rect(c0091db.g);
        }
    }
}
