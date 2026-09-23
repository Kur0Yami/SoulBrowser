package com.google.android.gms.internal.ads;

import android.support.v4.media.session.PlaybackStateCompat;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes.dex */
public final class zzcu implements zzco {
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public float f5473c;
    public float d;
    public zzcl e;
    public zzcl f;
    public zzcl g;
    public zzcl h;
    public boolean i;
    public zzct j;
    public ByteBuffer k;
    public ByteBuffer l;
    public long m;
    public long n;
    public boolean o;

    @Override // com.google.android.gms.internal.ads.zzco
    public final long a(long j) {
        if (this.n >= PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) {
            long j2 = this.m;
            this.j.getClass();
            long zza = j2 - ((r2.j * r2.b) * r2.i.zza());
            int i = this.h.f5231a;
            int i2 = this.g.f5231a;
            if (i == i2) {
                return zzfj.u(j, this.n, zza, RoundingMode.DOWN);
            }
            return zzfj.u(j, this.n * i2, zza * i, RoundingMode.DOWN);
        }
        return (long) (j / this.f5473c);
    }

    @Override // com.google.android.gms.internal.ads.zzco
    public final void b(ByteBuffer byteBuffer) {
        if (!byteBuffer.hasRemaining()) {
            return;
        }
        zzct zzctVar = this.j;
        zzctVar.getClass();
        this.m += byteBuffer.remaining();
        zzcr zzcrVar = zzctVar.i;
        int remaining = byteBuffer.remaining();
        int zza = remaining / (zzctVar.b * zzcrVar.zza());
        zzcrVar.n(zza);
        zzcrVar.k(byteBuffer, remaining);
        zzctVar.j += zza;
        zzctVar.b();
    }

    @Override // com.google.android.gms.internal.ads.zzco
    public final zzcl c(zzcl zzclVar) {
        int i = zzclVar.f5232c;
        if (i != 2 && i != 4) {
            throw new zzcn("Unhandled input format:", zzclVar);
        }
        int i2 = this.b;
        if (i2 == -1) {
            i2 = zzclVar.f5231a;
        }
        this.e = zzclVar;
        zzcl zzclVar2 = new zzcl(i2, zzclVar.b, i);
        this.f = zzclVar2;
        this.i = true;
        return zzclVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzco
    public final boolean zzc() {
        if (this.f.f5231a != -1) {
            if (Math.abs(this.f5473c - 1.0f) >= 1.0E-4f || Math.abs(this.d - 1.0f) >= 1.0E-4f || this.f.f5231a != this.e.f5231a) {
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzco
    public final void zze() {
        zzct zzctVar = this.j;
        if (zzctVar != null) {
            int i = zzctVar.j;
            int i2 = zzctVar.o;
            int i3 = zzctVar.k;
            float f = zzctVar.f5445c;
            float f2 = zzctVar.d;
            int i4 = i3 + ((int) (((((((i - i2) / (f / f2)) + i2) + zzctVar.q) + zzctVar.l) / (zzctVar.e * f2)) + 0.5d));
            zzctVar.q = 0.0d;
            int i5 = zzctVar.h;
            int i6 = i5 + i5;
            zzcr zzcrVar = zzctVar.i;
            zzcrVar.n(i + i6);
            zzcrVar.e(i * zzctVar.b, i6);
            zzctVar.j += i6;
            zzctVar.b();
            if (zzctVar.k > i4) {
                zzctVar.k = Math.max(i4, 0);
            }
            zzctVar.j = 0;
            zzctVar.o = 0;
            zzctVar.l = 0;
        }
        this.o = true;
    }

    @Override // com.google.android.gms.internal.ads.zzco
    public final ByteBuffer zzf() {
        boolean z;
        zzct zzctVar = this.j;
        if (zzctVar != null) {
            zzcr zzcrVar = zzctVar.i;
            int i = zzctVar.b;
            boolean z2 = true;
            if (zzctVar.k >= 0) {
                z = true;
            } else {
                z = false;
            }
            zzgqa.f(z);
            int zza = zzctVar.k * i * zzcrVar.zza();
            if (zza > 0) {
                if (this.k.capacity() < zza) {
                    this.k = ByteBuffer.allocateDirect(zza).order(ByteOrder.nativeOrder());
                } else {
                    this.k.clear();
                }
                ByteBuffer byteBuffer = this.k;
                if (zzctVar.k < 0) {
                    z2 = false;
                }
                zzgqa.f(z2);
                int min = Math.min(byteBuffer.remaining() / (zzcrVar.zza() * i), zzctVar.k);
                zzcrVar.j(byteBuffer, min);
                zzctVar.k -= min;
                System.arraycopy(zzcrVar.zzq(), min * i, zzcrVar.zzq(), 0, zzctVar.k * i);
                this.k.flip();
                this.n += zza;
                this.l = this.k;
            }
        }
        ByteBuffer byteBuffer2 = this.l;
        this.l = zzco.f5330a;
        return byteBuffer2;
    }

    @Override // com.google.android.gms.internal.ads.zzco
    public final boolean zzg() {
        boolean z;
        if (this.o) {
            zzct zzctVar = this.j;
            if (zzctVar != null) {
                if (zzctVar.k >= 0) {
                    z = true;
                } else {
                    z = false;
                }
                zzgqa.f(z);
                if (zzctVar.k * zzctVar.b * zzctVar.i.zza() != 0) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzco
    public final void zzi() {
        boolean z;
        if (zzc()) {
            zzcl zzclVar = this.e;
            this.g = zzclVar;
            zzcl zzclVar2 = this.f;
            this.h = zzclVar2;
            if (this.i) {
                int i = zzclVar.f5231a;
                int i2 = zzclVar.b;
                float f = this.f5473c;
                float f2 = this.d;
                int i3 = zzclVar2.f5231a;
                if (zzclVar.f5232c == 4) {
                    z = true;
                } else {
                    z = false;
                }
                this.j = new zzct(i, i2, f, f2, i3, z);
            } else {
                zzct zzctVar = this.j;
                if (zzctVar != null) {
                    zzctVar.j = 0;
                    zzctVar.k = 0;
                    zzctVar.l = 0;
                    zzctVar.m = 0;
                    zzctVar.n = 0;
                    zzctVar.o = 0;
                    zzctVar.p = 0;
                    zzctVar.q = 0.0d;
                    zzctVar.i.zzg();
                }
            }
        }
        this.l = zzco.f5330a;
        this.m = 0L;
        this.n = 0L;
        this.o = false;
    }

    @Override // com.google.android.gms.internal.ads.zzco
    public final void zzj() {
        this.f5473c = 1.0f;
        this.d = 1.0f;
        zzcl zzclVar = zzcl.e;
        this.e = zzclVar;
        this.f = zzclVar;
        this.g = zzclVar;
        this.h = zzclVar;
        ByteBuffer byteBuffer = zzco.f5330a;
        this.k = byteBuffer;
        this.l = byteBuffer;
        this.b = -1;
        this.i = false;
        this.j = null;
        this.m = 0L;
        this.n = 0L;
        this.o = false;
    }
}
