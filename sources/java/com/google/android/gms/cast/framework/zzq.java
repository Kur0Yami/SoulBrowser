package com.google.android.gms.cast.framework;

import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import j$.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzq extends RemoteMediaClient.Callback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ CastSession f3596a;

    public zzq(CastSession castSession) {
        Objects.requireNonNull(castSession);
        this.f3596a = castSession;
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Callback
    public final void e() {
        MediaStatus mediaStatus;
        CastSession castSession = this.f3596a;
        RemoteMediaClient remoteMediaClient = castSession.j;
        if (remoteMediaClient != null) {
            mediaStatus = remoteMediaClient.g();
        } else {
            mediaStatus = null;
        }
        zzr zzrVar = castSession.m;
        if (zzrVar != null) {
            zzrVar.b(mediaStatus);
        }
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Callback
    public final void f(String str, long j, int i, long j2, long j3) {
        zzr zzrVar = this.f3596a.m;
        if (zzrVar != null) {
            zzrVar.a(str, j, i, j2, j3);
        }
    }
}
