package com.google.android.gms.cast;

import com.google.android.gms.cast.RemoteMediaPlayer;
import com.google.android.gms.common.api.Status;
import j$.util.Objects;

/* loaded from: classes.dex */
final class zzdb implements RemoteMediaPlayer.MediaChannelResult {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Status f3671c;

    public zzdb(zzdc zzdcVar, Status status) {
        this.f3671c = status;
        Objects.requireNonNull(zzdcVar);
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.f3671c;
    }
}
