package o;

import android.app.Activity;
import android.content.ClipData;
import android.os.Build;
import android.text.Selection;
import android.text.Spannable;
import android.view.DragEvent;
import android.view.View;
import android.widget.TextView;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public abstract class K1 {
    public static boolean a(DragEvent dragEvent, TextView textView, Activity activity) {
        Q4 q4;
        activity.requestDragAndDropPermissions(dragEvent);
        int offsetForPosition = textView.getOffsetForPosition(dragEvent.getX(), dragEvent.getY());
        textView.beginBatchEdit();
        try {
            Selection.setSelection((Spannable) textView.getText(), offsetForPosition);
            ClipData clipData = dragEvent.getClipData();
            if (Build.VERSION.SDK_INT >= 31) {
                q4 = new C(clipData, 3);
            } else {
                R4 r4 = new R4();
                r4.b = clipData;
                r4.c = 3;
                q4 = r4;
            }
            Dh.h(textView, q4.build());
            textView.endBatchEdit();
            return true;
        } catch (Throwable th) {
            textView.endBatchEdit();
            throw th;
        }
    }

    public static boolean b(DragEvent dragEvent, View view, Activity activity) {
        Q4 q4;
        activity.requestDragAndDropPermissions(dragEvent);
        ClipData clipData = dragEvent.getClipData();
        if (Build.VERSION.SDK_INT >= 31) {
            q4 = new C(clipData, 3);
        } else {
            R4 r4 = new R4();
            r4.b = clipData;
            r4.c = 3;
            q4 = r4;
        }
        Dh.h(view, q4.build());
        return true;
    }
}
