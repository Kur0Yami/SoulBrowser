package com.google.android.gms.internal.consent_sdk;

import android.os.Handler;
import android.webkit.WebView;
import androidx.annotation.UiThread;

@UiThread
/* loaded from: classes.dex */
public final class zzbx extends WebView {
    public static final /* synthetic */ int h = 0;

    /* renamed from: c, reason: collision with root package name */
    public final Handler f9961c;
    public final zzcd f;
    public boolean g;

    public zzbx(zzbz zzbzVar, Handler handler, zzcd zzcdVar) {
        super(zzbzVar);
        this.g = false;
        this.f9961c = handler;
        this.f = zzcdVar;
    }

    public final void a(String str, String str2) {
        final String str3 = str + "(" + str2 + ");";
        this.f9961c.post(new Runnable() { // from class: com.google.android.gms.internal.consent_sdk.zzbt
            @Override // java.lang.Runnable
            public final void run() {
                boolean booleanValue;
                zzbx zzbxVar = zzbx.this;
                String str4 = str3;
                synchronized (zzda.class) {
                    if (zzda.f10002a == null) {
                        try {
                            zzbxVar.evaluateJavascript("(function(){})()", null);
                            zzda.f10002a = Boolean.TRUE;
                        } catch (IllegalStateException unused) {
                            zzda.f10002a = Boolean.FALSE;
                        }
                    }
                    booleanValue = zzda.f10002a.booleanValue();
                }
                if (booleanValue) {
                    zzbxVar.evaluateJavascript(str4, null);
                } else {
                    zzbxVar.loadUrl("javascript:".concat(str4));
                }
            }
        });
    }
}
