package com.google.android.gms.cast;

import com.google.android.gms.cast.RemoteMediaPlayer;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
final class zzdd implements RemoteMediaPlayer.MediaChannelResult {

    /* renamed from: c, reason: collision with root package name */
    public final Status f3672c;

    public zzdd(Status status) {
        this.f3672c = status;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.f3672c;
    }
}
