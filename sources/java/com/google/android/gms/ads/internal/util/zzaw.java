package com.google.android.gms.ads.internal.util;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzaw implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Context f3115c;
    public final /* synthetic */ String f;
    public final /* synthetic */ boolean g;
    public final /* synthetic */ boolean h;

    public zzaw(zzax zzaxVar, Context context, String str, boolean z, boolean z2) {
        this.f3115c = context;
        this.f = str;
        this.g = z;
        this.h = z2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.google.android.gms.ads.internal.zzt.zzc();
        Context context = this.f3115c;
        AlertDialog.Builder zzP = zzs.zzP(context);
        zzP.setMessage(this.f);
        if (this.g) {
            zzP.setTitle("Error");
        } else {
            zzP.setTitle("Info");
        }
        if (this.h) {
            zzP.setNeutralButton("Dismiss", (DialogInterface.OnClickListener) null);
        } else {
            zzP.setPositiveButton("Learn More", new zzav(this, context));
            zzP.setNegativeButton("Dismiss", (DialogInterface.OnClickListener) null);
        }
        zzP.create().show();
    }
}
