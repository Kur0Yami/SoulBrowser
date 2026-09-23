package com.google.android.gms.internal.ads;

import j$.util.Optional;
import java.util.ArrayDeque;

/* loaded from: classes.dex */
public final class zzaug {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayDeque f4421a = new ArrayDeque();

    public final void a(long j, long j2, long j3) {
        int[] iArr = {1857962504, 67802545, 822753858, 1178641841, 1658857550, -1514359837, 393474692, 1520223205, 452867621};
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        int i6 = iArr[5];
        int i7 = iArr[6];
        int i8 = iArr[7];
        zzaud zzaudVar = new zzaud(j, j2, j3);
        ArrayDeque arrayDeque = this.f4421a;
        if (arrayDeque.size() < (a.l((i2 & (~i)) | i3, (i & i4) | i5, i6, i7) ^ (i8 % 452867621))) {
            arrayDeque.push(zzaudVar);
            return;
        }
        throw new Exception();
    }

    public final zzaud b() {
        return (zzaud) Optional.ofNullable((zzaud) this.f4421a.peek()).orElseThrow(zzauc.f);
    }
}
