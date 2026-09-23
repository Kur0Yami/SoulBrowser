package com.google.android.gms.internal.consent_sdk;

import android.app.Application;
import android.content.ContextWrapper;

/* loaded from: classes.dex */
public final class zzca implements zzth {

    /* renamed from: a, reason: collision with root package name */
    public final zztk f9965a;

    public zzca(zzti zztiVar) {
        this.f9965a = zztiVar;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zztm
    public final Object zzb() {
        return new ContextWrapper((Application) this.f9965a.zzb());
    }
}
