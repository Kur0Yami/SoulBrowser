package com.google.android.gms.internal.auth;

import com.google.android.gms.auth.api.proxy.ProxyApi;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes.dex */
public final class zzbv implements ProxyApi.SpatulaHeaderResult {

    /* renamed from: c, reason: collision with root package name */
    public final Status f9497c;

    public zzbv(Status status) {
        this.f9497c = (Status) Preconditions.checkNotNull(status);
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.f9497c;
    }

    public zzbv(String str) {
        this.f9497c = Status.RESULT_SUCCESS;
    }
}
