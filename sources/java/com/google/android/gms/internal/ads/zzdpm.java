package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzdpm implements zzdbe {

    /* renamed from: c, reason: collision with root package name */
    public final zzdnm f5998c;
    public final zzdnq f;
    public final Executor g;
    public final Executor h;

    public zzdpm(zzdnm zzdnmVar, zzdnq zzdnqVar, Executor executor, Executor executor2) {
        this.f5998c = zzdnmVar;
        this.f = zzdnqVar;
        this.g = executor;
        this.h = executor2;
    }

    @Override // com.google.android.gms.internal.ads.zzdbe
    public final void n() {
        ListenableFuture listenableFuture;
        if (this.f.e) {
            zzdnm zzdnmVar = this.f5998c;
            zzejb u = zzdnmVar.u();
            if (u == null) {
                synchronized (zzdnmVar) {
                    listenableFuture = zzdnmVar.m;
                }
                if (listenableFuture != null && ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.l6)).booleanValue()) {
                    ListenableFuture s = zzdnmVar.s();
                    zzcdt t = zzdnmVar.t();
                    if (s != null && t != null) {
                        zzgxv zzgxvVar = new zzgxv(zzgtd.w(new ListenableFuture[]{s, t}), false);
                        zzgxvVar.k(new zzgyk(zzgxvVar, new zzdpk(this)), this.h);
                        return;
                    }
                    return;
                }
            }
            if (u != null) {
                zzcir r = zzdnmVar.r();
                zzcir p = zzdnmVar.p();
                if (r == null) {
                    if (p == null) {
                        r = null;
                    } else {
                        r = p;
                    }
                }
                if (r != null) {
                    this.g.execute(new zzdpl(r));
                }
            }
        }
    }
}
