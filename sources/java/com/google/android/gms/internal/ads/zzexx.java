package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class zzexx implements zzezx {

    /* renamed from: a, reason: collision with root package name */
    public final zzgyw f7067a;
    public final zzfik b;

    /* renamed from: c, reason: collision with root package name */
    public final PackageInfo f7068c;
    public final com.google.android.gms.ads.internal.util.zzg d;

    public zzexx(zzgyw zzgywVar, zzfik zzfikVar, PackageInfo packageInfo, com.google.android.gms.ads.internal.util.zzj zzjVar) {
        this.f7067a = zzgywVar;
        this.b = zzfikVar;
        this.f7068c = packageInfo;
        this.d = zzjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final ListenableFuture zza() {
        return this.f7067a.v0(new Callable() { // from class: com.google.android.gms.internal.ads.zzexw
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                zzexx zzexxVar = zzexx.this;
                return new zzexy(zzexxVar.b, zzexxVar.f7068c, zzexxVar.d);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final int zzb() {
        return 26;
    }
}
