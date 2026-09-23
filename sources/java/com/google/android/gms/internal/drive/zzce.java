package com.google.android.gms.internal.drive;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;

/* loaded from: classes.dex */
final class zzce extends zzl {

    /* renamed from: c, reason: collision with root package name */
    public final BaseImplementation.ResultHolder f10149c;

    public zzce(BaseImplementation.ResultHolder resultHolder) {
        this.f10149c = resultHolder;
    }

    @Override // com.google.android.gms.internal.drive.zzl, com.google.android.gms.internal.drive.zzeq
    public final void d3(zzfj zzfjVar) {
        this.f10149c.setResult(new zzcf(Status.RESULT_SUCCESS, zzfjVar.f10167c));
    }

    @Override // com.google.android.gms.internal.drive.zzl, com.google.android.gms.internal.drive.zzeq
    public final void r3(Status status) {
        this.f10149c.setResult(new zzcf(status, null));
    }
}
