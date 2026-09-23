package com.google.android.gms.cast.framework.media;

import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
final class zzbd implements RemoteMediaClient.MediaChannelResult {

    /* renamed from: c, reason: collision with root package name */
    public final Status f3568c;

    public zzbd(Status status) {
        this.f3568c = status;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.f3568c;
    }
}
