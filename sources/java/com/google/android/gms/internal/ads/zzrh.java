package com.google.android.gms.internal.ads;

import android.media.AudioTrack;

/* loaded from: classes.dex */
final class zzrh {

    /* renamed from: a, reason: collision with root package name */
    public final zzrg f9212a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final zzsf f9213c;
    public int d;
    public long e;
    public long f;
    public long g;
    public long h;
    public long i;

    public zzrh(AudioTrack audioTrack, zzsf zzsfVar) {
        this.f9212a = new zzrg(audioTrack);
        this.b = audioTrack.getSampleRate();
        this.f9213c = zzsfVar;
        a(0);
    }

    public final void a(int i) {
        this.d = i;
        long j = 10000;
        if (i != 0) {
            if (i != 1) {
                if (i != 2 && i != 3) {
                    j = 500000;
                } else {
                    j = 10000000;
                }
            } else {
                this.f = 10000L;
                return;
            }
        } else {
            this.g = 0L;
            this.h = -1L;
            this.i = -9223372036854775807L;
            this.e = System.nanoTime() / 1000;
        }
        this.f = j;
    }
}
