package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.InterruptedIOException;
import java.util.Arrays;
import kotlin.io.ConstantsKt;

/* loaded from: classes.dex */
public final class zzaef implements zzaep {
    public final zzj b;

    /* renamed from: c, reason: collision with root package name */
    public final long f3951c;
    public long d;
    public int f;
    public int g;
    public byte[] e = new byte[65536];

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f3950a = new byte[ConstantsKt.DEFAULT_BLOCK_SIZE];

    static {
        zzal.a("media3.extractor");
    }

    public zzaef(zzj zzjVar, long j, long j2) {
        this.b = zzjVar;
        this.d = j;
        this.f3951c = j2;
    }

    @Override // com.google.android.gms.internal.ads.zzj
    public final int b(byte[] bArr, int i, int i2) {
        zzaef zzaefVar;
        int i3 = this.g;
        int i4 = 0;
        if (i3 != 0) {
            int min = Math.min(i3, i2);
            System.arraycopy(this.e, 0, bArr, i, min);
            g(min);
            i4 = min;
        }
        if (i4 == 0) {
            zzaefVar = this;
            i4 = zzaefVar.n(bArr, i, i2, 0, true);
        } else {
            zzaefVar = this;
        }
        if (i4 != -1) {
            zzaefVar.d += i4;
        }
        return i4;
    }

    public final boolean d(int i, boolean z) {
        int min = Math.min(this.g, i);
        g(min);
        int i2 = min;
        while (i2 < i && i2 != -1) {
            i2 = n(this.f3950a, -i2, Math.min(i, i2 + ConstantsKt.DEFAULT_BLOCK_SIZE), i2, z);
        }
        if (i2 != -1) {
            this.d += i2;
        }
        if (i2 != -1) {
            return true;
        }
        return false;
    }

    public final boolean e(int i, boolean z) {
        f(i);
        int i2 = this.g - this.f;
        while (i2 < i) {
            int i3 = i;
            boolean z2 = z;
            i2 = n(this.e, this.f, i3, i2, z2);
            if (i2 == -1) {
                return false;
            }
            this.g = this.f + i2;
            i = i3;
            z = z2;
        }
        this.f += i;
        return true;
    }

    public final void f(int i) {
        int i2 = this.f + i;
        int length = this.e.length;
        if (i2 > length) {
            String str = zzfj.f7405a;
            this.e = Arrays.copyOf(this.e, Math.max(65536 + i2, Math.min(length + length, i2 + 524288)));
        }
    }

    public final void g(int i) {
        byte[] bArr;
        int i2 = this.g - i;
        this.g = i2;
        this.f = 0;
        byte[] bArr2 = this.e;
        if (i2 < bArr2.length - 524288) {
            bArr = new byte[65536 + i2];
        } else {
            bArr = bArr2;
        }
        System.arraycopy(bArr2, i, bArr, 0, i2);
        this.e = bArr;
    }

    @Override // com.google.android.gms.internal.ads.zzaep
    public final void h(int i) {
        e(i, false);
    }

    @Override // com.google.android.gms.internal.ads.zzaep
    public final void i(byte[] bArr, int i, int i2) {
        k(bArr, i, i2, false);
    }

    @Override // com.google.android.gms.internal.ads.zzaep
    public final void j(byte[] bArr, int i, int i2) {
        m(bArr, i, i2, false);
    }

    @Override // com.google.android.gms.internal.ads.zzaep
    public final boolean k(byte[] bArr, int i, int i2, boolean z) {
        int min;
        int i3 = this.g;
        if (i3 == 0) {
            min = 0;
        } else {
            min = Math.min(i3, i2);
            System.arraycopy(this.e, 0, bArr, i, min);
            g(min);
        }
        int i4 = min;
        while (i4 < i2 && i4 != -1) {
            i4 = n(bArr, i, i2, i4, z);
        }
        if (i4 != -1) {
            this.d += i4;
        }
        if (i4 == -1) {
            return false;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzaep
    public final int l(byte[] bArr, int i, int i2) {
        zzaef zzaefVar;
        int min;
        f(i2);
        int i3 = this.g;
        int i4 = this.f;
        int i5 = i3 - i4;
        if (i5 == 0) {
            zzaefVar = this;
            min = zzaefVar.n(this.e, i4, i2, 0, true);
            if (min == -1) {
                return -1;
            }
            zzaefVar.g += min;
        } else {
            zzaefVar = this;
            min = Math.min(i2, i5);
        }
        System.arraycopy(zzaefVar.e, zzaefVar.f, bArr, i, min);
        zzaefVar.f += min;
        return min;
    }

    @Override // com.google.android.gms.internal.ads.zzaep
    public final boolean m(byte[] bArr, int i, int i2, boolean z) {
        if (!e(i2, z)) {
            return false;
        }
        System.arraycopy(this.e, this.f - i2, bArr, i, i2);
        return true;
    }

    public final int n(byte[] bArr, int i, int i2, int i3, boolean z) {
        if (!Thread.interrupted()) {
            int b = this.b.b(bArr, i + i3, i2 - i3);
            if (b == -1) {
                if (i3 == 0 && z) {
                    return -1;
                }
                throw new EOFException();
            }
            return i3 + b;
        }
        throw new InterruptedIOException();
    }

    @Override // com.google.android.gms.internal.ads.zzaep
    public final int zzd() {
        zzaef zzaefVar;
        int min = Math.min(this.g, 1);
        g(min);
        if (min == 0) {
            zzaefVar = this;
            min = zzaefVar.n(this.f3950a, 0, Math.min(1, ConstantsKt.DEFAULT_BLOCK_SIZE), 0, true);
        } else {
            zzaefVar = this;
        }
        if (min != -1) {
            zzaefVar.d += min;
        }
        return min;
    }

    @Override // com.google.android.gms.internal.ads.zzaep
    public final void zzf(int i) {
        d(i, false);
    }

    @Override // com.google.android.gms.internal.ads.zzaep
    public final void zzl() {
        this.f = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzaep
    public final long zzm() {
        return this.d + this.f;
    }

    @Override // com.google.android.gms.internal.ads.zzaep
    public final long zzn() {
        return this.d;
    }

    @Override // com.google.android.gms.internal.ads.zzaep
    public final long zzo() {
        return this.f3951c;
    }
}
