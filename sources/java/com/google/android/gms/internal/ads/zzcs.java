package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.util.Arrays;
import kotlin.KotlinVersion;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzcs implements zzcr {

    /* renamed from: a, reason: collision with root package name */
    public final short[] f5424a;
    public short[] b;

    /* renamed from: c, reason: collision with root package name */
    public short[] f5425c;
    public short[] d;
    public int e;
    public int f;
    public int g;
    public final /* synthetic */ zzct h;

    public zzcs(zzct zzctVar) {
        this.h = zzctVar;
        int i = zzctVar.h;
        this.f5424a = new short[i];
        int i2 = i * zzctVar.b;
        this.b = new short[i2];
        this.f5425c = new short[i2];
        this.d = new short[i2];
    }

    public final int a(short[] sArr, int i, int i2, int i3) {
        int i4 = 1;
        int i5 = KotlinVersion.MAX_COMPONENT_VALUE;
        int i6 = 0;
        int i7 = 0;
        while (i2 <= i3) {
            int i8 = 0;
            for (int i9 = 0; i9 < i2; i9++) {
                int i10 = this.h.b * i;
                i8 += Math.abs(sArr[i10 + i9] - sArr[(i10 + i2) + i9]);
            }
            int i11 = i8 * i6;
            int i12 = i4 * i2;
            if (i11 < i12) {
                i4 = i8;
            }
            if (i11 < i12) {
                i6 = i2;
            }
            int i13 = i8 * i5;
            int i14 = i7 * i2;
            if (i13 > i14) {
                i7 = i8;
            }
            if (i13 > i14) {
                i5 = i2;
            }
            i2++;
        }
        this.e = i4 / i6;
        this.f = i7 / i5;
        return i6;
    }

    public final short[] b(short[] sArr, int i, int i2) {
        int length = sArr.length;
        int i3 = this.h.b;
        int i4 = length / i3;
        if (i + i2 <= i4) {
            return sArr;
        }
        return Arrays.copyOf(sArr, (((i4 * 3) / 2) + i2) * i3);
    }

    @Override // com.google.android.gms.internal.ads.zzcr
    public final void d(int i, int i2) {
        int i3;
        short[] sArr = this.b;
        int i4 = 0;
        while (true) {
            zzct zzctVar = this.h;
            if (i4 < zzctVar.h / i2) {
                int i5 = 0;
                int i6 = 0;
                while (true) {
                    int i7 = zzctVar.b;
                    i3 = i7 * i2;
                    if (i5 < i3) {
                        i6 += sArr[(i3 * i4) + (i7 * i) + i5];
                        i5++;
                    }
                }
                this.f5424a[i4] = (short) (i6 / i3);
                i4++;
            } else {
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcr
    public final void e(int i, int i2) {
        for (int i3 = 0; i3 < this.h.b * i2; i3++) {
            this.b[i + i3] = 0;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcr
    public final int f(int i, int i2) {
        return a(this.f5424a, 0, i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzcr
    public final int g(int i, int i2, int i3) {
        return a(this.b, i, i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.zzcr
    public final void h(int i) {
        this.f5425c = b(this.f5425c, this.h.k, i);
    }

    @Override // com.google.android.gms.internal.ads.zzcr
    public final void i(int i) {
        this.d = b(this.d, this.h.l, i);
    }

    @Override // com.google.android.gms.internal.ads.zzcr
    public final void j(ByteBuffer byteBuffer, int i) {
        zzct zzctVar = this.h;
        byteBuffer.asShortBuffer().put(this.f5425c, 0, zzctVar.b * i);
        byteBuffer.position(((i + i) * zzctVar.b) + byteBuffer.position());
    }

    @Override // com.google.android.gms.internal.ads.zzcr
    public final void k(ByteBuffer byteBuffer, int i) {
        zzct zzctVar = this.h;
        byteBuffer.asShortBuffer().get(this.b, zzctVar.j * zzctVar.b, i / 2);
        byteBuffer.position(byteBuffer.position() + i);
    }

    @Override // com.google.android.gms.internal.ads.zzcr
    public final void l(int i, int i2, int i3, int i4, int i5) {
        short[] sArr = this.f5425c;
        short[] sArr2 = this.b;
        for (int i6 = 0; i6 < i2; i6++) {
            int i7 = (i4 * i2) + i6;
            int i8 = (i5 * i2) + i6;
            int i9 = (i3 * i2) + i6;
            for (int i10 = 0; i10 < i; i10++) {
                sArr[i9] = (short) (((sArr2[i8] * i10) + ((i - i10) * sArr2[i7])) / i);
                i9 += i2;
                i7 += i2;
                i8 += i2;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcr
    public final void m(long j, long j2, int i) {
        int i2 = 0;
        while (true) {
            zzct zzctVar = this.h;
            int i3 = zzctVar.b;
            if (i2 < i3) {
                short[] sArr = this.f5425c;
                int i4 = zzctVar.k;
                short[] sArr2 = this.d;
                int i5 = (i * i3) + i2;
                short s = sArr2[i5];
                short s2 = sArr2[i5 + i3];
                long j3 = zzctVar.n * j;
                long j4 = zzctVar.m * j2;
                long j5 = (r2 + 1) * j2;
                int i6 = i2;
                long j6 = j5 - j4;
                long j7 = j5 - j3;
                sArr[(i4 * i3) + i6] = (short) ((((j6 - j7) * s2) + (j7 * s)) / j6);
                i2 = i6 + 1;
            } else {
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcr
    public final void n(int i) {
        this.b = b(this.b, this.h.j, i);
    }

    @Override // com.google.android.gms.internal.ads.zzcr
    public final int zza() {
        return 2;
    }

    @Override // com.google.android.gms.internal.ads.zzcr
    public final boolean zzc() {
        int i = this.e;
        if (i == 0 || this.h.p == 0 || this.f > i * 3 || i + i <= this.g * 3) {
            return false;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzcr
    public final void zzg() {
        this.g = 0;
        this.e = 0;
        this.f = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzcr
    public final void zzi() {
        this.g = this.e;
    }

    @Override // com.google.android.gms.internal.ads.zzcr
    public final /* synthetic */ Object zzp() {
        return this.d;
    }

    @Override // com.google.android.gms.internal.ads.zzcr
    public final /* synthetic */ Object zzq() {
        return this.f5425c;
    }

    @Override // com.google.android.gms.internal.ads.zzcr
    public final /* synthetic */ Object zzr() {
        return this.b;
    }
}
