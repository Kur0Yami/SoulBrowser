package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class zzeyf implements zzezx {

    /* renamed from: a, reason: collision with root package name */
    public final zzgyw f7079a;
    public final zzdyh b;

    public zzeyf(zzgyw zzgywVar, zzdyh zzdyhVar) {
        this.f7079a = zzgywVar;
        this.b = zzdyhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final ListenableFuture zza() {
        return this.f7079a.v0(new Callable() { // from class: com.google.android.gms.internal.ads.zzeye
            @Override // java.util.concurrent.Callable
            public final Object call() {
                HashMap hashMap;
                zzdyh zzdyhVar = zzeyf.this.b;
                synchronized (zzdyhVar) {
                    hashMap = new HashMap();
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.K8)).booleanValue()) {
                        zzdyhVar.b();
                        for (Map.Entry entry : zzdyhVar.f6260a.entrySet()) {
                            hashMap.put((zzdyk) entry.getKey(), new ArrayDeque((Collection) entry.getValue()));
                        }
                    }
                }
                return new zzeyg(hashMap);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final int zzb() {
        return 62;
    }
}
