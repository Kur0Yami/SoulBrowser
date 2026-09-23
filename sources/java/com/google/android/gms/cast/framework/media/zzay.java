package com.google.android.gms.cast.framework.media;

import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.common.api.Status;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzay implements RemoteMediaClient.MediaChannelResult {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Status f3563c;

    public zzay(zzaz zzazVar, Status status) {
        this.f3563c = status;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.f3563c;
    }
}
