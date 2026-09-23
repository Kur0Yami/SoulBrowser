package com.google.android.gms.internal.ads;

import android.database.sqlite.SQLiteDatabase;
import com.google.android.gms.internal.ads.zzbfp;

/* loaded from: classes.dex */
public final class zzehd implements zzfmv {

    /* renamed from: c, reason: collision with root package name */
    public final zzegr f6498c;
    public final zzegv f;

    public zzehd(zzegr zzegrVar, zzegv zzegvVar) {
        this.f6498c = zzegrVar;
        this.f = zzegvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfmv
    public final void a(zzfmo zzfmoVar, String str, Throwable th) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.a7)).booleanValue() && zzfmo.RENDERER == zzfmoVar) {
            zzegr zzegrVar = this.f6498c;
            if (zzegrVar.e() != 0) {
                long elapsedRealtime = com.google.android.gms.ads.internal.zzt.zzk().elapsedRealtime() - zzegrVar.e();
                synchronized (zzegrVar) {
                    synchronized (zzegrVar.j) {
                        zzegrVar.e = elapsedRealtime;
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfmv
    public final void i(zzfmo zzfmoVar, String str) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.a7)).booleanValue() && zzfmo.RENDERER == zzfmoVar) {
            zzegr zzegrVar = this.f6498c;
            if (zzegrVar.e() != 0) {
                long elapsedRealtime = com.google.android.gms.ads.internal.zzt.zzk().elapsedRealtime() - zzegrVar.e();
                synchronized (zzegrVar) {
                    synchronized (zzegrVar.j) {
                        zzegrVar.e = elapsedRealtime;
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfmv
    public final void v(zzfmo zzfmoVar, String str) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.a7)).booleanValue()) {
            if (zzfmo.RENDERER == zzfmoVar) {
                zzegr zzegrVar = this.f6498c;
                long elapsedRealtime = com.google.android.gms.ads.internal.zzt.zzk().elapsedRealtime();
                synchronized (zzegrVar) {
                    synchronized (zzegrVar.i) {
                        zzegrVar.d = elapsedRealtime;
                    }
                }
                return;
            }
            if (zzfmo.PRELOADED_LOADER != zzfmoVar && zzfmo.SERVER_TRANSACTION != zzfmoVar) {
                return;
            }
            zzegr zzegrVar2 = this.f6498c;
            zzegrVar2.a(com.google.android.gms.ads.internal.zzt.zzk().elapsedRealtime());
            final zzegv zzegvVar = this.f;
            final long b = zzegrVar2.b();
            zzegvVar.b.a(new zzflu() { // from class: com.google.android.gms.internal.ads.zzegu
                @Override // com.google.android.gms.internal.ads.zzflu
                public final Object zza(Object obj) {
                    SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                    if (!zzegv.this.f6495a.zzx()) {
                        zzbfp.zzaf.zza.C0012zza T = zzbfp.zzaf.zza.T();
                        T.k();
                        zzbfp.zzaf.zza zzaVar = (zzbfp.zzaf.zza) T.f;
                        long j = b;
                        zzaVar.P(j);
                        byte[] h = ((zzbfp.zzaf.zza) T.m()).h();
                        sQLiteDatabase.execSQL("UPDATE offline_signal_statistics SET value = value+1 WHERE statistic_name = 'total_requests'");
                        zzehc.b(sQLiteDatabase, j, h);
                        return null;
                    }
                    return null;
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfmv
    public final void g(String str) {
    }
}
