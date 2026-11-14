package o;

import android.content.res.AssetManager;
import android.os.Build;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.Serializable;
import java.util.concurrent.Executor;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class S5 {
    public final Executor a;
    public final Vc b;
    public final byte[] c;
    public final File d;
    public final String e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f144f = false;
    public T5[] g;
    public byte[] h;

    public S5(AssetManager assetManager, Executor executor, Vc vc, String str, File file) {
        byte[] bArr;
        this.a = executor;
        this.b = vc;
        this.e = str;
        this.d = file;
        int i = Build.VERSION.SDK_INT;
        if (i >= 31) {
            bArr = AbstractC0487x9.C;
        } else {
            switch (i) {
                case 24:
                case 25:
                    bArr = AbstractC0487x9.G;
                    break;
                case 26:
                    bArr = AbstractC0487x9.F;
                    break;
                case 27:
                    bArr = AbstractC0487x9.E;
                    break;
                case 28:
                case 29:
                case 30:
                    bArr = AbstractC0487x9.D;
                    break;
                default:
                    bArr = null;
                    break;
            }
        }
        this.c = bArr;
    }

    public final FileInputStream a(AssetManager assetManager, String str) {
        try {
            return assetManager.openFd(str).createInputStream();
        } catch (FileNotFoundException e) {
            String message = e.getMessage();
            if (message != null && message.contains("compressed")) {
                this.b.i();
            }
            return null;
        }
    }

    public final void b(final int i, final Serializable serializable) {
        this.a.execute(new Runnable() { // from class: o.R5
            @Override // java.lang.Runnable
            public final void run() {
                S5.this.b.e(i, serializable);
            }
        });
    }
}
