package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzdtk implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzeoj f6126a;
    public final zzeoj b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdab f6127c;

    public zzdtk(zzeoj zzeojVar, zzeoj zzeojVar2, zzdab zzdabVar) {
        this.f6126a = zzeojVar;
        this.b = zzeojVar2;
        this.f6127c = zzdabVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* synthetic */ Object zzb() {
        int i = this.f6127c.a().p.f7377a;
        if (i != 0) {
            if (i - 1 != 0) {
                return this.b.zzb();
            }
            return this.f6126a.zzb();
        }
        throw null;
    }
}
