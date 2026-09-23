package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzdkd implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f5852a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzcwb f5853c;
    public final zzijp d;

    public zzdkd(zzijf zzijfVar, zzcmg zzcmgVar, zzcwb zzcwbVar, zzdab zzdabVar) {
        this.f5852a = zzijfVar;
        this.b = zzcmgVar;
        this.f5853c = zzcwbVar;
        this.d = zzdabVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        final Context context = (Context) this.f5852a.zzb();
        final VersionInfoParcel a2 = ((zzcmg) this.b).a();
        final zzfhr a3 = this.f5853c.a();
        final zzfik a4 = ((zzdab) this.d).a();
        return new zzdij(new zzdby() { // from class: com.google.android.gms.internal.ads.zzdjv
            @Override // com.google.android.gms.internal.ads.zzdby
            public final /* synthetic */ void zzg() {
                JSONObject jSONObject = a3.C;
                com.google.android.gms.ads.internal.zzt.zzo().zzg(context, a2.afmaVersion, jSONObject.toString(), a4.g);
            }
        }, zzcdo.g);
    }
}
