package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzbly {

    /* renamed from: a, reason: collision with root package name */
    public final com.google.android.gms.ads.formats.zze f4759a;
    public final com.google.android.gms.ads.formats.zzd b;

    /* renamed from: c, reason: collision with root package name */
    public zzbkt f4760c;

    public zzbly(com.google.android.gms.ads.formats.zze zzeVar, com.google.android.gms.ads.formats.zzd zzdVar) {
        this.f4759a = zzeVar;
        this.b = zzdVar;
    }

    public final zzblf a() {
        return new zzblx(this);
    }

    public final zzblc b() {
        if (this.b == null) {
            return null;
        }
        return new zzblw(this);
    }
}
