package com.ffrt.proxyread;

import android.app.Activity;
import android.os.Bundle;
import android.webkit.WebSettings;
import android.webkit.WebView;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class HtmlLoginActivity extends Activity {
    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        WebView webView = new WebView(this);
        WebSettings settings = webView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setAllowFileAccessFromFileURLs(true);
        settings.setAllowUniversalAccessFromFileURLs(true);
        webView.addJavascriptInterface(new LoginBridge(this), "M");
        webView.loadUrl("file:///android_asset/m1nx.html");
        setContentView(webView);
    }
}
