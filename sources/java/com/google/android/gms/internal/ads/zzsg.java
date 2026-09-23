package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import android.os.Build;
import java.lang.reflect.Method;
import java.math.RoundingMode;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzsg {

    /* renamed from: a, reason: collision with root package name */
    public final zzsf f9243a;
    public final zzdn b;

    /* renamed from: c, reason: collision with root package name */
    public final long[] f9244c;
    public final AudioTrack d;
    public final int e;
    public final long f;
    public final boolean g;
    public final zzrh h;
    public final float i;
    public long j;
    public long k;
    public long l;
    public Method m;
    public long n;
    public long o;
    public long p;
    public long q;
    public long r;
    public int s;
    public int t;
    public long u;
    public long v;
    public long w;
    public long x;
    public long y;
    public long z;

    public zzsg(zzsf zzsfVar, zzdn zzdnVar, AudioTrack audioTrack, int i, int i2, int i3) {
        long j;
        this.f9243a = zzsfVar;
        this.b = zzdnVar;
        this.d = audioTrack;
        try {
            this.m = AudioTrack.class.getMethod("getLatency", null);
        } catch (NoSuchMethodException unused) {
        }
        this.f9244c = new long[10];
        this.z = -9223372036854775807L;
        this.y = -9223372036854775807L;
        this.h = new zzrh(audioTrack, zzsfVar);
        int sampleRate = audioTrack.getSampleRate();
        this.e = sampleRate;
        boolean a2 = zzfj.a(i);
        this.g = a2;
        if (a2) {
            j = zzfj.t(sampleRate, i3 / i2);
        } else {
            j = -9223372036854775807L;
        }
        this.f = j;
        this.q = 0L;
        this.r = 0L;
        this.u = -9223372036854775807L;
        this.v = -9223372036854775807L;
        this.o = 0L;
        this.n = 0L;
        this.i = 1.0f;
        this.j = -9223372036854775807L;
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x0308  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0346  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0349  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0370  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x03bc  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0363  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0289  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long a() {
        /*
            Method dump skipped, instructions count: 964
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzsg.a():long");
    }

    public final void b(long j) {
        long j2 = this.j;
        if (j2 != -9223372036854775807L && j >= j2) {
            long j3 = j - j2;
            String str = zzfj.f7405a;
            float f = this.i;
            if (f != 1.0f) {
                j3 = Math.round(j3 / f);
            }
            final long zza = this.b.zza() - zzfj.r(j3);
            this.j = -9223372036854775807L;
            zzrs zzrsVar = (zzrs) this.f9243a;
            zzdy zzdyVar = new zzdy() { // from class: com.google.android.gms.internal.ads.zzrr
                @Override // com.google.android.gms.internal.ads.zzdy
                public final /* synthetic */ void zza(Object obj) {
                    ((zzpx) obj).a(zza);
                }
            };
            zzed zzedVar = zzrsVar.f9225a.h;
            zzedVar.c(-1, zzdyVar);
            zzedVar.d();
        }
    }

    public final long c(long j) {
        long w;
        int i = this.t;
        int i2 = this.e;
        if (i == 0) {
            if (this.u != -9223372036854775807L) {
                w = zzfj.t(i2, e());
            } else {
                w = zzfj.t(i2, d());
            }
        } else {
            w = zzfj.w(j + this.k, this.i);
        }
        long max = Math.max(0L, w - this.n);
        if (this.u != -9223372036854775807L) {
            return Math.min(zzfj.t(i2, this.x), max);
        }
        return max;
    }

    public final long d() {
        if (this.u != -9223372036854775807L) {
            return Math.min(this.x, e());
        }
        long zzb = this.b.zzb();
        if (zzb - this.p >= 5) {
            AudioTrack audioTrack = this.d;
            audioTrack.getClass();
            int playState = audioTrack.getPlayState();
            if (playState != 1) {
                long playbackHeadPosition = audioTrack.getPlaybackHeadPosition() & 4294967295L;
                if (Build.VERSION.SDK_INT <= 29) {
                    if (playbackHeadPosition == 0 && this.q > 0 && playState == 3) {
                        if (this.v == -9223372036854775807L) {
                            this.v = zzb;
                        }
                    } else {
                        this.v = -9223372036854775807L;
                    }
                }
                if (this.q > playbackHeadPosition) {
                    this.r++;
                }
                this.q = playbackHeadPosition;
            }
            this.p = zzb;
        }
        return this.q + (this.r << 32);
    }

    public final long e() {
        if (this.d.getPlayState() == 2) {
            return this.w;
        }
        return this.w + zzfj.u(zzfj.w(zzfj.s(this.b.zzb()) - this.u, this.i), this.e, 1000000L, RoundingMode.UP);
    }
}
