package com.google.android.gms.ads.internal.util.client;

import android.content.Context;

/* loaded from: classes.dex */
final class zzc extends Thread {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Context f3072c;
    public final /* synthetic */ String f;

    public zzc(zzf zzfVar, Context context, String str) {
        this.f3072c = context;
        this.f = str;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        new zzu(this.f3072c, null).zzc(this.f, null);
    }
}
