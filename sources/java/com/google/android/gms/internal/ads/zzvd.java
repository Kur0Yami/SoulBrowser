package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Bundle;
import android.view.Surface;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class zzvd implements zzug {

    /* renamed from: a, reason: collision with root package name */
    public final MediaCodec f9312a;
    public final zzuc b;

    public /* synthetic */ zzvd(MediaCodec mediaCodec, zzuc zzucVar) {
        this.f9312a = mediaCodec;
        this.b = zzucVar;
        if (Build.VERSION.SDK_INT >= 35 && zzucVar != null) {
            zzucVar.b(mediaCodec);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzug
    public final void a(Bundle bundle) {
        this.f9312a.setParameters(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzug
    public final void b(Runnable runnable) {
        ((zzun) runnable).run();
    }

    @Override // com.google.android.gms.internal.ads.zzug
    public final void c(Surface surface) {
        this.f9312a.setOutputSurface(surface);
    }

    @Override // com.google.android.gms.internal.ads.zzug
    public final int d(MediaCodec.BufferInfo bufferInfo) {
        int dequeueOutputBuffer;
        do {
            dequeueOutputBuffer = this.f9312a.dequeueOutputBuffer(bufferInfo, 0L);
        } while (dequeueOutputBuffer == -3);
        return dequeueOutputBuffer;
    }

    @Override // com.google.android.gms.internal.ads.zzug
    public final ByteBuffer e(int i) {
        return this.f9312a.getInputBuffer(i);
    }

    @Override // com.google.android.gms.internal.ads.zzug
    public final void f(int i) {
        this.f9312a.setVideoScalingMode(i);
    }

    @Override // com.google.android.gms.internal.ads.zzug
    public final void g(int i, zzie zzieVar, long j, int i2) {
        this.f9312a.queueSecureInputBuffer(i, 0, zzieVar.i, j, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzug
    public final void h(int i, int i2, long j, int i3) {
        this.f9312a.queueInputBuffer(i, 0, i2, j, i3);
    }

    @Override // com.google.android.gms.internal.ads.zzug
    public final /* synthetic */ boolean i(zzuf zzufVar) {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzug
    public final void j(int i, long j) {
        this.f9312a.releaseOutputBuffer(i, j);
    }

    @Override // com.google.android.gms.internal.ads.zzug
    public final ByteBuffer n(int i) {
        return this.f9312a.getOutputBuffer(i);
    }

    @Override // com.google.android.gms.internal.ads.zzug
    public final void zzc(int i) {
        this.f9312a.releaseOutputBuffer(i, false);
    }

    @Override // com.google.android.gms.internal.ads.zzug
    public final int zze() {
        return this.f9312a.dequeueInputBuffer(0L);
    }

    @Override // com.google.android.gms.internal.ads.zzug
    public final MediaFormat zzg() {
        return this.f9312a.getOutputFormat();
    }

    @Override // com.google.android.gms.internal.ads.zzug
    public final void zzk() {
        this.f9312a.flush();
    }

    @Override // com.google.android.gms.internal.ads.zzug
    public final void zzl() {
        zzuc zzucVar = this.b;
        MediaCodec mediaCodec = this.f9312a;
        try {
            int i = Build.VERSION.SDK_INT;
            if (i >= 30 && i < 33) {
                mediaCodec.stop();
            }
            if (i >= 35 && zzucVar != null) {
                zzucVar.c(mediaCodec);
            }
            mediaCodec.release();
        } catch (Throwable th) {
            if (Build.VERSION.SDK_INT >= 35 && zzucVar != null) {
                zzucVar.c(mediaCodec);
            }
            mediaCodec.release();
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzug
    public final void zzo() {
        this.f9312a.detachOutputSurface();
    }
}
