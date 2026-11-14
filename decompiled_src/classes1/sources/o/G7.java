package o;

import java.util.List;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class G7 {
    public static final Ba a = new Ba(16);
    public static final ThreadPoolExecutor b;
    public static final Object c;
    public static final Qe d;

    /* JADX WARN: Type inference failed for: r9v0, types: [java.lang.Object, java.util.concurrent.ThreadFactory] */
    static {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 10000, TimeUnit.MILLISECONDS, new LinkedBlockingDeque(), (ThreadFactory) new Object());
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        b = threadPoolExecutor;
        c = new Object();
        d = new Qe(0);
    }

    public static String a(List list, int i) {
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < list.size(); i2++) {
            sb.append(((A7) list.get(i2)).e);
            sb.append("-");
            sb.append(i);
            if (i2 < list.size() - 1) {
                sb.append(";");
            }
        }
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0052 A[Catch: all -> 0x0019, TRY_LEAVE, TryCatch #1 {all -> 0x0019, all -> 0x0078, all -> 0x00aa, NameNotFoundException -> 0x00af, blocks: (B:3:0x0008, B:5:0x0010, B:10:0x001c, B:11:0x0020, B:17:0x0052, B:20:0x005b, B:22:0x0061, B:24:0x0067, B:27:0x0074, B:29:0x0095, B:32:0x00a1, B:37:0x0079, B:38:0x007c, B:39:0x007d, B:42:0x0090, B:45:0x00ab, B:46:0x00ae, B:48:0x0030, B:50:0x0038, B:53:0x003c, B:55:0x0040, B:57:0x004b, B:66:0x00af, B:26:0x006e, B:41:0x008a), top: B:2:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005b A[Catch: all -> 0x0019, TRY_ENTER, TryCatch #1 {all -> 0x0019, all -> 0x0078, all -> 0x00aa, NameNotFoundException -> 0x00af, blocks: (B:3:0x0008, B:5:0x0010, B:10:0x001c, B:11:0x0020, B:17:0x0052, B:20:0x005b, B:22:0x0061, B:24:0x0067, B:27:0x0074, B:29:0x0095, B:32:0x00a1, B:37:0x0079, B:38:0x007c, B:39:0x007d, B:42:0x0090, B:45:0x00ab, B:46:0x00ae, B:48:0x0030, B:50:0x0038, B:53:0x003c, B:55:0x0040, B:57:0x004b, B:66:0x00af, B:26:0x006e, B:41:0x008a), top: B:2:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0095 A[Catch: all -> 0x0019, TRY_LEAVE, TryCatch #1 {all -> 0x0019, all -> 0x0078, all -> 0x00aa, NameNotFoundException -> 0x00af, blocks: (B:3:0x0008, B:5:0x0010, B:10:0x001c, B:11:0x0020, B:17:0x0052, B:20:0x005b, B:22:0x0061, B:24:0x0067, B:27:0x0074, B:29:0x0095, B:32:0x00a1, B:37:0x0079, B:38:0x007c, B:39:0x007d, B:42:0x0090, B:45:0x00ab, B:46:0x00ae, B:48:0x0030, B:50:0x0038, B:53:0x003c, B:55:0x0040, B:57:0x004b, B:66:0x00af, B:26:0x006e, B:41:0x008a), top: B:2:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00a1 A[Catch: all -> 0x0019, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x0019, all -> 0x0078, all -> 0x00aa, NameNotFoundException -> 0x00af, blocks: (B:3:0x0008, B:5:0x0010, B:10:0x001c, B:11:0x0020, B:17:0x0052, B:20:0x005b, B:22:0x0061, B:24:0x0067, B:27:0x0074, B:29:0x0095, B:32:0x00a1, B:37:0x0079, B:38:0x007c, B:39:0x007d, B:42:0x0090, B:45:0x00ab, B:46:0x00ae, B:48:0x0030, B:50:0x0038, B:53:0x003c, B:55:0x0040, B:57:0x004b, B:66:0x00af, B:26:0x006e, B:41:0x008a), top: B:2:0x0008 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static o.F7 b(java.lang.String r8, android.content.Context r9, java.util.List r10, int r11) {
        /*
            r0 = 1
            java.lang.String r1 = "getFontSync"
            o.Ha.a(r1)
            o.Ba r1 = o.G7.a
            java.lang.Object r2 = r1.f(r8)     // Catch: java.lang.Throwable -> L19
            android.graphics.Typeface r2 = (android.graphics.Typeface) r2     // Catch: java.lang.Throwable -> L19
            if (r2 == 0) goto L1c
            o.F7 r8 = new o.F7     // Catch: java.lang.Throwable -> L19
            r8.<init>(r2)     // Catch: java.lang.Throwable -> L19
            android.os.Trace.endSection()
            return r8
        L19:
            r8 = move-exception
            goto Lb9
        L1c:
            o.I0 r10 = o.AbstractC0523z7.a(r9, r10)     // Catch: java.lang.Throwable -> L19 android.content.pm.PackageManager.NameNotFoundException -> Laf
            int r2 = r10.a     // Catch: java.lang.Throwable -> L19
            r3 = 0
            java.lang.Object r10 = r10.b
            java.util.List r10 = (java.util.List) r10
            r4 = -3
            if (r2 == 0) goto L30
            if (r2 == r0) goto L2e
        L2c:
            r2 = r4
            goto L50
        L2e:
            r2 = -2
            goto L50
        L30:
            java.lang.Object r2 = r10.get(r3)     // Catch: java.lang.Throwable -> L19
            o.L7[] r2 = (o.L7[]) r2     // Catch: java.lang.Throwable -> L19
            if (r2 == 0) goto L4f
            int r5 = r2.length     // Catch: java.lang.Throwable -> L19
            if (r5 != 0) goto L3c
            goto L4f
        L3c:
            int r5 = r2.length     // Catch: java.lang.Throwable -> L19
            r6 = r3
        L3e:
            if (r6 >= r5) goto L4d
            r7 = r2[r6]     // Catch: java.lang.Throwable -> L19
            int r7 = r7.e     // Catch: java.lang.Throwable -> L19
            if (r7 == 0) goto L4b
            if (r7 >= 0) goto L49
            goto L2c
        L49:
            r2 = r7
            goto L50
        L4b:
            int r6 = r6 + r0
            goto L3e
        L4d:
            r2 = r3
            goto L50
        L4f:
            r2 = r0
        L50:
            if (r2 == 0) goto L5b
            o.F7 r8 = new o.F7     // Catch: java.lang.Throwable -> L19
            r8.<init>(r2)     // Catch: java.lang.Throwable -> L19
            android.os.Trace.endSection()
            return r8
        L5b:
            int r2 = r10.size()     // Catch: java.lang.Throwable -> L19
            if (r2 <= r0) goto L7d
            int r0 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Throwable -> L19
            r2 = 29
            if (r0 < r2) goto L7d
            o.Ha r0 = o.Fg.a     // Catch: java.lang.Throwable -> L19
            java.lang.String r0 = "TypefaceCompat.createFromFontInfoWithFallback"
            o.Ha.a(r0)     // Catch: java.lang.Throwable -> L19
            o.Ha r0 = o.Fg.a     // Catch: java.lang.Throwable -> L78
            android.graphics.Typeface r9 = r0.v(r9, r10, r11)     // Catch: java.lang.Throwable -> L78
            android.os.Trace.endSection()     // Catch: java.lang.Throwable -> L19
            goto L93
        L78:
            r8 = move-exception
            android.os.Trace.endSection()     // Catch: java.lang.Throwable -> L19
            throw r8     // Catch: java.lang.Throwable -> L19
        L7d:
            java.lang.Object r10 = r10.get(r3)     // Catch: java.lang.Throwable -> L19
            o.L7[] r10 = (o.L7[]) r10     // Catch: java.lang.Throwable -> L19
            o.Ha r0 = o.Fg.a     // Catch: java.lang.Throwable -> L19
            java.lang.String r0 = "TypefaceCompat.createFromFontInfo"
            o.Ha.a(r0)     // Catch: java.lang.Throwable -> L19
            o.Ha r0 = o.Fg.a     // Catch: java.lang.Throwable -> Laa
            android.graphics.Typeface r9 = r0.u(r9, r10, r11)     // Catch: java.lang.Throwable -> Laa
            android.os.Trace.endSection()     // Catch: java.lang.Throwable -> L19
        L93:
            if (r9 == 0) goto La1
            r1.j(r8, r9)     // Catch: java.lang.Throwable -> L19
            o.F7 r8 = new o.F7     // Catch: java.lang.Throwable -> L19
            r8.<init>(r9)     // Catch: java.lang.Throwable -> L19
            android.os.Trace.endSection()
            return r8
        La1:
            o.F7 r8 = new o.F7     // Catch: java.lang.Throwable -> L19
            r8.<init>(r4)     // Catch: java.lang.Throwable -> L19
            android.os.Trace.endSection()
            return r8
        Laa:
            r8 = move-exception
            android.os.Trace.endSection()     // Catch: java.lang.Throwable -> L19
            throw r8     // Catch: java.lang.Throwable -> L19
        Laf:
            o.F7 r8 = new o.F7     // Catch: java.lang.Throwable -> L19
            r9 = -1
            r8.<init>(r9)     // Catch: java.lang.Throwable -> L19
            android.os.Trace.endSection()
            return r8
        Lb9:
            android.os.Trace.endSection()
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: o.G7.b(java.lang.String, android.content.Context, java.util.List, int):o.F7");
    }
}
