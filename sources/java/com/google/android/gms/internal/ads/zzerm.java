package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.util.Pair;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzerm implements zzerf {

    /* renamed from: a, reason: collision with root package name */
    public final zzfij f6848a;
    public final zzclg b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f6849c;
    public final zzerc d;
    public final zzfnr e;
    public zzcvz f;

    public zzerm(zzclg zzclgVar, Context context, zzerc zzercVar, zzfij zzfijVar) {
        this.b = zzclgVar;
        this.f6849c = context;
        this.d = zzercVar;
        this.f6848a = zzfijVar;
        this.e = zzclgVar.z();
        zzfijVar.r = zzercVar.b;
    }

    public final boolean a(com.google.android.gms.ads.internal.client.zzm zzmVar, String str, zzerd zzerdVar, zzere zzereVar) {
        zzerc zzercVar = this.d;
        zzeqp zzeqpVar = zzercVar.b;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.X2)).booleanValue()) {
            com.google.android.gms.ads.internal.client.zzbb.zzc();
        }
        com.google.android.gms.ads.internal.zzt.zzc();
        Context context = this.f6849c;
        boolean zzM = com.google.android.gms.ads.internal.util.zzs.zzM(context);
        zzclg zzclgVar = this.b;
        if (zzM && zzmVar.zzs == null) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzf("Failed to load the ad because app ID is missing.");
            zzclgVar.f().execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzerl
                @Override // java.lang.Runnable
                public final void run() {
                    ((zzerb) zzerm.this.d.f6840c).S(zzfjm.d(4, null, null));
                }
            });
            return false;
        }
        if (str == null) {
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzf("Ad unit ID should not be null for NativeAdLoader.");
            zzclgVar.f().execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzerk
                @Override // java.lang.Runnable
                public final void run() {
                    ((zzerb) zzerm.this.d.f6840c).S(zzfjm.d(6, null, null));
                }
            });
            return false;
        }
        boolean z = zzmVar.zzf;
        zzfjh.b(context, z);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.la)).booleanValue() && z) {
            zzclgVar.y().b(true);
        }
        int i3 = ((zzerg) zzerdVar).f6841a;
        Long valueOf = Long.valueOf(com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis());
        Bundle a2 = zzdwo.a(new Pair("api-call", valueOf), new Pair("dynamite-enter", valueOf));
        zzfij zzfijVar = this.f6848a;
        zzfijVar.f7388a = zzmVar;
        zzfijVar.t = a2;
        zzfijVar.m = i3;
        zzfik a3 = zzfijVar.a();
        zzfne p = a.p(context, zzfnn.b(a3), 8, zzmVar);
        com.google.android.gms.ads.internal.client.zzco zzcoVar = a3.o;
        if (zzcoVar != null) {
            zzeqpVar.i(zzcoVar);
        }
        zzdlu q = zzclgVar.q();
        zzczs zzczsVar = new zzczs();
        zzczsVar.f5634a = context;
        zzczsVar.b = a3;
        ((zzcms) q).e = new zzczt(zzczsVar);
        zzdgj zzdgjVar = new zzdgj();
        zzdgjVar.b(zzeqpVar, zzclgVar.f());
        zzcms zzcmsVar = (zzcms) q;
        zzcmsVar.d = new zzdgk(zzdgjVar);
        zzcmsVar.f = new zzdlq(zzercVar.f6839a, zzeqpVar.b());
        zzfno zzfnoVar = null;
        zzcmsVar.g = new zzcsz(null);
        zzdlv zzh = zzcmsVar.zzh();
        if (((Boolean) zzbid.f4704c.c()).booleanValue()) {
            zzfnoVar = (zzfno) ((zzcmt) zzh).e.zzb();
            zzfnoVar.i(8);
            zzfnoVar.c(zzmVar.zzp);
            zzfnoVar.d(zzmVar.zzm);
        }
        zzfno zzfnoVar2 = zzfnoVar;
        zzclgVar.x().a(1);
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        ScheduledExecutorService g = zzclgVar.g();
        zzcwo a4 = zzh.a();
        zzfmb c2 = a4.c(a4.b());
        zzcvz zzcvzVar = new zzcvz(zzgywVar, g, c2);
        this.f = zzcvzVar;
        c2.k(new zzgyk(c2, new zzcvt(zzcvzVar, new zzerj(this, zzereVar, zzfnoVar2, p, zzh))), zzgywVar);
        return true;
    }
}
