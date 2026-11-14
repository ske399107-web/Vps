package com.ffrt.proxyread;

import android.app.RemoteInput;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import o.AbstractC0487x9;
import o.L1;
import com.ffrt.proxyread.BuildConfig;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class AdbPairReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String action;
        String str;
        CharSequence charSequence;
        AbstractC0487x9.o(context, "context");
        AbstractC0487x9.o(intent, "intent");
        if (L1.b && (action = intent.getAction()) != null) {
            int hashCode = action.hashCode();
            if (hashCode != -493974930) {
                if (hashCode == 1884591427 && action.equals("com.ffrt.proxyread.ADB_PAIR")) {
                    Bundle resultsFromIntent = RemoteInput.getResultsFromIntent(intent);
                    if (resultsFromIntent != null && (charSequence = resultsFromIntent.getCharSequence("adb_pair_code")) != null) {
                        str = charSequence.toString();
                    } else {
                        str = null;
                    }
                    if (str == null) {
                        str = BuildConfig.FLAVOR;
                    }
                    WirelessPair.INSTANCE.start(str);
                    return;
                }
                return;
            }
            if (action.equals("com.ffrt.proxyread.ADB_RECONNECT")) {
                WirelessPair.INSTANCE.again();
            }
        }
    }
}
