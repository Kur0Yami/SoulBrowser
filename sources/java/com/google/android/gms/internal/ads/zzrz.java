package com.google.android.gms.internal.ads;

import android.media.AudioDeviceInfo;
import android.media.AudioTrack;
import android.media.metrics.LogSessionId;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzrz implements zzpz {
    public static final Object p = new Object();
    public static ScheduledExecutorService q;
    public static int r;

    /* renamed from: a, reason: collision with root package name */
    public final AudioTrack f9233a;
    public final zzqi b;

    /* renamed from: c, reason: collision with root package name */
    public zzrq f9234c;
    public final zzsg d;
    public final boolean e;
    public final int f;
    public final zzry g;
    public final zzed h;
    public boolean i;
    public long j;
    public long k;
    public int l;
    public int m;
    public boolean n;
    public final zzsd o;

    public zzrz(AudioTrack audioTrack, zzqi zzqiVar, zzsd zzsdVar, zzdn zzdnVar) {
        zzry zzryVar;
        this.f9233a = audioTrack;
        this.b = zzqiVar;
        this.o = zzsdVar;
        Looper myLooper = Looper.myLooper();
        myLooper.getClass();
        zzed zzedVar = new zzed(myLooper, zzdnVar);
        this.h = zzedVar;
        zzedVar.i = false;
        boolean a2 = zzfj.a(zzqiVar.f9191a);
        this.e = a2;
        if (a2) {
            this.f = zzfj.d(zzqiVar.f9191a) * Integer.bitCount(zzqiVar.f9192c);
        } else {
            this.f = -1;
        }
        this.d = new zzsg(new zzrs(this), zzdnVar, audioTrack, zzqiVar.f9191a, this.f, zzqiVar.d);
        if (Build.VERSION.SDK_INT >= 24 && zzsdVar != null) {
            this.f9234c = new zzrq(audioTrack, zzsdVar);
        }
        if (zzg()) {
            zzryVar = new zzry(this);
        } else {
            zzryVar = null;
        }
        this.g = zzryVar;
    }

    @Override // com.google.android.gms.internal.ads.zzpz
    public final void a(zzpn zzpnVar) {
        LogSessionId logSessionId;
        LogSessionId logSessionId2;
        if (Build.VERSION.SDK_INT >= 31) {
            synchronized (zzpnVar) {
                zzpm zzpmVar = zzpnVar.b;
                if (zzpmVar != null) {
                    logSessionId = zzpmVar.f9162a;
                } else {
                    throw null;
                }
            }
            logSessionId2 = LogSessionId.LOG_SESSION_ID_NONE;
            if (!logSessionId.equals(logSessionId2)) {
                this.f9233a.setLogSessionId(logSessionId);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpz
    public final void b(AudioDeviceInfo audioDeviceInfo) {
        this.f9233a.setPreferredDevice(audioDeviceInfo);
    }

    @Override // com.google.android.gms.internal.ads.zzpz
    public final void c(zzpx zzpxVar) {
        this.h.a(zzpxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzpz
    public final boolean d(ByteBuffer byteBuffer, int i) {
        boolean z;
        int i2;
        zzsd zzsdVar;
        zzse zzseVar;
        zzpu zzpuVar;
        boolean z2 = this.e;
        if (!z2 && this.l == 0) {
            this.l = zzss.c(byteBuffer, this.b.f9191a);
        }
        long e = e();
        int i3 = Build.VERSION.SDK_INT;
        boolean z3 = false;
        AudioTrack audioTrack = this.f9233a;
        if (i3 >= 24) {
            i2 = audioTrack.getUnderrunCount();
        } else {
            boolean z4 = this.n;
            long a2 = this.d.a();
            int sampleRate = audioTrack.getSampleRate();
            String str = zzfj.f7405a;
            if (e > zzfj.u(a2, sampleRate, 1000000L, RoundingMode.UP)) {
                z = true;
            } else {
                z = false;
            }
            this.n = z;
            if (z4 && !z && audioTrack.getPlayState() != 1) {
                i2 = this.m + 1;
            } else {
                i2 = this.m;
            }
        }
        int i4 = this.m;
        this.m = i2;
        if (i2 > i4) {
            zzrj zzrjVar = zzrj.f9215a;
            zzed zzedVar = this.h;
            zzedVar.c(-1, zzrjVar);
            zzedVar.d();
        }
        int remaining = byteBuffer.remaining();
        int write = audioTrack.write(byteBuffer, byteBuffer.remaining(), 1);
        if (write < 0) {
            if ((i3 >= 24 && write == -6) || write == -32) {
                z3 = true;
            }
            if (z3 && (zzsdVar = this.o) != null && (zzpuVar = (zzseVar = zzsdVar.f9240a).f) != null) {
                zzpp zzppVar = zzpp.f9167c;
                zzseVar.e = zzppVar;
                zzpuVar.a(zzppVar);
            }
            throw new zzpy(write, z3);
        }
        if (write == remaining) {
            z3 = true;
        }
        if (z2) {
            this.j += write;
            return z3;
        }
        if (z3) {
            this.k = (this.l * i) + this.k;
        }
        return z3;
    }

    public final long e() {
        if (this.e) {
            long j = this.j;
            String str = zzfj.f7405a;
            return ((j + r2) - 1) / this.f;
        }
        return this.k;
    }

    @Override // com.google.android.gms.internal.ads.zzpz
    public final void zza() {
        zzsg zzsgVar = this.d;
        if (zzsgVar.u != -9223372036854775807L) {
            zzsgVar.u = zzfj.s(zzsgVar.b.zzb());
        }
        zzsgVar.j = zzfj.t(zzsgVar.e, zzsgVar.d());
        zzsgVar.h.a(0);
        if (this.i && !zzg()) {
            return;
        }
        this.f9233a.play();
    }

    @Override // com.google.android.gms.internal.ads.zzpz
    public final void zzb() {
        zzsg zzsgVar = this.d;
        zzsgVar.k = 0L;
        zzsgVar.t = 0;
        zzsgVar.s = 0;
        zzsgVar.l = 0L;
        zzsgVar.y = -9223372036854775807L;
        zzsgVar.z = -9223372036854775807L;
        if (zzsgVar.u == -9223372036854775807L) {
            zzsgVar.h.a(0);
        }
        zzsgVar.w = zzsgVar.d();
        if (this.i && !zzg()) {
            return;
        }
        this.f9233a.pause();
    }

    @Override // com.google.android.gms.internal.ads.zzpz
    public final void zzd() {
        if (this.i) {
            return;
        }
        this.i = true;
        long e = e();
        zzsg zzsgVar = this.d;
        zzsgVar.w = zzsgVar.d();
        zzsgVar.u = zzfj.s(zzsgVar.b.zzb());
        zzsgVar.x = e;
        this.f9233a.stop();
    }

    /* JADX WARN: Type inference failed for: r4v4, types: [java.lang.Object, java.util.concurrent.ThreadFactory] */
    @Override // com.google.android.gms.internal.ads.zzpz
    public final void zze() {
        zzrq zzrqVar;
        if (this.d.d.getPlayState() == 3) {
            this.f9233a.pause();
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 29 && zzg()) {
            zzry zzryVar = this.g;
            zzryVar.getClass();
            zzryVar.a();
        }
        if (i >= 24 && (zzrqVar = this.f9234c) != null) {
            zzrqVar.b();
            this.f9234c = null;
        }
        final AudioTrack audioTrack = this.f9233a;
        final zzed zzedVar = this.h;
        final Handler n = zzfj.n();
        synchronized (p) {
            try {
                if (q == null) {
                    q = Executors.newSingleThreadScheduledExecutor(new Object());
                }
                r++;
                q.schedule(new Runnable() { // from class: com.google.android.gms.internal.ads.zzrm
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        AudioTrack audioTrack2 = audioTrack;
                        Handler handler = n;
                        final zzed zzedVar2 = zzedVar;
                        try {
                            audioTrack2.flush();
                            audioTrack2.release();
                            if (handler.getLooper().getThread().isAlive()) {
                                handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzrk
                                    @Override // java.lang.Runnable
                                    public final /* synthetic */ void run() {
                                        zzed zzedVar3 = zzed.this;
                                        zzedVar3.c(-1, zzri.f9214a);
                                        zzedVar3.d();
                                    }
                                });
                            }
                            synchronized (zzrz.p) {
                                try {
                                    int i2 = zzrz.r - 1;
                                    zzrz.r = i2;
                                    if (i2 == 0) {
                                        ScheduledExecutorService scheduledExecutorService = zzrz.q;
                                        if (scheduledExecutorService != null) {
                                            scheduledExecutorService.shutdown();
                                            zzrz.q = null;
                                        } else {
                                            throw null;
                                        }
                                    }
                                } finally {
                                }
                            }
                        } catch (Throwable th) {
                            if (handler.getLooper().getThread().isAlive()) {
                                handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzrl
                                    @Override // java.lang.Runnable
                                    public final /* synthetic */ void run() {
                                        zzed zzedVar3 = zzed.this;
                                        zzedVar3.c(-1, zzri.f9214a);
                                        zzedVar3.d();
                                    }
                                });
                            }
                            synchronized (zzrz.p) {
                                try {
                                    int i3 = zzrz.r - 1;
                                    zzrz.r = i3;
                                    if (i3 == 0) {
                                        ScheduledExecutorService scheduledExecutorService2 = zzrz.q;
                                        if (scheduledExecutorService2 != null) {
                                            scheduledExecutorService2.shutdown();
                                            zzrz.q = null;
                                        } else {
                                            throw null;
                                        }
                                    }
                                    throw th;
                                } finally {
                                }
                            }
                        }
                    }
                }, 20L, TimeUnit.MILLISECONDS);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpz
    public final void zzf(float f) {
        this.f9233a.setVolume(f);
    }

    @Override // com.google.android.gms.internal.ads.zzpz
    public final boolean zzg() {
        if (Build.VERSION.SDK_INT >= 29 && this.f9233a.isOffloadedPlayback()) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzpz
    public final int zzh() {
        return this.f9233a.getAudioSessionId();
    }

    @Override // com.google.android.gms.internal.ads.zzpz
    public final int zzi() {
        return this.f9233a.getSampleRate();
    }

    @Override // com.google.android.gms.internal.ads.zzpz
    public final long zzj() {
        return this.f9233a.getBufferSizeInFrames();
    }

    @Override // com.google.android.gms.internal.ads.zzpz
    public final long zzk() {
        return this.d.a();
    }

    @Override // com.google.android.gms.internal.ads.zzpz
    public final boolean zzl() {
        long e = e();
        zzsg zzsgVar = this.d;
        if (zzsgVar.v != -9223372036854775807L && e > 0 && zzsgVar.b.zzb() - zzsgVar.v >= 200) {
            return true;
        }
        return false;
    }
}
