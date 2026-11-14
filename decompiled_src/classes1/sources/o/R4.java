package o;

import android.content.ClipData;
import android.net.Uri;
import android.os.Bundle;
import android.view.ContentInfo;
import android.view.View;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.conscrypt.BuildConfig;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class R4 implements Q4, S4 {
    public final /* synthetic */ int a;
    public Object b;
    public int c;
    public int d;
    public Object e;

    /* renamed from: f, reason: collision with root package name */
    public Cloneable f142f;

    public /* synthetic */ R4() {
        this.a = 0;
    }

    public void a(Mi mi, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if ((((zi) it.next()).a.c() & 8) != 0) {
                ((View) this.e).setTranslationY(Q0.c(this.d, 0, r3.a.b()));
                return;
            }
        }
    }

    @Override // o.Q4
    public T4 build() {
        return new T4(new R4(this));
    }

    @Override // o.S4
    public ClipData c() {
        return (ClipData) this.b;
    }

    @Override // o.S4
    public int h() {
        return this.d;
    }

    @Override // o.S4
    public ContentInfo m() {
        return null;
    }

    @Override // o.Q4
    public void p(Bundle bundle) {
        this.f142f = bundle;
    }

    @Override // o.Q4
    public void r(Uri uri) {
        this.e = uri;
    }

    @Override // o.S4
    public int s() {
        return this.c;
    }

    public String toString() {
        String str;
        String valueOf;
        String str2;
        switch (this.a) {
            case 1:
                StringBuilder sb = new StringBuilder("ContentInfoCompat{clip=");
                sb.append(((ClipData) this.b).getDescription());
                sb.append(", source=");
                int i = this.c;
                if (i != 0) {
                    if (i != 1) {
                        if (i != 2) {
                            if (i != 3) {
                                if (i != 4) {
                                    if (i != 5) {
                                        str = String.valueOf(i);
                                    } else {
                                        str = "SOURCE_PROCESS_TEXT";
                                    }
                                } else {
                                    str = "SOURCE_AUTOFILL";
                                }
                            } else {
                                str = "SOURCE_DRAG_AND_DROP";
                            }
                        } else {
                            str = "SOURCE_INPUT_METHOD";
                        }
                    } else {
                        str = "SOURCE_CLIPBOARD";
                    }
                } else {
                    str = "SOURCE_APP";
                }
                sb.append(str);
                sb.append(", flags=");
                int i2 = this.d;
                if ((i2 & 1) != 0) {
                    valueOf = "FLAG_CONVERT_TO_PLAIN_TEXT";
                } else {
                    valueOf = String.valueOf(i2);
                }
                sb.append(valueOf);
                String str3 = BuildConfig.FLAVOR;
                Uri uri = (Uri) this.e;
                if (uri == null) {
                    str2 = BuildConfig.FLAVOR;
                } else {
                    str2 = ", hasLinkUri(" + uri.toString().length() + ")";
                }
                sb.append(str2);
                if (((Bundle) this.f142f) != null) {
                    str3 = ", hasExtras";
                }
                return Ve.k(sb, str3, "}");
            default:
                return super.toString();
        }
    }

    @Override // o.Q4
    public void x(int i) {
        this.d = i;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Cloneable, int[]] */
    public R4(View view) {
        this.a = 2;
        this.f142f = new int[2];
        this.e = view;
    }

    public R4(R4 r4) {
        this.a = 1;
        ClipData clipData = (ClipData) r4.b;
        clipData.getClass();
        this.b = clipData;
        int i = r4.c;
        if (i < 0) {
            Locale locale = Locale.US;
            throw new IllegalArgumentException("source is out of range of [0, 5] (too low)");
        }
        if (i <= 5) {
            this.c = i;
            int i2 = r4.d;
            if ((i2 & 1) == i2) {
                this.d = i2;
                this.e = (Uri) r4.e;
                this.f142f = (Bundle) r4.f142f;
                return;
            } else {
                throw new IllegalArgumentException("Requested flags 0x" + Integer.toHexString(i2) + ", but only 0x" + Integer.toHexString(1) + " are allowed");
            }
        }
        Locale locale2 = Locale.US;
        throw new IllegalArgumentException("source is out of range of [0, 5] (too high)");
    }
}
