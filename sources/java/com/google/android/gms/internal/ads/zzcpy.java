package com.google.android.gms.internal.ads;

import androidx.privacysandbox.ads.adservices.topics.GetTopicsResponse;
import com.google.common.util.concurrent.ListenableFuture;

/* loaded from: classes.dex */
final /* synthetic */ class zzcpy implements zzgxu {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzcpy f5361a = new Object();

    @Override // com.google.android.gms.internal.ads.zzgxu
    public final ListenableFuture zza(Object obj) {
        Throwable th = (Throwable) obj;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Nb)).booleanValue()) {
            com.google.android.gms.ads.internal.zzt.zzh().h("GetTopicsApiWithRecordObservationActionHandlerUnsampled", th);
        } else {
            com.google.android.gms.ads.internal.zzt.zzh().g("GetTopicsApiWithRecordObservationActionHandler", th);
        }
        zzgvs zzgvsVar = zzgtd.f;
        return zzgym.a(new GetTopicsResponse(zzguy.i));
    }
}
