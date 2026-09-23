package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import j$.util.Objects;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class zzfml {

    /* renamed from: a, reason: collision with root package name */
    public final Object f7479a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final ListenableFuture f7480c;
    public final List d;
    public final ListenableFuture e;
    public final /* synthetic */ zzfmm f;

    public zzfml(zzfmm zzfmmVar, Object obj, String str, ListenableFuture listenableFuture, List list, ListenableFuture listenableFuture2) {
        Objects.requireNonNull(zzfmmVar);
        this.f = zzfmmVar;
        this.f7479a = obj;
        this.b = str;
        this.f7480c = listenableFuture;
        this.d = list;
        this.e = listenableFuture2;
    }

    public final zzfml a(final zzflu zzfluVar) {
        return b(new zzgxu() { // from class: com.google.android.gms.internal.ads.zzfmk
            @Override // com.google.android.gms.internal.ads.zzgxu
            public final /* synthetic */ ListenableFuture zza(Object obj) {
                return zzgym.a(zzflu.this.zza(obj));
            }
        });
    }

    public final zzfml b(zzgxu zzgxuVar) {
        zzfmm zzfmmVar = this.f;
        zzgyw zzgywVar = zzfmmVar.f7481a;
        return new zzfml(zzfmmVar, this.f7479a, this.b, this.f7480c, this.d, zzgym.h(this.e, zzgxuVar, zzgywVar));
    }

    public final zzfml c(long j) {
        TimeUnit timeUnit = TimeUnit.SECONDS;
        zzfmm zzfmmVar = this.f;
        ScheduledExecutorService scheduledExecutorService = zzfmmVar.b;
        return new zzfml(zzfmmVar, this.f7479a, this.b, this.f7480c, this.d, zzgym.g(this.e, j, timeUnit, scheduledExecutorService));
    }

    public final zzfmb d() {
        zzfmm zzfmmVar = this.f;
        Object obj = this.f7479a;
        String str = this.b;
        if (str == null) {
            str = zzfmmVar.b(obj);
        }
        final zzfmb zzfmbVar = new zzfmb(obj, str, this.e);
        ((zzfmt) zzfmmVar.f7482c).s0(new zzdgh() { // from class: com.google.android.gms.internal.ads.zzfms
            @Override // com.google.android.gms.internal.ads.zzdgh
            public final void zza(Object obj2) {
                zzfmb zzfmbVar2 = zzfmb.this;
                ((zzfmv) obj2).g(zzfmbVar2.f);
            }
        });
        Runnable runnable = new Runnable() { // from class: com.google.android.gms.internal.ads.zzfmj
            @Override // java.lang.Runnable
            public final void run() {
                zzfmt zzfmtVar = (zzfmt) zzfml.this.f.f7482c;
                final zzfmb zzfmbVar2 = zzfmbVar;
                zzfmtVar.s0(new zzdgh() { // from class: com.google.android.gms.internal.ads.zzfmp
                    @Override // com.google.android.gms.internal.ads.zzdgh
                    public final void zza(Object obj2) {
                        zzfmb zzfmbVar3 = zzfmb.this;
                        ((zzfmv) obj2).v((zzfmo) zzfmbVar3.f7470c, zzfmbVar3.f);
                    }
                });
            }
        };
        zzgyw zzgywVar = zzcdo.g;
        this.f7480c.k(runnable, zzgywVar);
        zzfmbVar.k(new zzgyk(zzfmbVar, new zzfmg(this, zzfmbVar)), zzgywVar);
        return zzfmbVar;
    }
}
