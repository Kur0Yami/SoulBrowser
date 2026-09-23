package com.google.android.gms.internal.cast;

import com.google.android.gms.cast.CastRemoteDisplay;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
final class zzes implements CastRemoteDisplay.CastRemoteDisplaySessionResult {

    /* renamed from: c, reason: collision with root package name */
    public final Status f9687c;

    public zzes(Status status) {
        this.f9687c = status;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.f9687c;
    }
}
