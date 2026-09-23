package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Parcel;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.browser.customtabs.CustomTabsClient;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.io.IOException;
import java.util.List;

/* loaded from: classes.dex */
public final class zzcoo extends com.google.android.gms.ads.internal.client.zzda {

    /* renamed from: c, reason: collision with root package name */
    public final Context f5343c;
    public final VersionInfoParcel f;
    public final zzduu g;
    public final zzeji h;
    public final zzepk i;
    public final zzdzp j;
    public final zzcbw k;
    public final zzduz l;
    public final zzeak m;
    public final zzbje n;
    public final zzfnr o;
    public final zzfjg p;
    public final zzcxv q;
    public final zzdxe r;
    public boolean s = false;
    public final Long t = Long.valueOf(com.google.android.gms.ads.internal.zzt.zzk().elapsedRealtime());

    public zzcoo(Context context, VersionInfoParcel versionInfoParcel, zzduu zzduuVar, zzeji zzejiVar, zzepk zzepkVar, zzdzp zzdzpVar, zzcbw zzcbwVar, zzduz zzduzVar, zzeak zzeakVar, zzbje zzbjeVar, zzfnr zzfnrVar, zzfjg zzfjgVar, zzcxv zzcxvVar, zzdxe zzdxeVar) {
        this.f5343c = context;
        this.f = versionInfoParcel;
        this.g = zzduuVar;
        this.h = zzejiVar;
        this.i = zzepkVar;
        this.j = zzdzpVar;
        this.k = zzcbwVar;
        this.l = zzduzVar;
        this.m = zzeakVar;
        this.n = zzbjeVar;
        this.o = zzfnrVar;
        this.p = zzfjgVar;
        this.q = zzcxvVar;
        this.r = zzdxeVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final synchronized void zze() {
        if (this.s) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("Mobile ads is initialized already.");
            return;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.X2)).booleanValue()) {
            com.google.android.gms.ads.internal.client.zzbb.zzc();
        }
        Context context = this.f5343c;
        zzbgk.a(context);
        com.google.android.gms.ads.internal.zzt.zzh().d(context, this.f, this.r);
        this.q.a();
        com.google.android.gms.ads.internal.zzt.zzj().a(context);
        this.s = true;
        this.j.a();
        final zzepk zzepkVar = this.i;
        zzepkVar.getClass();
        com.google.android.gms.ads.internal.zzt.zzh().i().zzk(new Runnable() { // from class: com.google.android.gms.internal.ads.zzepj
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                final zzepk zzepkVar2 = zzepk.this;
                zzepkVar2.getClass();
                zzepkVar2.f.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzepi
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zzepk.this.e();
                    }
                });
            }
        });
        zzepkVar.f.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeph
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzepk.this.e();
            }
        });
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.S4)).booleanValue()) {
            final zzduz zzduzVar = this.l;
            if (!zzduzVar.f.getAndSet(true)) {
                com.google.android.gms.ads.internal.zzt.zzh().i().zzk(new zzduw(zzduzVar));
            }
            zzduzVar.f6172c.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzduy
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzduz.this.a();
                }
            });
        }
        this.m.a();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Aa)).booleanValue()) {
            ((zzcdn) zzcdo.f5068a).execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcon
                @Override // java.lang.Runnable
                public final void run() {
                    if (com.google.android.gms.ads.internal.zzt.zzh().i().zzJ()) {
                        String zzL = com.google.android.gms.ads.internal.zzt.zzh().i().zzL();
                        zzcoo zzcooVar = zzcoo.this;
                        if (!com.google.android.gms.ads.internal.zzt.zzo().zze(zzcooVar.f5343c, zzL, zzcooVar.f.afmaVersion)) {
                            com.google.android.gms.ads.internal.zzt.zzh().i().zzK(false);
                            com.google.android.gms.ads.internal.zzt.zzh().i().zzM(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                        }
                    }
                }
            });
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.oc)).booleanValue()) {
            ((zzcdn) zzcdo.f5068a).execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcok
                @Override // java.lang.Runnable
                public final void run() {
                    zzbcc zzbccVar = new zzbcc("com.google.android.gms.ads.internal.report.IDynamiteErrorEventListener");
                    zzbje zzbjeVar = zzcoo.this.n;
                    zzbjeVar.getClass();
                    try {
                        zzbjf zzbjfVar = (zzbjf) com.google.android.gms.ads.internal.util.client.zzs.zza(zzbjeVar.f4739a, "com.google.android.gms.ads.flags.FlagRetrieverSupplierProxy", zzbjd.f4738a);
                        Parcel I1 = zzbjfVar.I1();
                        zzbcd.e(I1, zzbccVar);
                        zzbjfVar.r2(1, I1);
                    } catch (RemoteException e) {
                        com.google.android.gms.ads.internal.util.client.zzo.zzi("Error calling setFlagsAccessedBeforeInitializedListener: ".concat(String.valueOf(e.getMessage())));
                    } catch (com.google.android.gms.ads.internal.util.client.zzr e2) {
                        com.google.android.gms.ads.internal.util.client.zzo.zzi("Could not load com.google.android.gms.ads.flags.FlagRetrieverSupplierProxy:".concat(String.valueOf(e2.getMessage())));
                    }
                }
            });
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.M3)).booleanValue()) {
            ((zzcdn) zzcdo.f5068a).execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcoi
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzfjp.a(zzcoo.this.f5343c, true);
                }
            });
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.x5)).booleanValue()) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.y5)).booleanValue()) {
                ((zzcdn) zzcdo.f5068a).execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcoj
                    @Override // java.lang.Runnable
                    public final void run() {
                        String b;
                        zzbhj zzn = com.google.android.gms.ads.internal.zzt.zzn();
                        zzcoo zzcooVar = zzcoo.this;
                        Context context2 = zzcooVar.f5343c;
                        zzdxe zzdxeVar = zzcooVar.r;
                        if (!zzn.f.getAndSet(true)) {
                            zzn.g = context2;
                            zzn.h = zzdxeVar;
                            if (zzn.j == null && context2 != null && (b = CustomTabsClient.b(context2)) != null && !b.equals(context2.getPackageName())) {
                                CustomTabsClient.a(context2, b, zzn);
                            }
                        }
                    }
                });
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final synchronized void zzf(float f) {
        com.google.android.gms.ads.internal.zzt.zzi().zza(f);
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final synchronized void zzg(String str) {
        Context context = this.f5343c;
        zzbgk.a(context);
        if (!TextUtils.isEmpty(str)) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Q4)).booleanValue()) {
                com.google.android.gms.ads.internal.zzt.zzl().zza(context, this.f, str, null, this.o, null, null, this.m.g());
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final synchronized void zzh(boolean z) {
        com.google.android.gms.ads.internal.zzt.zzi().zzc(z);
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final void zzi(IObjectWrapper iObjectWrapper, String str) {
        if (iObjectWrapper == null) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzf("Wrapped context is null. Failed to open debug menu.");
            return;
        }
        Context context = (Context) ObjectWrapper.f2(iObjectWrapper);
        if (context == null) {
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzf("Context is null. Failed to open debug menu.");
        } else {
            com.google.android.gms.ads.internal.util.zzat zzatVar = new com.google.android.gms.ads.internal.util.zzat(context);
            zzatVar.zzc(str);
            zzatVar.zzd(this.f.afmaVersion);
            zzatVar.zzb();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x003e  */
    @Override // com.google.android.gms.ads.internal.client.zzdb
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzj(java.lang.String r13, com.google.android.gms.dynamic.IObjectWrapper r14) {
        /*
            r12 = this;
            android.content.Context r0 = r12.f5343c
            com.google.android.gms.internal.ads.zzbgk.a(r0)
            com.google.android.gms.internal.ads.zzbgb r1 = com.google.android.gms.internal.ads.zzbgk.X4
            com.google.android.gms.internal.ads.zzbgi r2 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r1 = r2.a(r1)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
            if (r1 == 0) goto L2b
            com.google.android.gms.ads.internal.zzt.zzc()     // Catch: android.os.RemoteException -> L1f java.lang.RuntimeException -> L21
            java.lang.String r0 = com.google.android.gms.ads.internal.util.zzs.zzt(r0)     // Catch: android.os.RemoteException -> L1f java.lang.RuntimeException -> L21
            goto L2d
        L1f:
            r0 = move-exception
            goto L22
        L21:
            r0 = move-exception
        L22:
            java.lang.String r1 = "NonagonMobileAdsSettingManager_AppId"
            com.google.android.gms.internal.ads.zzcda r2 = com.google.android.gms.ads.internal.zzt.zzh()
            r2.f(r1, r0)
        L2b:
            java.lang.String r0 = ""
        L2d:
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            r2 = 1
            if (r2 != r1) goto L36
            r6 = r13
            goto L37
        L36:
            r6 = r0
        L37:
            boolean r13 = android.text.TextUtils.isEmpty(r6)
            if (r13 == 0) goto L3e
            goto L98
        L3e:
            com.google.android.gms.internal.ads.zzbgb r13 = com.google.android.gms.internal.ads.zzbgk.Q4
            com.google.android.gms.internal.ads.zzbgi r0 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r13 = r0.a(r13)
            java.lang.Boolean r13 = (java.lang.Boolean) r13
            boolean r13 = r13.booleanValue()
            com.google.android.gms.internal.ads.zzbgb r0 = com.google.android.gms.internal.ads.zzbgk.w1
            com.google.android.gms.internal.ads.zzbgi r1 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r1 = r1.a(r0)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
            r13 = r13 | r1
            com.google.android.gms.internal.ads.zzbgi r1 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r0 = r1.a(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L7c
            java.lang.Object r13 = com.google.android.gms.dynamic.ObjectWrapper.f2(r14)
            java.lang.Runnable r13 = (java.lang.Runnable) r13
            com.google.android.gms.internal.ads.zzcol r14 = new com.google.android.gms.internal.ads.zzcol
            r14.<init>()
        L7a:
            r7 = r14
            goto L7f
        L7c:
            r14 = 0
            r2 = r13
            goto L7a
        L7f:
            if (r2 == 0) goto L98
            com.google.android.gms.ads.internal.zzf r3 = com.google.android.gms.ads.internal.zzt.zzl()
            com.google.android.gms.internal.ads.zzeak r13 = r12.m
            boolean r11 = r13.g()
            android.content.Context r4 = r12.f5343c
            com.google.android.gms.ads.internal.util.client.VersionInfoParcel r5 = r12.f
            com.google.android.gms.internal.ads.zzfnr r8 = r12.o
            com.google.android.gms.internal.ads.zzdxe r9 = r12.r
            java.lang.Long r10 = r12.t
            r3.zza(r4, r5, r6, r7, r8, r9, r10, r11)
        L98:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcoo.zzj(java.lang.String, com.google.android.gms.dynamic.IObjectWrapper):void");
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final synchronized float zzk() {
        return com.google.android.gms.ads.internal.zzt.zzi().zzb();
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final synchronized boolean zzl() {
        return com.google.android.gms.ads.internal.zzt.zzi().zzd();
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final String zzm() {
        return this.f.afmaVersion;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final void zzn(String str) {
        this.i.d(str);
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final void zzo(zzbsz zzbszVar) {
        this.p.b(zzbszVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final void zzp(zzbpt zzbptVar) {
        zzdzp zzdzpVar = this.j;
        zzdzpVar.getClass();
        zzdzpVar.e.f5072c.k(new zzdzo(zzdzpVar, zzbptVar), zzdzpVar.j);
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final List zzq() {
        return this.j.b();
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final void zzr(com.google.android.gms.ads.internal.client.zzfv zzfvVar) {
        zzcbw zzcbwVar = this.k;
        Context context = this.f5343c;
        zzcbwVar.getClass();
        zzcbp a2 = zzcbx.b(context).a();
        a2.b.a(-1, a2.f5022a.currentTimeMillis());
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.W0)).booleanValue() && zzcbwVar.a(context) && zzcbw.g(context)) {
            synchronized (zzcbwVar.i) {
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final void zzs() {
        this.j.q = false;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final void zzt(com.google.android.gms.ads.internal.client.zzdn zzdnVar) {
        this.m.f(zzdnVar, zzeaj.f);
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final void zzu(boolean z) {
        try {
            Context context = this.f5343c;
            zzfzg.a(context).b(z);
            if (!z) {
                try {
                    if (!context.getSharedPreferences("query_info_shared_prefs", 0).edit().clear().commit()) {
                        throw new IOException("Failed to remove query_info_shared_prefs");
                    }
                } catch (IOException e) {
                    com.google.android.gms.ads.internal.zzt.zzh().f("clearStorageOnGpidPubDisable_scar", e);
                }
            }
        } catch (IOException e2) {
            throw new RemoteException(e2.getMessage());
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final void zzv(String str) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Ma)).booleanValue()) {
            com.google.android.gms.ads.internal.zzt.zzh().g = str;
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final synchronized void zzw() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.W2)).booleanValue()) {
            com.google.android.gms.ads.internal.zzt.zzr().c();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.X2)).booleanValue()) {
                com.google.android.gms.ads.internal.client.zzbb.zzd();
            }
        }
    }
}
