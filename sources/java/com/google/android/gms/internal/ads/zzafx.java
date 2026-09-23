package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzafx extends zzafd {
    public final /* synthetic */ zzafr b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzafy f3990c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzafx(zzafy zzafyVar, zzafr zzafrVar, zzafr zzafrVar2) {
        super(zzafrVar);
        this.b = zzafrVar2;
        this.f3990c = zzafyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzafd, com.google.android.gms.internal.ads.zzafr
    public final zzafp b(long j) {
        zzafp b = this.b.b(j);
        zzafs zzafsVar = b.f3984a;
        long j2 = zzafsVar.f3987a;
        long j3 = zzafsVar.b;
        long j4 = this.f3990c.f3991c;
        zzafs zzafsVar2 = new zzafs(j2, j3 + j4);
        zzafs zzafsVar3 = b.b;
        return new zzafp(zzafsVar2, new zzafs(zzafsVar3.f3987a, zzafsVar3.b + j4));
    }
}
