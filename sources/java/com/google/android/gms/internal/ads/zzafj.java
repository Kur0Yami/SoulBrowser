package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzafj implements zzafr {

    /* renamed from: a, reason: collision with root package name */
    public final zzef f3977a;
    public final zzef b;

    /* renamed from: c, reason: collision with root package name */
    public final long f3978c;

    public zzafj(long j, long[] jArr, long[] jArr2) {
        boolean z;
        int length = jArr.length;
        int length2 = jArr2.length;
        if (length == length2) {
            z = true;
        } else {
            z = false;
        }
        zzgqa.a(z);
        if (length2 > 0 && jArr2[0] > 0) {
            int i = length2 + 1;
            zzef zzefVar = new zzef(i);
            this.f3977a = zzefVar;
            zzef zzefVar2 = new zzef(i);
            this.b = zzefVar2;
            zzefVar.a();
            zzefVar2.a();
        } else {
            this.f3977a = new zzef(length2);
            this.b = new zzef(length2);
        }
        this.f3977a.b(jArr);
        this.b.b(jArr2);
        this.f3978c = j;
    }

    @Override // com.google.android.gms.internal.ads.zzafr
    public final zzafp b(long j) {
        zzef zzefVar = this.b;
        int i = zzefVar.f6437a;
        if (i == 0) {
            zzafs zzafsVar = zzafs.f3986c;
            return new zzafp(zzafsVar, zzafsVar);
        }
        String str = zzfj.f7405a;
        int i2 = i - 1;
        int i3 = 0;
        int i4 = 0;
        while (i4 <= i2) {
            int i5 = (i4 + i2) >>> 1;
            if (zzefVar.c(i5) < j) {
                i4 = i5 + 1;
            } else {
                i2 = i5 - 1;
            }
        }
        int i6 = i2 + 1;
        if (i6 < zzefVar.f6437a && zzefVar.c(i6) == j) {
            i3 = i6;
        } else if (i2 != -1) {
            i3 = i2;
        }
        long c2 = zzefVar.c(i3);
        zzef zzefVar2 = this.f3977a;
        zzafs zzafsVar2 = new zzafs(c2, zzefVar2.c(i3));
        if (c2 != j && i3 != zzefVar.f6437a - 1) {
            int i7 = i3 + 1;
            return new zzafp(zzafsVar2, new zzafs(zzefVar.c(i7), zzefVar2.c(i7)));
        }
        return new zzafp(zzafsVar2, zzafsVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzafr
    public final long zza() {
        return this.f3978c;
    }

    @Override // com.google.android.gms.internal.ads.zzafr
    public final boolean zzb() {
        if (this.b.f6437a > 0) {
            return true;
        }
        return false;
    }
}
