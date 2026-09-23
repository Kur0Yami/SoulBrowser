package com.google.android.gms.internal.ads;

import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;

/* loaded from: classes.dex */
public final class zzaub {

    /* renamed from: a, reason: collision with root package name */
    public int f4416a;
    public zzatw b;

    /* renamed from: c, reason: collision with root package name */
    public zzatk f4417c;
    public zzatn d;

    public zzaub(zzatw zzatwVar, int i, zzatk zzatkVar) {
        this.b = zzatwVar;
        this.f4416a = i;
        this.f4417c = zzatkVar;
    }

    public static final void g(long j) {
        long[] jArr = {141540322, 456640674, 1141397064, 993500330, 1614820873, 3337980909L, 410218731, 1716462158, 477127367};
        long j2 = jArr[0];
        long j3 = jArr[1];
        long j4 = jArr[2];
        long j5 = jArr[3];
        long j6 = jArr[4];
        long j7 = jArr[5];
        if (j % (((((((~j2) & j3) | j4) + ((j2 & j5) | j6)) - j7) + jArr[6]) ^ (jArr[7] % 477127367)) == 0) {
        } else {
            throw new Exception();
        }
    }

    public final void a(long j) {
        long[] jArr = {2139842053, 728564241, 750932242, 1403848321, 1892818418, 4558981222L, 1919655804, 1856374729, 899334107};
        long j2 = jArr[0];
        long j3 = jArr[1];
        long j4 = jArr[2];
        long j5 = jArr[3];
        long j6 = jArr[4];
        long j7 = jArr[5];
        long j8 = jArr[6];
        long j9 = jArr[7];
        g(j);
        long j10 = j / (((((((~j2) & j3) | j4) + ((j2 & j5) | j6)) - j7) + j8) ^ (j9 % 899334107));
        if (j10 >= 0 && j10 <= this.b.f4413a.length) {
            this.f4416a = (int) j10;
            return;
        }
        throw new Exception();
    }

    public final long b() {
        long[] jArr = {491705403, 818579170, 1201981453, 810223590, 1243973916, 3701563257L, 554701476, 1889947178, 1780695788};
        long j = jArr[0];
        long j2 = jArr[1];
        long j3 = jArr[2];
        long j4 = jArr[3];
        long j5 = jArr[4];
        return this.f4416a * (((((((~j) & j2) | j3) + ((j & j4) | j5)) - jArr[5]) + jArr[6]) ^ (jArr[7] % 1780695788));
    }

    public final long c() {
        try {
            zzatk zzatkVar = this.f4417c;
            zzatw zzatwVar = this.b;
            this.f4416a = this.f4416a + 1;
            return zzatkVar.a(zzatwVar, r2);
        } catch (IndexOutOfBoundsException e) {
            throw new Exception(e);
        }
    }

    public final int d() {
        try {
            zzatk zzatkVar = this.f4417c;
            zzatw zzatwVar = this.b;
            int i = this.f4416a;
            this.f4416a = i + 1;
            int a2 = zzatkVar.a(zzatwVar, i) & UByte.MAX_VALUE;
            zzatk zzatkVar2 = this.f4417c;
            zzatw zzatwVar2 = this.b;
            int i2 = this.f4416a;
            this.f4416a = i2 + 1;
            int a3 = a2 | ((zzatkVar2.a(zzatwVar2, i2) & UByte.MAX_VALUE) << 8);
            zzatk zzatkVar3 = this.f4417c;
            zzatw zzatwVar3 = this.b;
            int i3 = this.f4416a;
            this.f4416a = i3 + 1;
            int a4 = a3 | ((zzatkVar3.a(zzatwVar3, i3) & UByte.MAX_VALUE) << 16);
            zzatk zzatkVar4 = this.f4417c;
            zzatw zzatwVar4 = this.b;
            int i4 = this.f4416a;
            this.f4416a = i4 + 1;
            return a4 | (zzatkVar4.a(zzatwVar4, i4) << 24);
        } catch (IndexOutOfBoundsException e) {
            throw new Exception(e);
        }
    }

    public final long e() {
        int i = 0;
        long j = 0;
        while (i < 64) {
            try {
                zzatk zzatkVar = this.f4417c;
                zzatw zzatwVar = this.b;
                int i2 = this.f4416a;
                this.f4416a = i2 + 1;
                byte a2 = zzatkVar.a(zzatwVar, i2);
                j |= (a2 & ByteCompanionObject.MAX_VALUE) << i;
                if (i == 63) {
                    if (a2 <= 1) {
                        i = 63;
                    } else {
                        throw new Exception();
                    }
                }
                if ((a2 & ByteCompanionObject.MIN_VALUE) == 0) {
                    return (-(j & 1)) ^ (j >>> 1);
                }
                i += 7;
            } catch (IndexOutOfBoundsException e) {
                throw new Exception(e);
            }
        }
        throw new Exception();
    }

    public final zzatw f(long j) {
        int[] iArr = {1667674495, 1502201381, 1197125461, 478240810, 622476187, -1652496091, 840440151, 1203013321, 774318984};
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        int i6 = iArr[5];
        int i7 = iArr[6];
        int i8 = iArr[7];
        int l = a.l((i2 & (~i)) | i3, (i & i4) | i5, i6, i7);
        g(b() + j);
        int i9 = this.f4416a;
        long j2 = i9;
        zzatw zzatwVar = this.b;
        long j3 = (j >> ((i8 % 774318984) ^ l)) + j2;
        if (j3 <= zzatwVar.f4413a.length && j3 >= j2) {
            try {
                int i10 = (int) j3;
                zzatw b = this.f4417c.b(zzatwVar, i9, i10);
                this.f4416a = i10;
                return b;
            } catch (IndexOutOfBoundsException e) {
                throw new AssertionError(zzatu.a("CEiv6BFfPnitUE+D"), e);
            }
        }
        throw new Exception();
    }
}
