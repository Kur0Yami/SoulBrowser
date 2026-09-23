package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public class zzeok extends zzbte {

    /* renamed from: c, reason: collision with root package name */
    public final zzdai f6757c;
    public final zzdip f;
    public final zzdbc g;
    public final zzdbr h;
    public final zzdbw i;
    public final zzdfo j;
    public final zzdcv k;
    public final zzdjn l;
    public final zzdfk m;
    public final zzdax n;

    public zzeok(zzdai zzdaiVar, zzdip zzdipVar, zzdbc zzdbcVar, zzdbr zzdbrVar, zzdbw zzdbwVar, zzdfo zzdfoVar, zzdcv zzdcvVar, zzdjn zzdjnVar, zzdfk zzdfkVar, zzdax zzdaxVar) {
        this.f6757c = zzdaiVar;
        this.f = zzdipVar;
        this.g = zzdbcVar;
        this.h = zzdbrVar;
        this.i = zzdbwVar;
        this.j = zzdfoVar;
        this.k = zzdcvVar;
        this.l = zzdjnVar;
        this.m = zzdfkVar;
        this.n = zzdaxVar;
    }

    public void A() {
        this.l.s0(zzdji.f5834a);
    }

    @Override // com.google.android.gms.internal.ads.zzbtf
    public final void Q(com.google.android.gms.ads.internal.client.zze zzeVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbtf
    public final void U4(int i, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzbtf
    public final void k4(String str, String str2) {
        this.j.zzb(str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzbtf
    public final void p(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzbtf
    public final void p0(zzbks zzbksVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzbtf
    public final void p1() {
        zzdjn zzdjnVar = this.l;
        synchronized (zzdjnVar) {
            try {
                if (!zzdjnVar.f) {
                    zzdjnVar.s0(zzdjl.f5837a);
                    zzdjnVar.f = true;
                }
                zzdjnVar.s0(zzdjk.f5836a);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void t4(zzcac zzcacVar) {
    }

    public void v1(zzbzy zzbzyVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbtf
    public final void y0(com.google.android.gms.ads.internal.client.zze zzeVar) {
        this.n.zzc(zzfjm.c(8, zzeVar));
    }

    @Override // com.google.android.gms.internal.ads.zzbtf
    public final void zze() {
        this.f6757c.onAdClicked();
        this.f.P();
    }

    @Override // com.google.android.gms.internal.ads.zzbtf
    public final void zzf() {
        this.k.zzdT(4);
    }

    @Override // com.google.android.gms.internal.ads.zzbtf
    public final void zzh() {
        this.h.t0();
    }

    @Override // com.google.android.gms.internal.ads.zzbtf
    public final void zzi() {
        this.k.zzh();
        this.m.s0(zzdfi.f5759a);
    }

    @Override // com.google.android.gms.internal.ads.zzbtf
    public final void zzj() {
        this.i.zzg();
    }

    public void zzk() {
        this.g.zza();
        this.m.s0(zzdfj.f5760a);
    }

    public void zzo() {
        zzdjn zzdjnVar = this.l;
        synchronized (zzdjnVar) {
            zzdjnVar.s0(zzdjj.f5835a);
            zzdjnVar.f = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbtf
    public final void zzq() {
        this.l.s0(zzdjm.f5838a);
    }

    @Override // com.google.android.gms.internal.ads.zzbtf
    public final void zzs(int i) {
        y0(new com.google.android.gms.ads.internal.client.zze(i, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, AdError.UNDEFINED_DOMAIN, null, null));
    }

    @Override // com.google.android.gms.internal.ads.zzbtf
    public final void zzv(String str) {
        y0(new com.google.android.gms.ads.internal.client.zze(0, str, AdError.UNDEFINED_DOMAIN, null, null));
    }

    public void zzz() {
    }

    public void J2() {
    }
}
