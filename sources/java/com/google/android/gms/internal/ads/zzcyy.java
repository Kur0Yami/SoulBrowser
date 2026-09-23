package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;

/* loaded from: classes.dex */
public final class zzcyy implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f5608a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdab f5609c;

    public zzcyy(zzdab zzdabVar, zzijf zzijfVar, zzijp zzijpVar) {
        this.f5608a = zzijfVar;
        this.b = zzijpVar;
        this.f5609c = zzdabVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        final Context context = (Context) this.f5608a.zzb();
        final VersionInfoParcel a2 = ((zzcmg) this.b).a();
        final zzfik a3 = this.f5609c.a();
        return new zzgpr() { // from class: com.google.android.gms.internal.ads.zzcyx
            @Override // com.google.android.gms.internal.ads.zzgpr
            public final /* synthetic */ Object apply(Object obj) {
                zzfhr zzfhrVar = (zzfhr) obj;
                com.google.android.gms.ads.internal.util.zzat zzatVar = new com.google.android.gms.ads.internal.util.zzat(context);
                zzatVar.zze(zzfhrVar.B);
                zzatVar.zzf(zzfhrVar.C.toString());
                zzatVar.zzd(a2.afmaVersion);
                zzatVar.zzc(a3.g);
                return zzatVar;
            }
        };
    }
}
