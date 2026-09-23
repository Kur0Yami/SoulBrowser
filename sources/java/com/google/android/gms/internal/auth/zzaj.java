package com.google.android.gms.internal.auth;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
final class zzaj implements Result {

    /* renamed from: c, reason: collision with root package name */
    public final Status f9482c;

    public zzaj(Status status) {
        this.f9482c = status;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.f9482c;
    }
}
