package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzcnc implements zzcug {

    /* renamed from: a, reason: collision with root package name */
    public final zzcmv f5289a;
    public zzffn b;

    /* renamed from: c, reason: collision with root package name */
    public zzfer f5290c;
    public zzdgk d;
    public zzczt e;
    public zzeow f;
    public zzcvc g;
    public zzena h;
    public zzcsz i;
    public zzdlq j;

    public /* synthetic */ zzcnc(zzcmv zzcmvVar) {
        this.f5289a = zzcmvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzczq
    public final /* synthetic */ zzczq a(zzffn zzffnVar) {
        this.b = zzffnVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzczq
    public final /* synthetic */ zzczq b(zzfer zzferVar) {
        this.f5290c = zzferVar;
        return this;
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [java.lang.Object, com.google.android.gms.internal.ads.zzena] */
    /* JADX WARN: Type inference failed for: r6v0, types: [com.google.android.gms.internal.ads.zzdxt, java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzczq
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public final zzcuh zzh() {
        zzijo.b(zzdgk.class, this.d);
        zzijo.b(zzczt.class, this.e);
        zzijo.b(zzeow.class, this.f);
        zzijo.b(zzcvc.class, this.g);
        if (this.h == null) {
            this.h = new Object();
        }
        zzijo.b(zzcsz.class, this.i);
        zzijo.b(zzdlq.class, this.j);
        return new zzcnd(this.f5289a, this.i, this.j, new Object(), this.d, this.e, this.h, this.f, this.g, this.b, this.f5290c);
    }
}
