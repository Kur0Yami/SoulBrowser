package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.IntentFilter;
import android.media.AudioDeviceInfo;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;

/* loaded from: classes.dex */
public final class zzse implements zzqj {

    /* renamed from: a, reason: collision with root package name */
    public final Context f9241a;
    public final zzsd b;

    /* renamed from: c, reason: collision with root package name */
    public zzed f9242c;
    public zzdn d;
    public zzpp e;
    public zzpu f;
    public Looper g;
    public Context h;
    public final zzsi i;

    public /* synthetic */ zzse(zzsc zzscVar) {
        zzsd zzsdVar;
        Context context = zzscVar.f9238a;
        this.f9241a = context;
        zzsi zzsiVar = zzscVar.f9239c;
        zzsiVar.getClass();
        this.i = zzsiVar;
        this.e = zzscVar.b;
        if (context == null) {
            zzsdVar = null;
        } else {
            zzsdVar = new zzsd(this);
        }
        this.b = zzsdVar;
        this.d = zzdn.f5927a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0049, code lost:
    
        if (r6.e.c(r7, r0) != null) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.zzqe a(com.google.android.gms.internal.ads.zzqc r7) {
        /*
            r6 = this;
            r6.d(r7)
            com.google.android.gms.internal.ads.zzv r0 = r7.f9183a
            com.google.android.gms.internal.ads.zzd r7 = r7.b
            com.google.android.gms.internal.ads.zzsi r1 = r6.i
            com.google.android.gms.internal.ads.zzpw r1 = r1.a(r7, r0)
            com.google.android.gms.internal.ads.zzqd r2 = new com.google.android.gms.internal.ads.zzqd
            r2.<init>()
            java.lang.String r3 = r0.m
            java.lang.String r4 = "audio/raw"
            boolean r3 = j$.util.Objects.equals(r3, r4)
            r4 = 0
            r5 = 2
            if (r3 == 0) goto L43
            int r7 = r0.G
            boolean r0 = com.google.android.gms.internal.ads.zzfj.a(r7)
            if (r0 != 0) goto L3d
            java.lang.String r0 = java.lang.String.valueOf(r7)
            int r0 = r0.length()
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            int r0 = r0 + 22
            r3.<init>(r0)
            java.lang.String r0 = "Invalid PCM encoding: "
            java.lang.String r5 = "ATAudioOutputProvider"
            com.google.android.gms.internal.ads.a.i(r3, r0, r7, r5)
            goto L4c
        L3d:
            if (r7 == r5) goto L41
            r4 = 1
            goto L4c
        L41:
            r4 = r5
            goto L4c
        L43:
            com.google.android.gms.internal.ads.zzpp r3 = r6.e
            android.util.Pair r7 = r3.c(r7, r0)
            if (r7 == 0) goto L4c
            goto L41
        L4c:
            r2.d = r4
            boolean r7 = r1.f9177a
            r2.f9185a = r7
            boolean r7 = r1.b
            r2.b = r7
            boolean r7 = r1.f9178c
            r2.f9186c = r7
            com.google.android.gms.internal.ads.zzqe r7 = r2.a()
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzse.a(com.google.android.gms.internal.ads.zzqc):com.google.android.gms.internal.ads.zzqe");
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a0  */
    /* JADX WARN: Type inference failed for: r1v25, types: [com.google.android.gms.internal.ads.zzqh, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.zzqi b(com.google.android.gms.internal.ads.zzqc r20) {
        /*
            Method dump skipped, instructions count: 404
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzse.b(com.google.android.gms.internal.ads.zzqc):com.google.android.gms.internal.ads.zzqi");
    }

    public final zzpz c(zzqi zzqiVar) {
        Context context;
        Context context2;
        try {
            int i = zzqiVar.f;
            int i2 = zzqiVar.g;
            if (i2 != -1 && (context2 = this.f9241a) != null && Build.VERSION.SDK_INT >= 34) {
                Context context3 = this.h;
                if (context3 != null) {
                    if (context3.getDeviceId() != i2) {
                    }
                    context = this.h;
                    i = 0;
                }
                this.h = context2.createDeviceContext(i2);
                context = this.h;
                i = 0;
            } else {
                context = null;
            }
            AudioTrack.Builder sessionId = new AudioTrack.Builder().setAudioAttributes(zzqiVar.e.a()).setAudioFormat(new AudioFormat.Builder().setSampleRate(zzqiVar.b).setChannelMask(zzqiVar.f9192c).setEncoding(zzqiVar.f9191a).build()).setTransferMode(1).setBufferSizeInBytes(zzqiVar.d).setSessionId(i);
            int i3 = Build.VERSION.SDK_INT;
            if (i3 >= 29) {
                sessionId.setOffloadedPlayback(false);
            }
            if (i3 >= 34 && context != null) {
                sessionId.setContext(context);
            }
            AudioTrack build = sessionId.build();
            if (build.getState() == 1) {
                return new zzrz(build, zzqiVar, this.b, this.d);
            }
            try {
                build.release();
            } catch (Exception unused) {
            }
            throw new Exception((Throwable) null);
        } catch (IllegalArgumentException e) {
            e = e;
            throw new Exception(e);
        } catch (UnsupportedOperationException e2) {
            e = e2;
            throw new Exception(e);
        }
    }

    public final void d(zzqc zzqcVar) {
        Context context;
        zzpp b;
        AudioDeviceInfo audioDeviceInfo = zzqcVar.f9184c;
        zzd zzdVar = zzqcVar.b;
        e();
        zzpu zzpuVar = this.f;
        if (zzpuVar == null && (context = this.f9241a) != null) {
            zzpu zzpuVar2 = new zzpu(context, new zzsb(this), zzdVar, audioDeviceInfo);
            this.f = zzpuVar2;
            if (zzpuVar2.j) {
                b = zzpuVar2.g;
                b.getClass();
            } else {
                zzpuVar2.j = true;
                zzpr zzprVar = zzpuVar2.f;
                if (zzprVar != null) {
                    zzprVar.f9170a.registerContentObserver(zzprVar.b, false, zzprVar);
                }
                Context context2 = zzpuVar2.f9173a;
                AudioManager a2 = zzcj.a(context2);
                zzpq zzpqVar = zzpuVar2.d;
                Handler handler = zzpuVar2.f9174c;
                a2.registerAudioDeviceCallback(zzpqVar, handler);
                b = zzpp.b(context2, context2.registerReceiver(zzpuVar2.e, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG"), null, handler), zzpuVar2.i, zzpuVar2.h);
                zzpuVar2.g = b;
            }
            this.e = b;
        } else if (zzpuVar != null) {
            if (audioDeviceInfo != null && !audioDeviceInfo.equals(zzpuVar.h)) {
                zzpuVar.h = audioDeviceInfo;
                zzpuVar.a(zzpp.a(zzpuVar.f9173a, zzpuVar.i, audioDeviceInfo));
            }
            zzpu zzpuVar3 = this.f;
            zzpuVar3.i = zzdVar;
            zzpuVar3.a(zzpp.a(zzpuVar3.f9173a, zzdVar, zzpuVar3.h));
        }
        this.e.getClass();
    }

    public final void e() {
        boolean z;
        String name;
        if (this.f9241a == null) {
            return;
        }
        Looper myLooper = Looper.myLooper();
        Looper looper = this.g;
        if (looper == null || looper == myLooper) {
            z = true;
        } else {
            z = false;
        }
        String str = "null";
        if (looper == null) {
            name = "null";
        } else {
            name = looper.getThread().getName();
        }
        if (myLooper != null) {
            str = myLooper.getThread().getName();
        }
        if (z) {
            this.g = myLooper;
            return;
        }
        throw new IllegalStateException(zzgqr.b("AudioTrackAudioOutputProvider accessed on multiple threads: %s and %s", name, str));
    }
}
