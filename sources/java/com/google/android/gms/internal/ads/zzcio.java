package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;
import android.widget.EditText;

/* loaded from: classes.dex */
final class zzcio implements DialogInterface.OnClickListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ JsPromptResult f5179c;
    public final /* synthetic */ EditText f;

    public zzcio(JsPromptResult jsPromptResult, EditText editText) {
        this.f5179c = jsPromptResult;
        this.f = editText;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f5179c.confirm(this.f.getText().toString());
    }
}
