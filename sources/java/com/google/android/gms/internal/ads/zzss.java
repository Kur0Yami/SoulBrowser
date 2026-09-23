package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioDeviceInfo;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import com.google.android.gms.ads.RequestConfiguration;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class zzss implements zzrf {
    public static final AtomicInteger X = new AtomicInteger();
    public long A;
    public int B;
    public boolean C;
    public boolean D;
    public long E;
    public float F;
    public ByteBuffer G;
    public int H;
    public ByteBuffer I;
    public boolean J;
    public boolean K;
    public boolean L;
    public boolean M;
    public int N;
    public boolean O;
    public zze P;
    public AudioDeviceInfo Q;
    public int R;
    public long S;
    public long T;
    public long U;
    public Handler V;
    public final zzsn W;

    /* renamed from: a, reason: collision with root package name */
    public final Context f9260a;
    public final zzse b;

    /* renamed from: c, reason: collision with root package name */
    public final zzsh f9261c;
    public final zzta d;
    public final zzcv e;
    public final zzsz f;
    public final zzgtd g;
    public final ArrayDeque h;
    public zzsj i;
    public final zzsr j;
    public final zzsr k;
    public zzpn l;
    public zzrc m;
    public zzsm n;
    public zzsm o;
    public zzck p;
    public zzqg q;
    public zzpz r;
    public zzd s;
    public zzsq t;
    public zzsq u;
    public zzav v;
    public boolean w;
    public long x;
    public long y;
    public long z;

    /* JADX WARN: Type inference failed for: r1v4, types: [com.google.android.gms.internal.ads.zzcp, com.google.android.gms.internal.ads.zzta, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v5, types: [com.google.android.gms.internal.ads.zze, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v1, types: [com.google.android.gms.internal.ads.zzcp, com.google.android.gms.internal.ads.zzcv] */
    /* JADX WARN: Type inference failed for: r2v2, types: [com.google.android.gms.internal.ads.zzcp, com.google.android.gms.internal.ads.zzsz] */
    /* JADX WARN: Type inference failed for: r9v2, types: [com.google.android.gms.internal.ads.zzcp, com.google.android.gms.internal.ads.zzsh, java.lang.Object] */
    public zzss(zzsl zzslVar) {
        Context applicationContext;
        int deviceId;
        Context context = zzslVar.f9248a;
        if (context == null) {
            applicationContext = null;
        } else {
            applicationContext = context.getApplicationContext();
        }
        this.f9260a = applicationContext;
        this.s = zzd.b;
        this.W = zzslVar.f;
        this.b = zzslVar.e;
        ?? zzcpVar = new zzcp();
        this.f9261c = zzcpVar;
        ?? zzcpVar2 = new zzcp();
        zzcpVar2.m = zzfj.b;
        this.d = zzcpVar2;
        this.e = new zzcp();
        this.f = new zzcp();
        this.g = zzgtd.s(zzcpVar2, zzcpVar);
        this.F = 1.0f;
        this.N = 0;
        this.P = new Object();
        zzav zzavVar = zzav.d;
        this.u = new zzsq(zzavVar, 0L, 0L);
        this.v = zzavVar;
        this.w = false;
        this.h = new ArrayDeque();
        this.j = new zzsr();
        this.k = new zzsr();
        int i = -1;
        if (Build.VERSION.SDK_INT >= 34 && context != null && (deviceId = context.getDeviceId()) != 0 && deviceId != -1) {
            i = deviceId;
        }
        this.R = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x00f3 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00f4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int c(java.nio.ByteBuffer r9, int r10) {
        /*
            Method dump skipped, instructions count: 558
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzss.c(java.nio.ByteBuffer, int):int");
    }

    public final void a() {
        if (k()) {
            this.x = 0L;
            this.y = 0L;
            this.z = 0L;
            this.A = 0L;
            this.B = 0;
            this.u = new zzsq(this.v, 0L, 0L);
            this.E = 0L;
            this.t = null;
            this.h.clear();
            this.G = null;
            this.H = 0;
            this.I = null;
            this.K = false;
            this.J = false;
            this.L = false;
            this.d.o = 0L;
            zzck zzckVar = this.o.f;
            this.p = zzckVar;
            zzckVar.b(zzcm.b);
            this.i = null;
            zzsm zzsmVar = this.n;
            if (zzsmVar != null) {
                this.o = zzsmVar;
                this.n = null;
            }
            X.incrementAndGet();
            this.r.zze();
            this.r = null;
        }
        zzsr zzsrVar = this.k;
        zzsrVar.f9258a = null;
        zzsrVar.b = -9223372036854775807L;
        zzsrVar.f9259c = -9223372036854775807L;
        zzsr zzsrVar2 = this.j;
        zzsrVar2.f9258a = null;
        zzsrVar2.b = -9223372036854775807L;
        zzsrVar2.f9259c = -9223372036854775807L;
        this.T = 0L;
        this.U = 0L;
        Handler handler = this.V;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
    }

    public final void b() {
        a();
        zzguy zzguyVar = (zzguy) this.g;
        int i = zzguyVar.h;
        for (int i2 = 0; i2 < i; i2++) {
            ((zzco) zzguyVar.get(i2)).zzj();
        }
        this.e.zzj();
        this.f.zzj();
        zzck zzckVar = this.p;
        if (zzckVar != null) {
            int i3 = 0;
            while (true) {
                zzgtd zzgtdVar = zzckVar.f5216a;
                if (i3 >= zzgtdVar.size()) {
                    break;
                }
                zzco zzcoVar = (zzco) zzgtdVar.get(i3);
                zzcm zzcmVar = zzcm.b;
                zzcoVar.zzi();
                zzcoVar.zzj();
                i3++;
            }
            zzckVar.f5217c = new ByteBuffer[0];
            zzcl zzclVar = zzcl.e;
            zzckVar.d = false;
        }
        this.M = false;
    }

    public final zzpz d(zzqi zzqiVar) {
        try {
            return this.b.c(zzqiVar);
        } catch (zzqf e) {
            int i = zzqiVar.b;
            int i2 = zzqiVar.f9192c;
            int i3 = zzqiVar.f9191a;
            int i4 = zzqiVar.d;
            String valueOf = String.valueOf(this.o.f9250a);
            int length = String.valueOf(i).length();
            int length2 = String.valueOf(i2).length();
            int length3 = String.valueOf(i3).length();
            StringBuilder sb = new StringBuilder(length + 34 + length2 + 2 + length3 + 2 + String.valueOf(i4).length() + 2 + valueOf.length());
            androidx.work.impl.workers.a.A(sb, "AudioTrack init failed 0 Config(", i, ", ", i2);
            androidx.work.impl.workers.a.A(sb, ", ", i3, ", ", i4);
            Exception exc = new Exception(android.support.v4.media.a.q(sb, ") ", valueOf, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), e);
            zzrc zzrcVar = this.m;
            if (zzrcVar != null) {
                ((zzsv) zzrcVar).a(exc);
                throw exc;
            }
            throw exc;
        }
    }

    public final void e(long j) {
        ByteBuffer byteBuffer;
        h(j);
        if (this.I == null) {
            if (this.p.c()) {
                while (!this.p.d()) {
                    do {
                        zzck zzckVar = this.p;
                        if (!zzckVar.c()) {
                            byteBuffer = zzco.f5330a;
                        } else {
                            ByteBuffer byteBuffer2 = zzckVar.f5217c[zzckVar.f()];
                            if (byteBuffer2.hasRemaining()) {
                                byteBuffer = byteBuffer2;
                            } else {
                                zzckVar.e(zzco.f5330a);
                                byteBuffer = zzckVar.f5217c[zzckVar.f()];
                            }
                        }
                        if (byteBuffer.hasRemaining()) {
                            g(byteBuffer);
                            h(j);
                        } else {
                            ByteBuffer byteBuffer3 = this.G;
                            if (byteBuffer3 != null && byteBuffer3.hasRemaining()) {
                                zzck zzckVar2 = this.p;
                                ByteBuffer byteBuffer4 = this.G;
                                if (zzckVar2.c() && !zzckVar2.d) {
                                    zzckVar2.e(byteBuffer4);
                                }
                            } else {
                                return;
                            }
                        }
                    } while (this.I == null);
                    return;
                }
                return;
            }
            ByteBuffer byteBuffer5 = this.G;
            if (byteBuffer5 != null) {
                g(byteBuffer5);
                h(j);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x0045 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0044 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean f() {
        /*
            r6 = this;
            com.google.android.gms.internal.ads.zzck r0 = r6.p
            boolean r0 = r0.c()
            r1 = -9223372036854775808
            r3 = 0
            r4 = 1
            if (r0 != 0) goto L14
            r6.h(r1)
            java.nio.ByteBuffer r0 = r6.I
            if (r0 != 0) goto L45
            goto L44
        L14:
            com.google.android.gms.internal.ads.zzck r0 = r6.p
            boolean r5 = r0.c()
            if (r5 == 0) goto L2e
            boolean r5 = r0.d
            if (r5 == 0) goto L21
            goto L2e
        L21:
            r0.d = r4
            java.util.ArrayList r0 = r0.b
            java.lang.Object r0 = r0.get(r3)
            com.google.android.gms.internal.ads.zzco r0 = (com.google.android.gms.internal.ads.zzco) r0
            r0.zze()
        L2e:
            r6.e(r1)
            com.google.android.gms.internal.ads.zzck r0 = r6.p
            boolean r0 = r0.d()
            if (r0 == 0) goto L45
            java.nio.ByteBuffer r0 = r6.I
            if (r0 == 0) goto L44
            boolean r0 = r0.hasRemaining()
            if (r0 == 0) goto L44
            goto L45
        L44:
            return r4
        L45:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzss.f():boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01f9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0057 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01e5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void g(java.nio.ByteBuffer r19) {
        /*
            Method dump skipped, instructions count: 528
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzss.g(java.nio.ByteBuffer):void");
    }

    public final void h(long j) {
        if (this.I != null) {
            zzsr zzsrVar = this.k;
            if (zzsrVar.f9258a == null || (X.get() <= 0 && SystemClock.elapsedRealtime() >= zzsrVar.f9259c)) {
                int remaining = this.I.remaining();
                boolean z = false;
                try {
                    boolean d = this.r.d(this.I, this.H);
                    this.S = SystemClock.elapsedRealtime();
                    zzsrVar.f9258a = null;
                    zzsrVar.b = -9223372036854775807L;
                    zzsrVar.f9259c = -9223372036854775807L;
                    this.r.zzg();
                    if (this.o.a()) {
                        this.z += remaining - this.I.remaining();
                    }
                    if (d) {
                        if (!this.o.a()) {
                            if (this.I == this.G) {
                                z = true;
                            }
                            zzgqa.f(z);
                            this.A = (this.B * this.H) + this.A;
                        }
                        this.I = null;
                    }
                } catch (zzpy e) {
                    boolean z2 = e.f;
                    if (z2) {
                        if (l() <= 0) {
                            if (this.r.zzg()) {
                                this.o.getClass();
                            }
                        }
                        z = true;
                    }
                    zzre zzreVar = new zzre(e.f9179c, this.o.f9250a, z);
                    zzrc zzrcVar = this.m;
                    if (zzrcVar != null) {
                        ((zzsv) zzrcVar).a(zzreVar);
                    }
                    if (!z2) {
                        zzsrVar.a(zzreVar);
                        return;
                    }
                    throw zzreVar;
                }
            }
        }
    }

    public final void i() {
        if (this.o != null) {
            zzsm zzsmVar = this.n;
            if (zzsmVar != null) {
                this.o = zzsmVar;
                this.n = null;
            }
            try {
                zzqi b = this.b.b(m(this.o.b));
                zzsm zzsmVar2 = this.o;
                this.o = new zzsm(zzsmVar2.f9250a, zzsmVar2.b, zzsmVar2.f9251c, zzsmVar2.d, b, zzsmVar2.f);
            } catch (zzqa e) {
                throw new IllegalStateException(new zzra(e, this.o.f9250a));
            }
        }
        a();
    }

    public final void j(long j) {
        zzav zzavVar;
        boolean z;
        boolean z2;
        boolean a2 = this.o.a();
        boolean z3 = false;
        zzsn zzsnVar = this.W;
        if (a2) {
            int i = this.o.f9250a.G;
            zzavVar = this.v;
            zzcu zzcuVar = zzsnVar.f9253c;
            float f = zzavVar.f4431a;
            zzcuVar.getClass();
            if (f > 0.0f) {
                z = true;
            } else {
                z = false;
            }
            zzgqa.a(z);
            if (zzcuVar.f5473c != f) {
                zzcuVar.f5473c = f;
                zzcuVar.i = true;
            }
            float f2 = zzavVar.b;
            if (f2 > 0.0f) {
                z2 = true;
            } else {
                z2 = false;
            }
            zzgqa.a(z2);
            if (zzcuVar.d != f2) {
                zzcuVar.d = f2;
                zzcuVar.i = true;
            }
        } else {
            zzavVar = zzav.d;
        }
        zzav zzavVar2 = zzavVar;
        this.v = zzavVar2;
        if (this.o.a()) {
            int i2 = this.o.f9250a.G;
            z3 = this.w;
            zzsnVar.b.j = z3;
        }
        this.w = z3;
        this.h.add(new zzsq(zzavVar2, Math.max(0L, j), zzfj.t(this.o.e.b, l())));
        zzck zzckVar = this.o.f;
        this.p = zzckVar;
        zzckVar.b(zzcm.b);
        zzrc zzrcVar = this.m;
        if (zzrcVar != null) {
            final boolean z4 = this.w;
            final zzqx zzqxVar = ((zzsv) zzrcVar).f9262a.G0;
            Handler handler = zzqxVar.f9206a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzqs
                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Object, com.google.android.gms.internal.ads.zzdy] */
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzqx zzqxVar2 = zzqx.this;
                        zzqxVar2.getClass();
                        String str = zzfj.f7405a;
                        zzkp zzkpVar = ((zzjl) zzqxVar2.b).f9043c;
                        boolean z5 = zzkpVar.R;
                        boolean z6 = z4;
                        if (z5 == z6) {
                            return;
                        }
                        zzkpVar.R = z6;
                        zzed zzedVar = zzkpVar.m;
                        zzedVar.c(23, new Object());
                        zzedVar.d();
                    }
                });
            }
        }
    }

    public final boolean k() {
        return this.r != null;
    }

    public final long l() {
        if (this.o.a()) {
            long j = this.z;
            long j2 = this.o.d;
            String str = zzfj.f7405a;
            return ((j + j2) - 1) / j2;
        }
        return this.A;
    }

    public final zzqc m(zzv zzvVar) {
        zzqb zzqbVar = new zzqb(zzvVar);
        zzqbVar.b = this.s;
        zzqbVar.f9182c = this.Q;
        zzqbVar.d = this.N;
        zzqbVar.f = -1;
        zzqbVar.e = this.R;
        return new zzqc(zzqbVar);
    }

    public final boolean n(zzv zzvVar) {
        if (o(zzvVar) != 0) {
            return true;
        }
        return false;
    }

    public final int o(zzv zzvVar) {
        int i = this.b.a(m(zzvVar)).d;
        int i2 = 1;
        if (i != 1) {
            i2 = 2;
            if (i != 2) {
                return 0;
            }
        }
        return i2;
    }

    /* JADX WARN: Type inference failed for: r5v1, types: [com.google.android.gms.internal.ads.zzgta, com.google.android.gms.internal.ads.zzgsx] */
    public final void p(zzv zzvVar, int[] iArr) {
        zzck zzckVar;
        zzv zzvVar2;
        int i;
        int i2;
        zzqg zzqgVar = this.q;
        zzse zzseVar = this.b;
        if (zzqgVar == null && this.f9260a != null) {
            zzqg zzqgVar2 = new zzqg() { // from class: com.google.android.gms.internal.ads.zzso
                @Override // com.google.android.gms.internal.ads.zzqg
                public final void zza() {
                    zzmj zzmjVar;
                    zzrc zzrcVar = zzss.this.m;
                    if (zzrcVar != null) {
                        zzsw zzswVar = ((zzsv) zzrcVar).f9262a;
                        synchronized (zzswVar.f9000c) {
                            zzmjVar = zzswVar.v;
                        }
                        if (zzmjVar != null) {
                            zzmjVar.zza();
                        }
                    }
                }
            };
            this.q = zzqgVar2;
            zzseVar.e();
            if (zzseVar.f9242c == null) {
                Looper myLooper = Looper.myLooper();
                myLooper.getClass();
                zzed zzedVar = new zzed(myLooper, zzseVar.d);
                zzseVar.f9242c = zzedVar;
                zzedVar.i = false;
            }
            zzseVar.f9242c.a(zzqgVar2);
        }
        if ("audio/raw".equals(zzvVar.m)) {
            int i3 = zzvVar.G;
            zzgqa.a(zzfj.a(i3));
            int i4 = zzvVar.E;
            int d = zzfj.d(i3) * i4;
            ?? zzgsxVar = new zzgsx(4);
            zzgsxVar.d(this.g);
            zzgsxVar.c(this.e);
            zzco[] zzcoVarArr = this.W.f9252a;
            zzguw.a(2, zzcoVarArr);
            zzgsxVar.e(2);
            System.arraycopy(zzcoVarArr, 0, zzgsxVar.f8239a, zzgsxVar.b, 2);
            zzgsxVar.b += 2;
            zzckVar = new zzck(zzgsxVar.f());
            if (zzckVar.equals(this.p)) {
                zzckVar = this.p;
            }
            int i5 = zzvVar.H;
            int i6 = zzvVar.I;
            zzta zztaVar = this.d;
            zztaVar.i = i5;
            zztaVar.j = i6;
            this.f9261c.i = iArr;
            try {
                zzcl a2 = zzckVar.a(new zzcl(zzvVar.F, i4, i3));
                zzt zztVar = new zzt(zzvVar);
                int i7 = a2.f5232c;
                zztVar.F = i7;
                zztVar.E = a2.f5231a;
                int i8 = a2.b;
                zztVar.D = i8;
                zzv zzvVar3 = new zzv(zztVar);
                i2 = zzfj.d(i7) * i8;
                i = d;
                zzvVar2 = zzvVar3;
            } catch (zzcn e) {
                throw new zzra(e, zzvVar);
            }
        } else {
            zzckVar = new zzck(zzguy.i);
            zzvVar2 = zzvVar;
            i = -1;
            i2 = -1;
        }
        try {
            zzsm zzsmVar = new zzsm(zzvVar, zzvVar2, i, i2, zzseVar.b(m(zzvVar2)), zzckVar);
            if (k()) {
                this.n = zzsmVar;
            } else {
                this.o = zzsmVar;
            }
        } catch (zzqa e2) {
            throw new zzra(e2, zzvVar);
        }
    }

    public final void q() {
        this.M = true;
        if (k()) {
            this.r.zza();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x023c, code lost:
    
        if (r0 != 0) goto L122;
     */
    /* JADX WARN: Removed duplicated region for block: B:100:0x0094 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:155:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r12v4, types: [com.google.android.gms.internal.ads.zzqz, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean r(java.nio.ByteBuffer r22, long r23, int r25) {
        /*
            Method dump skipped, instructions count: 811
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzss.r(java.nio.ByteBuffer, long, int):boolean");
    }

    public final boolean s() {
        if (k()) {
            if (Build.VERSION.SDK_INT < 29 || !this.r.zzg() || !this.L) {
                long l = l();
                long zzk = this.r.zzk();
                this.r.getClass();
                if (l > zzfj.u(zzk, r2.zzi(), 1000000L, RoundingMode.UP)) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return false;
    }
}
