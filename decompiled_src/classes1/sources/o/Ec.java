package o;

import android.graphics.Path;
import android.util.Log;
import org.bouncycastle.asn1.eac.EACTags;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Ec {
    public char a;
    public final float[] b;

    public Ec(char c, float[] fArr) {
        this.a = c;
        this.b = fArr;
    }

    public static void a(Path path, float f2, float f3, float f4, float f5, float f6, float f7, float f8, boolean z, boolean z2) {
        double d;
        double d2;
        double radians = Math.toRadians(f8);
        double cos = Math.cos(radians);
        double sin = Math.sin(radians);
        double d3 = f2;
        double d4 = f3;
        double d5 = (d4 * sin) + (d3 * cos);
        double d6 = d3;
        double d7 = f6;
        double d8 = d5 / d7;
        double d9 = f7;
        double d10 = ((d4 * cos) + ((-f2) * sin)) / d9;
        double d11 = d4;
        double d12 = f5;
        double d13 = ((d12 * sin) + (f4 * cos)) / d7;
        double d14 = ((d12 * cos) + ((-f4) * sin)) / d9;
        double d15 = d8 - d13;
        double d16 = d10 - d14;
        double d17 = (d8 + d13) / 2.0d;
        double d18 = (d10 + d14) / 2.0d;
        double d19 = (d16 * d16) + (d15 * d15);
        if (d19 == 0.0d) {
            Log.w("PathParser", " Points are coincident");
            return;
        }
        double d20 = (1.0d / d19) - 0.25d;
        if (d20 < 0.0d) {
            Log.w("PathParser", "Points are too far apart " + d19);
            float sqrt = (float) (Math.sqrt(d19) / 1.99999d);
            a(path, f2, f3, f4, f5, f6 * sqrt, f7 * sqrt, f8, z, z2);
            return;
        }
        double sqrt2 = Math.sqrt(d20);
        double d21 = d15 * sqrt2;
        double d22 = sqrt2 * d16;
        if (z == z2) {
            d = d17 - d22;
            d2 = d18 + d21;
        } else {
            d = d17 + d22;
            d2 = d18 - d21;
        }
        double atan2 = Math.atan2(d10 - d2, d8 - d);
        double atan22 = Math.atan2(d14 - d2, d13 - d) - atan2;
        if (z2 != (atan22 >= 0.0d)) {
            atan22 = atan22 > 0.0d ? atan22 - 6.283185307179586d : atan22 + 6.283185307179586d;
        }
        double d23 = d * d7;
        double d24 = d2 * d9;
        double d25 = (d23 * cos) - (d24 * sin);
        double d26 = (d24 * cos) + (d23 * sin);
        int ceil = (int) Math.ceil(Math.abs((atan22 * 4.0d) / 3.141592653589793d));
        double cos2 = Math.cos(radians);
        double sin2 = Math.sin(radians);
        double cos3 = Math.cos(atan2);
        double sin3 = Math.sin(atan2);
        double d27 = -d7;
        double d28 = d27 * cos2;
        double d29 = d9 * sin2;
        double d30 = (d28 * sin3) - (d29 * cos3);
        double d31 = d27 * sin2;
        double d32 = d9 * cos2;
        double d33 = (cos3 * d32) + (sin3 * d31);
        double d34 = d32;
        double d35 = atan22 / ceil;
        int i = 0;
        while (i < ceil) {
            double d36 = atan2 + d35;
            double sin4 = Math.sin(d36);
            double cos4 = Math.cos(d36);
            double d37 = d35;
            double d38 = (((d7 * cos2) * cos4) + d25) - (d29 * sin4);
            double d39 = d34;
            double d40 = d25;
            double d41 = (d39 * sin4) + (d7 * sin2 * cos4) + d26;
            double d42 = (d28 * sin4) - (d29 * cos4);
            double d43 = (cos4 * d39) + (sin4 * d31);
            double d44 = d36 - atan2;
            double tan = Math.tan(d44 / 2.0d);
            double sqrt3 = ((Math.sqrt(((tan * 3.0d) * tan) + 4.0d) - 1.0d) * Math.sin(d44)) / 3.0d;
            path.rLineTo(0.0f, 0.0f);
            path.cubicTo((float) ((d30 * sqrt3) + d6), (float) ((d33 * sqrt3) + d11), (float) (d38 - (sqrt3 * d42)), (float) (d41 - (sqrt3 * d43)), (float) d38, (float) d41);
            i++;
            atan2 = d36;
            d31 = d31;
            cos2 = cos2;
            ceil = ceil;
            d33 = d43;
            d7 = d7;
            d30 = d42;
            d6 = d38;
            d11 = d41;
            d25 = d40;
            d35 = d37;
            d34 = d39;
        }
    }

    public static void b(Ec[] ecArr, Path path) {
        int i;
        int i2;
        char c;
        int i3;
        int i4;
        Ec ec;
        boolean z;
        boolean z2;
        float f2;
        float f3;
        boolean z3;
        boolean z4;
        float f4;
        float f5;
        float f6;
        float f7;
        float f8;
        float f9;
        float f10;
        float f11;
        float f12;
        float f13;
        Ec[] ecArr2 = ecArr;
        int i5 = 6;
        float[] fArr = new float[6];
        int length = ecArr2.length;
        int i6 = 0;
        char c2 = 'm';
        while (i6 < length) {
            Ec ec2 = ecArr2[i6];
            char c3 = ec2.a;
            float f14 = fArr[0];
            float f15 = fArr[1];
            float f16 = fArr[2];
            float f17 = fArr[3];
            float f18 = fArr[4];
            float f19 = fArr[5];
            switch (c3) {
                case EACTags.ELEMENT_LIST /* 65 */:
                case 'a':
                    i = 7;
                    break;
                case EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE /* 67 */:
                case 'c':
                    i = i5;
                    break;
                case 'H':
                case 'V':
                case 'h':
                case 'v':
                    i = 1;
                    break;
                case EACTags.ANSWER_TO_RESET /* 81 */:
                case 'S':
                case 'q':
                case 's':
                    i = 4;
                    break;
                case 'Z':
                case 'z':
                    path.close();
                    path.moveTo(f18, f19);
                    f14 = f18;
                    f16 = f14;
                    f15 = f19;
                    f17 = f15;
                    break;
            }
            i = 2;
            float f20 = f18;
            float f21 = f19;
            float f22 = f14;
            float f23 = f15;
            int i7 = 0;
            while (true) {
                float[] fArr2 = ec2.b;
                if (i7 < fArr2.length) {
                    if (c3 != 'A') {
                        if (c3 != 'C') {
                            if (c3 != 'H') {
                                if (c3 != 'Q') {
                                    if (c3 != 'V') {
                                        if (c3 != 'a') {
                                            if (c3 != 'c') {
                                                if (c3 != 'h') {
                                                    if (c3 != 'q') {
                                                        if (c3 != 'v') {
                                                            if (c3 != 'L') {
                                                                if (c3 != 'M') {
                                                                    if (c3 != 'S') {
                                                                        if (c3 != 'T') {
                                                                            if (c3 != 'l') {
                                                                                if (c3 != 'm') {
                                                                                    if (c3 != 's') {
                                                                                        if (c3 != 't') {
                                                                                            i2 = i7;
                                                                                        } else {
                                                                                            if (c2 != 'q' && c2 != 't' && c2 != 'Q' && c2 != 'T') {
                                                                                                f13 = 0.0f;
                                                                                                f12 = 0.0f;
                                                                                            } else {
                                                                                                f12 = f22 - f16;
                                                                                                f13 = f23 - f17;
                                                                                            }
                                                                                            int i8 = i7 + 1;
                                                                                            path.rQuadTo(f12, f13, fArr2[i7], fArr2[i8]);
                                                                                            float f24 = f12 + f22;
                                                                                            float f25 = f13 + f23;
                                                                                            f22 += fArr2[i7];
                                                                                            f23 += fArr2[i8];
                                                                                            f17 = f25;
                                                                                            i2 = i7;
                                                                                            c = c3;
                                                                                            i3 = i6;
                                                                                            i4 = length;
                                                                                            f16 = f24;
                                                                                        }
                                                                                    } else {
                                                                                        if (c2 != 'c' && c2 != 's' && c2 != 'C' && c2 != 'S') {
                                                                                            f10 = 0.0f;
                                                                                            f11 = 0.0f;
                                                                                        } else {
                                                                                            float f26 = f22 - f16;
                                                                                            f10 = f23 - f17;
                                                                                            f11 = f26;
                                                                                        }
                                                                                        int i9 = i7 + 1;
                                                                                        int i10 = i7 + 2;
                                                                                        int i11 = i7 + 3;
                                                                                        i2 = i7;
                                                                                        float f27 = f23;
                                                                                        float f28 = f22;
                                                                                        path.rCubicTo(f11, f10, fArr2[i7], fArr2[i9], fArr2[i10], fArr2[i11]);
                                                                                        f4 = f28 + fArr2[i2];
                                                                                        f5 = f27 + fArr2[i9];
                                                                                        f6 = f28 + fArr2[i10];
                                                                                        f7 = fArr2[i11] + f27;
                                                                                    }
                                                                                } else {
                                                                                    i2 = i7;
                                                                                    float f29 = fArr2[i2];
                                                                                    f22 += f29;
                                                                                    float f30 = fArr2[i2 + 1];
                                                                                    f23 += f30;
                                                                                    if (i2 > 0) {
                                                                                        path.rLineTo(f29, f30);
                                                                                    } else {
                                                                                        path.rMoveTo(f29, f30);
                                                                                        f21 = f23;
                                                                                        f20 = f22;
                                                                                    }
                                                                                }
                                                                            } else {
                                                                                i2 = i7;
                                                                                int i12 = i2 + 1;
                                                                                path.rLineTo(fArr2[i2], fArr2[i12]);
                                                                                f22 += fArr2[i2];
                                                                                f23 += fArr2[i12];
                                                                            }
                                                                        } else {
                                                                            i2 = i7;
                                                                            float f31 = f23;
                                                                            float f32 = f22;
                                                                            if (c2 != 'q' && c2 != 't' && c2 != 'Q' && c2 != 'T') {
                                                                                f4 = f32;
                                                                                f5 = f31;
                                                                            } else {
                                                                                f4 = (f32 * 2.0f) - f16;
                                                                                f5 = (f31 * 2.0f) - f17;
                                                                            }
                                                                            int i13 = i2 + 1;
                                                                            path.quadTo(f4, f5, fArr2[i2], fArr2[i13]);
                                                                            f6 = fArr2[i2];
                                                                            f7 = fArr2[i13];
                                                                        }
                                                                    } else {
                                                                        i2 = i7;
                                                                        float f33 = f23;
                                                                        float f34 = f22;
                                                                        if (c2 != 'c' && c2 != 's' && c2 != 'C' && c2 != 'S') {
                                                                            f9 = f34;
                                                                            f8 = f33;
                                                                        } else {
                                                                            f8 = (f33 * 2.0f) - f17;
                                                                            f9 = (f34 * 2.0f) - f16;
                                                                        }
                                                                        int i14 = i2 + 1;
                                                                        int i15 = i2 + 2;
                                                                        int i16 = i2 + 3;
                                                                        path.cubicTo(f9, f8, fArr2[i2], fArr2[i14], fArr2[i15], fArr2[i16]);
                                                                        float f35 = fArr2[i2];
                                                                        float f36 = fArr2[i14];
                                                                        f22 = fArr2[i15];
                                                                        f23 = fArr2[i16];
                                                                        f17 = f36;
                                                                        f16 = f35;
                                                                    }
                                                                } else {
                                                                    i2 = i7;
                                                                    f22 = fArr2[i2];
                                                                    f23 = fArr2[i2 + 1];
                                                                    if (i2 > 0) {
                                                                        path.lineTo(f22, f23);
                                                                    } else {
                                                                        path.moveTo(f22, f23);
                                                                        f21 = f23;
                                                                        f20 = f22;
                                                                    }
                                                                }
                                                            } else {
                                                                i2 = i7;
                                                                int i17 = i2 + 1;
                                                                path.lineTo(fArr2[i2], fArr2[i17]);
                                                                f22 = fArr2[i2];
                                                                f23 = fArr2[i17];
                                                            }
                                                        } else {
                                                            i2 = i7;
                                                            path.rLineTo(0.0f, fArr2[i2]);
                                                            f23 += fArr2[i2];
                                                        }
                                                    } else {
                                                        i2 = i7;
                                                        float f37 = f23;
                                                        float f38 = f22;
                                                        int i18 = i2 + 1;
                                                        int i19 = i2 + 2;
                                                        int i20 = i2 + 3;
                                                        path.rQuadTo(fArr2[i2], fArr2[i18], fArr2[i19], fArr2[i20]);
                                                        float f39 = f38 + fArr2[i2];
                                                        float f40 = fArr2[i18] + f37;
                                                        float f41 = f38 + fArr2[i19];
                                                        f23 = f37 + fArr2[i20];
                                                        f17 = f40;
                                                        f16 = f39;
                                                        c = c3;
                                                        i3 = i6;
                                                        i4 = length;
                                                        f22 = f41;
                                                    }
                                                    ec = ec2;
                                                } else {
                                                    i2 = i7;
                                                    path.rLineTo(fArr2[i2], 0.0f);
                                                    f22 += fArr2[i2];
                                                }
                                                c = c3;
                                                i3 = i6;
                                                i4 = length;
                                                ec = ec2;
                                            } else {
                                                i2 = i7;
                                                float f42 = f23;
                                                float f43 = f22;
                                                int i21 = i2 + 2;
                                                int i22 = i2 + 3;
                                                int i23 = i2 + 4;
                                                int i24 = i2 + 5;
                                                path.rCubicTo(fArr2[i2], fArr2[i2 + 1], fArr2[i21], fArr2[i22], fArr2[i23], fArr2[i24]);
                                                f4 = f43 + fArr2[i21];
                                                f5 = f42 + fArr2[i22];
                                                f6 = f43 + fArr2[i23];
                                                f7 = fArr2[i24] + f42;
                                            }
                                            f17 = f5;
                                            f16 = f4;
                                            c = c3;
                                            i3 = i6;
                                            i4 = length;
                                            f22 = f6;
                                            f23 = f7;
                                            ec = ec2;
                                        } else {
                                            i2 = i7;
                                            float f44 = f23;
                                            float f45 = f22;
                                            int i25 = i2 + 5;
                                            float f46 = fArr2[i25] + f45;
                                            int i26 = i2 + 6;
                                            float f47 = fArr2[i26] + f44;
                                            float f48 = fArr2[i2];
                                            float f49 = fArr2[i2 + 1];
                                            float f50 = fArr2[i2 + 2];
                                            if (fArr2[i2 + 3] != 0.0f) {
                                                z3 = true;
                                            } else {
                                                z3 = false;
                                            }
                                            if (fArr2[i2 + 4] != 0.0f) {
                                                z4 = true;
                                            } else {
                                                z4 = false;
                                            }
                                            c = c3;
                                            i4 = length;
                                            ec = ec2;
                                            i3 = i6;
                                            a(path, f45, f44, f46, f47, f48, f49, f50, z3, z4);
                                            f22 = f45 + fArr2[i25];
                                            f23 = f44 + fArr2[i26];
                                        }
                                    } else {
                                        i2 = i7;
                                        c = c3;
                                        i3 = i6;
                                        i4 = length;
                                        ec = ec2;
                                        path.lineTo(f22, fArr2[i2]);
                                        f23 = fArr2[i2];
                                    }
                                } else {
                                    i2 = i7;
                                    c = c3;
                                    i3 = i6;
                                    i4 = length;
                                    ec = ec2;
                                    float f51 = fArr2[i2];
                                    int i27 = i2 + 1;
                                    float f52 = fArr2[i27];
                                    int i28 = i2 + 2;
                                    int i29 = i2 + 3;
                                    path.quadTo(f51, f52, fArr2[i28], fArr2[i29]);
                                    f2 = fArr2[i2];
                                    f3 = fArr2[i27];
                                    f22 = fArr2[i28];
                                    f23 = fArr2[i29];
                                }
                            } else {
                                i2 = i7;
                                c = c3;
                                i3 = i6;
                                i4 = length;
                                ec = ec2;
                                path.lineTo(fArr2[i2], f23);
                                f22 = fArr2[i2];
                            }
                            i7 = i2 + i;
                            ec2 = ec;
                            length = i4;
                            c2 = c;
                            c3 = c2;
                            i6 = i3;
                        } else {
                            i2 = i7;
                            c = c3;
                            i3 = i6;
                            i4 = length;
                            ec = ec2;
                            int i30 = i2 + 2;
                            int i31 = i2 + 3;
                            int i32 = i2 + 4;
                            int i33 = i2 + 5;
                            path.cubicTo(fArr2[i2], fArr2[i2 + 1], fArr2[i30], fArr2[i31], fArr2[i32], fArr2[i33]);
                            f22 = fArr2[i32];
                            f23 = fArr2[i33];
                            f2 = fArr2[i30];
                            f3 = fArr2[i31];
                        }
                        f16 = f2;
                        f17 = f3;
                        i7 = i2 + i;
                        ec2 = ec;
                        length = i4;
                        c2 = c;
                        c3 = c2;
                        i6 = i3;
                    } else {
                        i2 = i7;
                        float f53 = f23;
                        float f54 = f22;
                        c = c3;
                        i3 = i6;
                        i4 = length;
                        ec = ec2;
                        int i34 = i2 + 5;
                        float f55 = fArr2[i34];
                        int i35 = i2 + 6;
                        float f56 = fArr2[i35];
                        float f57 = fArr2[i2];
                        float f58 = fArr2[i2 + 1];
                        float f59 = fArr2[i2 + 2];
                        if (fArr2[i2 + 3] != 0.0f) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (fArr2[i2 + 4] != 0.0f) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        a(path, f54, f53, f55, f56, f57, f58, f59, z, z2);
                        f22 = fArr2[i34];
                        f23 = fArr2[i35];
                    }
                    f17 = f23;
                    f16 = f22;
                    i7 = i2 + i;
                    ec2 = ec;
                    length = i4;
                    c2 = c;
                    c3 = c2;
                    i6 = i3;
                }
            }
            fArr[0] = f22;
            fArr[1] = f23;
            fArr[2] = f16;
            fArr[3] = f17;
            fArr[4] = f20;
            fArr[5] = f21;
            c2 = ec2.a;
            i6++;
            ecArr2 = ecArr;
            length = length;
            i5 = 6;
        }
    }

    public Ec(Ec ec) {
        this.a = ec.a;
        float[] fArr = ec.b;
        this.b = Ha.p(fArr, fArr.length);
    }
}
