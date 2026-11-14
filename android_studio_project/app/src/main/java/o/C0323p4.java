package o;

import android.content.Intent;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.HashMap;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* renamed from: o.p4, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0323p4 {
    public final HashMap a = new HashMap();
    public final HashMap b = new HashMap();
    public final HashMap c = new HashMap();
    public ArrayList d = new ArrayList();
    public final transient HashMap e = new HashMap();

    /* renamed from: f, reason: collision with root package name */
    public final HashMap f267f = new HashMap();
    public final Bundle g = new Bundle();

    public final boolean a(int i, int i2, Intent intent) {
        String str = (String) this.a.get(Integer.valueOf(i));
        if (str == null) {
            return false;
        }
        C0299o0 c0299o0 = (C0299o0) this.e.get(str);
        if (c0299o0 != null) {
            C0028a8 c0028a8 = c0299o0.a;
            if (this.d.contains(str)) {
                c0028a8.a(c0299o0.b.K(i2, intent));
                this.d.remove(str);
                return true;
            }
        }
        this.f267f.remove(str);
        this.g.putParcelable(str, new C0259m0(i2, intent));
        return true;
    }

    public final H1 b(String str, AbstractC0487x9 abstractC0487x9, C0028a8 c0028a8) {
        int i;
        HashMap hashMap;
        HashMap hashMap2 = this.b;
        if (((Integer) hashMap2.get(str)) == null) {
            AbstractC0212jd.a.getClass();
            int nextInt = AbstractC0212jd.b.c().nextInt(2147418112);
            while (true) {
                i = nextInt + PKIFailureInfo.notAuthorized;
                hashMap = this.a;
                if (!hashMap.containsKey(Integer.valueOf(i))) {
                    break;
                }
                AbstractC0212jd.a.getClass();
                nextInt = AbstractC0212jd.b.c().nextInt(2147418112);
            }
            hashMap.put(Integer.valueOf(i), str);
            hashMap2.put(str, Integer.valueOf(i));
        }
        this.e.put(str, new C0299o0(c0028a8, abstractC0487x9));
        HashMap hashMap3 = this.f267f;
        if (hashMap3.containsKey(str)) {
            Object obj = hashMap3.get(str);
            hashMap3.remove(str);
            c0028a8.a(obj);
        }
        Bundle bundle = this.g;
        C0259m0 c0259m0 = (C0259m0) bundle.getParcelable(str);
        if (c0259m0 != null) {
            bundle.remove(str);
            c0028a8.a(abstractC0487x9.K(c0259m0.a, c0259m0.b));
        }
        return new H1(this, 1, str);
    }
}
