package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;

/* loaded from: classes.dex */
final class zzcnf implements zzfei {

    /* renamed from: a, reason: collision with root package name */
    public final Context f5295a;
    public final com.google.android.gms.ads.internal.client.zzr b;

    /* renamed from: c, reason: collision with root package name */
    public final String f5296c;
    public final zzcmv d;
    public final zzijf e;
    public final zzijf f;

    public zzcnf(zzcmv zzcmvVar, Context context, String str, com.google.android.gms.ads.internal.client.zzr zzrVar) {
        this.d = zzcmvVar;
        this.f5295a = context;
        this.b = zzrVar;
        this.f5296c = str;
        zzijh a2 = zzijh.a(context);
        zzijh a3 = zzijh.a(zzrVar);
        zzijf a4 = zzijf.a(new zzeqq(zzcmvVar.l));
        this.e = a4;
        this.f = zzijf.a(new zzfeg(zzcmvVar.d, a4, zzijf.a(zzequ.f6828a), zzijf.a(zzdfr.f5765a), a2, a3, zzcmvVar.F));
    }

    @Override // com.google.android.gms.internal.ads.zzfei
    public final zzepu zza() {
        zzfef zzfefVar = (zzfef) this.f.zzb();
        zzeqp zzeqpVar = (zzeqp) this.e.zzb();
        zzcmv zzcmvVar = this.d;
        zzijf zzijfVar = zzcmvVar.l;
        VersionInfoParcel versionInfoParcel = zzcmvVar.b.f5244a;
        zzijo.a(versionInfoParcel);
        zzdxe zzdxeVar = (zzdxe) zzijfVar.zzb();
        return new zzepu(this.f5295a, this.b, this.f5296c, zzfefVar, zzeqpVar, versionInfoParcel, zzdxeVar);
    }
}
