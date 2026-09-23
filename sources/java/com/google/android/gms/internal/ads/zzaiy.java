package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
final class zzaiy implements zzafr {

    /* renamed from: a, reason: collision with root package name */
    public final zzaec f4078a;
    public final SparseArray b;

    /* renamed from: c, reason: collision with root package name */
    public final long f4079c;
    public final int d;

    public zzaiy(SparseArray sparseArray, long j, int i, long j2, long j3) {
        int i2;
        this.b = sparseArray;
        this.f4079c = j;
        this.d = i;
        List list = (List) sparseArray.get(i);
        zzaec zzaecVar = null;
        if (list != null && !list.isEmpty()) {
            int size = list.size();
            int[] iArr = new int[size];
            long[] jArr = new long[size];
            long[] jArr2 = new long[size];
            long[] jArr3 = new long[size];
            int i3 = 0;
            for (int i4 = 0; i4 < size; i4++) {
                zzaix zzaixVar = (zzaix) list.get(i4);
                jArr3[i4] = zzaixVar.f4077c;
                jArr[i4] = zzaixVar.f;
            }
            while (true) {
                i2 = size - 1;
                if (i3 >= i2) {
                    break;
                }
                int i5 = i3 + 1;
                iArr[i3] = (int) (jArr[i5] - jArr[i3]);
                jArr2[i3] = jArr3[i5] - jArr3[i3];
                i3 = i5;
            }
            int i6 = i2;
            while (i6 > 0 && jArr3[i6] >= j) {
                i6--;
            }
            iArr[i6] = (int) ((j2 + j3) - jArr[i6]);
            jArr2[i6] = j - jArr3[i6];
            if (i6 < i2) {
                zzee.c("MatroskaExtractor", "Discarding trailing cue points with timestamps greater than total duration.");
                int i7 = i6 + 1;
                iArr = Arrays.copyOf(iArr, i7);
                jArr = Arrays.copyOf(jArr, i7);
                jArr2 = Arrays.copyOf(jArr2, i7);
                jArr3 = Arrays.copyOf(jArr3, i7);
            }
            zzaecVar = new zzaec(iArr, jArr, jArr2, jArr3);
        }
        this.f4078a = zzaecVar;
    }

    @Override // com.google.android.gms.internal.ads.zzafr
    public final zzafp b(long j) {
        zzaec zzaecVar = this.f4078a;
        if (zzaecVar != null) {
            return zzaecVar.b(j);
        }
        zzafs zzafsVar = zzafs.f3986c;
        return new zzafp(zzafsVar, zzafsVar);
    }

    @Override // com.google.android.gms.internal.ads.zzafr
    public final long zza() {
        return this.f4079c;
    }

    @Override // com.google.android.gms.internal.ads.zzafr
    public final boolean zzb() {
        List list = (List) this.b.get(this.d);
        if (list != null && !list.isEmpty()) {
            return true;
        }
        return false;
    }
}
