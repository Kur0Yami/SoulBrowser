package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class zzaec implements zzafr {

    /* renamed from: a, reason: collision with root package name */
    public final int f3945a;
    public final int[] b;

    /* renamed from: c, reason: collision with root package name */
    public final long[] f3946c;
    public final long[] d;
    public final long[] e;
    public final long f;

    public zzaec(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.b = iArr;
        this.f3946c = jArr;
        this.d = jArr2;
        this.e = jArr3;
        int length = iArr.length;
        this.f3945a = length;
        if (length > 0) {
            int i = length - 1;
            this.f = jArr2[i] + jArr3[i];
        } else {
            this.f = 0L;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzafr
    public final zzafp b(long j) {
        long[] jArr = this.e;
        int q = zzfj.q(jArr, j, true);
        long j2 = jArr[q];
        long[] jArr2 = this.f3946c;
        zzafs zzafsVar = new zzafs(j2, jArr2[q]);
        if (j2 < j && q != this.f3945a - 1) {
            int i = q + 1;
            return new zzafp(zzafsVar, new zzafs(jArr[i], jArr2[i]));
        }
        return new zzafp(zzafsVar, zzafsVar);
    }

    public final String toString() {
        String arrays = Arrays.toString(this.b);
        String arrays2 = Arrays.toString(this.f3946c);
        String arrays3 = Arrays.toString(this.e);
        String arrays4 = Arrays.toString(this.d);
        int i = this.f3945a;
        int length = String.valueOf(i).length();
        int length2 = String.valueOf(arrays).length();
        int length3 = String.valueOf(arrays2).length();
        StringBuilder sb = new StringBuilder(length + 26 + length2 + 10 + length3 + 9 + String.valueOf(arrays3).length() + 14 + String.valueOf(arrays4).length() + 1);
        sb.append("ChunkIndex(length=");
        sb.append(i);
        sb.append(", sizes=");
        sb.append(arrays);
        android.support.v4.media.a.z(sb, ", offsets=", arrays2, ", timeUs=", arrays3);
        return android.support.v4.media.a.q(sb, ", durationsUs=", arrays4, ")");
    }

    @Override // com.google.android.gms.internal.ads.zzafr
    public final long zza() {
        return this.f;
    }

    @Override // com.google.android.gms.internal.ads.zzafr
    public final boolean zzb() {
        return true;
    }
}
