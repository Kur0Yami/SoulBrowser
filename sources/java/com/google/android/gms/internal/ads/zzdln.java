package com.google.android.gms.internal.ads;

import android.content.Context;
import android.webkit.WebView;
import com.google.android.gms.internal.ads.zzbfp;

/* loaded from: classes.dex */
public final class zzdln implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzdkn f5882a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f5883c;
    public final zzdkb d;
    public final zzijp e;

    public zzdln(zzdkn zzdknVar, zzclp zzclpVar, zzijf zzijfVar, zzdkb zzdkbVar, zzijg zzijgVar) {
        this.f5882a = zzdknVar;
        this.b = zzclpVar;
        this.f5883c = zzijfVar;
        this.d = zzdkbVar;
        this.e = zzijgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        WebView zzD;
        zzdkn zzdknVar = this.f5882a;
        zzcbt zzcbtVar = new zzcbt(((zzclp) zzdknVar.f5863a).a(), ((zzdab) zzdknVar.b).a().g);
        Context a2 = ((zzclp) this.b).a();
        zzcbw zzcbwVar = (zzcbw) this.f5883c.zzb();
        zzcir zzcirVar = this.d.f5850a.b;
        if (zzcirVar == null) {
            zzD = null;
        } else {
            zzD = zzcirVar.zzD();
        }
        return new zzdlm(zzcbtVar, a2, zzcbwVar, zzD, (zzbfp.zza.EnumC0010zza) this.e.zzb());
    }
}
