package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.util.Pair;
import java.util.HashSet;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzffv implements zzerf {

    /* renamed from: a, reason: collision with root package name */
    public final Context f7312a;
    public final Executor b;

    /* renamed from: c, reason: collision with root package name */
    public final zzclg f7313c;
    public final zzeqp d;
    public final zzfgv e;
    public zzbhf f;
    public final zzfnr g;
    public final zzfij h;
    public zzfmb i;

    public zzffv(Context context, Executor executor, zzclg zzclgVar, zzeqp zzeqpVar, zzfgv zzfgvVar, zzfij zzfijVar) {
        this.f7312a = context;
        this.b = executor;
        this.f7313c = zzclgVar;
        this.d = zzeqpVar;
        this.h = zzfijVar;
        this.e = zzfgvVar;
        this.g = zzclgVar.z();
    }

    public final boolean a(com.google.android.gms.ads.internal.client.zzm zzmVar, String str, zzerd zzerdVar, zzere zzereVar) {
        zzdkz zzh;
        zzfno zzfnoVar;
        Executor executor = this.b;
        if (str == null) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzf("Ad unit ID should not be null for interstitial ad.");
            executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzffu
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzffv.this.d.S(zzfjm.d(6, null, null));
                }
            });
            return false;
        }
        if (b()) {
            return false;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.X2)).booleanValue()) {
            com.google.android.gms.ads.internal.client.zzbb.zzc();
        }
        boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.la)).booleanValue();
        zzclg zzclgVar = this.f7313c;
        if (booleanValue && zzmVar.zzf) {
            zzclgVar.y().b(true);
        }
        com.google.android.gms.ads.internal.client.zzr zzrVar = ((zzffo) zzerdVar).f7304a;
        Bundle a2 = zzdwo.a(new Pair("api-call", Long.valueOf(zzmVar.zzz)), new Pair("dynamite-enter", Long.valueOf(com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis())));
        zzfij zzfijVar = this.h;
        zzfijVar.f7389c = str;
        zzfijVar.b = zzrVar;
        zzfijVar.f7388a = zzmVar;
        zzfijVar.t = a2;
        zzfik a3 = zzfijVar.a();
        int b = zzfnn.b(a3);
        Context context = this.f7312a;
        zzfne p = a.p(context, b, 4, zzmVar);
        boolean booleanValue2 = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.t9)).booleanValue();
        zzeqp zzeqpVar = this.d;
        if (booleanValue2) {
            zzdky o = zzclgVar.o();
            zzczs zzczsVar = new zzczs();
            zzczsVar.f5634a = context;
            zzczsVar.b = a3;
            ((zzcnn) o).e = new zzczt(zzczsVar);
            zzdgj zzdgjVar = new zzdgj();
            zzdgjVar.d(zzeqpVar, executor);
            zzdgjVar.b(zzeqpVar, executor);
            zzcnn zzcnnVar = (zzcnn) o;
            zzcnnVar.d = new zzdgk(zzdgjVar);
            zzcnnVar.f = new zzeow(this.f);
            zzh = zzcnnVar.zzh();
        } else {
            zzdgj zzdgjVar2 = new zzdgj();
            HashSet hashSet = zzdgjVar2.h;
            HashSet hashSet2 = zzdgjVar2.e;
            zzfgv zzfgvVar = this.e;
            if (zzfgvVar != null) {
                hashSet2.add(new zzdij(zzfgvVar, executor));
                hashSet.add(new zzdij(zzfgvVar, executor));
                zzdgjVar2.a(zzfgvVar, executor);
            }
            zzdky o2 = zzclgVar.o();
            zzczs zzczsVar2 = new zzczs();
            zzczsVar2.f5634a = context;
            zzczsVar2.b = a3;
            ((zzcnn) o2).e = new zzczt(zzczsVar2);
            zzdgjVar2.d(zzeqpVar, executor);
            hashSet2.add(new zzdij(zzeqpVar, executor));
            hashSet.add(new zzdij(zzeqpVar, executor));
            zzdgjVar2.a(zzeqpVar, executor);
            zzdgjVar2.f5778c.add(new zzdij(zzeqpVar, executor));
            zzdgjVar2.c(zzeqpVar, executor);
            zzdgjVar2.b(zzeqpVar, executor);
            zzdgjVar2.m.add(new zzdij(zzeqpVar, executor));
            zzdgjVar2.l.add(new zzdij(zzeqpVar, executor));
            zzcnn zzcnnVar2 = (zzcnn) o2;
            zzcnnVar2.d = new zzdgk(zzdgjVar2);
            zzcnnVar2.f = new zzeow(this.f);
            zzh = zzcnnVar2.zzh();
        }
        zzdkz zzdkzVar = zzh;
        if (((Boolean) zzbid.f4704c.c()).booleanValue()) {
            zzfnoVar = zzdkzVar.c();
            zzfnoVar.i(4);
            zzfnoVar.c(zzmVar.zzp);
            zzfnoVar.d(zzmVar.zzm);
        } else {
            zzfnoVar = null;
        }
        zzfno zzfnoVar2 = zzfnoVar;
        zzcwo b2 = zzdkzVar.b();
        zzfmb c2 = b2.c(b2.b());
        this.i = c2;
        c2.k(new zzgyk(c2, new zzfft(this, zzereVar, zzfnoVar2, p, zzdkzVar)), executor);
        return true;
    }

    public final boolean b() {
        zzfmb zzfmbVar = this.i;
        if (zzfmbVar != null && !zzfmbVar.g.isDone()) {
            return true;
        }
        return false;
    }
}
