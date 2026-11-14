package o;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.widget.CompoundButton;
import android.widget.TextView;

/* renamed from: o.b1, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0041b1 {
    public Parcelable a;
    public Object b;
    public boolean c;
    public boolean d;
    public boolean e;

    /* renamed from: f, reason: collision with root package name */
    public final Object f181f;

    public /* synthetic */ C0041b1(TextView textView) {
        this.a = null;
        this.b = null;
        this.c = false;
        this.d = false;
        this.f181f = textView;
    }

    public void a() {
        CompoundButton compoundButton = (CompoundButton) this.f181f;
        Drawable buttonDrawable = compoundButton.getButtonDrawable();
        if (buttonDrawable != null) {
            if (this.c || this.d) {
                Drawable mutate = buttonDrawable.mutate();
                if (this.c) {
                    mutate.setTintList((ColorStateList) this.a);
                }
                if (this.d) {
                    mutate.setTintMode((PorterDuff.Mode) this.b);
                }
                if (mutate.isStateful()) {
                    mutate.setState(compoundButton.getDrawableState());
                }
                compoundButton.setButtonDrawable(mutate);
            }
        }
    }

    public void b() {
        C0021a1 c0021a1 = (C0021a1) this.f181f;
        Drawable checkMarkDrawable = c0021a1.getCheckMarkDrawable();
        if (checkMarkDrawable != null) {
            if (this.c || this.d) {
                Drawable mutate = checkMarkDrawable.mutate();
                if (this.c) {
                    mutate.setTintList((ColorStateList) this.a);
                }
                if (this.d) {
                    mutate.setTintMode((PorterDuff.Mode) this.b);
                }
                if (mutate.isStateful()) {
                    mutate.setState(c0021a1.getDrawableState());
                }
                c0021a1.setCheckMarkDrawable(mutate);
            }
        }
    }

    public Bundle c(String str) {
        if (this.d) {
            Bundle bundle = (Bundle) this.a;
            if (bundle == null) {
                return null;
            }
            Bundle bundle2 = bundle.getBundle(str);
            Bundle bundle3 = (Bundle) this.a;
            if (bundle3 != null) {
                bundle3.remove(str);
            }
            Bundle bundle4 = (Bundle) this.a;
            if (bundle4 == null || bundle4.isEmpty()) {
                this.a = null;
            }
            return bundle2;
        }
        throw new IllegalStateException("You can consumeRestoredStateForKey only after super.onCreate of corresponding component");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x005c A[Catch: all -> 0x003c, TryCatch #1 {all -> 0x003c, blocks: (B:3:0x0023, B:5:0x002a, B:8:0x0030, B:9:0x0055, B:11:0x005c, B:12:0x0063, B:14:0x006a, B:21:0x003e, B:23:0x0044, B:25:0x004a), top: B:2:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x006a A[Catch: all -> 0x003c, TRY_LEAVE, TryCatch #1 {all -> 0x003c, blocks: (B:3:0x0023, B:5:0x002a, B:8:0x0030, B:9:0x0055, B:11:0x005c, B:12:0x0063, B:14:0x006a, B:21:0x003e, B:23:0x0044, B:25:0x004a), top: B:2:0x0023 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void d(android.util.AttributeSet r10, int r11) {
        /*
            r9 = this;
            java.lang.Object r0 = r9.f181f
            android.widget.CompoundButton r0 = (android.widget.CompoundButton) r0
            android.content.Context r1 = r0.getContext()
            int[] r3 = o.AbstractC0153gd.m
            o.s2 r7 = o.C0380s2.y(r1, r10, r3, r11)
            java.lang.Object r1 = r7.b
            r8 = r1
            android.content.res.TypedArray r8 = (android.content.res.TypedArray) r8
            android.content.Context r2 = r0.getContext()
            java.lang.Object r1 = r7.b
            r5 = r1
            android.content.res.TypedArray r5 = (android.content.res.TypedArray) r5
            r1 = r0
            r4 = r10
            r6 = r11
            o.Dh.k(r1, r2, r3, r4, r5, r6)
            r10 = 1
            boolean r11 = r8.hasValue(r10)     // Catch: java.lang.Throwable -> L3c
            r1 = 0
            if (r11 == 0) goto L3e
            int r10 = r8.getResourceId(r10, r1)     // Catch: java.lang.Throwable -> L3c
            if (r10 == 0) goto L3e
            android.content.Context r11 = r0.getContext()     // Catch: java.lang.Throwable -> L3c android.content.res.Resources.NotFoundException -> L3e
            android.graphics.drawable.Drawable r10 = o.L1.z(r11, r10)     // Catch: java.lang.Throwable -> L3c android.content.res.Resources.NotFoundException -> L3e
            r0.setButtonDrawable(r10)     // Catch: java.lang.Throwable -> L3c android.content.res.Resources.NotFoundException -> L3e
            goto L55
        L3c:
            r10 = move-exception
            goto L7b
        L3e:
            boolean r10 = r8.hasValue(r1)     // Catch: java.lang.Throwable -> L3c
            if (r10 == 0) goto L55
            int r10 = r8.getResourceId(r1, r1)     // Catch: java.lang.Throwable -> L3c
            if (r10 == 0) goto L55
            android.content.Context r11 = r0.getContext()     // Catch: java.lang.Throwable -> L3c
            android.graphics.drawable.Drawable r10 = o.L1.z(r11, r10)     // Catch: java.lang.Throwable -> L3c
            r0.setButtonDrawable(r10)     // Catch: java.lang.Throwable -> L3c
        L55:
            r10 = 2
            boolean r11 = r8.hasValue(r10)     // Catch: java.lang.Throwable -> L3c
            if (r11 == 0) goto L63
            android.content.res.ColorStateList r10 = r7.n(r10)     // Catch: java.lang.Throwable -> L3c
            r0.setButtonTintList(r10)     // Catch: java.lang.Throwable -> L3c
        L63:
            r10 = 3
            boolean r11 = r8.hasValue(r10)     // Catch: java.lang.Throwable -> L3c
            if (r11 == 0) goto L77
            r11 = -1
            int r10 = r8.getInt(r10, r11)     // Catch: java.lang.Throwable -> L3c
            r11 = 0
            android.graphics.PorterDuff$Mode r10 = o.AbstractC0166h6.c(r10, r11)     // Catch: java.lang.Throwable -> L3c
            r0.setButtonTintMode(r10)     // Catch: java.lang.Throwable -> L3c
        L77:
            r7.A()
            return
        L7b:
            r7.A()
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: o.C0041b1.d(android.util.AttributeSet, int):void");
    }

    public void e(String str, InterfaceC0392se interfaceC0392se) {
        Object obj;
        C0273me c0273me = (C0273me) this.f181f;
        C0213je a = c0273me.a(str);
        if (a != null) {
            obj = a.b;
        } else {
            C0213je c0213je = new C0213je(str, interfaceC0392se);
            c0273me.d++;
            C0213je c0213je2 = c0273me.b;
            if (c0213je2 == null) {
                c0273me.a = c0213je;
                c0273me.b = c0213je;
            } else {
                c0213je2.c = c0213je;
                c0213je.d = c0213je2;
                c0273me.b = c0213je;
            }
            obj = null;
        }
        if (((InterfaceC0392se) obj) == null) {
        } else {
            throw new IllegalArgumentException("SavedStateProvider with the given key is already registered");
        }
    }

    public C0041b1() {
        this.f181f = new C0273me();
        this.e = true;
    }
}
