package com.google.android.gms.internal.ads;

import android.view.View;
import android.view.ViewTreeObserver;

/* loaded from: classes.dex */
public final class zzceb {
    public static final void a(View view, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        ViewTreeObserver viewTreeObserver;
        zzcec zzcecVar = new zzcec(view, onGlobalLayoutListener);
        View view2 = (View) zzcecVar.f5077c.get();
        ViewTreeObserver viewTreeObserver2 = null;
        if (view2 != null && (viewTreeObserver = view2.getViewTreeObserver()) != null && viewTreeObserver.isAlive()) {
            viewTreeObserver2 = viewTreeObserver;
        }
        if (viewTreeObserver2 != null) {
            viewTreeObserver2.addOnGlobalLayoutListener(zzcecVar);
        }
    }
}
