package com.google.android.gms.internal.cast;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes.dex */
public final class zzgi implements Result {

    /* renamed from: c, reason: collision with root package name */
    public final Status f9702c;
    public final zzgc f;

    public zzgi(Status status, zzgc zzgcVar) {
        this.f9702c = status;
        this.f = zzgcVar;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.f9702c;
    }

    public final String toString() {
        zzgc zzgcVar = this.f;
        Preconditions.checkNotNull(zzgcVar);
        boolean z = true;
        if (zzgcVar.f9701c != 1) {
            z = false;
        }
        return "OptInOptionsResultImpl[" + z + "]";
    }
}
