package com.google.android.gms.internal.ads;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzcis implements View.OnAttachStateChangeListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzcbk f5182c;
    public final /* synthetic */ zzcjc f;

    public zzcis(zzcjc zzcjcVar, zzcbk zzcbkVar) {
        this.f5182c = zzcbkVar;
        this.f = zzcjcVar;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.f.B(view, this.f5182c, 10);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
