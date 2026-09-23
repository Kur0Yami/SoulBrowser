package com.google.android.gms.cast.framework.media;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzaf extends zzbc {
    public final /* synthetic */ RemoteMediaClient d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzaf(RemoteMediaClient remoteMediaClient) {
        super(remoteMediaClient, false);
        this.d = remoteMediaClient;
    }

    @Override // com.google.android.gms.cast.framework.media.zzbc
    public final void a() {
        this.d.f3506c.d(b(), 1);
    }
}
