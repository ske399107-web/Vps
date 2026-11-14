package com.byp.dts;

import adrt.ADRTLogCatReader;
import android.app.AlarmManager;
import android.app.Application;
import android.app.PendingIntent;
import android.content.Intent;
import android.os.Process;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.Thread;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes2.dex */
public class Applications extends Application {
    private Thread.UncaughtExceptionHandler uncaughtExceptionHandler;

    @Override // android.app.Application
    public void onCreate() {
        ADRTLogCatReader.onContext(this, "com.goxome.aidestudio");
        this.uncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler(this) { // from class: com.byp.dts.Applications.100000000
            private final Applications this$0;

            {
                this.this$0 = this;
            }

            @Override // java.lang.Thread.UncaughtExceptionHandler
            public void uncaughtException(Thread thread, Throwable th) {
                try {
                    Intent intent = new Intent(this.this$0.getApplicationContext(), Class.forName("com.byp.dts.DebugActivity"));
                    intent.setFlags(32768);
                    intent.putExtra("error", this.this$0.getStackTrace(th));
                    ((AlarmManager) this.this$0.getSystemService("alarm")).set(2, 1000, PendingIntent.getActivity(this.this$0.getApplicationContext(), 11111, intent, 1073741824));
                    Process.killProcess(Process.myPid());
                    System.exit(2);
                    this.this$0.uncaughtExceptionHandler.uncaughtException(thread, th);
                } catch (ClassNotFoundException e) {
                    throw new NoClassDefFoundError(e.getMessage());
                }
            }
        });
        super.onCreate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getStackTrace(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        Throwable th2 = th;
        while (true) {
            Throwable th3 = th2;
            if (th3 != null) {
                th3.printStackTrace(printWriter);
                th2 = th3.getCause();
            } else {
                String writer = stringWriter.toString();
                printWriter.close();
                return writer;
            }
        }
    }
}
