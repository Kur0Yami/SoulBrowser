package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.tasks.Task;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class zzetk implements zzezx {

    /* renamed from: a, reason: collision with root package name */
    public final zzcda f6917a;
    public final com.google.android.gms.internal.appset.zzr b;

    /* renamed from: c, reason: collision with root package name */
    public final ScheduledExecutorService f6918c;
    public final zzgyw d;
    public final Context e;

    public zzetk(Context context, zzcda zzcdaVar, ScheduledExecutorService scheduledExecutorService, zzgyw zzgywVar) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.M3)).booleanValue()) {
            this.b = new com.google.android.gms.internal.appset.zzr(context);
        }
        this.e = context;
        this.f6917a = zzcdaVar;
        this.f6918c = scheduledExecutorService;
        this.d = zzgywVar;
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final ListenableFuture zza() {
        Task b;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.I3)).booleanValue()) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.N3)).booleanValue()) {
                if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.J3)).booleanValue()) {
                    return zzgym.i(zzfzr.a(this.b.b()), zzetj.f6916a, zzcdo.g);
                }
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.M3)).booleanValue()) {
                    zzfjp.a(this.e, false);
                    synchronized (zzfjp.f7417c) {
                        b = zzfjp.f7416a;
                    }
                } else {
                    b = this.b.b();
                }
                if (b == null) {
                    return zzgym.a(new zzetl(null, -1));
                }
                ListenableFuture h = zzgym.h(zzfzr.a(b), zzeth.f6914a, zzcdo.g);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.K3)).booleanValue()) {
                    h = zzgym.g(h, ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.L3)).longValue(), TimeUnit.MILLISECONDS, this.f6918c);
                }
                return zzgym.e(h, Exception.class, new zzgpr() { // from class: com.google.android.gms.internal.ads.zzeti
                    @Override // com.google.android.gms.internal.ads.zzgpr
                    public final /* synthetic */ Object apply(Object obj) {
                        zzetk.this.f6917a.f("AppSetIdInfoSignal", (Exception) obj);
                        return new zzetl(null, -1);
                    }
                }, this.d);
            }
        }
        return zzgym.a(new zzetl(null, -1));
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final int zzb() {
        return 11;
    }
}
