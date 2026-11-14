package o;

import android.content.Context;
import android.content.IntentFilter;
import android.location.Location;
import android.location.LocationManager;
import android.os.PowerManager;
import android.util.Log;
import java.util.Calendar;

/* renamed from: o.q1, reason: case insensitive filesystem */
/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class C0340q1 extends AbstractC0379s1 {
    public final /* synthetic */ int c = 0;
    public final /* synthetic */ LayoutInflaterFactory2C0439v1 d;
    public final Object e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0340q1(LayoutInflaterFactory2C0439v1 layoutInflaterFactory2C0439v1, C0380s2 c0380s2) {
        super(layoutInflaterFactory2C0439v1);
        this.d = layoutInflaterFactory2C0439v1;
        this.e = c0380s2;
    }

    @Override // o.AbstractC0379s1
    public final IntentFilter e() {
        switch (this.c) {
            case 0:
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
                return intentFilter;
            default:
                IntentFilter intentFilter2 = new IntentFilter();
                intentFilter2.addAction("android.intent.action.TIME_SET");
                intentFilter2.addAction("android.intent.action.TIMEZONE_CHANGED");
                intentFilter2.addAction("android.intent.action.TIME_TICK");
                return intentFilter2;
        }
    }

    /* JADX WARN: Type inference failed for: r3v13, types: [o.Dg, java.lang.Object] */
    @Override // o.AbstractC0379s1
    public final int f() {
        Location location;
        boolean z;
        long j;
        Location location2;
        switch (this.c) {
            case 0:
                if (AbstractC0240l1.a((PowerManager) this.e)) {
                    return 2;
                }
                return 1;
            default:
                C0380s2 c0380s2 = (C0380s2) this.e;
                Eg eg = (Eg) c0380s2.c;
                if (eg.b > System.currentTimeMillis()) {
                    z = eg.a;
                } else {
                    Context context = (Context) c0380s2.d;
                    int h = Ha.h(context, "android.permission.ACCESS_COARSE_LOCATION");
                    Location location3 = null;
                    LocationManager locationManager = (LocationManager) c0380s2.b;
                    if (h == 0) {
                        try {
                        } catch (Exception e) {
                            Log.d("TwilightManager", "Failed to get last known location", e);
                        }
                        if (locationManager.isProviderEnabled("network")) {
                            location2 = locationManager.getLastKnownLocation("network");
                            location = location2;
                        }
                        location2 = null;
                        location = location2;
                    } else {
                        location = null;
                    }
                    if (Ha.h(context, "android.permission.ACCESS_FINE_LOCATION") == 0) {
                        try {
                            if (locationManager.isProviderEnabled("gps")) {
                                location3 = locationManager.getLastKnownLocation("gps");
                            }
                        } catch (Exception e2) {
                            Log.d("TwilightManager", "Failed to get last known location", e2);
                        }
                    }
                    if (location3 == null || location == null ? location3 != null : location3.getTime() > location.getTime()) {
                        location = location3;
                    }
                    z = false;
                    if (location != null) {
                        long currentTimeMillis = System.currentTimeMillis();
                        if (Dg.d == null) {
                            Dg.d = new Object();
                        }
                        Dg dg = Dg.d;
                        dg.a(currentTimeMillis - 86400000, location.getLatitude(), location.getLongitude());
                        dg.a(currentTimeMillis, location.getLatitude(), location.getLongitude());
                        if (dg.c == 1) {
                            z = true;
                        }
                        long j2 = dg.b;
                        long j3 = dg.a;
                        dg.a(currentTimeMillis + 86400000, location.getLatitude(), location.getLongitude());
                        long j4 = dg.b;
                        if (j2 != -1 && j3 != -1) {
                            if (currentTimeMillis <= j3) {
                                if (currentTimeMillis > j2) {
                                    j4 = j3;
                                } else {
                                    j4 = j2;
                                }
                            }
                            j = j4 + 60000;
                        } else {
                            j = currentTimeMillis + 43200000;
                        }
                        eg.a = z;
                        eg.b = j;
                    } else {
                        Log.i("TwilightManager", "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.");
                        int i = Calendar.getInstance().get(11);
                        if (i < 6 || i >= 22) {
                            z = true;
                        }
                    }
                }
                if (!z) {
                    return 1;
                }
                return 2;
        }
    }

    @Override // o.AbstractC0379s1
    public final void h() {
        switch (this.c) {
            case 0:
                this.d.l(true, true);
                return;
            default:
                this.d.l(true, true);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0340q1(LayoutInflaterFactory2C0439v1 layoutInflaterFactory2C0439v1, Context context) {
        super(layoutInflaterFactory2C0439v1);
        this.d = layoutInflaterFactory2C0439v1;
        this.e = (PowerManager) context.getApplicationContext().getSystemService("power");
    }
}
