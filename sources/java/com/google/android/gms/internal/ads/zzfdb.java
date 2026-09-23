package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.util.Pair;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public abstract class zzfdb implements zzerf {

    /* renamed from: a, reason: collision with root package name */
    public final Context f7235a;
    public final Executor b;

    /* renamed from: c, reason: collision with root package name */
    public final zzclg f7236c;
    public final zzfdr d;
    public final zzffj e;
    public final VersionInfoParcel f;
    public final FrameLayout g;
    public final zzfnr h;
    public final zzfij i;
    public ListenableFuture j;

    public zzfdb(Context context, Executor executor, zzclg zzclgVar, zzffj zzffjVar, zzfdr zzfdrVar, zzfij zzfijVar, VersionInfoParcel versionInfoParcel) {
        this.f7235a = context;
        this.b = executor;
        this.f7236c = zzclgVar;
        this.e = zzffjVar;
        this.d = zzfdrVar;
        this.i = zzfijVar;
        this.f = versionInfoParcel;
        this.g = new FrameLayout(context);
        this.h = zzclgVar.z();
    }

    /* JADX WARN: Type inference failed for: r6v6, types: [java.lang.Object, com.google.android.gms.internal.ads.zzffh, com.google.android.gms.internal.ads.zzfcy] */
    public final synchronized boolean a(com.google.android.gms.ads.internal.client.zzm zzmVar, String str, zzerd zzerdVar, zzere zzereVar) {
        Throwable th;
        boolean z;
        zzfno zzfnoVar;
        zzcsm zzcsmVar;
        try {
            try {
                if (!zzmVar.zzb()) {
                    if (((Boolean) zzbii.d.c()).booleanValue()) {
                        try {
                            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Ac)).booleanValue()) {
                                z = true;
                                if (this.f.clientJarVersion >= ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Bc)).intValue() || !z) {
                                    Preconditions.checkMainThread("loadAd must be called on the main UI thread.");
                                }
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            throw th;
                        }
                    }
                    z = false;
                    if (this.f.clientJarVersion >= ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Bc)).intValue()) {
                    }
                    Preconditions.checkMainThread("loadAd must be called on the main UI thread.");
                }
                if (str == null) {
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzf("Ad unit ID should not be null for app open ad.");
                    this.b.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfda
                        @Override // java.lang.Runnable
                        public final /* synthetic */ void run() {
                            zzfdb.this.d.S(zzfjm.d(6, null, null));
                        }
                    });
                    return false;
                }
                if (this.j != null) {
                    return false;
                }
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.X2)).booleanValue()) {
                    com.google.android.gms.ads.internal.client.zzbb.zzc();
                }
                if (((Boolean) zzbid.f4704c.c()).booleanValue() && (zzcsmVar = (zzcsm) this.e.zzd()) != null) {
                    zzfno zzd = zzcsmVar.zzd();
                    zzd.i(7);
                    zzd.c(zzmVar.zzp);
                    zzd.d(zzmVar.zzm);
                    zzfnoVar = zzd;
                } else {
                    zzfnoVar = null;
                }
                Context context = this.f7235a;
                boolean z2 = zzmVar.zzf;
                zzfjh.b(context, z2);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.la)).booleanValue() && z2) {
                    this.f7236c.y().b(true);
                }
                Bundle a2 = zzdwo.a(new Pair("api-call", Long.valueOf(zzmVar.zzz)), new Pair("dynamite-enter", Long.valueOf(com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis())));
                zzfij zzfijVar = this.i;
                zzfijVar.f7389c = str;
                zzfijVar.b = com.google.android.gms.ads.internal.client.zzr.zzd();
                zzfijVar.f7388a = zzmVar;
                zzfijVar.t = a2;
                zzfik a3 = zzfijVar.a();
                zzfne p = a.p(context, zzfnn.b(a3), 7, zzmVar);
                ?? obj = new Object();
                obj.f7231a = a3;
                ListenableFuture a4 = this.e.a(new zzffk(obj, null), new zzffi() { // from class: com.google.android.gms.internal.ads.zzfcz
                    @Override // com.google.android.gms.internal.ads.zzffi
                    public final /* synthetic */ zzczq a(zzffh zzffhVar) {
                        return zzfdb.this.c(zzffhVar);
                    }
                });
                this.j = a4;
                a4.k(new zzgyk(a4, new zzfcx(this, zzereVar, zzfnoVar, p, obj)), this.b);
                return true;
            } catch (Throwable th3) {
                th = th3;
                th = th;
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            th = th;
            throw th;
        }
    }

    public abstract zzcsp b(zzczt zzcztVar, zzdgk zzdgkVar);

    public final synchronized zzczq c(zzffh zzffhVar) {
        zzfcy zzfcyVar = (zzfcy) zzffhVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.s9)).booleanValue()) {
            zzczs zzczsVar = new zzczs();
            zzczsVar.f5634a = this.f7235a;
            zzczsVar.b = zzfcyVar.f7231a;
            zzczt zzcztVar = new zzczt(zzczsVar);
            zzdgj zzdgjVar = new zzdgj();
            zzfdr zzfdrVar = this.d;
            Executor executor = this.b;
            zzdgjVar.l.add(new zzdij(zzfdrVar, executor));
            zzdgjVar.c(zzfdrVar, executor);
            return b(zzcztVar, new zzdgk(zzdgjVar));
        }
        zzfdr zzfdrVar2 = this.d;
        zzfdr zzfdrVar3 = new zzfdr(zzfdrVar2.f7252c);
        zzfdrVar3.l = zzfdrVar2;
        zzdgj zzdgjVar2 = new zzdgj();
        Executor executor2 = this.b;
        zzdgjVar2.a(zzfdrVar3, executor2);
        zzdgjVar2.g.add(new zzdij(zzfdrVar3, executor2));
        zzdgjVar2.n.add(new zzdij(zzfdrVar3, executor2));
        zzdgjVar2.m.add(new zzdij(zzfdrVar3, executor2));
        zzdgjVar2.l.add(new zzdij(zzfdrVar3, executor2));
        zzdgjVar2.c(zzfdrVar3, executor2);
        zzdgjVar2.o = zzfdrVar3;
        zzczs zzczsVar2 = new zzczs();
        zzczsVar2.f5634a = this.f7235a;
        zzczsVar2.b = zzfcyVar.f7231a;
        return b(new zzczt(zzczsVar2), new zzdgk(zzdgjVar2));
    }
}
