package com.google.android.gms.internal.ads;

import android.app.AlertDialog;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzehx extends TimerTask {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AlertDialog f6523c;
    public final /* synthetic */ Timer f;
    public final /* synthetic */ com.google.android.gms.ads.internal.overlay.zzm g;

    public zzehx(zzeif zzeifVar, AlertDialog alertDialog, Timer timer, com.google.android.gms.ads.internal.overlay.zzm zzmVar) {
        this.f6523c = alertDialog;
        this.f = timer;
        this.g = zzmVar;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        this.f6523c.dismiss();
        this.f.cancel();
        com.google.android.gms.ads.internal.overlay.zzm zzmVar = this.g;
        if (zzmVar != null) {
            zzmVar.zzb();
        }
    }
}
