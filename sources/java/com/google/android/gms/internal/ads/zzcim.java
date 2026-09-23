package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;

/* loaded from: classes.dex */
final class zzcim implements DialogInterface.OnCancelListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ JsPromptResult f5177c;

    public zzcim(JsPromptResult jsPromptResult) {
        this.f5177c = jsPromptResult;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.f5177c.cancel();
    }
}
