package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsResult;

/* loaded from: classes.dex */
final class zzcij implements DialogInterface.OnCancelListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ JsResult f5174c;

    public zzcij(JsResult jsResult) {
        this.f5174c = jsResult;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.f5174c.cancel();
    }
}
