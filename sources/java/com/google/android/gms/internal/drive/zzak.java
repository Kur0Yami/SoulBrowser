package com.google.android.gms.internal.drive;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;

/* loaded from: classes.dex */
final class zzak extends zzl {

    /* renamed from: c, reason: collision with root package name */
    public final BaseImplementation.ResultHolder f10138c;

    public zzak(BaseImplementation.ResultHolder resultHolder) {
        this.f10138c = resultHolder;
    }

    @Override // com.google.android.gms.internal.drive.zzl, com.google.android.gms.internal.drive.zzeq
    public final void S1(zzfh zzfhVar) {
        this.f10138c.setResult(new zzal(Status.RESULT_SUCCESS, new zzbi(zzfhVar.f10166c)));
    }

    @Override // com.google.android.gms.internal.drive.zzl, com.google.android.gms.internal.drive.zzeq
    public final void r3(Status status) {
        this.f10138c.setResult(new zzal(status, null));
    }
}
