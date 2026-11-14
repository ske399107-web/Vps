package o;

import android.content.Context;

/* renamed from: o.c1, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final /* synthetic */ class RunnableC0061c1 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Context b;

    public /* synthetic */ RunnableC0061c1(Context context, int i) {
        this.a = i;
        this.b = context;
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x009f, code lost:
    
        if (r2 != null) goto L35;
     */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ae  */
    /* JADX WARN: Type inference failed for: r0v22, types: [java.util.concurrent.Executor, java.lang.Object] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            r11 = this;
            int r0 = r11.a
            switch(r0) {
                case 0: goto L44;
                case 1: goto L30;
                case 2: goto L13;
                default: goto L5;
            }
        L5:
            o.Uc r0 = new o.Uc
            r0.<init>()
            o.u6 r1 = o.AbstractC0487x9.z
            r2 = 0
            android.content.Context r3 = r11.b
            o.AbstractC0487x9.o0(r3, r0, r1, r2)
            return
        L13:
            java.util.concurrent.ThreadPoolExecutor r0 = new java.util.concurrent.ThreadPoolExecutor
            java.util.concurrent.TimeUnit r9 = java.util.concurrent.TimeUnit.MILLISECONDS
            java.util.concurrent.LinkedBlockingQueue r10 = new java.util.concurrent.LinkedBlockingQueue
            r10.<init>()
            r6 = 1
            r7 = 0
            r5 = 0
            r4 = r0
            r4.<init>(r5, r6, r7, r9, r10)
            o.c1 r1 = new o.c1
            android.content.Context r2 = r11.b
            r3 = 3
            r1.<init>(r2, r3)
            r0.execute(r1)
            return
        L30:
            android.content.Context r0 = r11.b
            android.os.Handler r1 = o.AbstractC0149g9.a
            com.ffrt.proxyread.HudAccessService r1 = o.AbstractC0149g9.f215f
            if (r1 == 0) goto L39
            goto L3d
        L39:
            android.content.Context r1 = r0.getApplicationContext()
        L3d:
            o.AbstractC0487x9.l(r1)
            o.AbstractC0149g9.a(r1)
            return
        L44:
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 1
            r2 = 33
            if (r0 < r2) goto Lc6
            android.content.ComponentName r3 = new android.content.ComponentName
            android.content.Context r4 = r11.b
            java.lang.String r5 = "androidx.appcompat.app.AppLocalesMetadataHolderService"
            r3.<init>(r4, r5)
            android.content.pm.PackageManager r5 = r4.getPackageManager()
            int r5 = r5.getComponentEnabledSetting(r3)
            if (r5 == r1) goto Lc6
            java.lang.String r5 = "locale"
            if (r0 < r2) goto L9d
            o.G2 r0 = o.AbstractC0161h1.g
            r0.getClass()
            o.A2 r2 = new o.A2
            r2.<init>(r0)
        L6c:
            boolean r0 = r2.hasNext()
            if (r0 == 0) goto L8b
            java.lang.Object r0 = r2.next()
            java.lang.ref.WeakReference r0 = (java.lang.ref.WeakReference) r0
            java.lang.Object r0 = r0.get()
            o.h1 r0 = (o.AbstractC0161h1) r0
            if (r0 == 0) goto L6c
            o.v1 r0 = (o.LayoutInflaterFactory2C0439v1) r0
            android.content.Context r0 = r0.k
            if (r0 == 0) goto L6c
            java.lang.Object r0 = r0.getSystemService(r5)
            goto L8c
        L8b:
            r0 = 0
        L8c:
            if (r0 == 0) goto La2
            android.os.LocaleList r0 = o.AbstractC0101e1.a(r0)
            o.ra r2 = new o.ra
            o.sa r6 = new o.sa
            r6.<init>(r0)
            r2.<init>(r6)
            goto La4
        L9d:
            o.ra r2 = o.AbstractC0161h1.c
            if (r2 == 0) goto La2
            goto La4
        La2:
            o.ra r2 = o.C0368ra.b
        La4:
            o.sa r0 = r2.a
            android.os.LocaleList r0 = r0.a
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto Lbf
            java.lang.String r0 = o.AbstractC0487x9.P(r4)
            java.lang.Object r2 = r4.getSystemService(r5)
            if (r2 == 0) goto Lbf
            android.os.LocaleList r0 = o.AbstractC0081d1.a(r0)
            o.AbstractC0101e1.b(r2, r0)
        Lbf:
            android.content.pm.PackageManager r0 = r4.getPackageManager()
            r0.setComponentEnabledSetting(r3, r1, r1)
        Lc6:
            o.AbstractC0161h1.f221f = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: o.RunnableC0061c1.run():void");
    }
}
