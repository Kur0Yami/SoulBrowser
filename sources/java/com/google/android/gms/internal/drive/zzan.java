package com.google.android.gms.internal.drive;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.drive.DriveId;

/* loaded from: classes.dex */
final class zzan extends zzl {

    /* renamed from: c, reason: collision with root package name */
    public final BaseImplementation.ResultHolder f10140c;

    public zzan(BaseImplementation.ResultHolder resultHolder) {
        this.f10140c = resultHolder;
    }

    @Override // com.google.android.gms.internal.drive.zzl, com.google.android.gms.internal.drive.zzeq
    public final void Q1(zzfy zzfyVar) {
        Status status = Status.RESULT_SUCCESS;
        this.f10140c.setResult(new zzao(status));
    }

    @Override // com.google.android.gms.internal.drive.zzl, com.google.android.gms.internal.drive.zzeq
    public final void r3(Status status) {
        this.f10140c.setResult(new zzao(status));
    }

    @Override // com.google.android.gms.internal.drive.zzl, com.google.android.gms.internal.drive.zzeq
    public final void s4(zzfn zzfnVar) {
        Status status = Status.RESULT_SUCCESS;
        DriveId driveId = zzfnVar.f10169c;
        this.f10140c.setResult(new zzao(status));
    }
}
