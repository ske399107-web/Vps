package com.ffrt.proxyread;

import android.content.Intent;
import android.net.Uri;
import android.webkit.JavascriptInterface;
import o.L1;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class LoginBridge {
    private final HtmlLoginActivity a;

    public LoginBridge(HtmlLoginActivity htmlLoginActivity) {
        this.a = htmlLoginActivity;
    }

    @JavascriptInterface
    public final void get(String str) {
        HtmlLoginActivity htmlLoginActivity = this.a;
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        htmlLoginActivity.startActivity(intent);
    }

    @JavascriptInterface
    public final void open() {
        HtmlLoginActivity htmlLoginActivity = this.a;
        L1.b = true;
        htmlLoginActivity.startActivity(new Intent(htmlLoginActivity, (Class<?>) MainActivity.class));
        htmlLoginActivity.finish();
    }
}
