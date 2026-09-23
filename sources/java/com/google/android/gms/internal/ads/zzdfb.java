package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.admanager.AppEventListener;
import com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener;

/* loaded from: classes.dex */
public final class zzdfb implements AppEventListener, OnAdMetadataChangedListener, zzdak, com.google.android.gms.ads.internal.client.zza, zzddb, zzdbe, zzdcj, com.google.android.gms.ads.internal.overlay.zzr, zzdba, zzdir {

    /* renamed from: c, reason: collision with root package name */
    public final zzdea f5755c = new zzdea(this);
    public zzeqp f;
    public zzeqt g;
    public zzfdr h;
    public zzfgv i;

    public static void b(Object obj, zzdfa zzdfaVar) {
        if (obj != null) {
            zzdfaVar.zza(obj);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdak
    public final void J() {
        b(this.f, zzdec.f5730a);
        b(this.i, zzdeu.f5748a);
    }

    @Override // com.google.android.gms.internal.ads.zzdir
    public final void P() {
        b(this.f, zzdeh.f5735a);
        b(this.g, zzder.f5745a);
        b(this.i, zzdex.f5751a);
        b(this.h, zzdeq.f5744a);
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.google.android.gms.internal.ads.zzdfa, java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdak
    public final void U(final zzbzj zzbzjVar, final String str, final String str2) {
        b(this.f, new Object());
        b(this.i, new zzdfa() { // from class: com.google.android.gms.internal.ads.zzddr
            @Override // com.google.android.gms.internal.ads.zzdfa
            public final /* synthetic */ void zza(Object obj) {
                ((zzfgv) obj).U(zzbzj.this, str, str2);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzddb
    public final void a(final com.google.android.gms.ads.internal.client.zzt zztVar) {
        b(this.f, new zzdfa() { // from class: com.google.android.gms.internal.ads.zzddt
            @Override // com.google.android.gms.internal.ads.zzdfa
            public final /* synthetic */ void zza(Object obj) {
                ((zzeqp) obj).a(com.google.android.gms.ads.internal.client.zzt.this);
            }
        });
        b(this.i, new zzdfa() { // from class: com.google.android.gms.internal.ads.zzddu
            @Override // com.google.android.gms.internal.ads.zzdfa
            public final /* synthetic */ void zza(Object obj) {
                ((zzfgv) obj).a(com.google.android.gms.ads.internal.client.zzt.this);
            }
        });
        b(this.h, new zzdfa() { // from class: com.google.android.gms.internal.ads.zzddv
            @Override // com.google.android.gms.internal.ads.zzdfa
            public final /* synthetic */ void zza(Object obj) {
                ((zzfdr) obj).a(com.google.android.gms.ads.internal.client.zzt.this);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdir
    public final void d0() {
        b(this.f, zzdeg.f5734a);
    }

    @Override // com.google.android.gms.internal.ads.zzdba
    public final void g(final com.google.android.gms.ads.internal.client.zze zzeVar) {
        b(this.i, new zzdfa() { // from class: com.google.android.gms.internal.ads.zzddw
            @Override // com.google.android.gms.internal.ads.zzdfa
            public final /* synthetic */ void zza(Object obj) {
                ((zzfgv) obj).g(com.google.android.gms.ads.internal.client.zze.this);
            }
        });
        b(this.f, new zzdfa() { // from class: com.google.android.gms.internal.ads.zzddx
            @Override // com.google.android.gms.internal.ads.zzdfa
            public final /* synthetic */ void zza(Object obj) {
                ((zzeqp) obj).g(com.google.android.gms.ads.internal.client.zze.this);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdak
    public final void i0() {
        b(this.f, zzdej.f5737a);
        b(this.i, zzdez.f5753a);
    }

    @Override // com.google.android.gms.internal.ads.zzdbe
    public final void n() {
        b(this.f, zzdei.f5736a);
    }

    @Override // com.google.android.gms.internal.ads.zzdak
    public final void o() {
        b(this.f, zzdeb.f5729a);
        b(this.i, zzdet.f5747a);
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void onAdClicked() {
        b(this.f, zzdef.f5733a);
        b(this.g, zzdes.f5746a);
    }

    @Override // com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener
    public final void onAdMetadataChanged() {
        b(this.i, zzdey.f5752a);
    }

    @Override // com.google.android.gms.ads.admanager.AppEventListener
    public final void onAppEvent(final String str, final String str2) {
        b(this.f, new zzdfa() { // from class: com.google.android.gms.internal.ads.zzdds
            @Override // com.google.android.gms.internal.ads.zzdfa
            public final /* synthetic */ void zza(Object obj) {
                ((zzeqp) obj).onAppEvent(str, str2);
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdS() {
        b(this.h, zzdem.f5740a);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdT(final int i) {
        b(this.h, new zzdfa() { // from class: com.google.android.gms.internal.ads.zzddy
            @Override // com.google.android.gms.internal.ads.zzdfa
            public final /* synthetic */ void zza(Object obj) {
                ((zzfdr) obj).zzdT(i);
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdo() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdp() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdq() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdv() {
        b(this.h, zzden.f5741a);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdw() {
        b(this.h, zzdeo.f5742a);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdx() {
        b(this.h, zzdep.f5743a);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdy() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdz() {
    }

    @Override // com.google.android.gms.internal.ads.zzdak
    public final void zze() {
        b(this.f, zzded.f5731a);
        b(this.i, zzdev.f5749a);
    }

    @Override // com.google.android.gms.internal.ads.zzdak
    public final void zzf() {
        b(this.f, zzdee.f5732a);
        b(this.i, zzdew.f5750a);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzh() {
        b(this.h, zzdel.f5739a);
    }

    @Override // com.google.android.gms.internal.ads.zzdcj
    public final void zzl() {
        b(this.h, zzdek.f5738a);
    }
}
