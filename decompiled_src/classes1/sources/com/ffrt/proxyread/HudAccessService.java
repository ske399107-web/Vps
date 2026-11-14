package com.ffrt.proxyread;

import android.accessibilityservice.AccessibilityService;
import android.os.Handler;
import android.view.accessibility.AccessibilityEvent;
import o.AbstractC0149g9;
import o.AbstractC0408ta;
import o.RunnableC0180i0;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public final class HudAccessService extends AccessibilityService {
    @Override // android.accessibilityservice.AccessibilityService
    public final void onAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
    }

    @Override // android.app.Service
    public final void onDestroy() {
        Handler handler = AbstractC0149g9.a;
        AbstractC0149g9.f215f = null;
        super.onDestroy();
    }

    @Override // android.accessibilityservice.AccessibilityService
    public final void onInterrupt() {
    }

    @Override // android.accessibilityservice.AccessibilityService
    public final void onServiceConnected() {
        super.onServiceConnected();
        Handler handler = AbstractC0149g9.a;
        AbstractC0149g9.f215f = this;
        AbstractC0149g9.a.post(new RunnableC0180i0(9, this));
        int i = AbstractC0408ta.a;
    }
}
