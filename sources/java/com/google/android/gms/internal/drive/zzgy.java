package com.google.android.gms.internal.drive;

import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
public final class zzgy extends zzl {

    /* renamed from: c, reason: collision with root package name */
    public final zzav f10185c;

    public zzgy(zzav zzavVar) {
        this.f10185c = zzavVar;
    }

    @Override // com.google.android.gms.internal.drive.zzl, com.google.android.gms.internal.drive.zzeq
    public final void onSuccess() {
        this.f10185c.setResult((zzav) Status.RESULT_SUCCESS);
    }

    @Override // com.google.android.gms.internal.drive.zzl, com.google.android.gms.internal.drive.zzeq
    public final void r3(Status status) {
        this.f10185c.setResult((zzav) status);
    }
}
