package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzalb implements zzali {

    /* renamed from: a, reason: collision with root package name */
    public final zzalh f4152a;
    public final long b;

    /* renamed from: c, reason: collision with root package name */
    public final long f4153c;
    public final zzalm d;
    public int e;
    public long f;
    public long g;
    public long h;
    public long i;
    public long j;
    public long k;
    public long l;

    public zzalb(zzalm zzalmVar, long j, long j2, long j3, long j4, boolean z) {
        boolean z2;
        if (j >= 0 && j2 > j) {
            z2 = true;
        } else {
            z2 = false;
        }
        zzgqa.a(z2);
        this.d = zzalmVar;
        this.b = j;
        this.f4153c = j2;
        if (j3 != j2 - j && !z) {
            this.e = 0;
        } else {
            this.f = j4;
            this.e = 4;
        }
        this.f4152a = new zzalh();
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void a(long j) {
        long j2 = this.f - 1;
        String str = zzfj.f7405a;
        this.h = Math.max(0L, Math.min(j, j2));
        this.e = 2;
        this.i = this.b;
        this.j = this.f4153c;
        this.k = 0L;
        this.l = this.f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00c9 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00ca  */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v3, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r3v9 */
    @Override // com.google.android.gms.internal.ads.zzali
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long d(com.google.android.gms.internal.ads.zzaep r28) {
        /*
            Method dump skipped, instructions count: 368
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzalb.d(com.google.android.gms.internal.ads.zzaep):long");
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final /* bridge */ /* synthetic */ zzafr zzc() {
        if (this.f != 0) {
            return new zzala(this);
        }
        return null;
    }
}
