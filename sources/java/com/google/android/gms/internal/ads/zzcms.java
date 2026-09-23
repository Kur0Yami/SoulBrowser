package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzcms implements zzdlu {

    /* renamed from: a, reason: collision with root package name */
    public final zzcmv f5271a;
    public zzffn b;

    /* renamed from: c, reason: collision with root package name */
    public zzfer f5272c;
    public zzdgk d;
    public zzczt e;
    public zzdlq f;
    public zzcsz g;

    public /* synthetic */ zzcms(zzcmv zzcmvVar) {
        this.f5271a = zzcmvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzczq
    public final /* synthetic */ zzczq a(zzffn zzffnVar) {
        this.b = zzffnVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzczq
    public final /* synthetic */ zzczq b(zzfer zzferVar) {
        this.f5272c = zzferVar;
        return this;
    }

    /* JADX WARN: Type inference failed for: r6v0, types: [com.google.android.gms.internal.ads.zzdxt, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v0, types: [java.lang.Object, com.google.android.gms.internal.ads.zzena] */
    @Override // com.google.android.gms.internal.ads.zzczq
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public final zzdlv zzh() {
        zzijo.b(zzdgk.class, this.d);
        zzijo.b(zzczt.class, this.e);
        zzijo.b(zzdlq.class, this.f);
        zzijo.b(zzcsz.class, this.g);
        return new zzcmt(this.f5271a, this.g, this.f, new Object(), this.d, this.e, new Object(), this.b, this.f5272c);
    }
}
