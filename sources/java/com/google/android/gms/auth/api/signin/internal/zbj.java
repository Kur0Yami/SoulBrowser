package com.google.android.gms.auth.api.signin.internal;

import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
final class zbj extends zba {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zbk f3392c;

    public zbj(zbk zbkVar) {
        this.f3392c = zbkVar;
    }

    @Override // com.google.android.gms.auth.api.signin.internal.zba, com.google.android.gms.auth.api.signin.internal.zbr
    public final void y3(Status status) {
        this.f3392c.setResult((zbk) status);
    }
}
