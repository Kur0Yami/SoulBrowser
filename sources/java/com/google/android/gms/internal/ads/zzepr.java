package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.collection.SimpleArrayMap;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class zzepr extends com.google.android.gms.ads.internal.client.zzbs {

    /* renamed from: c, reason: collision with root package name */
    public final Context f6797c;
    public final zzclg f;
    public final zzfij g;
    public final zzdnv h;
    public com.google.android.gms.ads.internal.client.zzbk i;

    public zzepr(zzclg zzclgVar, Context context, String str) {
        zzfij zzfijVar = new zzfij();
        this.g = zzfijVar;
        this.h = new zzdnv();
        this.f = zzclgVar;
        zzfijVar.f7389c = str;
        this.f6797c = context;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final com.google.android.gms.ads.internal.client.zzbq zze() {
        zzdnv zzdnvVar = this.h;
        zzdnvVar.getClass();
        zzdnw zzdnwVar = new zzdnw(zzdnvVar);
        ArrayList arrayList = new ArrayList();
        if (zzdnwVar.f5949c != null) {
            arrayList.add(Integer.toString(6));
        }
        if (zzdnwVar.f5948a != null) {
            arrayList.add(Integer.toString(1));
        }
        if (zzdnwVar.b != null) {
            arrayList.add(Integer.toString(2));
        }
        SimpleArrayMap simpleArrayMap = zzdnwVar.f;
        if (!simpleArrayMap.isEmpty()) {
            arrayList.add(Integer.toString(3));
        }
        if (zzdnwVar.e != null) {
            arrayList.add(Integer.toString(7));
        }
        zzfij zzfijVar = this.g;
        zzfijVar.f = arrayList;
        ArrayList arrayList2 = new ArrayList(simpleArrayMap.g);
        for (int i = 0; i < simpleArrayMap.g; i++) {
            arrayList2.add((String) simpleArrayMap.f(i));
        }
        zzfijVar.g = arrayList2;
        if (zzfijVar.b == null) {
            zzfijVar.b = com.google.android.gms.ads.internal.client.zzr.zzb();
        }
        return new zzeps(this.f6797c, this.f, zzfijVar, zzdnwVar, this.i);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzf(com.google.android.gms.ads.internal.client.zzbk zzbkVar) {
        this.i = zzbkVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzg(zzbkw zzbkwVar) {
        this.h.b = zzbkwVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzh(zzbkz zzbkzVar) {
        this.h.f5946a = zzbkzVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzi(String str, zzblf zzblfVar, zzblc zzblcVar) {
        zzdnv zzdnvVar = this.h;
        zzdnvVar.f.put(str, zzblfVar);
        if (zzblcVar != null) {
            zzdnvVar.g.put(str, zzblcVar);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzj(zzbjn zzbjnVar) {
        this.g.h = zzbjnVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzk(zzblj zzbljVar, com.google.android.gms.ads.internal.client.zzr zzrVar) {
        this.h.d = zzbljVar;
        this.g.b = zzrVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzl(PublisherAdViewOptions publisherAdViewOptions) {
        zzfij zzfijVar = this.g;
        zzfijVar.k = publisherAdViewOptions;
        if (publisherAdViewOptions != null) {
            zzfijVar.e = publisherAdViewOptions.zza();
            zzfijVar.l = publisherAdViewOptions.zzb();
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzm(zzblm zzblmVar) {
        this.h.f5947c = zzblmVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzn(zzbpy zzbpyVar) {
        zzfij zzfijVar = this.g;
        zzfijVar.n = zzbpyVar;
        zzfijVar.d = new com.google.android.gms.ads.internal.client.zzga(false, true, false);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzo(zzbqh zzbqhVar) {
        this.h.e = zzbqhVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzp(AdManagerAdViewOptions adManagerAdViewOptions) {
        zzfij zzfijVar = this.g;
        zzfijVar.j = adManagerAdViewOptions;
        if (adManagerAdViewOptions != null) {
            zzfijVar.e = adManagerAdViewOptions.getManualImpressionsEnabled();
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzq(com.google.android.gms.ads.internal.client.zzcs zzcsVar) {
        this.g.w = zzcsVar;
    }
}
