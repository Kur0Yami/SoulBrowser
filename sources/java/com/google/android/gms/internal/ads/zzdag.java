package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;

/* loaded from: classes.dex */
public final class zzdag implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f5653a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzcwb f5654c;

    public zzdag(zzijf zzijfVar, zzcmg zzcmgVar, zzcwb zzcwbVar) {
        this.f5653a = zzijfVar;
        this.b = zzcmgVar;
        this.f5654c = zzcwbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        Context context = (Context) this.f5653a.zzb();
        VersionInfoParcel a2 = ((zzcmg) this.b).a();
        zzfhr a3 = this.f5654c.a();
        zzcbh zzcbhVar = a3.A;
        String str = null;
        if (zzcbhVar == null) {
            return null;
        }
        zzfhw zzfhwVar = a3.s;
        if (zzfhwVar != null) {
            str = zzfhwVar.b;
        }
        return new zzcbf(context, a2, zzcbhVar, str);
    }
}
