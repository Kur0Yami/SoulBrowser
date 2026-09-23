package com.google.android.gms.cast.framework.media;

import java.util.TimerTask;

/* loaded from: classes.dex */
final class zzbf extends TimerTask {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzbg f3570c;

    public zzbf(zzbg zzbgVar) {
        this.f3570c = zzbgVar;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        zzbg zzbgVar = this.f3570c;
        RemoteMediaClient remoteMediaClient = zzbgVar.e;
        remoteMediaClient.K(zzbgVar.f3571a);
        remoteMediaClient.b.postDelayed(this, zzbgVar.b);
    }
}
