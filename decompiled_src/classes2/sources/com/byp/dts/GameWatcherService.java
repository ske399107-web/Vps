package com.byp.dts;

import android.app.ActivityManager;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.IBinder;
import java.util.Iterator;
import java.util.List;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes2.dex */
public class GameWatcherService extends Service {
    private static final String CHANNEL_ID = "GameWatcher";
    private static final String TARGET_PACKAGE = "com.dts.freefiremax";
    private Thread watcherThread;

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return (IBinder) null;
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        createNotificationChannel();
        startForeground(1, new Notification.Builder(this, CHANNEL_ID).setContentTitle("MODDER GANG ").setContentText("Watching Free Fire Max...").setSmallIcon(android.R.drawable.ic_dialog_info).build());
        startWatcher();
        return 1;
    }

    private void createNotificationChannel() {
        if (Build.VERSION.SDK_INT >= 26) {
            try {
                ((NotificationManager) getSystemService(Class.forName("android.app.NotificationManager"))).createNotificationChannel(new NotificationChannel(CHANNEL_ID, "Game Watcher", 2));
            } catch (ClassNotFoundException e) {
                throw new NoClassDefFoundError(e.getMessage());
            }
        }
    }

    private void startWatcher() {
        this.watcherThread = new Thread(new Runnable(this) { // from class: com.byp.dts.GameWatcherService.100000000
            private final GameWatcherService this$0;

            {
                this.this$0 = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                boolean isAppRunning = this.this$0.isAppRunning(GameWatcherService.TARGET_PACKAGE);
                while (true) {
                    boolean isAppRunning2 = this.this$0.isAppRunning(GameWatcherService.TARGET_PACKAGE);
                    if (isAppRunning && !isAppRunning2) {
                        this.this$0.openClearDataScreen();
                        return;
                    } else {
                        isAppRunning = isAppRunning2;
                        try {
                            Thread.sleep(2000);
                        } catch (Exception e) {
                        }
                    }
                }
            }
        });
        this.watcherThread.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isAppRunning(String str) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        ActivityManager activityManager = (ActivityManager) getSystemService("activity");
        if (activityManager != null && (runningAppProcesses = activityManager.getRunningAppProcesses()) != null) {
            Iterator<ActivityManager.RunningAppProcessInfo> it = runningAppProcesses.iterator();
            while (it.hasNext()) {
                if (it.next().processName.equals(str)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openClearDataScreen() {
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.parse(new StringBuffer().append("package:").append(TARGET_PACKAGE).toString()));
        intent.addFlags(268435456);
        startActivity(intent);
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        if (this.watcherThread != null) {
            this.watcherThread.interrupt();
        }
    }
}
