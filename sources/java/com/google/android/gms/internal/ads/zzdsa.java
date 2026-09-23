package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Collections;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzdsa extends zzblr {

    /* renamed from: c, reason: collision with root package name */
    public final String f6086c;
    public final zzdnh f;
    public final zzdnm g;
    public final zzdxe h;

    public zzdsa(String str, zzdnh zzdnhVar, zzdnm zzdnmVar, zzdxe zzdxeVar) {
        super("com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd");
        this.f6086c = str;
        this.f = zzdnhVar;
        this.g = zzdnmVar;
        this.h = zzdxeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final void A2(Bundle bundle) {
        this.f.s(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final void E1(zzblp zzblpVar) {
        zzdnh zzdnhVar = this.f;
        synchronized (zzdnhVar) {
            zzdnhVar.n.c(zzblpVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final void N0(long j) {
        zzcze zzczeVar;
        zzdnh zzdnhVar = this.f;
        if (zzdnhVar != null && (zzczeVar = zzdnhVar.j) != null) {
            zzczeVar.a(j);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final void N2(Bundle bundle) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.re)).booleanValue()) {
            zzdnh zzdnhVar = this.f;
            final zzcir p = zzdnhVar.m.p();
            if (p == null) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzf("Video webview is null");
                return;
            }
            try {
                final JSONObject jSONObject = new JSONObject();
                for (String str : bundle.keySet()) {
                    jSONObject.put(str, bundle.get(str));
                }
                zzdnhVar.l.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdne
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zzgtd zzgtdVar = zzdnh.J;
                        zzcir.this.o(jSONObject, "onVideoEvent");
                    }
                });
            } catch (JSONException e) {
                int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzg("Error reading event signals", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final void R3(Bundle bundle) {
        this.f.p(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final void X2(com.google.android.gms.ads.internal.client.zzdf zzdfVar) {
        zzdnh zzdnhVar = this.f;
        synchronized (zzdnhVar) {
            zzdnhVar.n.d(zzdfVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final boolean c3(Bundle bundle) {
        return this.f.r(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final void g() {
        this.f.B();
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final void h1(com.google.android.gms.ads.internal.client.zzdt zzdtVar) {
        try {
            if (!zzdtVar.zzf()) {
                this.h.b();
            }
        } catch (RemoteException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zze("Error in making CSI ping for reporting paid event callback", e);
        }
        zzdnh zzdnhVar = this.f;
        synchronized (zzdnhVar) {
            zzdnhVar.G.f6826c.set(zzdtVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final void l1(com.google.android.gms.ads.internal.client.zzdj zzdjVar) {
        zzdnh zzdnhVar = this.f;
        synchronized (zzdnhVar) {
            zzdnhVar.n.m(zzdjVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final long m() {
        zzcze zzczeVar;
        zzdnh zzdnhVar = this.f;
        if (zzdnhVar != null && (zzczeVar = zzdnhVar.j) != null) {
            return zzczeVar.f5617a.get();
        }
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final boolean x() {
        boolean zzh;
        zzdnh zzdnhVar = this.f;
        synchronized (zzdnhVar) {
            zzh = zzdnhVar.n.zzh();
        }
        return zzh;
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final boolean zzA() {
        List list;
        zzdnm zzdnmVar = this.g;
        synchronized (zzdnmVar) {
            list = zzdnmVar.f;
        }
        if (!list.isEmpty() && zzdnmVar.e() != null) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final void zzD() {
        zzdnh zzdnhVar = this.f;
        synchronized (zzdnhVar) {
            zzdnhVar.n.zzg();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final void zzE() {
        final zzdnh zzdnhVar = this.f;
        synchronized (zzdnhVar) {
            zzbcc zzbccVar = zzdnhVar.w;
            if (zzbccVar == null) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzd("Ad should be associated with an ad view before calling recordCustomClickGesture()");
            } else {
                final boolean z = zzbccVar instanceof zzdof;
                zzdnhVar.l.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdnc
                    /* JADX WARN: Type inference failed for: r1v0, types: [com.google.android.gms.internal.ads.zzbcc, com.google.android.gms.internal.ads.zzdpj] */
                    /* JADX WARN: Type inference failed for: r2v1, types: [com.google.android.gms.internal.ads.zzbcc, com.google.android.gms.internal.ads.zzdpj] */
                    /* JADX WARN: Type inference failed for: r2v2, types: [com.google.android.gms.internal.ads.zzbcc, com.google.android.gms.internal.ads.zzdpj] */
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zzdnh zzdnhVar2 = zzdnh.this;
                        ?? r1 = zzdnhVar2.w;
                        if (r1 == 0) {
                            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                            com.google.android.gms.ads.internal.util.client.zzo.zzd("Ad should be associated with an ad view before calling recordCustomClickGesture()");
                            return;
                        }
                        zzdnhVar2.n.o(null, r1.f2(), zzdnhVar2.w.zzj(), zzdnhVar2.w.zzk(), z, zzdnhVar2.n(), 0);
                    }
                });
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final zzbjv zzF() {
        zzbjv zzbjvVar;
        zzdnj zzdnjVar = this.f.F;
        synchronized (zzdnjVar) {
            zzbjvVar = zzdnjVar.f5937a;
        }
        return zzbjvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final com.google.android.gms.ads.internal.client.zzea zzH() {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.B7)).booleanValue()) {
            return null;
        }
        return this.f.f;
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final String zze() {
        return this.g.b();
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final List zzf() {
        return this.g.c();
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final String zzg() {
        return this.g.f();
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final zzbjy zzh() {
        zzbjy zzbjyVar;
        zzdnm zzdnmVar = this.g;
        synchronized (zzdnmVar) {
            zzbjyVar = zzdnmVar.s;
        }
        return zzbjyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final String zzi() {
        return this.g.h();
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final String zzj() {
        return this.g.n();
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final double zzk() {
        double d;
        zzdnm zzdnmVar = this.g;
        synchronized (zzdnmVar) {
            d = zzdnmVar.r;
        }
        return d;
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final String zzl() {
        String S;
        zzdnm zzdnmVar = this.g;
        synchronized (zzdnmVar) {
            S = zzdnmVar.S("store");
        }
        return S;
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final String zzm() {
        String S;
        zzdnm zzdnmVar = this.g;
        synchronized (zzdnmVar) {
            S = zzdnmVar.S("price");
        }
        return S;
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final com.google.android.gms.ads.internal.client.zzed zzn() {
        return this.g.U();
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final void zzp() {
        this.f.q();
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final zzbjr zzq() {
        return this.g.V();
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final IObjectWrapper zzu() {
        return new ObjectWrapper(this.f);
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final IObjectWrapper zzv() {
        return this.g.j();
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final Bundle zzw() {
        return this.g.g();
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final List zzz() {
        List list;
        if (zzA()) {
            zzdnm zzdnmVar = this.g;
            synchronized (zzdnmVar) {
                list = zzdnmVar.f;
            }
            return list;
        }
        return Collections.EMPTY_LIST;
    }
}
