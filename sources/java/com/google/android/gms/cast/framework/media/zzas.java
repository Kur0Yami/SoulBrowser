package com.google.android.gms.cast.framework.media;

import com.google.android.gms.cast.MediaSeekOptions;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzas extends zzbc {
    public final /* synthetic */ MediaSeekOptions d;
    public final /* synthetic */ RemoteMediaClient e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzas(RemoteMediaClient remoteMediaClient, MediaSeekOptions mediaSeekOptions) {
        super(remoteMediaClient, false);
        this.d = mediaSeekOptions;
        this.e = remoteMediaClient;
    }

    @Override // com.google.android.gms.cast.framework.media.zzbc
    public final void a() {
        this.e.f3506c.k(b(), this.d);
    }
}
