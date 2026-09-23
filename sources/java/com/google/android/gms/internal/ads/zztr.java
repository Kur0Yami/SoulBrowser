package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Trace;
import android.view.Surface;
import java.nio.ByteBuffer;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zztr implements zzug {

    /* renamed from: a, reason: collision with root package name */
    public final MediaCodec f9277a;
    public final zztw b;

    /* renamed from: c, reason: collision with root package name */
    public final zztu f9278c;
    public final zzuc d;
    public boolean e;
    public int f = 0;

    public /* synthetic */ zztr(MediaCodec mediaCodec, HandlerThread handlerThread, zztu zztuVar, zzuc zzucVar) {
        this.f9277a = mediaCodec;
        this.b = new zztw(handlerThread);
        this.f9278c = zztuVar;
        this.d = zzucVar;
    }

    public static String l(int i, String str) {
        StringBuilder sb = new StringBuilder(str);
        if (i == 1) {
            sb.append("Audio");
        } else if (i == 2) {
            sb.append("Video");
        } else {
            sb.append("Unknown(");
            sb.append(i);
            sb.append(")");
        }
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzug
    public final void a(Bundle bundle) {
        zztu zztuVar = this.f9278c;
        zztuVar.c();
        Handler handler = zztuVar.f9283c;
        String str = zzfj.f7405a;
        handler.obtainMessage(4, bundle).sendToTarget();
    }

    @Override // com.google.android.gms.internal.ads.zzug
    public final void b(final Runnable runnable) {
        Runnable runnable2 = new Runnable() { // from class: com.google.android.gms.internal.ads.zztn
            @Override // java.lang.Runnable
            public final void run() {
                zztr zztrVar = zztr.this;
                Runnable runnable3 = runnable;
                zztrVar.f9278c.c();
                zztw zztwVar = zztrVar.b;
                synchronized (zztwVar.f9285a) {
                    zztwVar.b();
                    ((zzun) runnable3).run();
                }
            }
        };
        zztw zztwVar = this.b;
        synchronized (zztwVar.f9285a) {
            zztwVar.b();
            runnable2.run();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzug
    public final void c(Surface surface) {
        this.f9277a.setOutputSurface(surface);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0022 A[Catch: all -> 0x0024, DONT_GENERATE, TryCatch #0 {all -> 0x0024, blocks: (B:4:0x000a, B:6:0x0017, B:12:0x0022, B:15:0x0027, B:19:0x0032, B:22:0x0036, B:24:0x0042, B:26:0x0046, B:27:0x006b, B:30:0x005c, B:33:0x0060, B:34:0x006d, B:35:0x0072), top: B:3:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0027 A[Catch: all -> 0x0024, TryCatch #0 {all -> 0x0024, blocks: (B:4:0x000a, B:6:0x0017, B:12:0x0022, B:15:0x0027, B:19:0x0032, B:22:0x0036, B:24:0x0042, B:26:0x0046, B:27:0x006b, B:30:0x005c, B:33:0x0060, B:34:0x006d, B:35:0x0072), top: B:3:0x000a }] */
    @Override // com.google.android.gms.internal.ads.zzug
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int d(android.media.MediaCodec.BufferInfo r11) {
        /*
            r10 = this;
            com.google.android.gms.internal.ads.zztu r0 = r10.f9278c
            r0.c()
            com.google.android.gms.internal.ads.zztw r0 = r10.b
            java.lang.Object r1 = r0.f9285a
            monitor-enter(r1)
            r0.b()     // Catch: java.lang.Throwable -> L24
            long r2 = r0.l     // Catch: java.lang.Throwable -> L24
            r4 = 0
            int r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            r3 = 0
            r4 = 1
            if (r2 > 0) goto L1e
            boolean r2 = r0.m     // Catch: java.lang.Throwable -> L24
            if (r2 == 0) goto L1c
            goto L1e
        L1c:
            r2 = r3
            goto L1f
        L1e:
            r2 = r4
        L1f:
            r5 = -1
            if (r2 == 0) goto L27
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L24
            return r5
        L24:
            r0 = move-exception
            r11 = r0
            goto L73
        L27:
            androidx.collection.CircularIntArray r2 = r0.e     // Catch: java.lang.Throwable -> L24
            int r6 = r2.b     // Catch: java.lang.Throwable -> L24
            int r7 = r2.f438c     // Catch: java.lang.Throwable -> L24
            if (r6 != r7) goto L30
            r3 = r4
        L30:
            if (r3 == 0) goto L34
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L24
            return r5
        L34:
            if (r6 == r7) goto L6d
            int[] r3 = r2.f437a     // Catch: java.lang.Throwable -> L24
            r3 = r3[r6]     // Catch: java.lang.Throwable -> L24
            int r6 = r6 + r4
            int r4 = r2.d     // Catch: java.lang.Throwable -> L24
            r4 = r4 & r6
            r2.b = r4     // Catch: java.lang.Throwable -> L24
            if (r3 < 0) goto L5d
            android.media.MediaFormat r2 = r0.h     // Catch: java.lang.Throwable -> L24
            if (r2 == 0) goto L5b
            java.util.ArrayDeque r0 = r0.f     // Catch: java.lang.Throwable -> L24
            java.lang.Object r0 = r0.remove()     // Catch: java.lang.Throwable -> L24
            android.media.MediaCodec$BufferInfo r0 = (android.media.MediaCodec.BufferInfo) r0     // Catch: java.lang.Throwable -> L24
            int r5 = r0.offset     // Catch: java.lang.Throwable -> L24
            int r6 = r0.size     // Catch: java.lang.Throwable -> L24
            long r7 = r0.presentationTimeUs     // Catch: java.lang.Throwable -> L24
            int r9 = r0.flags     // Catch: java.lang.Throwable -> L24
            r4 = r11
            r4.set(r5, r6, r7, r9)     // Catch: java.lang.Throwable -> L24
            goto L6b
        L5b:
            r11 = 0
            throw r11     // Catch: java.lang.Throwable -> L24
        L5d:
            r11 = -2
            if (r3 != r11) goto L6b
            java.util.ArrayDeque r2 = r0.g     // Catch: java.lang.Throwable -> L24
            java.lang.Object r2 = r2.remove()     // Catch: java.lang.Throwable -> L24
            android.media.MediaFormat r2 = (android.media.MediaFormat) r2     // Catch: java.lang.Throwable -> L24
            r0.h = r2     // Catch: java.lang.Throwable -> L24
            r3 = r11
        L6b:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L24
            return r3
        L6d:
            java.lang.ArrayIndexOutOfBoundsException r11 = new java.lang.ArrayIndexOutOfBoundsException     // Catch: java.lang.Throwable -> L24
            r11.<init>()     // Catch: java.lang.Throwable -> L24
            throw r11     // Catch: java.lang.Throwable -> L24
        L73:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L24
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zztr.d(android.media.MediaCodec$BufferInfo):int");
    }

    @Override // com.google.android.gms.internal.ads.zzug
    public final ByteBuffer e(int i) {
        return this.f9277a.getInputBuffer(i);
    }

    @Override // com.google.android.gms.internal.ads.zzug
    public final void f(int i) {
        this.f9277a.setVideoScalingMode(i);
    }

    @Override // com.google.android.gms.internal.ads.zzug
    public final void g(int i, zzie zzieVar, long j, int i2) {
        this.f9278c.a(i, zzieVar, j, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzug
    public final void h(int i, int i2, long j, int i3) {
        zztu zztuVar = this.f9278c;
        zztuVar.c();
        zztt d = zztu.d();
        d.f9280a = i;
        d.b = i2;
        d.d = j;
        d.e = i3;
        Handler handler = zztuVar.f9283c;
        String str = zzfj.f7405a;
        handler.obtainMessage(1, d).sendToTarget();
    }

    @Override // com.google.android.gms.internal.ads.zzug
    public final boolean i(zzuf zzufVar) {
        zztw zztwVar = this.b;
        synchronized (zztwVar.f9285a) {
            zztwVar.o = zzufVar;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzug
    public final void j(int i, long j) {
        this.f9277a.releaseOutputBuffer(i, j);
    }

    public final void k(MediaFormat mediaFormat, Surface surface, int i) {
        boolean z;
        zzuc zzucVar;
        zztw zztwVar = this.b;
        if (zztwVar.f9286c == null) {
            z = true;
        } else {
            z = false;
        }
        zzgqa.f(z);
        HandlerThread handlerThread = zztwVar.b;
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper());
        MediaCodec mediaCodec = this.f9277a;
        mediaCodec.setCallback(zztwVar, handler);
        zztwVar.f9286c = handler;
        Trace.beginSection("configureCodec");
        mediaCodec.configure(mediaFormat, surface, (MediaCrypto) null, i);
        Trace.endSection();
        zztu zztuVar = this.f9278c;
        if (!zztuVar.f) {
            HandlerThread handlerThread2 = zztuVar.b;
            handlerThread2.start();
            zztuVar.f9283c = new zzts(zztuVar, handlerThread2.getLooper());
            zztuVar.f = true;
        }
        Trace.beginSection("startCodec");
        mediaCodec.start();
        Trace.endSection();
        if (Build.VERSION.SDK_INT >= 35 && (zzucVar = this.d) != null) {
            zzucVar.b(mediaCodec);
        }
        this.f = 1;
    }

    @Override // com.google.android.gms.internal.ads.zzug
    public final ByteBuffer n(int i) {
        return this.f9277a.getOutputBuffer(i);
    }

    @Override // com.google.android.gms.internal.ads.zzug
    public final void zzc(int i) {
        this.f9277a.releaseOutputBuffer(i, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0022 A[Catch: all -> 0x0024, DONT_GENERATE, TryCatch #0 {all -> 0x0024, blocks: (B:4:0x000a, B:6:0x0017, B:12:0x0022, B:15:0x0026, B:20:0x003e, B:23:0x0034, B:24:0x0040, B:25:0x0045), top: B:3:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0026 A[Catch: all -> 0x0024, TryCatch #0 {all -> 0x0024, blocks: (B:4:0x000a, B:6:0x0017, B:12:0x0022, B:15:0x0026, B:20:0x003e, B:23:0x0034, B:24:0x0040, B:25:0x0045), top: B:3:0x000a }] */
    @Override // com.google.android.gms.internal.ads.zzug
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zze() {
        /*
            r7 = this;
            com.google.android.gms.internal.ads.zztu r0 = r7.f9278c
            r0.c()
            com.google.android.gms.internal.ads.zztw r0 = r7.b
            java.lang.Object r1 = r0.f9285a
            monitor-enter(r1)
            r0.b()     // Catch: java.lang.Throwable -> L24
            long r2 = r0.l     // Catch: java.lang.Throwable -> L24
            r4 = 0
            int r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            r3 = 0
            r4 = 1
            if (r2 > 0) goto L1e
            boolean r2 = r0.m     // Catch: java.lang.Throwable -> L24
            if (r2 == 0) goto L1c
            goto L1e
        L1c:
            r2 = r3
            goto L1f
        L1e:
            r2 = r4
        L1f:
            r5 = -1
            if (r2 == 0) goto L26
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L24
            return r5
        L24:
            r0 = move-exception
            goto L46
        L26:
            androidx.collection.CircularIntArray r0 = r0.d     // Catch: java.lang.Throwable -> L24
            int r2 = r0.b     // Catch: java.lang.Throwable -> L24
            int r6 = r0.f438c     // Catch: java.lang.Throwable -> L24
            if (r2 != r6) goto L2f
            r3 = r4
        L2f:
            if (r3 == 0) goto L32
            goto L3e
        L32:
            if (r2 == r6) goto L40
            int[] r3 = r0.f437a     // Catch: java.lang.Throwable -> L24
            r5 = r3[r2]     // Catch: java.lang.Throwable -> L24
            int r2 = r2 + r4
            int r3 = r0.d     // Catch: java.lang.Throwable -> L24
            r2 = r2 & r3
            r0.b = r2     // Catch: java.lang.Throwable -> L24
        L3e:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L24
            return r5
        L40:
            java.lang.ArrayIndexOutOfBoundsException r0 = new java.lang.ArrayIndexOutOfBoundsException     // Catch: java.lang.Throwable -> L24
            r0.<init>()     // Catch: java.lang.Throwable -> L24
            throw r0     // Catch: java.lang.Throwable -> L24
        L46:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L24
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zztr.zze():int");
    }

    @Override // com.google.android.gms.internal.ads.zzug
    public final MediaFormat zzg() {
        MediaFormat mediaFormat;
        zztw zztwVar = this.b;
        synchronized (zztwVar.f9285a) {
            try {
                mediaFormat = zztwVar.h;
                if (mediaFormat == null) {
                    throw new IllegalStateException();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return mediaFormat;
    }

    @Override // com.google.android.gms.internal.ads.zzug
    public final void zzk() {
        this.f9278c.b();
        MediaCodec mediaCodec = this.f9277a;
        mediaCodec.flush();
        final zztw zztwVar = this.b;
        synchronized (zztwVar.f9285a) {
            zztwVar.l++;
            Handler handler = zztwVar.f9286c;
            String str = zzfj.f7405a;
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zztv
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zztw zztwVar2 = zztw.this;
                    Object obj = zztwVar2.f9285a;
                    synchronized (obj) {
                        try {
                            if (zztwVar2.m) {
                                return;
                            }
                            long j = zztwVar2.l - 1;
                            zztwVar2.l = j;
                            if (j > 0) {
                                return;
                            }
                            if (j < 0) {
                                IllegalStateException illegalStateException = new IllegalStateException();
                                synchronized (obj) {
                                    zztwVar2.n = illegalStateException;
                                }
                                return;
                            }
                            zztwVar2.a();
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            });
        }
        mediaCodec.start();
    }

    @Override // com.google.android.gms.internal.ads.zzug
    public final void zzl() {
        zzuc zzucVar;
        zzuc zzucVar2;
        zzuc zzucVar3;
        try {
            try {
                if (this.f == 1) {
                    zztu zztuVar = this.f9278c;
                    if (zztuVar.f) {
                        zztuVar.b();
                        zztuVar.b.quit();
                    }
                    zztuVar.f = false;
                    zztw zztwVar = this.b;
                    synchronized (zztwVar.f9285a) {
                        zztwVar.m = true;
                        zztwVar.b.quit();
                        zztwVar.a();
                    }
                }
                this.f = 2;
                if (!this.e) {
                    int i = Build.VERSION.SDK_INT;
                    if (i >= 30 && i < 33) {
                        this.f9277a.stop();
                    }
                    if (i >= 35 && (zzucVar3 = this.d) != null) {
                        zzucVar3.c(this.f9277a);
                    }
                    this.f9277a.release();
                    this.e = true;
                }
            } catch (Throwable th) {
                if (!this.e) {
                    int i2 = Build.VERSION.SDK_INT;
                    if (i2 >= 30 && i2 < 33) {
                        this.f9277a.stop();
                    }
                    if (i2 >= 35 && (zzucVar2 = this.d) != null) {
                        zzucVar2.c(this.f9277a);
                    }
                    this.f9277a.release();
                    this.e = true;
                }
                throw th;
            }
        } catch (Throwable th2) {
            if (Build.VERSION.SDK_INT >= 35 && (zzucVar = this.d) != null) {
                zzucVar.c(this.f9277a);
            }
            this.f9277a.release();
            this.e = true;
            throw th2;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzug
    public final void zzo() {
        this.f9277a.detachOutputSurface();
    }
}
