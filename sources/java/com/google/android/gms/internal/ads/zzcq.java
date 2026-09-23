package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.util.Arrays;

/* loaded from: classes.dex */
final class zzcq implements zzcr {

    /* renamed from: a, reason: collision with root package name */
    public final float[] f5363a;
    public float[] b;

    /* renamed from: c, reason: collision with root package name */
    public float[] f5364c;
    public float[] d;
    public double e;
    public double f;
    public double g;
    public final /* synthetic */ zzct h;

    public zzcq(zzct zzctVar) {
        this.h = zzctVar;
        int i = zzctVar.h;
        this.f5363a = new float[i];
        int i2 = i * zzctVar.b;
        this.b = new float[i2];
        this.f5364c = new float[i2];
        this.d = new float[i2];
    }

    public final int a(int i, int i2, int i3, float[] fArr) {
        int i4 = 255;
        int i5 = 0;
        double d = 0.0d;
        double d2 = 1.0d;
        int i6 = i2;
        while (true) {
            double d3 = i4;
            double d4 = i5;
            if (i6 <= i3) {
                int i7 = 0;
                double d5 = 0.0d;
                while (i7 < i6) {
                    int i8 = this.h.b * i;
                    d5 += Math.abs(fArr[i8 + i7] - fArr[(i8 + i6) + i7]);
                    i7++;
                    i4 = i4;
                }
                int i9 = i4;
                double d6 = d4 * d5;
                double d7 = i6;
                double d8 = d2 * d7;
                if (d6 < d8) {
                    d2 = d5;
                }
                if (d6 < d8) {
                    i5 = i6;
                }
                double d9 = d3 * d5;
                double d10 = d7 * d;
                if (d9 > d10) {
                    d = d5;
                }
                if (d9 > d10) {
                    i4 = i6;
                } else {
                    i4 = i9;
                }
                i6++;
            } else {
                this.e = d2 / d4;
                this.f = d / d3;
                return i5;
            }
        }
    }

    public final float[] b(float[] fArr, int i, int i2) {
        int length = fArr.length;
        int i3 = this.h.b;
        int i4 = length / i3;
        if (i + i2 <= i4) {
            return fArr;
        }
        return Arrays.copyOf(fArr, (((i4 * 3) / 2) + i2) * i3);
    }

    @Override // com.google.android.gms.internal.ads.zzcr
    public final void d(int i, int i2) {
        int i3;
        int i4 = 0;
        while (true) {
            zzct zzctVar = this.h;
            if (i4 < zzctVar.h / i2) {
                double d = 0.0d;
                int i5 = 0;
                while (true) {
                    i3 = zzctVar.b * i2;
                    if (i5 < i3) {
                        d += this.b[(i3 * i4) + (r6 * i) + i5];
                        i5++;
                    }
                }
                this.f5363a[i4] = (float) (d / i3);
                i4++;
            } else {
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcr
    public final void e(int i, int i2) {
        for (int i3 = 0; i3 < this.h.b * i2; i3++) {
            this.b[i + i3] = 0.0f;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcr
    public final int f(int i, int i2) {
        return a(0, i, i2, this.f5363a);
    }

    @Override // com.google.android.gms.internal.ads.zzcr
    public final int g(int i, int i2, int i3) {
        return a(i, i2, i3, this.b);
    }

    @Override // com.google.android.gms.internal.ads.zzcr
    public final void h(int i) {
        this.f5364c = b(this.f5364c, this.h.k, i);
    }

    @Override // com.google.android.gms.internal.ads.zzcr
    public final void i(int i) {
        this.d = b(this.d, this.h.l, i);
    }

    @Override // com.google.android.gms.internal.ads.zzcr
    public final void j(ByteBuffer byteBuffer, int i) {
        zzct zzctVar = this.h;
        byteBuffer.asFloatBuffer().put(this.f5364c, 0, zzctVar.b * i);
        byteBuffer.position((i * 4 * zzctVar.b) + byteBuffer.position());
    }

    @Override // com.google.android.gms.internal.ads.zzcr
    public final void k(ByteBuffer byteBuffer, int i) {
        zzct zzctVar = this.h;
        byteBuffer.asFloatBuffer().get(this.b, zzctVar.j * zzctVar.b, i / 4);
        byteBuffer.position(byteBuffer.position() + i);
    }

    @Override // com.google.android.gms.internal.ads.zzcr
    public final void l(int i, int i2, int i3, int i4, int i5) {
        float[] fArr = this.f5364c;
        float[] fArr2 = this.b;
        for (int i6 = 0; i6 < i2; i6++) {
            int i7 = (i4 * i2) + i6;
            int i8 = (i5 * i2) + i6;
            int i9 = (i3 * i2) + i6;
            for (int i10 = 0; i10 < i; i10++) {
                fArr[i9] = ((fArr2[i8] * i10) + (fArr2[i7] * (i - i10))) / i;
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
                float[] fArr = this.f5364c;
                int i4 = zzctVar.k;
                float[] fArr2 = this.d;
                int i5 = (i * i3) + i2;
                float f = fArr2[i5];
                float f2 = fArr2[i5 + i3];
                long j3 = zzctVar.n * j;
                long j4 = (r1 + 1) * j2;
                long j5 = j4 - j3;
                long j6 = j4 - (zzctVar.m * j2);
                fArr[(i4 * i3) + i2] = ((((float) j5) * f) + (((float) (j6 - j5)) * f2)) / ((float) j6);
                i2++;
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
        return 4;
    }

    @Override // com.google.android.gms.internal.ads.zzcr
    public final boolean zzc() {
        double d = this.e;
        if (d == 0.0d || this.h.p == 0 || this.f > d * 3.0d || d + d <= this.g * 3.0d) {
            return false;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzcr
    public final void zzg() {
        this.g = 0.0d;
        this.e = 0.0d;
        this.f = 0.0d;
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
        return this.f5364c;
    }

    @Override // com.google.android.gms.internal.ads.zzcr
    public final /* synthetic */ Object zzr() {
        return this.b;
    }
}
