package o;

/* renamed from: o.dh, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class AbstractC0097dh extends AbstractC0077ch {
    public Ec[] a;
    public String b;
    public int c;

    public AbstractC0097dh() {
        this.a = null;
        this.c = 0;
    }

    public Ec[] getPathData() {
        return this.a;
    }

    public String getPathName() {
        return this.b;
    }

    public void setPathData(Ec[] ecArr) {
        Ec[] ecArr2 = this.a;
        boolean z = false;
        if (ecArr2 != null && ecArr != null && ecArr2.length == ecArr.length) {
            int i = 0;
            while (true) {
                if (i < ecArr2.length) {
                    Ec ec = ecArr2[i];
                    char c = ec.a;
                    Ec ec2 = ecArr[i];
                    if (c != ec2.a || ec.b.length != ec2.b.length) {
                        break;
                    } else {
                        i++;
                    }
                } else {
                    z = true;
                    break;
                }
            }
        }
        if (!z) {
            this.a = Ha.B(ecArr);
            return;
        }
        Ec[] ecArr3 = this.a;
        for (int i2 = 0; i2 < ecArr.length; i2++) {
            ecArr3[i2].a = ecArr[i2].a;
            int i3 = 0;
            while (true) {
                float[] fArr = ecArr[i2].b;
                if (i3 < fArr.length) {
                    ecArr3[i2].b[i3] = fArr[i3];
                    i3++;
                }
            }
        }
    }

    public AbstractC0097dh(AbstractC0097dh abstractC0097dh) {
        this.a = null;
        this.c = 0;
        this.b = abstractC0097dh.b;
        this.a = Ha.B(abstractC0097dh.a);
    }
}
