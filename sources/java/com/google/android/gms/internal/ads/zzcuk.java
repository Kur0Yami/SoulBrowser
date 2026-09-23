package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzcuk implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzemk f5482a;
    public final zzeoj b;

    public zzcuk(zzemk zzemkVar, zzeoj zzeojVar) {
        this.f5482a = zzemkVar;
        this.b = zzeojVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        Boolean bool = (Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.y6);
        bool.booleanValue();
        boolean booleanValue = bool.booleanValue();
        zzemj zzb = this.f5482a.zzb();
        zzeoi zzb2 = this.b.zzb();
        if (true == booleanValue) {
            return zzb;
        }
        return zzb2;
    }
}
