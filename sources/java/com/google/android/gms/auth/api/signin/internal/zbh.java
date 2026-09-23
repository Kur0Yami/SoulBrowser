package com.google.android.gms.auth.api.signin.internal;

import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
final class zbh extends zba {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zbi f3391c;

    public zbh(zbi zbiVar) {
        this.f3391c = zbiVar;
    }

    @Override // com.google.android.gms.auth.api.signin.internal.zba, com.google.android.gms.auth.api.signin.internal.zbr
    public final void M2(Status status) {
        this.f3391c.setResult((zbi) status);
    }
}
