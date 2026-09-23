package com.google.android.gms.internal.location;

import com.google.android.gms.common.api.Status;

/* loaded from: classes3.dex */
final class zzo extends zzx {
    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public final void doExecute(zzaz zzazVar) {
        zzh zzhVar = (zzh) zzazVar.g.f10350a;
        zzhVar.f10361a.checkConnected();
        zzhVar.a().zzp();
        setResult((zzo) Status.RESULT_SUCCESS);
    }
}
