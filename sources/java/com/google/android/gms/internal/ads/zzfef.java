package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.util.Pair;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import j$.util.Objects;
import java.util.HashSet;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzfef implements zzerf {

    /* renamed from: a, reason: collision with root package name */
    public final Context f7268a;
    public final Executor b;

    /* renamed from: c, reason: collision with root package name */
    public final zzclg f7269c;
    public final zzeqp d;
    public final zzeqt e;
    public final FrameLayout f;
    public zzbhf g;
    public final zzddl h;
    public final zzfnr i;
    public final zzdfq j;
    public final zzfij k;
    public zzfmb l;
    public boolean m;
    public com.google.android.gms.ads.internal.client.zze n;
    public zzere o;

    public zzfef(Context context, Executor executor, com.google.android.gms.ads.internal.client.zzr zzrVar, zzclg zzclgVar, zzeqp zzeqpVar, zzeqt zzeqtVar, zzfij zzfijVar, zzdfq zzdfqVar) {
        this.f7268a = context;
        this.b = executor;
        this.f7269c = zzclgVar;
        this.d = zzeqpVar;
        this.e = zzeqtVar;
        this.k = zzfijVar;
        this.h = zzclgVar.h();
        this.i = zzclgVar.z();
        this.f = new FrameLayout(context);
        this.j = zzdfqVar;
        zzfijVar.b = zzrVar;
        this.m = true;
        this.n = null;
        this.o = null;
    }

    public final boolean a(com.google.android.gms.ads.internal.client.zzm zzmVar, String str, zzerd zzerdVar, zzere zzereVar) {
        zzcuh zzh;
        Executor executor = this.b;
        if (str == null) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzf("Ad unit ID should not be null for banner ad.");
            executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfed
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzfef.this.d.S(zzfjm.d(6, null, null));
                }
            });
            return false;
        }
        boolean b = b();
        zzfij zzfijVar = this.k;
        if (b) {
            if (!zzfijVar.p) {
                this.m = true;
                return false;
            }
        } else {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.X2)).booleanValue()) {
                com.google.android.gms.ads.internal.client.zzbb.zzc();
            }
            boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.la)).booleanValue();
            zzclg zzclgVar = this.f7269c;
            if (booleanValue && zzmVar.zzf) {
                zzclgVar.y().b(true);
            }
            Bundle a2 = zzdwo.a(new Pair("api-call", Long.valueOf(zzmVar.zzz)), new Pair("dynamite-enter", Long.valueOf(com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis())));
            zzfijVar.f7389c = str;
            zzfijVar.f7388a = zzmVar;
            zzfijVar.t = a2;
            zzfik a3 = zzfijVar.a();
            int b2 = zzfnn.b(a3);
            Context context = this.f7268a;
            zzfne p = a.p(context, b2, 3, zzmVar);
            boolean booleanValue2 = ((Boolean) zzbiq.e.c()).booleanValue();
            zzeqp zzeqpVar = this.d;
            zzfno zzfnoVar = null;
            if (booleanValue2 && zzfijVar.b.zzk) {
                if (zzeqpVar != null) {
                    zzeqpVar.S(zzfjm.d(7, null, null));
                }
            } else {
                boolean booleanValue3 = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.r9)).booleanValue();
                FrameLayout frameLayout = this.f;
                zzdfq zzdfqVar = this.j;
                zzddl zzddlVar = this.h;
                if (booleanValue3) {
                    zzcug k = zzclgVar.k();
                    zzczs zzczsVar = new zzczs();
                    zzczsVar.f5634a = context;
                    zzczsVar.b = a3;
                    ((zzcnc) k).e = new zzczt(zzczsVar);
                    zzdgj zzdgjVar = new zzdgj();
                    zzdgjVar.d(zzeqpVar, executor);
                    zzdgjVar.b(zzeqpVar, executor);
                    zzcnc zzcncVar = (zzcnc) k;
                    zzcncVar.d = new zzdgk(zzdgjVar);
                    zzcncVar.f = new zzeow(this.g);
                    zzcncVar.j = new zzdlq(zzdnw.h, null);
                    zzcncVar.g = new zzcvc(zzddlVar, zzdfqVar);
                    zzcncVar.i = new zzcsz(frameLayout);
                    zzh = zzcncVar.zzh();
                } else {
                    zzcug k2 = zzclgVar.k();
                    zzczs zzczsVar2 = new zzczs();
                    zzczsVar2.f5634a = context;
                    zzczsVar2.b = a3;
                    ((zzcnc) k2).e = new zzczt(zzczsVar2);
                    zzdgj zzdgjVar2 = new zzdgj();
                    zzdgjVar2.d(zzeqpVar, executor);
                    zzdij zzdijVar = new zzdij(zzeqpVar, executor);
                    HashSet hashSet = zzdgjVar2.f5778c;
                    hashSet.add(zzdijVar);
                    hashSet.add(new zzdij(this.e, executor));
                    zzdgjVar2.c(zzeqpVar, executor);
                    zzdgjVar2.f.add(new zzdij(zzeqpVar, executor));
                    zzdgjVar2.e.add(new zzdij(zzeqpVar, executor));
                    zzdgjVar2.h.add(new zzdij(zzeqpVar, executor));
                    zzdgjVar2.a(zzeqpVar, executor);
                    zzdgjVar2.b(zzeqpVar, executor);
                    zzdgjVar2.m.add(new zzdij(zzeqpVar, executor));
                    zzcnc zzcncVar2 = (zzcnc) k2;
                    zzcncVar2.d = new zzdgk(zzdgjVar2);
                    zzcncVar2.f = new zzeow(this.g);
                    zzcncVar2.j = new zzdlq(zzdnw.h, null);
                    zzcncVar2.g = new zzcvc(zzddlVar, zzdfqVar);
                    zzcncVar2.i = new zzcsz(frameLayout);
                    zzh = zzcncVar2.zzh();
                }
                if (((Boolean) zzbid.f4704c.c()).booleanValue()) {
                    zzfnoVar = zzh.c();
                    zzfnoVar.i(3);
                    zzfnoVar.c(zzmVar.zzp);
                    zzfnoVar.d(zzmVar.zzm);
                }
                this.o = zzereVar;
                zzcwo b3 = zzh.b();
                zzfmb c2 = b3.c(b3.b());
                this.l = c2;
                c2.k(new zzgyk(c2, new zzfeb(this, zzfnoVar, p, zzh)), executor);
                return true;
            }
        }
        return false;
    }

    public final boolean b() {
        zzfmb zzfmbVar = this.l;
        if (zzfmbVar != null && !zzfmbVar.g.isDone()) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void c() {
        synchronized (this) {
            try {
                zzfmb zzfmbVar = this.l;
                if (zzfmbVar != null && zzfmbVar.g.isDone()) {
                    try {
                        zzctc zzctcVar = (zzctc) this.l.g.get();
                        this.l = null;
                        FrameLayout frameLayout = this.f;
                        frameLayout.removeAllViews();
                        zzctcVar.getClass();
                        ViewParent parent = zzctcVar.c().getParent();
                        if (parent instanceof ViewGroup) {
                            String str = zzctcVar.f.f5650c;
                            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 78);
                            sb.append("Banner view provided from ");
                            sb.append(str);
                            sb.append(" already has a parent view. Removing its old parent.");
                            String sb2 = sb.toString();
                            int i = com.google.android.gms.ads.internal.util.zze.zza;
                            com.google.android.gms.ads.internal.util.client.zzo.zzi(sb2);
                            ((ViewGroup) parent).removeView(zzctcVar.c());
                        }
                        zzbgb zzbgbVar = zzbgk.r9;
                        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgbVar)).booleanValue()) {
                            zzdea zzdeaVar = zzctcVar.g.f5755c;
                            zzeqp zzeqpVar = this.d;
                            zzdfb zzdfbVar = zzdeaVar.f5728a;
                            zzdfbVar.f = zzeqpVar;
                            zzdfbVar.g = this.e;
                        }
                        frameLayout.addView(zzctcVar.c());
                        zzere zzereVar = this.o;
                        if (zzereVar != null) {
                            zzereVar.a(zzctcVar);
                        }
                        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgbVar)).booleanValue()) {
                            Executor executor = this.b;
                            final zzeqp zzeqpVar2 = this.d;
                            Objects.requireNonNull(zzeqpVar2);
                            executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfee
                                @Override // java.lang.Runnable
                                public final /* synthetic */ void run() {
                                    zzeqp.this.zzg();
                                }
                            });
                        }
                        if (zzctcVar.i() >= 0) {
                            this.m = false;
                            zzddl zzddlVar = this.h;
                            zzddlVar.t0(zzctcVar.i());
                            zzddlVar.u0(zzctcVar.h());
                        } else {
                            this.m = true;
                            this.h.t0(zzctcVar.h());
                        }
                    } catch (InterruptedException e) {
                        e = e;
                        e();
                        com.google.android.gms.ads.internal.util.zze.zzb("Error occurred while refreshing the ad. Making a new ad request.", e);
                        this.m = true;
                        this.h.zzc();
                    } catch (ExecutionException e2) {
                        e = e2;
                        e();
                        com.google.android.gms.ads.internal.util.zze.zzb("Error occurred while refreshing the ad. Making a new ad request.", e);
                        this.m = true;
                        this.h.zzc();
                    }
                } else if (this.l != null) {
                    com.google.android.gms.ads.internal.util.zze.zza("Show timer went off but there is an ongoing ad request.");
                    this.m = true;
                } else {
                    com.google.android.gms.ads.internal.util.zze.zza("No ad request was in progress or an ad was cached when show timer went off. Hence requesting a new ad.");
                    this.m = true;
                    this.h.zzc();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void d() {
        int i;
        zzdfq zzdfqVar = this.j;
        zzddl zzddlVar = this.h;
        synchronized (zzdfqVar) {
            i = zzdfqVar.f;
        }
        zzddlVar.u0(i);
    }

    public final void e() {
        this.l = null;
        final com.google.android.gms.ads.internal.client.zze zzeVar = this.n;
        this.n = null;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.r9)).booleanValue() && zzeVar != null) {
            this.b.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfec
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzfef.this.d.S(zzeVar);
                }
            });
        }
        zzere zzereVar = this.o;
        if (zzereVar != null) {
            zzereVar.zza();
        }
    }
}
