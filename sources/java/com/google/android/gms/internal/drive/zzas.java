package com.google.android.gms.internal.drive;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.drive.MetadataBuffer;

/* loaded from: classes.dex */
final class zzas extends zzl {

    /* renamed from: c, reason: collision with root package name */
    public final BaseImplementation.ResultHolder f10143c;

    public zzas(BaseImplementation.ResultHolder resultHolder) {
        this.f10143c = resultHolder;
    }

    @Override // com.google.android.gms.internal.drive.zzl, com.google.android.gms.internal.drive.zzeq
    public final void I2(zzft zzftVar) {
        this.f10143c.setResult(new zzaq(Status.RESULT_SUCCESS, new MetadataBuffer(zzftVar.f)));
    }

    @Override // com.google.android.gms.internal.drive.zzl, com.google.android.gms.internal.drive.zzeq
    public final void r3(Status status) {
        this.f10143c.setResult(new zzaq(status, null));
    }
}
