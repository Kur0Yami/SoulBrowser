package com.google.android.gms.cast.framework.media;

import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.common.api.Status;
import j$.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbb implements RemoteMediaClient.MediaChannelResult {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Status f3565c;

    public zzbb(zzbc zzbcVar, Status status) {
        this.f3565c = status;
        Objects.requireNonNull(zzbcVar);
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.f3565c;
    }
}
