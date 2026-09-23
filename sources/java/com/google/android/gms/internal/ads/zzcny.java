package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzcny implements zzdti {

    /* renamed from: a, reason: collision with root package name */
    public final zzcmv f5326a;
    public zzffn b;

    /* renamed from: c, reason: collision with root package name */
    public zzfer f5327c;
    public zzdgk d;
    public zzczt e;

    public /* synthetic */ zzcny(zzcmv zzcmvVar) {
        this.f5326a = zzcmvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzczq
    public final /* synthetic */ zzczq a(zzffn zzffnVar) {
        this.b = zzffnVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzczq
    public final /* synthetic */ zzczq b(zzfer zzferVar) {
        this.f5327c = zzferVar;
        return this;
    }

    /* JADX WARN: Type inference failed for: r4v0, types: [com.google.android.gms.internal.ads.zzdxt, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v0, types: [java.lang.Object, com.google.android.gms.internal.ads.zzena] */
    @Override // com.google.android.gms.internal.ads.zzczq
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public final zzdtj zzh() {
        zzijo.b(zzdgk.class, this.d);
        zzijo.b(zzczt.class, this.e);
        return new zzcnz(this.f5326a, new Object(), this.d, this.e, new Object(), this.b, this.f5327c);
    }
}
