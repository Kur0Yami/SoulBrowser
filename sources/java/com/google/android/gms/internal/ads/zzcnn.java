package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzcnn implements zzdky {

    /* renamed from: a, reason: collision with root package name */
    public final zzcmv f5311a;
    public zzffn b;

    /* renamed from: c, reason: collision with root package name */
    public zzfer f5312c;
    public zzdgk d;
    public zzczt e;
    public zzeow f;

    public /* synthetic */ zzcnn(zzcmv zzcmvVar) {
        this.f5311a = zzcmvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzczq
    public final /* synthetic */ zzczq a(zzffn zzffnVar) {
        this.b = zzffnVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzczq
    public final /* synthetic */ zzczq b(zzfer zzferVar) {
        this.f5312c = zzferVar;
        return this;
    }

    /* JADX WARN: Type inference failed for: r4v0, types: [com.google.android.gms.internal.ads.zzdxt, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v0, types: [java.lang.Object, com.google.android.gms.internal.ads.zzena] */
    @Override // com.google.android.gms.internal.ads.zzczq
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public final zzdkz zzh() {
        zzijo.b(zzdgk.class, this.d);
        zzijo.b(zzczt.class, this.e);
        zzijo.b(zzeow.class, this.f);
        return new zzcno(this.f5311a, new Object(), this.d, this.e, new Object(), this.f, this.b, this.f5312c);
    }
}
