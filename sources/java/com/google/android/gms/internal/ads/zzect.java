package com.google.android.gms.internal.ads;

import android.os.Binder;
import android.os.Bundle;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.InputStream;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class zzect {

    /* renamed from: a, reason: collision with root package name */
    public final ScheduledExecutorService f6376a;
    public final zzgyw b;

    /* renamed from: c, reason: collision with root package name */
    public final zzgyw f6377c;
    public final zzeds d;
    public final zzija e;

    public zzect(ScheduledExecutorService scheduledExecutorService, zzgyw zzgywVar, zzgyw zzgywVar2, zzeds zzedsVar, zzija zzijaVar) {
        this.f6376a = scheduledExecutorService;
        this.b = zzgywVar;
        this.f6377c = zzgywVar2;
        this.d = zzedsVar;
        this.e = zzijaVar;
    }

    public final zzgye a(final zzbza zzbzaVar) {
        ListenableFuture v0;
        String str = zzbzaVar.h;
        com.google.android.gms.ads.internal.zzt.zzc();
        if (com.google.android.gms.ads.internal.util.zzs.zzH(str)) {
            v0 = zzgym.b(new zzebr(1));
        } else {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.q8)).booleanValue() && !((Boolean) zzbiv.f4731a.c()).booleanValue()) {
                v0 = this.d.c(zzbzaVar);
            } else {
                v0 = this.f6377c.v0(new Callable() { // from class: com.google.android.gms.internal.ads.zzecq
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return (zzeeg) ((zzcdt) zzect.this.d.c(zzbzaVar)).f5072c.get(((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.x6)).intValue(), TimeUnit.SECONDS);
                    }
                });
            }
        }
        final int callingUid = Binder.getCallingUid();
        return (zzgye) zzgym.f((zzgye) zzgym.g(zzgye.r(v0), ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.x6)).intValue(), TimeUnit.SECONDS, this.f6376a), Throwable.class, new zzgxu() { // from class: com.google.android.gms.internal.ads.zzecs
            @Override // com.google.android.gms.internal.ads.zzgxu
            public final /* synthetic */ ListenableFuture zza(Object obj) {
                Bundle bundle;
                final zzbza zzbzaVar2 = zzbzaVar;
                if (zzbzaVar2 != null && (bundle = zzbzaVar2.q) != null) {
                    bundle.putBoolean("ls", true);
                }
                zzect zzectVar = zzect.this;
                return zzgym.h(((zzefw) zzectVar.e.zzb()).f5(zzbzaVar2, callingUid), new zzgxu() { // from class: com.google.android.gms.internal.ads.zzecr
                    @Override // com.google.android.gms.internal.ads.zzgxu
                    public final /* synthetic */ ListenableFuture zza(Object obj2) {
                        return zzgym.a(new zzeeg((InputStream) obj2, zzbza.this));
                    }
                }, zzectVar.b);
            }
        }, this.b);
    }
}
