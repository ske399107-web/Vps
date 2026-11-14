package o;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.io.PrintWriter;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class X5 extends T7 implements DialogInterface.OnCancelListener, DialogInterface.OnDismissListener {
    public final U5 T;
    public final V5 U;
    public int V;
    public int W;
    public boolean X;
    public boolean Y;
    public int Z;
    public boolean a0;
    public final C b0;
    public Dialog c0;
    public boolean d0;
    public boolean e0;
    public boolean f0;

    public X5() {
        new J2(4, this);
        this.T = new U5(this);
        this.U = new V5(this);
        this.V = 0;
        this.W = 0;
        this.X = true;
        this.Y = true;
        this.Z = -1;
        this.b0 = new C(10, this);
        this.f0 = false;
    }

    @Override // o.T7
    public final void A(Bundle bundle) {
        Bundle bundle2;
        this.C = true;
        if (this.c0 != null && bundle != null && (bundle2 = bundle.getBundle("android:savedDialogState")) != null) {
            this.c0.onRestoreInstanceState(bundle2);
        }
    }

    @Override // o.T7
    public final void B(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Bundle bundle2;
        super.B(layoutInflater, viewGroup, bundle);
        if (this.E == null && this.c0 != null && bundle != null && (bundle2 = bundle.getBundle("android:savedDialogState")) != null) {
            this.c0.onRestoreInstanceState(bundle2);
        }
    }

    public Dialog G() {
        if (Log.isLoggable("FragmentManager", 3)) {
            Log.d("FragmentManager", "onCreateDialog called for DialogFragment " + this);
        }
        return new DialogC0422u4(C(), this.W);
    }

    @Override // o.T7
    public final L1 c() {
        return new W5(this, new Q7(this));
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        if (!this.d0) {
            if (Log.isLoggable("FragmentManager", 3)) {
                Log.d("FragmentManager", "onDismiss called for DialogFragment " + this);
            }
            if (!this.e0) {
                this.e0 = true;
                Dialog dialog = this.c0;
                if (dialog != null) {
                    dialog.setOnDismissListener(null);
                    this.c0.dismiss();
                }
                this.d0 = true;
                if (this.Z >= 0) {
                    C0188i8 j = j();
                    int i = this.Z;
                    if (i >= 0) {
                        j.x(new C0168h8(j, i), true);
                        this.Z = -1;
                        return;
                    }
                    throw new IllegalArgumentException(AbstractC0214jf.a(i, "Bad id: "));
                }
                M2 m2 = new M2(j());
                m2.f123o = true;
                C0188i8 c0188i8 = this.r;
                if (c0188i8 != null && c0188i8 != m2.p) {
                    throw new IllegalStateException("Cannot remove Fragment attached to a different FragmentManager. Fragment " + toString() + " is already attached to a FragmentManager.");
                }
                m2.b(new C0366r8(3, this));
                if (!m2.q) {
                    if (Log.isLoggable("FragmentManager", 2)) {
                        Log.v("FragmentManager", "Commit: " + m2);
                        PrintWriter printWriter = new PrintWriter(new C0428ua());
                        m2.d("  ", printWriter, true);
                        printWriter.close();
                    }
                    m2.q = true;
                    boolean z = m2.g;
                    C0188i8 c0188i82 = m2.p;
                    if (z) {
                        m2.r = c0188i82.i.getAndIncrement();
                    } else {
                        m2.r = -1;
                    }
                    c0188i82.x(m2, true);
                    return;
                }
                throw new IllegalStateException("commit already called");
            }
        }
    }

    @Override // o.T7
    public final void p() {
        this.C = true;
    }

    @Override // o.T7
    public final void r(U0 u0) {
        super.r(u0);
        this.O.d(this.b0);
        this.e0 = false;
    }

    @Override // o.T7
    public void s(Bundle bundle) {
        boolean z;
        super.s(bundle);
        new Handler();
        if (this.w == 0) {
            z = true;
        } else {
            z = false;
        }
        this.Y = z;
        if (bundle != null) {
            this.V = bundle.getInt("android:style", 0);
            this.W = bundle.getInt("android:theme", 0);
            this.X = bundle.getBoolean("android:cancelable", true);
            this.Y = bundle.getBoolean("android:showsDialog", this.Y);
            this.Z = bundle.getInt("android:backStackId", -1);
        }
    }

    @Override // o.T7
    public final void u() {
        this.C = true;
        Dialog dialog = this.c0;
        if (dialog != null) {
            this.d0 = true;
            dialog.setOnDismissListener(null);
            this.c0.dismiss();
            if (!this.e0) {
                onDismiss(this.c0);
            }
            this.c0 = null;
            this.f0 = false;
        }
    }

    @Override // o.T7
    public final void v() {
        this.C = true;
        if (!this.e0) {
            this.e0 = true;
        }
        C c = this.b0;
        androidx.lifecycle.b bVar = this.O;
        bVar.getClass();
        androidx.lifecycle.b.a("removeObserver");
        AbstractC0309oa abstractC0309oa = (AbstractC0309oa) bVar.b.b(c);
        if (abstractC0309oa != null) {
            abstractC0309oa.d();
            abstractC0309oa.c(false);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0046 A[Catch: all -> 0x004e, TryCatch #0 {all -> 0x004e, blocks: (B:10:0x001a, B:12:0x0026, B:18:0x003e, B:20:0x0046, B:21:0x0050, B:23:0x0030, B:25:0x0036, B:26:0x003b, B:27:0x0068), top: B:9:0x001a }] */
    @Override // o.T7
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.LayoutInflater w(android.os.Bundle r8) {
        /*
            r7 = this;
            android.view.LayoutInflater r8 = super.w(r8)
            boolean r0 = r7.Y
            r1 = 2
            java.lang.String r2 = "FragmentManager"
            if (r0 == 0) goto L9a
            boolean r3 = r7.a0
            if (r3 == 0) goto L11
            goto L9a
        L11:
            if (r0 != 0) goto L14
            goto L71
        L14:
            boolean r0 = r7.f0
            if (r0 != 0) goto L71
            r0 = 0
            r3 = 1
            r7.a0 = r3     // Catch: java.lang.Throwable -> L4e
            android.app.Dialog r4 = r7.G()     // Catch: java.lang.Throwable -> L4e
            r7.c0 = r4     // Catch: java.lang.Throwable -> L4e
            boolean r5 = r7.Y     // Catch: java.lang.Throwable -> L4e
            if (r5 == 0) goto L68
            int r5 = r7.V     // Catch: java.lang.Throwable -> L4e
            if (r5 == r3) goto L3b
            if (r5 == r1) goto L3b
            r6 = 3
            if (r5 == r6) goto L30
            goto L3e
        L30:
            android.view.Window r5 = r4.getWindow()     // Catch: java.lang.Throwable -> L4e
            if (r5 == 0) goto L3b
            r6 = 24
            r5.addFlags(r6)     // Catch: java.lang.Throwable -> L4e
        L3b:
            r4.requestWindowFeature(r3)     // Catch: java.lang.Throwable -> L4e
        L3e:
            android.content.Context r4 = r7.h()     // Catch: java.lang.Throwable -> L4e
            boolean r5 = r4 instanceof android.app.Activity     // Catch: java.lang.Throwable -> L4e
            if (r5 == 0) goto L50
            android.app.Dialog r5 = r7.c0     // Catch: java.lang.Throwable -> L4e
            android.app.Activity r4 = (android.app.Activity) r4     // Catch: java.lang.Throwable -> L4e
            r5.setOwnerActivity(r4)     // Catch: java.lang.Throwable -> L4e
            goto L50
        L4e:
            r8 = move-exception
            goto L6e
        L50:
            android.app.Dialog r4 = r7.c0     // Catch: java.lang.Throwable -> L4e
            boolean r5 = r7.X     // Catch: java.lang.Throwable -> L4e
            r4.setCancelable(r5)     // Catch: java.lang.Throwable -> L4e
            android.app.Dialog r4 = r7.c0     // Catch: java.lang.Throwable -> L4e
            o.U5 r5 = r7.T     // Catch: java.lang.Throwable -> L4e
            r4.setOnCancelListener(r5)     // Catch: java.lang.Throwable -> L4e
            android.app.Dialog r4 = r7.c0     // Catch: java.lang.Throwable -> L4e
            o.V5 r5 = r7.U     // Catch: java.lang.Throwable -> L4e
            r4.setOnDismissListener(r5)     // Catch: java.lang.Throwable -> L4e
            r7.f0 = r3     // Catch: java.lang.Throwable -> L4e
            goto L6b
        L68:
            r3 = 0
            r7.c0 = r3     // Catch: java.lang.Throwable -> L4e
        L6b:
            r7.a0 = r0
            goto L71
        L6e:
            r7.a0 = r0
            throw r8
        L71:
            boolean r0 = android.util.Log.isLoggable(r2, r1)
            if (r0 == 0) goto L8d
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "get layout inflater for DialogFragment "
            r0.<init>(r1)
            r0.append(r7)
            java.lang.String r1 = " from dialog context"
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            android.util.Log.d(r2, r0)
        L8d:
            android.app.Dialog r0 = r7.c0
            if (r0 == 0) goto L99
            android.content.Context r0 = r0.getContext()
            android.view.LayoutInflater r8 = r8.cloneInContext(r0)
        L99:
            return r8
        L9a:
            boolean r0 = android.util.Log.isLoggable(r2, r1)
            if (r0 == 0) goto Ld5
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "getting layout inflater for DialogFragment "
            r0.<init>(r1)
            r0.append(r7)
            java.lang.String r0 = r0.toString()
            boolean r1 = r7.Y
            if (r1 != 0) goto Lc4
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r3 = "mShowsDialog = false: "
            r1.<init>(r3)
            r1.append(r0)
            java.lang.String r0 = r1.toString()
            android.util.Log.d(r2, r0)
            goto Ld5
        Lc4:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r3 = "mCreatingDialog = true: "
            r1.<init>(r3)
            r1.append(r0)
            java.lang.String r0 = r1.toString()
            android.util.Log.d(r2, r0)
        Ld5:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: o.X5.w(android.os.Bundle):android.view.LayoutInflater");
    }

    @Override // o.T7
    public void x(Bundle bundle) {
        Dialog dialog = this.c0;
        if (dialog != null) {
            Bundle onSaveInstanceState = dialog.onSaveInstanceState();
            onSaveInstanceState.putBoolean("android:dialogShowing", false);
            bundle.putBundle("android:savedDialogState", onSaveInstanceState);
        }
        int i = this.V;
        if (i != 0) {
            bundle.putInt("android:style", i);
        }
        int i2 = this.W;
        if (i2 != 0) {
            bundle.putInt("android:theme", i2);
        }
        boolean z = this.X;
        if (!z) {
            bundle.putBoolean("android:cancelable", z);
        }
        boolean z2 = this.Y;
        if (!z2) {
            bundle.putBoolean("android:showsDialog", z2);
        }
        int i3 = this.Z;
        if (i3 != -1) {
            bundle.putInt("android:backStackId", i3);
        }
    }

    @Override // o.T7
    public void y() {
        this.C = true;
        Dialog dialog = this.c0;
        if (dialog != null) {
            this.d0 = false;
            dialog.show();
            View decorView = this.c0.getWindow().getDecorView();
            Ng.s(decorView, this);
            decorView.setTag(2131231228, this);
            Ng.u(decorView, this);
        }
    }

    @Override // o.T7
    public void z() {
        this.C = true;
        Dialog dialog = this.c0;
        if (dialog != null) {
            dialog.hide();
        }
    }
}
