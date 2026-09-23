package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class zzta extends zzcp {
    public int i;
    public int j;
    public boolean k;
    public int l;
    public byte[] m;
    public int n;
    public long o;

    @Override // com.google.android.gms.internal.ads.zzcp, com.google.android.gms.internal.ads.zzco
    public final long a(long j) {
        return Math.max(0L, j - zzfj.t(this.b.f5231a, this.j + this.i));
    }

    @Override // com.google.android.gms.internal.ads.zzco
    public final void b(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i = limit - position;
        if (i != 0) {
            int min = Math.min(i, this.l);
            this.o += min / this.b.d;
            this.l -= min;
            byteBuffer.position(position + min);
            if (this.l <= 0) {
                int i2 = i - min;
                int length = (this.n + i2) - this.m.length;
                ByteBuffer d = d(length);
                int i3 = this.n;
                String str = zzfj.f7405a;
                int max = Math.max(0, Math.min(length, i3));
                d.put(this.m, 0, max);
                int max2 = Math.max(0, Math.min(length - max, i2));
                byteBuffer.limit(byteBuffer.position() + max2);
                d.put(byteBuffer);
                byteBuffer.limit(limit);
                int i4 = i2 - max2;
                int i5 = this.n - max;
                this.n = i5;
                byte[] bArr = this.m;
                System.arraycopy(bArr, max, bArr, 0, i5);
                byteBuffer.get(this.m, this.n, i4);
                this.n += i4;
                d.flip();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcp
    public final zzcl e(zzcl zzclVar) {
        if (zzfj.a(zzclVar.f5232c)) {
            this.k = true;
            if (this.i == 0 && this.j == 0) {
                return zzcl.e;
            }
            return zzclVar;
        }
        throw new zzcn("Unhandled input format:", zzclVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcp
    public final void f() {
        if (this.k) {
            if (this.n > 0) {
                this.o += r0 / this.b.d;
            }
            this.n = 0;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcp
    public final void g() {
        if (this.k) {
            this.k = false;
            int i = this.j;
            int i2 = this.b.d;
            this.m = new byte[i * i2];
            this.l = this.i * i2;
        }
        this.n = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzcp
    public final void h() {
        this.m = zzfj.b;
    }

    @Override // com.google.android.gms.internal.ads.zzcp, com.google.android.gms.internal.ads.zzco
    public final ByteBuffer zzf() {
        int i;
        if (super.zzg() && (i = this.n) > 0) {
            d(i).put(this.m, 0, this.n).flip();
            this.n = 0;
        }
        return super.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzcp, com.google.android.gms.internal.ads.zzco
    public final boolean zzg() {
        return super.zzg() && this.n == 0;
    }
}
