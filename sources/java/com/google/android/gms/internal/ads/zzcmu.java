package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageInfo;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzcmu extends zzfaz {

    /* renamed from: a, reason: collision with root package name */
    public final zzfcc f5275a;
    public final zzcmv b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijf f5276c;
    public final zzfay d;
    public final zzfbm e;
    public final zzfbu f;
    public final zzfcb g;
    public final zzfct h;
    public final zzfcp i;
    public final zzfbi j;
    public final zzijf k;

    /* JADX WARN: Type inference failed for: r0v5, types: [java.lang.Object, com.google.android.gms.internal.ads.zzfct] */
    /* JADX WARN: Type inference failed for: r4v2, types: [com.google.android.gms.internal.ads.zzijb, com.google.android.gms.internal.ads.zzijj] */
    public zzcmu(zzcmv zzcmvVar, zzfcc zzfccVar) {
        this.b = zzcmvVar;
        this.f5275a = zzfccVar;
        this.f5276c = zzijf.a(new zzfnp(zzcmvVar.v));
        zzfce zzfceVar = new zzfce(zzfccVar);
        zzfcf zzfcfVar = new zzfcf(zzfccVar);
        zzfcg zzfcgVar = new zzfcg(zzfccVar);
        zzclp zzclpVar = zzcmvVar.h;
        zzijf zzijfVar = zzcmvVar.e;
        this.d = new zzfay(zzclpVar, zzijfVar, zzfceVar, zzfcfVar, zzfcgVar);
        this.e = new zzfbm(zzclpVar);
        zzfcd zzfcdVar = new zzfcd(zzfccVar);
        this.f = new zzfbu(zzfcdVar);
        this.g = new zzfcb(zzclpVar, zzijfVar);
        this.h = new Object();
        zzfci zzfciVar = new zzfci(zzfccVar);
        zzfcj zzfcjVar = new zzfcj(zzfccVar);
        zzijf zzijfVar2 = zzcmvVar.W;
        this.i = new zzfcp(zzijfVar2, zzfcgVar, zzfcdVar, zzijfVar, zzfciVar, zzfcjVar);
        this.j = new zzfbi(zzfcdVar, zzijfVar2, zzijfVar);
        zzfch zzfchVar = new zzfch(zzfccVar);
        zzijf a2 = zzijf.a(zzdvx.f6193a);
        zzijf a3 = zzijf.a(zzdvv.f6192a);
        zzijf a4 = zzijf.a(zzdvz.f6194a);
        zzijf a5 = zzijf.a(zzdwb.f6195a);
        int i = zzijk.b;
        ?? zzijbVar = new zzijb(4);
        zzijbVar.a(zzfmo.GMS_SIGNALS, a2);
        zzijbVar.a(zzfmo.BUILD_URL, a3);
        zzijbVar.a(zzfmo.HTTP, a4);
        zzijbVar.a(zzfmo.PRE_PROCESS, a5);
        zzijf a6 = zzijf.a(new zzdwd(zzfchVar, zzcmvVar.h, zzijbVar.c()));
        int i2 = zzijs.f9008c;
        zzijr zzijrVar = new zzijr(0, 1);
        zzijrVar.b(a6);
        this.k = zzijf.a(new zzfmw(zzcmvVar.e, new zzfmx(zzijrVar.c())));
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [com.google.android.gms.internal.ads.zzezx, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v7, types: [com.google.android.gms.internal.ads.zzccs, java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzfaz
    public final zzfaa a() {
        zzcmv zzcmvVar = this.b;
        Context context = zzcmvVar.b.b;
        zzijo.a(context);
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        zzfcc zzfccVar = this.f5275a;
        zzbza zzbzaVar = zzfccVar.f7210a;
        zzijo.a(zzbzaVar.h);
        ?? obj = new Object();
        zzijf zzijfVar = zzcmvVar.e;
        zzeyj zzeyjVar = new zzeyj(obj, 0L, (ScheduledExecutorService) zzijfVar.zzb());
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) zzijfVar.zzb();
        zzcli zzcliVar = zzcmvVar.b;
        zzijo.a(zzcliVar.b);
        zzeyj zzeyjVar2 = new zzeyj(new zzfbz(scheduledExecutorService), ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.b5)).longValue(), (ScheduledExecutorService) zzijfVar.zzb());
        ?? obj2 = new Object();
        Context context2 = zzcliVar.b;
        zzijo.a(context2);
        zzeyj zzeyjVar3 = new zzeyj(new zzfaw(obj2, context2, (ScheduledExecutorService) zzijfVar.zzb(), zzgywVar, zzfccVar.b, zzbzaVar.p, zzbzaVar.o), 0L, (ScheduledExecutorService) zzijfVar.zzb());
        zzeyj zzeyjVar4 = new zzeyj(new zzfcr(zzgywVar), 0L, (ScheduledExecutorService) zzijfVar.zzb());
        zzijo.a(context2);
        zzfbk zzfbkVar = new zzfbk(zzgywVar);
        zzijo.a(zzgywVar);
        List list = zzfccVar.f7210a.i;
        zzijo.a(list);
        zzfbw zzfbwVar = new zzfbw(zzgywVar, list);
        zzfbc d = d();
        zzezx zzezxVar = (zzezx) zzcmvVar.P0.zzb();
        zzijf zzijfVar2 = zzcmvVar.W;
        String str = zzbzaVar.h;
        zzijo.a(str);
        zzfbg zzfbgVar = new zzfbg((zzcda) zzijfVar2.zzb(), (ScheduledExecutorService) zzijfVar.zzb(), zzgywVar);
        zzcda zzcdaVar = (zzcda) zzijfVar2.zzb();
        boolean z = zzbzaVar.o;
        zzijo.a(str);
        return new zzfaa(context, zzgywVar, zzgtn.r(zzeyjVar, zzeyjVar2, zzeyjVar3, zzeyjVar4, zzfbkVar, zzfbwVar, d, zzezxVar, zzfbgVar, new zzfcn(zzcdaVar, z, zzgywVar, (ScheduledExecutorService) zzijfVar.zzb(), zzfccVar.a(), zzbzaVar.s)), (zzfno) this.f5276c.zzb(), (zzdxe) zzcmvVar.l.zzb());
    }

    @Override // com.google.android.gms.internal.ads.zzfaz
    public final zzfmu b() {
        return (zzfmu) this.k.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzfaz
    public final zzfno c() {
        return (zzfno) this.f5276c.zzb();
    }

    public final zzfbc d() {
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        zzbza zzbzaVar = this.f5275a.f7210a;
        String string = zzbzaVar.f4979c.getString("ms");
        if (string == null) {
            string = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        PackageInfo packageInfo = zzbzaVar.j;
        return new zzfbc(string, zzgywVar);
    }
}
