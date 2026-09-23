package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import android.view.Surface;
import java.util.ArrayList;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzkp extends zzf implements zzje {
    public static final /* synthetic */ int b0 = 0;
    public final zzdm A;
    public final zzfa B;
    public final zzko C;
    public int D;
    public int E;
    public boolean F;
    public final zzmp G;
    public final zzmq H;
    public final zzjd I;
    public zzax J;
    public zzan K;
    public Object L;
    public Surface M;
    public final int N;
    public zzes O;
    public final zzd P;
    public float Q;
    public boolean R;
    public final boolean S;
    public boolean T;
    public final int U;
    public boolean V;
    public zzan W;
    public zzma X;
    public int Y;
    public long Z;
    public zzxz a0;
    public final zzaae b;

    /* renamed from: c, reason: collision with root package name */
    public final zzax f9067c;
    public final zzdq d = new Object();
    public final Context e;
    public final zzms f;
    public final zzmi[] g;
    public final zzmi[] h;
    public final zzaad i;
    public final zzdx j;
    public final zzla k;
    public final zzlc l;
    public final zzed m;
    public final CopyOnWriteArraySet n;
    public final zzbd o;
    public final ArrayList p;
    public final boolean q;
    public final zzoz r;
    public final Looper s;
    public final zzaam t;
    public final zzfc u;
    public final zzjl v;
    public final zzkk w;
    public final zzfo x;
    public final zzfp y;
    public final long z;

    static {
        zzal.a("media3.exoplayer");
    }

    /* JADX WARN: Type inference failed for: r15v0, types: [java.lang.Object, com.google.android.gms.internal.ads.zzdz] */
    /* JADX WARN: Type inference failed for: r2v0, types: [com.google.android.gms.internal.ads.zzdq, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v5, types: [com.google.android.gms.internal.ads.zzfp, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v15, types: [com.google.android.gms.internal.ads.zzbz, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v2, types: [com.google.android.gms.internal.ads.zzkk, java.lang.Object] */
    public zzkp(zzjc zzjcVar, zzms zzmsVar) {
        boolean z;
        zzko zzkoVar;
        try {
            String hexString = Integer.toHexString(System.identityHashCode(this));
            String str = zzfj.f7405a;
            StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + 38 + String.valueOf(str).length() + 1);
            sb.append("Init ");
            sb.append(hexString);
            sb.append(" [AndroidXMedia3/1.9.0-alpha01] [");
            sb.append(str);
            sb.append("]");
            zzee.b("ExoPlayerImpl", sb.toString());
            Context context = zzjcVar.f9035a;
            Looper looper = zzjcVar.i;
            zzfc zzfcVar = zzjcVar.b;
            this.e = context.getApplicationContext();
            this.r = new zzoz(zzfcVar);
            this.U = zzjcVar.j;
            this.P = zzjcVar.k;
            this.N = zzjcVar.l;
            this.R = false;
            this.z = zzjcVar.q;
            zzjl zzjlVar = new zzjl(this);
            this.v = zzjlVar;
            this.w = new Object();
            this.g = ((zzchu) ((zzjb) zzjcVar.f9036c).f9034c).a(new Handler(looper), zzjlVar, zzjlVar);
            this.h = new zzmi[2];
            int i = 0;
            while (true) {
                zzmi[] zzmiVarArr = this.h;
                int length = zzmiVarArr.length;
                if (i >= 2) {
                    break;
                }
                zzmi zzmiVar = this.g[i];
                zzmiVarArr[i] = null;
                i++;
            }
            this.i = (zzaad) zzjcVar.e.zza();
            ((zziw) zzjcVar.d).zza();
            this.t = (zzaam) ((zziy) zzjcVar.g).zza();
            this.q = zzjcVar.m;
            this.H = zzjcVar.n;
            this.G = zzjcVar.o;
            Looper looper2 = zzjcVar.i;
            this.s = looper2;
            this.u = zzfcVar;
            this.f = zzmsVar;
            this.m = new zzed(new CopyOnWriteArraySet(), looper2, zzfcVar, new Object(), true);
            this.n = new CopyOnWriteArraySet();
            this.p = new ArrayList();
            this.a0 = new zzxz();
            this.I = zzjd.f9037a;
            int length2 = this.g.length;
            this.b = new zzaae(new zzml[2], new zzzw[2], zzbn.b, null);
            this.o = new zzbd();
            zzaw zzawVar = new zzaw();
            zzr zzrVar = zzawVar.f4442a;
            int[] iArr = {1, 2, 3, 13, 14, 15, 16, 17, 18, 19, 31, 20, 30, 21, 35, 22, 24, 27, 28, 32};
            for (int i2 = 0; i2 < 20; i2++) {
                zzrVar.a(iArr[i2]);
            }
            this.i.b();
            zzawVar.a(29, true);
            zzs b = zzrVar.b();
            this.f9067c = new zzax(b);
            zzr zzrVar2 = new zzaw().f4442a;
            for (int i3 = 0; i3 < b.f9235a.size(); i3++) {
                zzrVar2.a(b.a(i3));
            }
            zzrVar2.a(4);
            zzrVar2.a(10);
            this.J = new zzax(zzrVar2.b());
            this.j = this.u.a(this.s, null);
            zzjm zzjmVar = new zzjm(this);
            this.k = zzjmVar;
            this.X = zzma.a(this.b);
            this.r.t(this.f, this.s);
            final zzpn zzpnVar = new zzpn(zzjcVar.x);
            zzlc zzlcVar = new zzlc(this.e, this.g, this.h, this.i, this.b, (zzlg) zzjcVar.f.zza(), this.t, this.r, this.H, zzjcVar.y, zzjcVar.p, this.s, this.u, zzjmVar, zzpnVar, this.I, this.w);
            Looper looper3 = zzlcVar.n;
            zzdx zzdxVar = zzlcVar.l;
            this.l = zzlcVar;
            this.Q = 1.0f;
            zzan zzanVar = zzan.B;
            this.K = zzanVar;
            this.W = zzanVar;
            this.Y = -1;
            zzgux zzguxVar = zzcz.f5611a;
            this.S = true;
            zzoz zzozVar = this.r;
            zzozVar.getClass();
            this.m.a(zzozVar);
            this.t.a(new Handler(this.s), this.r);
            this.n.add(this.v);
            int i4 = Build.VERSION.SDK_INT;
            if (i4 >= 31) {
                final Context context2 = this.e;
                final boolean z2 = zzjcVar.v;
                ((zzfe) this.u.a(looper3, null)).g(new Runnable() { // from class: com.google.android.gms.internal.ads.zzjf
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zzpj p = zzpj.p(context2);
                        if (p == null) {
                            zzee.c("ExoPlayerImpl", "MediaMetricsService unavailable.");
                            return;
                        }
                        if (z2) {
                            this.c(p);
                        }
                        zzpnVar.a(p.q());
                    }
                });
            }
            zzdm zzdmVar = new zzdm(looper3, this.s, this.u, new zzjx(this));
            this.A = zzdmVar;
            Runnable runnable = new Runnable() { // from class: com.google.android.gms.internal.ads.zzkc
                @Override // java.lang.Runnable
                public final void run() {
                    String str2 = zzfj.f7405a;
                    zzkp zzkpVar = zzkp.this;
                    int generateAudioSessionId = zzcj.a(zzkpVar.e).generateAudioSessionId();
                    if (generateAudioSessionId == -1) {
                        generateAudioSessionId = 0;
                    }
                    final zzdm zzdmVar2 = zzkpVar.A;
                    final Integer valueOf = Integer.valueOf(generateAudioSessionId);
                    zzdmVar2.e = valueOf;
                    Runnable runnable2 = new Runnable() { // from class: com.google.android.gms.internal.ads.zzdi
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzdm zzdmVar3 = zzdm.this;
                            if (zzdmVar3.f == 0) {
                                Object obj = zzdmVar3.d;
                                Integer num = valueOf;
                                zzdmVar3.d = num;
                                if (!obj.equals(num)) {
                                    zzjx zzjxVar = (zzjx) zzdmVar3.f5896c;
                                    zzjxVar.getClass();
                                    int intValue = num.intValue();
                                    zzkp zzkpVar2 = zzjxVar.f9054a;
                                    zzkpVar2.p();
                                    zzkpVar2.q(1, 10, num);
                                    zzkpVar2.q(2, 10, num);
                                    zzka zzkaVar = new zzka(intValue);
                                    zzed zzedVar = zzkpVar2.m;
                                    zzedVar.c(21, zzkaVar);
                                    zzedVar.d();
                                }
                            }
                        }
                    };
                    zzdx zzdxVar2 = zzdmVar2.b;
                    if (!zzdxVar2.zza().getThread().isAlive()) {
                        return;
                    }
                    zzdxVar2.g(runnable2);
                }
            };
            zzdx zzdxVar2 = zzdmVar.f5895a;
            if (zzdxVar2.zza().getThread().isAlive()) {
                zzdxVar2.g(runnable);
            }
            zzfc zzfcVar2 = this.u;
            ?? obj = new Object();
            context.getApplicationContext();
            zzfcVar2.a(looper3, null);
            new zzbx(obj, zzfcVar2.a(looper, null));
            if (zzjcVar.s != Integer.MAX_VALUE && zzjcVar.t != Integer.MAX_VALUE) {
                z = true;
            } else {
                z = false;
            }
            zzfo zzfoVar = new zzfo(context, looper3, this.u);
            this.x = zzfoVar;
            if (zzfoVar.d != z) {
                zzfoVar.d = z;
                zzfoVar.b(z, zzfoVar.e);
            }
            zzfc zzfcVar3 = this.u;
            ?? obj2 = new Object();
            context.getApplicationContext();
            zzfcVar3.a(looper3, null);
            zzfcVar3.a(Looper.getMainLooper(), null);
            this.y = obj2;
            int i5 = zzm.f9109a;
            zzbv zzbvVar = zzbv.d;
            this.O = zzes.f6870c;
            if (i4 >= 34) {
                zzkoVar = new zzko(this, context);
            } else {
                zzkoVar = null;
            }
            this.C = zzkoVar;
            this.B = new zzfa(this, this.v, this.u, zzjcVar.r, zzjcVar.s, zzjcVar.t, zzjcVar.u);
            ((zzfd) zzdxVar.j(38, this.G)).a();
            ((zzfd) zzdxVar.a(this.P)).a();
            q(1, 3, this.P);
            q(2, 4, Integer.valueOf(this.N));
            q(2, 5, 0);
            q(1, 9, Boolean.valueOf(this.R));
            q(6, 8, this.w);
            q(-1, 16, Integer.valueOf(this.U));
            this.d.a();
        } catch (Throwable th) {
            this.d.a();
            throw th;
        }
    }

    public static long j(zzma zzmaVar) {
        zzbe zzbeVar = new zzbe();
        zzbd zzbdVar = new zzbd();
        zzbf zzbfVar = zzmaVar.f9110a;
        zzbfVar.o(zzmaVar.b.f9337a, zzbdVar);
        long j = zzmaVar.f9111c;
        if (j == -9223372036854775807L) {
            zzbfVar.b(zzbdVar.f4558c, zzbeVar, 0L).getClass();
            return 0L;
        }
        return j;
    }

    public static zzma l(zzma zzmaVar, int i) {
        zzma d = zzmaVar.d(i);
        if (i != 1 && i != 4) {
            return d;
        }
        return d.f(false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v6, types: [java.lang.Object, com.google.android.gms.internal.ads.zzdy] */
    public final void b(float f) {
        p();
        String str = zzfj.f7405a;
        float max = Math.max(0.0f, Math.min(f, 1.0f));
        if (this.Q == max) {
            return;
        }
        this.Q = max;
        ((zzfd) this.l.l.j(32, Float.valueOf(max))).a();
        ?? obj = new Object();
        zzed zzedVar = this.m;
        zzedVar.c(22, obj);
        zzedVar.d();
    }

    public final void c(zzmx zzmxVar) {
        this.r.f.a(zzmxVar);
    }

    public final void d(zzit zzitVar) {
        zzma zzmaVar = this.X;
        zzma g = zzmaVar.g(zzmaVar.b);
        g.p = g.r;
        g.q = 0L;
        zzma l = l(g, 1);
        if (zzitVar != null) {
            l = l.e(zzitVar);
        }
        this.D++;
        ((zzfd) this.l.l.zzc(6)).a();
        i(l, 0, false, 5, -9223372036854775807L, -1);
    }

    public final int e(zzma zzmaVar) {
        zzbf zzbfVar = zzmaVar.f9110a;
        if (zzbfVar.g()) {
            return this.Y;
        }
        return zzbfVar.o(zzmaVar.b.f9337a, this.o).f4558c;
    }

    public final long f(zzma zzmaVar) {
        long r = zzfj.r(0L);
        zzwg zzwgVar = zzmaVar.b;
        if (zzwgVar.b()) {
            zzbf zzbfVar = zzmaVar.f9110a;
            zzbfVar.o(zzwgVar.f9337a, this.o);
            long j = zzmaVar.f9111c;
            if (j == -9223372036854775807L) {
                zzbfVar.b(e(zzmaVar), this.f7143a, 0L).getClass();
                return r;
            }
            return zzfj.r(j) + r;
        }
        return zzfj.r(h(zzmaVar));
    }

    @Override // com.google.android.gms.internal.ads.zzbb
    public final int g() {
        p();
        if (zzx()) {
            return this.X.b.b;
        }
        return -1;
    }

    public final long h(zzma zzmaVar) {
        zzbf zzbfVar = zzmaVar.f9110a;
        if (zzbfVar.g()) {
            return zzfj.s(this.Z);
        }
        long j = zzmaVar.r;
        zzwg zzwgVar = zzmaVar.b;
        if (zzwgVar.b()) {
            return j;
        }
        zzbfVar.o(zzwgVar.f9337a, this.o);
        return j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0531 A[LOOP:0: B:101:0x0529->B:103:0x0531, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0544 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:111:0x054e A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:116:0x055a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:124:0x056d A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0579 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:135:0x058f A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:139:0x059d A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:143:0x05b8  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x04f9  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x04c1  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x049f  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x03ae  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x037c  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0357  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x039e  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0278  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x026e  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x0235  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x022b  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0229  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0233  */
    /* JADX WARN: Removed duplicated region for block: B:279:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0276  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x027b  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x028a  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0329  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x036f  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x03a2  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x03b7  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x03d1  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x03e5  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x03f3  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0410  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0434  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0449  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x045f  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x049c  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x04bd  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x04e1  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0508  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x00e3  */
    /* JADX WARN: Type inference failed for: r2v29, types: [java.lang.Object, com.google.android.gms.internal.ads.zzdy] */
    /* JADX WARN: Type inference failed for: r3v30, types: [java.lang.Object, com.google.android.gms.internal.ads.zzdy] */
    /* JADX WARN: Type inference failed for: r3v34, types: [java.lang.Object, com.google.android.gms.internal.ads.zzdy] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void i(final com.google.android.gms.internal.ads.zzma r31, final int r32, boolean r33, int r34, long r35, int r37) {
        /*
            Method dump skipped, instructions count: 1482
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzkp.i(com.google.android.gms.internal.ads.zzma, int, boolean, int, long, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x013b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.zzma k(com.google.android.gms.internal.ads.zzma r23, com.google.android.gms.internal.ads.zzbf r24, android.util.Pair r25) {
        /*
            Method dump skipped, instructions count: 356
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzkp.k(com.google.android.gms.internal.ads.zzma, com.google.android.gms.internal.ads.zzbf, android.util.Pair):com.google.android.gms.internal.ads.zzma");
    }

    public final Pair m(zzbf zzbfVar, int i, long j) {
        if (zzbfVar.g()) {
            this.Y = i;
            if (j == -9223372036854775807L) {
                j = 0;
            }
            this.Z = j;
            return null;
        }
        if (i == -1 || i >= zzbfVar.a()) {
            i = zzbfVar.k(false);
            zzbfVar.b(i, this.f7143a, 0L).getClass();
            j = zzfj.r(0L);
        }
        return zzbfVar.m(this.f7143a, this.o, i, zzfj.s(j));
    }

    /* JADX WARN: Type inference failed for: r7v4, types: [com.google.android.gms.internal.ads.zzdq, java.lang.Object] */
    public final void n(Surface surface) {
        long j;
        Object obj = this.L;
        boolean z = false;
        boolean z2 = true;
        if (obj != null && obj != surface) {
            z = true;
        }
        if (z) {
            j = this.z;
        } else {
            j = -9223372036854775807L;
        }
        zzlc zzlcVar = this.l;
        if (!zzlcVar.L && zzlcVar.n.getThread().isAlive()) {
            ?? obj2 = new Object();
            ((zzfd) zzlcVar.l.j(30, new Pair(surface, obj2))).a();
            if (j != -9223372036854775807L) {
                z2 = obj2.e(j);
            }
        }
        if (z) {
            Object obj3 = this.L;
            Surface surface2 = this.M;
            if (obj3 == surface2) {
                surface2.release();
                this.M = null;
            }
        }
        this.L = surface;
        if (!z2) {
            d(new zzit(2, new RuntimeException("Detaching surface timed out."), 1003));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.google.android.gms.internal.ads.zzdy] */
    public final void o(int i, int i2) {
        zzes zzesVar = this.O;
        if (i == zzesVar.f6871a && i2 == zzesVar.b) {
            return;
        }
        this.O = new zzes(i, i2);
        ?? obj = new Object();
        zzed zzedVar = this.m;
        zzedVar.c(24, obj);
        zzedVar.d();
        q(2, 14, new zzes(i, i2));
    }

    public final void p() {
        IllegalStateException illegalStateException;
        this.d.d();
        Thread currentThread = Thread.currentThread();
        Looper looper = this.s;
        if (currentThread != looper.getThread()) {
            String name = Thread.currentThread().getName();
            String name2 = looper.getThread().getName();
            String str = zzfj.f7405a;
            Locale locale = Locale.US;
            String n = android.support.v4.media.a.n("Player is accessed on the wrong thread.\nCurrent thread: '", name, "'\nExpected thread: '", name2, "'\nSee https://developer.android.com/guide/topics/media/issues/player-accessed-on-wrong-thread");
            if (!this.S) {
                if (this.T) {
                    illegalStateException = null;
                } else {
                    illegalStateException = new IllegalStateException();
                }
                zzee.d("ExoPlayerImpl", n, illegalStateException);
                this.T = true;
                return;
            }
            throw new IllegalStateException(n);
        }
    }

    public final void q(int i, int i2, Object obj) {
        zzlc zzlcVar;
        zzmi[] zzmiVarArr = this.g;
        int length = zzmiVarArr.length;
        int i3 = 0;
        while (true) {
            zzlcVar = this.l;
            if (i3 >= 2) {
                break;
            }
            zzmi zzmiVar = zzmiVarArr[i3];
            if (i == -1 || zzmiVar.zza() == i) {
                e(this.X);
                zzbf zzbfVar = this.X.f9110a;
                zzme zzmeVar = new zzme(zzlcVar, zzmiVar, zzlcVar.n);
                zzgqa.f(!zzmeVar.f);
                zzmeVar.f9115c = i2;
                zzgqa.f(!zzmeVar.f);
                zzmeVar.d = obj;
                zzgqa.f(!zzmeVar.f);
                zzmeVar.f = true;
                zzlcVar.a(zzmeVar);
            }
            i3++;
        }
        zzmi[] zzmiVarArr2 = this.h;
        int length2 = zzmiVarArr2.length;
        for (int i4 = 0; i4 < 2; i4++) {
            zzmi zzmiVar2 = zzmiVarArr2[i4];
            if (zzmiVar2 != null && (i == -1 || zzmiVar2.zza() == i)) {
                e(this.X);
                zzbf zzbfVar2 = this.X.f9110a;
                zzme zzmeVar2 = new zzme(zzlcVar, zzmiVar2, zzlcVar.n);
                zzgqa.f(!zzmeVar2.f);
                zzmeVar2.f9115c = i2;
                zzgqa.f(!zzmeVar2.f);
                zzmeVar2.d = obj;
                zzgqa.f(!zzmeVar2.f);
                zzmeVar2.f = true;
                zzlcVar.a(zzmeVar2);
            }
        }
    }

    public final long r() {
        p();
        if (!zzx()) {
            zzbf zzq = zzq();
            if (zzq.g()) {
                return -9223372036854775807L;
            }
            return zzfj.r(zzq.b(zzs(), this.f7143a, 0L).j);
        }
        zzma zzmaVar = this.X;
        zzwg zzwgVar = zzmaVar.b;
        zzbf zzbfVar = zzmaVar.f9110a;
        Object obj = zzwgVar.f9337a;
        zzbd zzbdVar = this.o;
        zzbfVar.o(obj, zzbdVar);
        return zzfj.r(zzbdVar.b(zzwgVar.b, zzwgVar.f9338c));
    }

    public final long s() {
        p();
        if (zzx()) {
            zzma zzmaVar = this.X;
            if (zzmaVar.k.equals(zzmaVar.b)) {
                return zzfj.r(this.X.p);
            }
            return r();
        }
        p();
        if (this.X.f9110a.g()) {
            return this.Z;
        }
        zzma zzmaVar2 = this.X;
        long j = 0;
        if (zzmaVar2.k.d != zzmaVar2.b.d) {
            return zzfj.r(zzmaVar2.f9110a.b(zzs(), this.f7143a, 0L).j);
        }
        long j2 = zzmaVar2.p;
        if (this.X.k.b()) {
            zzma zzmaVar3 = this.X;
            zzbd o = zzmaVar3.f9110a.o(zzmaVar3.k.f9337a, this.o);
            o.f.a(this.X.k.b).getClass();
        } else {
            j = j2;
        }
        zzma zzmaVar4 = this.X;
        zzmaVar4.f9110a.o(zzmaVar4.k.f9337a, this.o);
        return zzfj.r(j);
    }

    @Override // com.google.android.gms.internal.ads.zzbb
    public final long zzA() {
        p();
        return f(this.X);
    }

    @Override // com.google.android.gms.internal.ads.zzbb
    public final int zzh() {
        p();
        return this.X.e;
    }

    @Override // com.google.android.gms.internal.ads.zzbb
    public final int zzi() {
        p();
        return this.X.n;
    }

    @Override // com.google.android.gms.internal.ads.zzbb
    public final boolean zzk() {
        p();
        return this.X.l;
    }

    @Override // com.google.android.gms.internal.ads.zzbb
    public final void zzl() {
        p();
    }

    @Override // com.google.android.gms.internal.ads.zzbb
    public final void zzm() {
        p();
    }

    @Override // com.google.android.gms.internal.ads.zzbb
    public final zzbn zzp() {
        p();
        return this.X.i.d;
    }

    @Override // com.google.android.gms.internal.ads.zzbb
    public final zzbf zzq() {
        p();
        return this.X.f9110a;
    }

    @Override // com.google.android.gms.internal.ads.zzbb
    public final int zzr() {
        p();
        if (this.X.f9110a.g()) {
            return 0;
        }
        zzma zzmaVar = this.X;
        return zzmaVar.f9110a.e(zzmaVar.b.f9337a);
    }

    @Override // com.google.android.gms.internal.ads.zzbb
    public final int zzs() {
        p();
        int e = e(this.X);
        if (e == -1) {
            return 0;
        }
        return e;
    }

    @Override // com.google.android.gms.internal.ads.zzbb
    public final long zzu() {
        p();
        return zzfj.r(h(this.X));
    }

    @Override // com.google.android.gms.internal.ads.zzbb
    public final long zzw() {
        p();
        return zzfj.r(this.X.q);
    }

    @Override // com.google.android.gms.internal.ads.zzbb
    public final boolean zzx() {
        p();
        return this.X.b.b();
    }

    @Override // com.google.android.gms.internal.ads.zzbb
    public final int zzz() {
        p();
        if (zzx()) {
            return this.X.b.f9338c;
        }
        return -1;
    }
}
