package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zzdtb implements zzbof {

    /* renamed from: c, reason: collision with root package name */
    public final zzdbr f6123c;
    public final zzbzy f;
    public final String g;
    public final String h;

    public zzdtb(zzdbr zzdbrVar, zzfhr zzfhrVar) {
        this.f6123c = zzdbrVar;
        this.f = zzfhrVar.l;
        this.g = zzfhrVar.j;
        this.h = zzfhrVar.k;
    }

    @Override // com.google.android.gms.internal.ads.zzbof
    public final void U(zzbzy zzbzyVar) {
        int i;
        String str;
        zzbzy zzbzyVar2 = this.f;
        if (zzbzyVar2 != null) {
            zzbzyVar = zzbzyVar2;
        }
        if (zzbzyVar != null) {
            str = zzbzyVar.f4991c;
            i = zzbzyVar.f;
        } else {
            i = 1;
            str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        final zzbzj zzbzjVar = new zzbzj(str, i);
        zzdbr zzdbrVar = this.f6123c;
        zzdbrVar.getClass();
        final String str2 = this.g;
        final String str3 = this.h;
        zzdbrVar.s0(new zzdgh() { // from class: com.google.android.gms.internal.ads.zzdbo
            @Override // com.google.android.gms.internal.ads.zzdgh
            public final /* synthetic */ void zza(Object obj) {
                ((zzdak) obj).U(zzbzj.this, str2, str3);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbof
    public final void zza() {
        this.f6123c.s0(zzdbn.f5676a);
    }

    @Override // com.google.android.gms.internal.ads.zzbof
    public final void zzc() {
        this.f6123c.s0(zzdbp.f5679a);
    }
}
