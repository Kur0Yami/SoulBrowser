package com.google.android.gms.internal.location;

/* loaded from: classes3.dex */
final class zzu extends zzx {
    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public final void doExecute(zzaz zzazVar) {
        zzy zzyVar = new zzy(this);
        zzh zzhVar = (zzh) zzazVar.g.f10350a;
        zzhVar.f10361a.checkConnected();
        zzhVar.a().f0(new zzbc(1, zzba.F(), null, null, null, zzyVar));
    }
}
