package com.google.android.material.internal;

import android.content.Context;
import android.util.AttributeSet;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import o.Cb;
import o.MenuC0230kb;

/* loaded from: /workspaces/Vps/decoded_apk/../reversed_android_project/classes.dex */
public class NavigationMenuView extends RecyclerView implements Cb {
    public NavigationMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        setLayoutManager(new LinearLayoutManager(1));
    }

    @Override // o.Cb
    public final void a(MenuC0230kb menuC0230kb) {
    }

    public int getWindowAnimations() {
        return 0;
    }
}
