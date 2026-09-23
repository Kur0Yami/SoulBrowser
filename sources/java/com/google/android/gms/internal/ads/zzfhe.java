package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.util.Pair;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzfhe implements zzerf {

    /* renamed from: a, reason: collision with root package name */
    public final Context f7351a;
    public final Executor b;

    /* renamed from: c, reason: collision with root package name */
    public final zzclg f7352c;
    public final zzfgv d;
    public final zzffj e;
    public final zzfid f;
    public final zzfnr g;
    public final zzfij h;
    public ListenableFuture i;

    public zzfhe(Context context, Executor executor, zzclg zzclgVar, zzffj zzffjVar, zzfgv zzfgvVar, zzfij zzfijVar, zzfid zzfidVar) {
        this.f7351a = context;
        this.b = executor;
        this.f7352c = zzclgVar;
        this.e = zzffjVar;
        this.d = zzfgvVar;
        this.h = zzfijVar;
        this.f = zzfidVar;
        this.g = zzclgVar.z();
    }

    /* JADX WARN: Type inference failed for: r5v2, types: [com.google.android.gms.internal.ads.zzfhd, java.lang.Object, com.google.android.gms.internal.ads.zzffh] */
    public final boolean a(com.google.android.gms.ads.internal.client.zzm zzmVar, String str, zzerd zzerdVar, zzere zzereVar) {
        zzfno zzfnoVar;
        zzbzt zzbztVar = new zzbzt(zzmVar, str);
        Executor executor = this.b;
        String str2 = zzbztVar.f;
        if (str2 == null) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzf("Ad unit ID should not be null for rewarded video ad.");
            executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfhc
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzfhe.this.d.S(zzfjm.d(6, null, null));
                }
            });
            return false;
        }
        ListenableFuture listenableFuture = this.i;
        if (listenableFuture != null && !listenableFuture.isDone()) {
            return false;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.X2)).booleanValue()) {
            com.google.android.gms.ads.internal.client.zzbb.zzc();
        }
        boolean booleanValue = ((Boolean) zzbid.f4704c.c()).booleanValue();
        zzffj zzffjVar = this.e;
        com.google.android.gms.ads.internal.client.zzm zzmVar2 = zzbztVar.f4990c;
        if (booleanValue && zzffjVar.zzd() != null) {
            zzfnoVar = ((zzcnz) ((zzdtj) zzffjVar.zzd())).zzd();
            zzfnoVar.i(5);
            zzfnoVar.c(zzmVar2.zzp);
            zzfnoVar.d(zzmVar2.zzm);
        } else {
            zzfnoVar = null;
        }
        boolean z = zzmVar2.zzf;
        Context context = this.f7351a;
        zzfjh.b(context, z);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.la)).booleanValue() && z) {
            this.f7352c.y().b(true);
        }
        Bundle a2 = zzdwo.a(new Pair("api-call", Long.valueOf(zzmVar2.zzz)), new Pair("dynamite-enter", Long.valueOf(com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis())));
        zzfij zzfijVar = this.h;
        zzfijVar.f7389c = str2;
        zzfijVar.b = com.google.android.gms.ads.internal.client.zzr.zzc();
        zzfijVar.f7388a = zzmVar2;
        zzfijVar.t = a2;
        zzfik a3 = zzfijVar.a();
        zzfne p = a.p(context, zzfnn.b(a3), 5, zzmVar2);
        ?? obj = new Object();
        obj.f7350a = a3;
        ListenableFuture a4 = zzffjVar.a(new zzffk(obj, null), new zzffi() { // from class: com.google.android.gms.internal.ads.zzfhb
            @Override // com.google.android.gms.internal.ads.zzffi
            public final /* synthetic */ zzczq a(zzffh zzffhVar) {
                return zzfhe.this.b(zzffhVar);
            }
        });
        this.i = a4;
        a4.k(new zzgyk(a4, new zzfha(this, zzereVar, zzfnoVar, p, obj)), executor);
        return true;
    }

    public final zzdti b(zzffh zzffhVar) {
        zzdti r = this.f7352c.r();
        zzczs zzczsVar = new zzczs();
        zzczsVar.f5634a = this.f7351a;
        zzczsVar.b = ((zzfhd) zzffhVar).f7350a;
        zzczsVar.d = this.f;
        ((zzcny) r).e = new zzczt(zzczsVar);
        ((zzcny) r).d = new zzdgk(new zzdgj());
        return r;
    }
}
