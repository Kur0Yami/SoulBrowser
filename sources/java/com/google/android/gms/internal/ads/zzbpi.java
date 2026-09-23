package com.google.android.gms.internal.ads;

import android.os.Binder;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbpi implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzbpl f4816c;

    public zzbpi(zzbpl zzbplVar) {
        this.f4816c = zzbplVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbpl zzbplVar = this.f4816c;
        if (zzbplVar.f4819a == null) {
            return;
        }
        zzbplVar.f4819a.disconnect();
        Binder.flushPendingCommands();
    }
}
