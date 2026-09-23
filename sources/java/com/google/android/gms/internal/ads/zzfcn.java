package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.Arrays;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class zzfcn implements zzezx {

    /* renamed from: a, reason: collision with root package name */
    public final zzcda f7220a;
    public final boolean b;

    /* renamed from: c, reason: collision with root package name */
    public final ScheduledExecutorService f7221c;
    public final zzgyw d;
    public final int e;
    public final int f;

    public zzfcn(zzcda zzcdaVar, boolean z, zzgyw zzgywVar, ScheduledExecutorService scheduledExecutorService, int i, int i2) {
        this.f7220a = zzcdaVar;
        this.b = z;
        this.d = zzgywVar;
        this.f7221c = scheduledExecutorService;
        this.e = i;
        this.f = i2;
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final ListenableFuture zza() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Q7)).booleanValue() && this.b) {
            return zzgym.a(new zzfco(null));
        }
        if (this.f != 2) {
            if (!Arrays.asList(((String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.S7)).split(",")).contains(String.valueOf(this.e))) {
                return zzgym.a(new zzfco(null));
            }
            ListenableFuture listenableFuture = zzgyq.f;
            zzfcm zzfcmVar = zzfcm.f7219a;
            zzgyw zzgywVar = this.d;
            return zzgym.e(zzgym.g(zzgym.i(listenableFuture, zzfcmVar, zzgywVar), ((Long) zzbiz.b.c()).longValue(), TimeUnit.MILLISECONDS, this.f7221c), Exception.class, new zzgpr() { // from class: com.google.android.gms.internal.ads.zzfcl
                @Override // com.google.android.gms.internal.ads.zzgpr
                public final /* synthetic */ Object apply(Object obj) {
                    zzfcn.this.f7220a.f("TrustlessTokenSignal", (Exception) obj);
                    return new zzfco(null);
                }
            }, zzgywVar);
        }
        return zzgym.a(new zzfco(null));
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final int zzb() {
        return 50;
    }
}
