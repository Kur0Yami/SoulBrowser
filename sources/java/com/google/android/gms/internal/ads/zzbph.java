package com.google.android.gms.internal.ads;

import android.os.Parcel;
import com.google.common.util.concurrent.ListenableFuture;

/* loaded from: classes.dex */
final class zzbph implements zzgxu {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzboz f4815a;

    public zzbph(zzbpl zzbplVar, zzboz zzbozVar) {
        this.f4815a = zzbozVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgxu
    public final ListenableFuture zza(Object obj) {
        zzbpf zzbpfVar = (zzbpf) obj;
        zzcdt zzcdtVar = new zzcdt();
        zzbpg zzbpgVar = new zzbpg(this, zzcdtVar);
        Parcel I1 = zzbpfVar.I1();
        zzbcd.c(I1, this.f4815a);
        zzbcd.e(I1, zzbpgVar);
        zzbpfVar.v2(2, I1);
        return zzcdtVar;
    }
}
