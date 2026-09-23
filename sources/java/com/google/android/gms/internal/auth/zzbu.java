package com.google.android.gms.internal.auth;

import com.google.android.gms.auth.api.proxy.ProxyApi;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
final class zzbu implements ProxyApi.ProxyResult {

    /* renamed from: c, reason: collision with root package name */
    public final Status f9496c;

    public zzbu(Status status) {
        this.f9496c = status;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.f9496c;
    }

    public zzbu() {
        this.f9496c = Status.RESULT_SUCCESS;
    }
}
