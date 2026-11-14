package o;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.Font;
import android.graphics.fonts.FontFamily;
import android.graphics.fonts.FontStyle;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class Kg extends Ha {
    public static Font D0(FontFamily fontFamily, int i) {
        int i2;
        int i3;
        if ((i & 1) != 0) {
            i2 = 700;
        } else {
            i2 = 400;
        }
        if ((i & 2) != 0) {
            i3 = 1;
        } else {
            i3 = 0;
        }
        FontStyle fontStyle = new FontStyle(i2, i3);
        Font font = fontFamily.getFont(0);
        int F0 = F0(fontStyle, font.getStyle());
        for (int i4 = 1; i4 < fontFamily.getSize(); i4++) {
            Font font2 = fontFamily.getFont(i4);
            int F02 = F0(fontStyle, font2.getStyle());
            if (F02 < F0) {
                font = font2;
                F0 = F02;
            }
        }
        return font;
    }

    public static FontFamily E0(L7[] l7Arr, ContentResolver contentResolver) {
        ParcelFileDescriptor openFileDescriptor;
        FontFamily.Builder builder = null;
        for (L7 l7 : l7Arr) {
            try {
                openFileDescriptor = contentResolver.openFileDescriptor(l7.a, "r", null);
            } catch (IOException e) {
                Log.w("TypefaceCompatApi29Impl", "Font load failed", e);
            }
            if (openFileDescriptor == null) {
                if (openFileDescriptor == null) {
                }
            } else {
                try {
                    Font build = new Font.Builder(openFileDescriptor).setWeight(l7.c).setSlant(l7.d ? 1 : 0).setTtcIndex(l7.b).build();
                    if (builder == null) {
                        builder = new FontFamily.Builder(build);
                    } else {
                        builder.addFont(build);
                    }
                } catch (Throwable th) {
                    try {
                        openFileDescriptor.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                    break;
                }
            }
            openFileDescriptor.close();
        }
        if (builder == null) {
            return null;
        }
        return builder.build();
    }

    public static int F0(FontStyle fontStyle, FontStyle fontStyle2) {
        int i;
        int abs = Math.abs(fontStyle.getWeight() - fontStyle2.getWeight()) / 100;
        if (fontStyle.getSlant() == fontStyle2.getSlant()) {
            i = 0;
        } else {
            i = 2;
        }
        return abs + i;
    }

    @Override // o.Ha
    public final L7 C(L7[] l7Arr, int i) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }

    @Override // o.Ha
    public final Typeface t(Context context, I7 i7, Resources resources, int i) {
        try {
            FontFamily.Builder builder = null;
            for (J7 j7 : i7.a) {
                try {
                    Font build = new Font.Builder(resources, j7.f113f).setWeight(j7.b).setSlant(j7.c ? 1 : 0).setTtcIndex(j7.e).setFontVariationSettings(j7.d).build();
                    if (builder == null) {
                        builder = new FontFamily.Builder(build);
                    } else {
                        builder.addFont(build);
                    }
                } catch (IOException unused) {
                }
            }
            if (builder == null) {
                return null;
            }
            FontFamily build2 = builder.build();
            return new Typeface.CustomFallbackBuilder(build2).setStyle(D0(build2, i).getStyle()).build();
        } catch (Exception e) {
            Log.w("TypefaceCompatApi29Impl", "Font load failed", e);
            return null;
        }
    }

    @Override // o.Ha
    public final Typeface u(Context context, L7[] l7Arr, int i) {
        try {
            FontFamily E0 = E0(l7Arr, context.getContentResolver());
            if (E0 == null) {
                return null;
            }
            return new Typeface.CustomFallbackBuilder(E0).setStyle(D0(E0, i).getStyle()).build();
        } catch (Exception e) {
            Log.w("TypefaceCompatApi29Impl", "Font load failed", e);
            return null;
        }
    }

    @Override // o.Ha
    public final Typeface v(Context context, List list, int i) {
        ContentResolver contentResolver = context.getContentResolver();
        try {
            FontFamily E0 = E0((L7[]) list.get(0), contentResolver);
            if (E0 == null) {
                return null;
            }
            Typeface.CustomFallbackBuilder customFallbackBuilder = new Typeface.CustomFallbackBuilder(E0);
            for (int i2 = 1; i2 < list.size(); i2++) {
                FontFamily E02 = E0((L7[]) list.get(i2), contentResolver);
                if (E02 != null) {
                    customFallbackBuilder.addCustomFallback(E02);
                }
            }
            return customFallbackBuilder.setStyle(D0(E0, i).getStyle()).build();
        } catch (Exception e) {
            Log.w("TypefaceCompatApi29Impl", "Font load failed", e);
            return null;
        }
    }

    @Override // o.Ha
    public final Typeface w(Context context, InputStream inputStream) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }

    @Override // o.Ha
    public final Typeface x(Context context, Resources resources, int i, String str, int i2) {
        try {
            Font build = new Font.Builder(resources, i).build();
            return new Typeface.CustomFallbackBuilder(new FontFamily.Builder(build).build()).setStyle(build.getStyle()).build();
        } catch (Exception e) {
            Log.w("TypefaceCompatApi29Impl", "Font load failed", e);
            return null;
        }
    }
}
