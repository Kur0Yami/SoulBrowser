package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzeo extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzep f6742a;

    public /* synthetic */ zzeo(zzep zzepVar) {
        this.f6742a = zzepVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(final Context context, Intent intent) {
        this.f6742a.f6777a.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzen
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzeo.this.f6742a.c(context);
            }
        });
    }
}
