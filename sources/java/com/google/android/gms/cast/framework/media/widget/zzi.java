package com.google.android.gms.cast.framework.media.widget;

import com.google.android.gms.cast.framework.media.RemoteMediaClient;

/* loaded from: classes.dex */
final class zzi implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ RemoteMediaClient f3553c;
    public final /* synthetic */ zzj f;

    public zzi(zzj zzjVar, RemoteMediaClient remoteMediaClient) {
        this.f3553c = remoteMediaClient;
        this.f = zzjVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f.f.c0(this.f3553c);
    }
}
