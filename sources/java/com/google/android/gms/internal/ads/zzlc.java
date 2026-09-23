package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Pair;
import j$.util.Objects;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.jvm.internal.LongCompanionObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzlc implements Handler.Callback, zzwd, zzaac, zzly, zziq, zzmc, zzcc, zzacj {
    public static final long h0 = zzfj.r(10000);
    public static final /* synthetic */ int i0 = 0;
    public final zzdx A;
    public final boolean B;
    public final zzcd C;
    public zzmq D;
    public boolean F;
    public boolean G;
    public zzlb H;
    public int I;
    public zzma J;
    public zzkz K;
    public boolean L;
    public boolean N;
    public boolean O;
    public boolean Q;
    public boolean T;
    public int U;
    public zzlb V;
    public long W;
    public long X;
    public int Y;
    public boolean Z;
    public zzit a0;

    /* renamed from: c, reason: collision with root package name */
    public final zzmm[] f9081c;
    public zzjd c0;
    public boolean e0;
    public final zzmk[] f;
    public final boolean[] g;
    public final zzim g0;
    public final zzaad h;
    public final zzaae i;
    public final zzlg j;
    public final zzaam k;
    public final zzdx l;
    public final zzmb m;
    public final Looper n;
    public final zzbe o;
    public final zzbd p;
    public final long q;
    public final zzir r;
    public final ArrayList s;
    public final zzdn t;
    public final zzla u;
    public final zzln v;
    public final zzlz w;
    public final long x;
    public final zzpn y;
    public final zzmu z;
    public long d0 = -9223372036854775807L;
    public int R = 0;
    public boolean S = false;
    public boolean M = false;
    public float f0 = 1.0f;
    public zzmp E = zzmp.b;
    public long b0 = -9223372036854775807L;
    public long P = -9223372036854775807L;

    public zzlc(Context context, zzmi[] zzmiVarArr, zzmi[] zzmiVarArr2, zzaad zzaadVar, zzaae zzaaeVar, zzlg zzlgVar, zzaam zzaamVar, zzoz zzozVar, zzmq zzmqVar, zzim zzimVar, long j, Looper looper, zzfc zzfcVar, zzla zzlaVar, zzpn zzpnVar, zzjd zzjdVar, final zzacj zzacjVar) {
        Looper looper2;
        this.u = zzlaVar;
        this.h = zzaadVar;
        this.i = zzaaeVar;
        this.j = zzlgVar;
        this.k = zzaamVar;
        boolean z = false;
        this.D = zzmqVar;
        this.g0 = zzimVar;
        this.x = j;
        this.t = zzfcVar;
        this.y = zzpnVar;
        this.c0 = zzjdVar;
        this.z = zzozVar;
        this.q = zzlgVar.zzf();
        zzbf zzbfVar = zzbf.f4601a;
        zzma a2 = zzma.a(zzaaeVar);
        this.J = a2;
        this.K = new zzkz(a2);
        int length = zzmiVarArr.length;
        this.f = new zzmk[2];
        this.g = new boolean[2];
        zzmj d = zzaadVar.d();
        this.f9081c = new zzmm[2];
        int i = 0;
        boolean z2 = false;
        for (int i2 = 2; i < i2; i2 = 2) {
            zzmiVarArr[i].a(i, zzpnVar, zzfcVar);
            this.f[i] = zzmiVarArr[i].zzb();
            this.f[i].f(d);
            zzmi zzmiVar = zzmiVarArr2[i];
            if (zzmiVar != null) {
                zzmiVar.a(i, zzpnVar, zzfcVar);
                z2 = true;
            }
            this.f9081c[i] = new zzmm(zzmiVarArr[i], zzmiVarArr2[i], i);
            i++;
        }
        this.B = z2;
        this.r = new zzir(this);
        this.s = new ArrayList();
        this.o = new zzbe();
        this.p = new zzbd();
        zzgqa.f(zzaadVar.f3843a == null);
        zzaadVar.f3843a = this;
        zzaadVar.b = zzaamVar;
        this.Z = true;
        zzdx a3 = zzfcVar.a(looper, null);
        this.A = a3;
        this.v = new zzln(zzozVar, a3, new zzkv(this), zzjdVar);
        this.w = new zzlz(this, zzozVar, a3, zzpnVar);
        zzmb zzmbVar = new zzmb();
        this.m = zzmbVar;
        synchronized (zzmbVar.f9112a) {
            try {
                if (zzmbVar.b == null) {
                    if (zzmbVar.d == 0 && zzmbVar.f9113c == null) {
                        z = true;
                    }
                    zzgqa.f(z);
                    HandlerThread handlerThread = new HandlerThread("ExoPlayer:Playback", -16);
                    zzmbVar.f9113c = handlerThread;
                    handlerThread.start();
                    zzmbVar.b = zzmbVar.f9113c.getLooper();
                }
                zzmbVar.d++;
                looper2 = zzmbVar.b;
            } catch (Throwable th) {
                throw th;
            }
        }
        this.n = looper2;
        zzdx a4 = zzfcVar.a(looper2, this);
        this.l = a4;
        this.C = new zzcd(context, looper2, this);
        ((zzfd) ((zzfe) a4).j(35, new zzacj() { // from class: com.google.android.gms.internal.ads.zzkr
            @Override // com.google.android.gms.internal.ads.zzacj
            public final /* synthetic */ void j(long j2, long j3, zzv zzvVar, MediaFormat mediaFormat) {
                zzlc.this.j(j2, j3, zzvVar, mediaFormat);
            }
        })).a();
    }

    public static Pair A(zzbf zzbfVar, zzlb zzlbVar, int i, boolean z, zzbe zzbeVar, zzbd zzbdVar) {
        zzbf zzbfVar2;
        zzbf zzbfVar3 = zzlbVar.f9079a;
        if (!zzbfVar.g()) {
            if (true == zzbfVar3.g()) {
                zzbfVar2 = zzbfVar;
            } else {
                zzbfVar2 = zzbfVar3;
            }
            try {
                Pair m = zzbfVar2.m(zzbeVar, zzbdVar, zzlbVar.b, zzlbVar.f9080c);
                if (!zzbfVar.equals(zzbfVar2)) {
                    if (zzbfVar.e(m.first) != -1) {
                        if (zzbfVar2.o(m.first, zzbdVar).e && zzbfVar2.b(zzbdVar.f4558c, zzbeVar, 0L).k == zzbfVar2.e(m.first)) {
                            return zzbfVar.m(zzbeVar, zzbdVar, zzbfVar.o(m.first, zzbdVar).f4558c, zzlbVar.f9080c);
                        }
                    } else {
                        int X = X(zzbeVar, zzbdVar, i, z, m.first, zzbfVar2, zzbfVar);
                        if (X != -1) {
                            return zzbfVar.m(zzbeVar, zzbdVar, X, -9223372036854775807L);
                        }
                        return null;
                    }
                }
                return m;
            } catch (IndexOutOfBoundsException unused) {
                return null;
            }
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.google.android.gms.internal.ads.zzwe, java.lang.Object, com.google.android.gms.internal.ads.zzxy] */
    public static final boolean B(zzlk zzlkVar) {
        long zzl;
        if (zzlkVar != null) {
            try {
                ?? r1 = zzlkVar.f9089a;
                if (!zzlkVar.e) {
                    r1.zzc();
                } else {
                    zzxw[] zzxwVarArr = zzlkVar.f9090c;
                    for (int i = 0; i < 2; i++) {
                        zzxw zzxwVar = zzxwVarArr[i];
                        if (zzxwVar != null) {
                            zzxwVar.zzc();
                        }
                    }
                }
                if (!zzlkVar.e) {
                    zzl = 0;
                } else {
                    zzl = r1.zzl();
                }
                if (zzl != Long.MIN_VALUE) {
                    return true;
                }
            } catch (IOException unused) {
            }
        }
        return false;
    }

    public static int X(zzbe zzbeVar, zzbd zzbdVar, int i, boolean z, Object obj, zzbf zzbfVar, zzbf zzbfVar2) {
        zzbe zzbeVar2 = zzbeVar;
        zzbf zzbfVar3 = zzbfVar;
        Object obj2 = zzbfVar3.b(zzbfVar3.o(obj, zzbdVar).f4558c, zzbeVar, 0L).f4587a;
        for (int i2 = 0; i2 < zzbfVar2.a(); i2++) {
            if (zzbfVar2.b(i2, zzbeVar, 0L).f4587a.equals(obj2)) {
                return i2;
            }
        }
        int e = zzbfVar3.e(obj);
        int c2 = zzbfVar3.c();
        int i3 = -1;
        int i4 = 0;
        while (true) {
            if (i4 >= c2 || i3 != -1) {
                break;
            }
            zzbf zzbfVar4 = zzbfVar3;
            int l = zzbfVar4.l(e, zzbdVar, zzbeVar2, i, z);
            if (l == -1) {
                i3 = -1;
                break;
            }
            i3 = zzbfVar2.e(zzbfVar4.f(l));
            i4++;
            zzbfVar3 = zzbfVar4;
            e = l;
            zzbeVar2 = zzbeVar;
        }
        if (i3 == -1) {
            return -1;
        }
        return zzbfVar2.d(i3, zzbdVar, false).f4558c;
    }

    public final void C() {
        boolean z;
        for (int i = 0; i < 2; i++) {
            zzmm[] zzmmVarArr = this.f9081c;
            int q = zzmmVarArr[i].q();
            zzmm zzmmVar = zzmmVarArr[i];
            zzmi zzmiVar = zzmmVar.f9118a;
            zzmi zzmiVar2 = zzmmVar.f9119c;
            zzir zzirVar = this.r;
            zzmmVar.i(zzmiVar, zzirVar);
            if (zzmiVar2 != null) {
                if (zzmiVar2.zze() != 0 && zzmmVar.d != 3) {
                    z = true;
                } else {
                    z = false;
                }
                zzmmVar.i(zzmiVar2, zzirVar);
                zzmmVar.j(false);
                if (z) {
                    zzmi zzmiVar3 = zzmmVar.f9118a;
                    zzmiVar2.getClass();
                    zzmiVar2.l(17, zzmiVar3);
                }
            }
            zzmmVar.d = 0;
            n(i, false);
            this.U -= q;
        }
        this.d0 = -9223372036854775807L;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0033  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void D() {
        /*
            r10 = this;
            boolean r0 = r10.B
            if (r0 == 0) goto L5a
            boolean r0 = r10.W()
            if (r0 != 0) goto Lb
            goto L5a
        Lb:
            r0 = 0
            r1 = r0
        Ld:
            r2 = 2
            if (r1 >= r2) goto L53
            com.google.android.gms.internal.ads.zzmm[] r3 = r10.f9081c
            r3 = r3[r1]
            int r4 = r3.q()
            boolean r5 = r3.p()
            if (r5 != 0) goto L1f
            goto L46
        L1f:
            int r5 = r3.d
            r6 = 1
            r7 = 4
            if (r5 == r7) goto L2c
            if (r5 != r2) goto L29
        L27:
            r5 = r6
            goto L2e
        L29:
            r2 = r5
            r5 = r0
            goto L2e
        L2c:
            r2 = r5
            goto L27
        L2e:
            if (r5 == 0) goto L33
            com.google.android.gms.internal.ads.zzmi r8 = r3.f9118a
            goto L38
        L33:
            com.google.android.gms.internal.ads.zzmi r8 = r3.f9119c
            r8.getClass()
        L38:
            com.google.android.gms.internal.ads.zzir r9 = r10.r
            r3.i(r8, r9)
            r3.j(r5)
            if (r2 != r7) goto L43
            goto L44
        L43:
            r6 = r0
        L44:
            r3.d = r6
        L46:
            int r2 = r10.U
            int r3 = r3.q()
            int r4 = r4 - r3
            int r2 = r2 - r4
            r10.U = r2
            int r1 = r1 + 1
            goto Ld
        L53:
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r10.d0 = r0
        L5a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzlc.D():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:64:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void E() {
        /*
            Method dump skipped, instructions count: 357
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzlc.E():void");
    }

    public final boolean F() {
        zzlk zzlkVar = this.v.h;
        long j = zzlkVar.g.e;
        if (zzlkVar.e) {
            if (j == -9223372036854775807L || this.J.r < j || !U()) {
                return true;
            }
            return false;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:224:0x0227, code lost:
    
        r4.f.getClass();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0413  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x041c  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x03d2  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x0190  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x01ce  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x01e2  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x01ed  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x01f5  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x01fc  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x022f  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x034e  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x035d  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x03bb  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0373 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0392  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x039a  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0351  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x03cf  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x03de  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0441  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x03f4 A[ADDED_TO_REGION] */
    /* JADX WARN: Type inference failed for: r8v17 */
    /* JADX WARN: Type inference failed for: r8v18, types: [int] */
    /* JADX WARN: Type inference failed for: r8v30 */
    /* JADX WARN: Type inference failed for: r8v31 */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v8, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void G(com.google.android.gms.internal.ads.zzbf r32, boolean r33) {
        /*
            Method dump skipped, instructions count: 1100
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzlc.G(com.google.android.gms.internal.ads.zzbf, boolean):void");
    }

    public final void H(zzbf zzbfVar, zzwg zzwgVar, zzbf zzbfVar2, zzwg zzwgVar2, long j, boolean z) {
        Object obj;
        zzav zzavVar;
        if (!p(zzbfVar, zzwgVar)) {
            if (zzwgVar.b()) {
                zzavVar = zzav.d;
            } else {
                zzavVar = this.J.o;
            }
            zzir zzirVar = this.r;
            if (!zzirVar.zzj().equals(zzavVar)) {
                this.l.h(16);
                zzirVar.j(zzavVar);
                L(this.J.o, zzavVar.f4431a, false, false);
                return;
            }
            return;
        }
        Object obj2 = zzwgVar.f9337a;
        zzbd zzbdVar = this.p;
        int i = zzbfVar.o(obj2, zzbdVar).f4558c;
        zzbe zzbeVar = this.o;
        zzbfVar.b(i, zzbeVar, 0L);
        zzaf zzafVar = zzbeVar.h;
        String str = zzfj.f7405a;
        zzim zzimVar = this.g0;
        zzimVar.getClass();
        zzafVar.getClass();
        long s = zzfj.s(-9223372036854775807L);
        zzimVar.f9018c = s;
        zzimVar.f = s;
        zzimVar.g = s;
        zzimVar.c();
        if (j != -9223372036854775807L) {
            zzimVar.d = o(zzbfVar, obj2, j);
            zzimVar.c();
            return;
        }
        Object obj3 = zzbeVar.f4587a;
        if (!zzbfVar2.g()) {
            obj = zzbfVar2.b(zzbfVar2.o(zzwgVar2.f9337a, zzbdVar).f4558c, zzbeVar, 0L).f4587a;
        } else {
            obj = null;
        }
        if (Objects.equals(obj, obj3) && !z) {
            return;
        }
        zzimVar.d = -9223372036854775807L;
        zzimVar.c();
    }

    public final long I(zzlk zzlkVar) {
        if (zzlkVar == null) {
            return 0L;
        }
        long j = zzlkVar.p;
        if (zzlkVar.e) {
            for (int i = 0; i < 2; i++) {
                zzmm[] zzmmVarArr = this.f9081c;
                if (zzmmVarArr[i].m(zzlkVar) != null) {
                    zzmi m = zzmmVarArr[i].m(zzlkVar);
                    Objects.requireNonNull(m);
                    long zzk = m.zzk();
                    if (zzk == Long.MIN_VALUE) {
                        return Long.MIN_VALUE;
                    }
                    j = Math.max(zzk, j);
                }
            }
        }
        return j;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0089  */
    /* JADX WARN: Type inference failed for: r1v0, types: [com.google.android.gms.internal.ads.zzwe, java.lang.Object, com.google.android.gms.internal.ads.zzxy] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void J() {
        /*
            r10 = this;
            com.google.android.gms.internal.ads.zzln r0 = r10.v
            r0.z()
            com.google.android.gms.internal.ads.zzlk r0 = r0.l
            if (r0 == 0) goto L90
            java.lang.Object r1 = r0.f9089a
            boolean r2 = r0.d
            if (r2 == 0) goto L13
            boolean r2 = r0.e
            if (r2 == 0) goto L90
        L13:
            boolean r2 = r1.zzn()
            if (r2 != 0) goto L90
            com.google.android.gms.internal.ads.zzma r2 = r10.J
            com.google.android.gms.internal.ads.zzbf r2 = r2.f9110a
            boolean r2 = r0.e
            if (r2 == 0) goto L24
            r1.zzi()
        L24:
            com.google.android.gms.internal.ads.zzlg r2 = r10.j
            boolean r2 = r2.zzj()
            if (r2 != 0) goto L2d
            goto L90
        L2d:
            boolean r2 = r0.d
            r3 = 1
            if (r2 != 0) goto L3c
            com.google.android.gms.internal.ads.zzll r2 = r0.g
            long r4 = r2.b
            r0.d = r3
            r1.h(r10, r4)
            return
        L3c:
            com.google.android.gms.internal.ads.zzlh r2 = new com.google.android.gms.internal.ads.zzlh
            r2.<init>()
            long r4 = r10.W
            long r6 = r0.p
            long r4 = r4 - r6
            r2.f9085a = r4
            com.google.android.gms.internal.ads.zzir r4 = r10.r
            com.google.android.gms.internal.ads.zzav r4 = r4.zzj()
            float r4 = r4.f4431a
            r5 = 0
            int r5 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
            r6 = 0
            if (r5 > 0) goto L5d
            r5 = -8388609(0xffffffffff7fffff, float:-3.4028235E38)
            int r5 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
            if (r5 != 0) goto L5f
        L5d:
            r5 = r3
            goto L60
        L5f:
            r5 = r6
        L60:
            com.google.android.gms.internal.ads.zzgqa.a(r5)
            r2.b = r4
            long r4 = r10.P
            r7 = 0
            int r7 = (r4 > r7 ? 1 : (r4 == r7 ? 0 : -1))
            if (r7 >= 0) goto L77
            r7 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r9 = (r4 > r7 ? 1 : (r4 == r7 ? 0 : -1))
            if (r9 != 0) goto L79
            r4 = r7
        L77:
            r7 = r3
            goto L7a
        L79:
            r7 = r6
        L7a:
            com.google.android.gms.internal.ads.zzgqa.a(r7)
            r2.f9086c = r4
            com.google.android.gms.internal.ads.zzli r4 = new com.google.android.gms.internal.ads.zzli
            r4.<init>(r2)
            com.google.android.gms.internal.ads.zzlk r0 = r0.m
            if (r0 != 0) goto L89
            goto L8a
        L89:
            r3 = r6
        L8a:
            com.google.android.gms.internal.ads.zzgqa.f(r3)
            r1.a(r4)
        L90:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzlc.J():void");
    }

    public final void K() {
        zzlk zzlkVar = this.v.h;
        boolean z = false;
        if (zzlkVar != null && zzlkVar.g.g && this.M) {
            z = true;
        }
        this.N = z;
    }

    public final void L(zzav zzavVar, float f, boolean z, boolean z2) {
        int i;
        if (z) {
            if (z2) {
                this.K.a(1);
            }
            zzma zzmaVar = this.J;
            this.J = new zzma(zzmaVar.f9110a, zzmaVar.b, zzmaVar.f9111c, zzmaVar.d, zzmaVar.e, zzmaVar.f, zzmaVar.g, zzmaVar.h, zzmaVar.i, zzmaVar.j, zzmaVar.k, zzmaVar.l, zzmaVar.m, zzmaVar.n, zzavVar, zzmaVar.p, zzmaVar.q, zzmaVar.r, zzmaVar.s);
        }
        float f2 = zzavVar.f4431a;
        zzlk zzlkVar = this.v.h;
        while (true) {
            i = 0;
            if (zzlkVar == null) {
                break;
            }
            zzzw[] zzzwVarArr = zzlkVar.o.f3845c;
            int length = zzzwVarArr.length;
            while (i < length) {
                zzzw zzzwVar = zzzwVarArr[i];
                i++;
            }
            zzlkVar = zzlkVar.m;
        }
        zzmm[] zzmmVarArr = this.f9081c;
        while (i < 2) {
            zzmm zzmmVar = zzmmVarArr[i];
            zzmmVar.f9118a.q(f, f2);
            zzmi zzmiVar = zzmmVar.f9119c;
            if (zzmiVar != null) {
                zzmiVar.q(f, f2);
            }
            i++;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x00f0  */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Object, com.google.android.gms.internal.ads.zzxy] */
    /* JADX WARN: Type inference failed for: r8v1, types: [java.lang.Object, com.google.android.gms.internal.ads.zzxy] */
    /* JADX WARN: Type inference failed for: r8v17, types: [com.google.android.gms.internal.ads.zzwe, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void M() {
        /*
            Method dump skipped, instructions count: 253
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzlc.M():void");
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.Object, com.google.android.gms.internal.ads.zzxy] */
    public final void N() {
        zzlk zzlkVar = this.v.k;
        boolean z = true;
        if (!this.Q && (zzlkVar == null || !zzlkVar.f9089a.zzn())) {
            z = false;
        }
        zzma zzmaVar = this.J;
        if (z != zzmaVar.g) {
            this.J = zzmaVar.f(z);
        }
    }

    /* JADX WARN: Type inference failed for: r12v2, types: [com.google.android.gms.internal.ads.zzgta, com.google.android.gms.internal.ads.zzgsx] */
    public final zzma O(zzwg zzwgVar, long j, long j2, long j3, boolean z, int i) {
        boolean z2;
        zzyh zzyhVar;
        zzaae zzaaeVar;
        List list;
        zzyh zzyhVar2;
        zzaae zzaaeVar2;
        zzgtd zzgtdVar;
        zzyh zzyhVar3;
        boolean z3 = false;
        if (this.Z || j != this.J.r || !zzwgVar.equals(this.J.b)) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.Z = z2;
        K();
        zzma zzmaVar = this.J;
        zzyh zzyhVar4 = zzmaVar.h;
        zzaae zzaaeVar3 = zzmaVar.i;
        List list2 = zzmaVar.j;
        if (this.w.j) {
            zzln zzlnVar = this.v;
            zzlk zzlkVar = zzlnVar.h;
            if (zzlkVar == null) {
                zzyhVar2 = zzyh.d;
            } else {
                zzyhVar2 = zzlkVar.n;
            }
            if (zzlkVar == null) {
                zzaaeVar2 = this.i;
            } else {
                zzaaeVar2 = zzlkVar.o;
            }
            zzzw[] zzzwVarArr = zzaaeVar2.f3845c;
            ?? zzgsxVar = new zzgsx(4);
            int length = zzzwVarArr.length;
            int i2 = 0;
            boolean z4 = false;
            while (i2 < length) {
                zzzw zzzwVar = zzzwVarArr[i2];
                if (zzzwVar != null) {
                    zzap zzapVar = zzzwVar.zzb(0).k;
                    if (zzapVar == null) {
                        zzyhVar3 = zzyhVar2;
                        zzgsxVar.c(new zzap(new zzao[0]));
                    } else {
                        zzyhVar3 = zzyhVar2;
                        zzgsxVar.c(zzapVar);
                        z4 = true;
                    }
                } else {
                    zzyhVar3 = zzyhVar2;
                }
                i2++;
                zzyhVar2 = zzyhVar3;
            }
            zzyh zzyhVar5 = zzyhVar2;
            if (z4) {
                zzgtdVar = zzgsxVar.f();
            } else {
                zzgvs zzgvsVar = zzgtd.f;
                zzgtdVar = zzguy.i;
            }
            if (zzlkVar != null) {
                zzll zzllVar = zzlkVar.g;
                if (zzllVar.f9092c != j2) {
                    zzlkVar.g = zzllVar.b(j2);
                }
            }
            zzlk zzlkVar2 = zzlnVar.h;
            if (zzlkVar2 == zzlnVar.i && zzlkVar2 != null) {
                zzaae zzaaeVar4 = zzlkVar2.o;
                int i3 = 0;
                while (true) {
                    zzmm[] zzmmVarArr = this.f9081c;
                    if (i3 >= 2) {
                        break;
                    }
                    if (zzaaeVar4.a(i3)) {
                        if (zzmmVarArr[i3].f9118a.zza() != 1) {
                            break;
                        }
                        zzaaeVar4.b[i3].getClass();
                    }
                    i3++;
                }
            }
            list = zzgtdVar;
            zzaaeVar = zzaaeVar2;
            zzyhVar = zzyhVar5;
        } else {
            if (!zzwgVar.equals(zzmaVar.b)) {
                zzaaeVar3 = this.i;
                zzyhVar4 = zzyh.d;
                list2 = zzguy.i;
            }
            zzyhVar = zzyhVar4;
            zzaaeVar = zzaaeVar3;
            list = list2;
        }
        if (z) {
            zzkz zzkzVar = this.K;
            if (zzkzVar.d && zzkzVar.e != 5) {
                if (i == 5) {
                    z3 = true;
                }
                zzgqa.a(z3);
            } else {
                zzkzVar.f9076a = true;
                zzkzVar.d = true;
                zzkzVar.e = i;
            }
        }
        zzma zzmaVar2 = this.J;
        return zzmaVar2.b(zzwgVar, j, j2, j3, S(zzmaVar2.p), zzyhVar, zzaaeVar, list);
    }

    public final void P(boolean[] zArr, long j) {
        zzmm[] zzmmVarArr;
        long j2;
        zzlk zzlkVar = this.v.i;
        zzaae zzaaeVar = zzlkVar.o;
        int i = 0;
        while (true) {
            zzmmVarArr = this.f9081c;
            if (i >= 2) {
                break;
            }
            if (!zzaaeVar.a(i)) {
                zzmmVarArr[i].b();
            }
            i++;
        }
        int i2 = 0;
        while (i2 < 2) {
            if (!zzaaeVar.a(i2) || zzmmVarArr[i2].m(zzlkVar) != null) {
                j2 = j;
            } else {
                j2 = j;
                Q(zzlkVar, i2, zArr[i2], j2);
            }
            i2++;
            j = j2;
        }
    }

    public final void Q(zzlk zzlkVar, int i, boolean z, long j) {
        boolean z2;
        boolean z3;
        boolean z4;
        int i2;
        zzmm zzmmVar = this.f9081c[i];
        if (!zzmmVar.g()) {
            if (zzlkVar == this.v.h) {
                z2 = true;
            } else {
                z2 = false;
            }
            zzaae zzaaeVar = zzlkVar.o;
            zzml zzmlVar = zzaaeVar.b[i];
            zzzw zzzwVar = zzaaeVar.f3845c[i];
            if (U() && this.J.e == 3) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (!z && z3) {
                z4 = true;
            } else {
                z4 = false;
            }
            this.U++;
            zzxw zzxwVar = zzlkVar.f9090c[i];
            long j2 = zzlkVar.p;
            zzwg zzwgVar = zzlkVar.g.f9091a;
            if (zzzwVar != null) {
                i2 = zzzwVar.zze();
            } else {
                i2 = 0;
            }
            zzv[] zzvVarArr = new zzv[i2];
            for (int i3 = 0; i3 < i2; i3++) {
                zzzwVar.getClass();
                zzvVarArr[i3] = zzzwVar.zzb(i3);
            }
            int i4 = zzmmVar.d;
            zzir zzirVar = this.r;
            if (i4 != 0 && i4 != 2 && i4 != 4) {
                zzmmVar.f = true;
                zzmi zzmiVar = zzmmVar.f9119c;
                zzmiVar.getClass();
                zzmiVar.p(zzmlVar, zzvVarArr, zzxwVar, z4, z2, j, j2, zzwgVar);
                zzirVar.a(zzmiVar);
            } else {
                zzmmVar.e = true;
                zzmi zzmiVar2 = zzmmVar.f9118a;
                zzmiVar2.p(zzmlVar, zzvVarArr, zzxwVar, z4, z2, j, j2, zzwgVar);
                zzirVar.a(zzmiVar2);
            }
            zzkq zzkqVar = new zzkq(this);
            zzmi m = zzmmVar.m(zzlkVar);
            m.getClass();
            m.l(11, zzkqVar);
            if (z3 && z2) {
                zzmmVar.B();
            }
        }
    }

    public final void R(boolean z) {
        zzwg zzwgVar;
        long d;
        zzlk zzlkVar = this.v.k;
        if (zzlkVar == null) {
            zzwgVar = this.J.b;
        } else {
            zzwgVar = zzlkVar.g.f9091a;
        }
        boolean equals = this.J.k.equals(zzwgVar);
        if (!equals) {
            this.J = this.J.g(zzwgVar);
        }
        zzma zzmaVar = this.J;
        if (zzlkVar == null) {
            d = zzmaVar.r;
        } else {
            d = zzlkVar.d();
        }
        zzmaVar.p = d;
        zzma zzmaVar2 = this.J;
        zzmaVar2.q = S(zzmaVar2.p);
        if ((!equals || z) && zzlkVar != null && zzlkVar.e) {
            T(zzlkVar.g.f9091a, zzlkVar.n, zzlkVar.o);
        }
    }

    public final long S(long j) {
        zzlk zzlkVar = this.v.k;
        if (zzlkVar == null) {
            return 0L;
        }
        return Math.max(0L, j - (this.W - zzlkVar.p));
    }

    public final void T(zzwg zzwgVar, zzyh zzyhVar, zzaae zzaaeVar) {
        long j;
        long j2;
        long j3;
        zzln zzlnVar = this.v;
        zzlk zzlkVar = zzlnVar.k;
        zzlkVar.getClass();
        if (zzlkVar == zzlnVar.h) {
            j = this.W;
            j2 = zzlkVar.p;
        } else {
            j = this.W - zzlkVar.p;
            j2 = zzlkVar.g.b;
        }
        long j4 = j - j2;
        long S = S(zzlkVar.d());
        if (p(this.J.f9110a, zzlkVar.g.f9091a)) {
            j3 = this.g0.h;
        } else {
            j3 = -9223372036854775807L;
        }
        long j5 = j3;
        zzbf zzbfVar = this.J.f9110a;
        float f = this.r.zzj().f4431a;
        boolean z = this.J.l;
        this.j.b(new zzlf(this.y, zzbfVar, zzwgVar, j4, S, f, this.O, j5), zzaaeVar.f3845c);
    }

    public final boolean U() {
        zzma zzmaVar = this.J;
        if (zzmaVar.l && zzmaVar.n == 0) {
            return true;
        }
        return false;
    }

    public final void V(int i) {
        zzmm zzmmVar = this.f9081c[i];
        try {
            zzlk zzlkVar = this.v.h;
            if (zzlkVar != null) {
                zzmi m = zzmmVar.m(zzlkVar);
                m.getClass();
                m.zzn();
                return;
            }
            throw null;
        } catch (IOException | RuntimeException e) {
            zzmmVar.f9118a.getClass();
            throw e;
        }
    }

    public final boolean W() {
        if (!this.B) {
            return false;
        }
        for (int i = 0; i < 2; i++) {
            if (this.f9081c[i].p()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzmc
    public final void a(zzme zzmeVar) {
        if (!this.L && this.n.getThread().isAlive()) {
            ((zzfd) this.l.j(14, zzmeVar)).a();
        } else {
            zzee.c("ExoPlayerImplInternal", "Ignoring messages sent after release.");
            zzmeVar.a(false);
        }
    }

    public final void b(IOException iOException, int i) {
        zzit zzitVar = new zzit(0, iOException, i);
        zzlk zzlkVar = this.v.h;
        if (zzlkVar != null) {
            zzitVar = zzitVar.a(zzlkVar.g.f9091a);
        }
        zzee.f("ExoPlayerImplInternal", "Playback error", zzitVar);
        v(false, false);
        this.J = this.J.e(zzitVar);
    }

    public final void c(int i) {
        zzma zzmaVar = this.J;
        if (zzmaVar.e != i) {
            if (i != 2) {
                this.b0 = -9223372036854775807L;
            }
            this.J = zzmaVar.d(i);
        }
    }

    public final void d() {
        boolean z;
        zzkz zzkzVar = this.K;
        zzma zzmaVar = this.J;
        boolean z2 = zzkzVar.f9076a;
        if (zzkzVar.b != zzmaVar) {
            z = true;
        } else {
            z = false;
        }
        boolean z3 = z2 | z;
        zzkzVar.f9076a = z3;
        zzkzVar.b = zzmaVar;
        if (z3) {
            this.u.a(zzkzVar);
            this.K = new zzkz(this.J);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzwd
    public final void e(zzwe zzweVar) {
        ((zzfd) this.l.j(8, zzweVar)).a();
    }

    @Override // com.google.android.gms.internal.ads.zzxx
    public final /* bridge */ /* synthetic */ void f(zzxy zzxyVar) {
        ((zzfd) this.l.j(9, (zzwe) zzxyVar)).a();
    }

    public final void g(float f) {
        this.f0 = f;
        float f2 = f * this.C.g;
        for (int i = 0; i < 2; i++) {
            zzmm zzmmVar = this.f9081c[i];
            zzmi zzmiVar = zzmmVar.f9118a;
            if (zzmiVar.zza() == 1) {
                Float valueOf = Float.valueOf(f2);
                zzmiVar.l(2, valueOf);
                zzmi zzmiVar2 = zzmmVar.f9119c;
                if (zzmiVar2 != null) {
                    zzmiVar2.l(2, valueOf);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0017  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0019  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0010  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x000e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void h(int r7, int r8, int r9, boolean r10) {
        /*
            r6 = this;
            r0 = -1
            r1 = 1
            r2 = 0
            if (r10 == 0) goto La
            if (r7 == r0) goto L9
            r10 = r1
            goto Lb
        L9:
            r7 = r0
        La:
            r10 = r2
        Lb:
            r3 = 2
            if (r7 != r0) goto L10
            r9 = r3
            goto L13
        L10:
            if (r9 != r3) goto L13
            r9 = r1
        L13:
            boolean r0 = r6.F
            if (r7 != 0) goto L19
            r8 = r1
            goto L20
        L19:
            if (r8 != r1) goto L20
            if (r0 == 0) goto L1f
            r8 = 4
            goto L20
        L1f:
            r8 = r2
        L20:
            com.google.android.gms.internal.ads.zzma r7 = r6.J
            boolean r0 = r7.l
            if (r0 != r10) goto L2e
            int r0 = r7.n
            if (r0 != r8) goto L2e
            int r0 = r7.m
            if (r0 == r9) goto L8b
        L2e:
            com.google.android.gms.internal.ads.zzma r7 = r7.h(r9, r8, r10)
            r6.J = r7
            r6.z(r2, r2)
            com.google.android.gms.internal.ads.zzln r7 = r6.v
            com.google.android.gms.internal.ads.zzlk r8 = r7.h
        L3b:
            if (r8 == 0) goto L4d
            com.google.android.gms.internal.ads.zzaae r9 = r8.o
            com.google.android.gms.internal.ads.zzzw[] r9 = r9.f3845c
            int r10 = r9.length
            r0 = r2
        L43:
            if (r0 >= r10) goto L4a
            r4 = r9[r0]
            int r0 = r0 + 1
            goto L43
        L4a:
            com.google.android.gms.internal.ads.zzlk r8 = r8.m
            goto L3b
        L4d:
            boolean r8 = r6.U()
            if (r8 != 0) goto L64
            r6.l()
            r6.m()
            com.google.android.gms.internal.ads.zzma r8 = r6.J
            r8.getClass()
            long r8 = r6.W
            r7.n(r8)
            return
        L64:
            com.google.android.gms.internal.ads.zzma r7 = r6.J
            int r7 = r7.e
            r8 = 3
            com.google.android.gms.internal.ads.zzdx r9 = r6.l
            if (r7 != r8) goto L86
            com.google.android.gms.internal.ads.zzir r7 = r6.r
            r7.j = r1
            com.google.android.gms.internal.ads.zzmt r7 = r7.f9025c
            boolean r8 = r7.f9126c
            if (r8 != 0) goto L7f
            long r4 = android.os.SystemClock.elapsedRealtime()
            r7.g = r4
            r7.f9126c = r1
        L7f:
            r6.k()
            r9.e(r3)
            return
        L86:
            if (r7 != r3) goto L8b
            r9.e(r3)
        L8b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzlc.h(int, int, int, boolean):void");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(11:165|166|167|169|(3:391|392|(21:394|(1:678)(5:398|(2:400|401)(2:674|(1:676))|402|(1:404)|405)|406|(1:408)(1:673)|409|(1:672)(3:425|(2:427|(2:429|(2:430|(3:432|(2:441|442)(2:438|439)|440)(3:443|444|(2:446|(1:448)))))(1:669))(1:671)|670)|449|(17:542|(3:565|566|(13:568|(2:570|(2:571|(2:573|(1:575)(1:576))(3:577|578|(10:587|(2:589|590)|592|593|594|(8:600|(3:604|(3:606|(2:608|(2:612|613))(1:617)|615)|618)|619|(1:621)|622|623|(1:625)|626)|629|(1:631)|632|626))))(1:634)|452|(2:459|(2:460|(1:462)(2:463|(4:465|(3:467|(1:478)(3:469|(1:471)(1:477)|(2:473|474)(1:476))|475)|479|480))))|481|(4:(1:495)|496|(10:498|(2:500|(2:502|(8:506|507|(3:511|(1:513)|514)|515|(1:517)|518|(2:519|(3:521|(2:523|524)(1:526)|525))|528)))(1:530)|529|507|(4:509|511|(0)|514)|515|(0)|518|(3:519|(1:1)(0)|525)|528)(3:531|532|533)|482)|535|536|172|173|(3:175|(2:178|(2:180|181)(19:182|183|(2:185|(2:186|(3:188|(4:190|191|192|193)(8:195|196|197|198|(1:212)(1:202)|203|(1:211)(1:206)|(2:208|209)(1:210))|194)(2:213|214)))(1:334)|215|(4:223|(1:225)|226|(10:228|229|(2:231|(2:232|(4:234|(1:236)(1:242)|(2:238|239)(1:241)|240)(3:243|244|(7:252|(1:254)(2:272|(1:274)(2:275|276))|255|(1:271)(1:259)|260|(1:270)|263))))|277|255|(1:257)|271|260|(1:262)(1:270)|263))|278|(2:280|(1:282)(1:(13:311|(7:313|(1:315)(1:331)|316|(1:330)(1:320)|321|(1:329)(1:325)|(1:328))|284|(3:286|(1:288)|289)|229|(0)|277|255|(0)|271|260|(0)(0)|263)))|332|290|(2:292|(2:294|(4:296|297|(4:299|(4:301|(1:303)|304|305)|306|307)|308))(0))|229|(0)|277|255|(0)|271|260|(0)(0)|263))|177)|10|11))|544|545|(3:549|(4:551|(1:553)(1:563)|(2:560|561)|557)|564)|452|(4:454|456|459|(3:460|(0)(0)|462))|481|(9:484|486|488|490|492|(0)|496|(0)(0)|482)|541|535|536|172|173|(0)|10|11)|451|452|(0)|481|(1:482)|541|535|536|172|173|(0)|10|11))|171|172|173|(0)|10|11) */
    /* JADX WARN: Code restructure failed: missing block: B:283:0x0a8e, code lost:
    
        if (r6 != false) goto L562;
     */
    /* JADX WARN: Code restructure failed: missing block: B:309:0x0ac9, code lost:
    
        if (r38 == false) goto L576;
     */
    /* JADX WARN: Code restructure failed: missing block: B:335:0x0998, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:591:0x06b6, code lost:
    
        if ((((float) (r2.a() - r37.W)) / r37.r.zzj().f4431a) <= r20) goto L334;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0012. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 17, insn: 0x0977: MOVE (r11 I:??[OBJECT, ARRAY]) = (r17 I:??[OBJECT, ARRAY]) (LINE:2424), block:B:758:0x0977 */
    /* JADX WARN: Not initialized variable reg: 18, insn: 0x0979: MOVE (r12 I:??[OBJECT, ARRAY]) = (r18 I:??[OBJECT, ARRAY]) (LINE:2426), block:B:758:0x0977 */
    /* JADX WARN: Removed duplicated region for block: B:175:0x090c  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x0b02  */
    /* JADX WARN: Removed duplicated region for block: B:257:0x0b65 A[Catch: IOException -> 0x0029, zzvg -> 0x002c, zzhc -> 0x002f, zzat -> 0x0032, zztc -> 0x0035, RuntimeException -> 0x0973, zzit -> 0x0976, TryCatch #28 {zzit -> 0x0976, RuntimeException -> 0x0973, blocks: (B:194:0x0990, B:198:0x0962, B:200:0x0969, B:203:0x097d, B:208:0x098d, B:215:0x09ad, B:217:0x09b3, B:221:0x09bb, B:223:0x09c3, B:225:0x09c7, B:226:0x09e1, B:228:0x09e7, B:229:0x0afc, B:232:0x0b03, B:234:0x0b07, B:238:0x0b14, B:240:0x0b17, B:244:0x0b1a, B:246:0x0b20, B:248:0x0b29, B:250:0x0b31, B:252:0x0b37, B:254:0x0b3d, B:255:0x0b5f, B:257:0x0b65, B:260:0x0b6f, B:263:0x0b8a, B:268:0x0b83, B:270:0x0b87, B:272:0x0b44, B:275:0x0b52, B:276:0x0b5a, B:277:0x0b5b, B:278:0x09f0, B:280:0x09f6, B:282:0x09fa, B:284:0x0a90, B:286:0x0a9c, B:288:0x0aab, B:289:0x0ab3, B:290:0x0ab7, B:292:0x0abe, B:294:0x0ac2, B:297:0x0acb, B:299:0x0ada, B:301:0x0ae0, B:303:0x0aea, B:305:0x0aef, B:307:0x0af4, B:308:0x0af9, B:311:0x0a08, B:313:0x0a0c, B:315:0x0a1e, B:316:0x0a29, B:318:0x0a31, B:321:0x0a3a, B:323:0x0a44, B:328:0x0a4f, B:334:0x09a2, B:687:0x0b96, B:690:0x0ba1), top: B:4:0x0012 }] */
    /* JADX WARN: Removed duplicated region for block: B:262:0x0b7b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:264:0x0b7c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:340:0x0c1b  */
    /* JADX WARN: Removed duplicated region for block: B:347:0x0c34  */
    /* JADX WARN: Removed duplicated region for block: B:357:0x0c74 A[ADDED_TO_REGION, LOOP:8: B:357:0x0c74->B:360:0x0c7c, LOOP_START, PHI: r2
      0x0c74: PHI (r2v33 com.google.android.gms.internal.ads.zzlk) = (r2v31 com.google.android.gms.internal.ads.zzlk), (r2v34 com.google.android.gms.internal.ads.zzlk) binds: [B:356:0x0c71, B:360:0x0c7c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:365:0x0c8b  */
    /* JADX WARN: Removed duplicated region for block: B:368:0x0c99  */
    /* JADX WARN: Removed duplicated region for block: B:371:0x0ca3  */
    /* JADX WARN: Removed duplicated region for block: B:380:0x0cdf  */
    /* JADX WARN: Removed duplicated region for block: B:454:0x07cb A[Catch: IOException -> 0x0029, zzvg -> 0x002c, zzhc -> 0x002f, zzat -> 0x0032, zztc -> 0x0035, RuntimeException -> 0x0522, zzit -> 0x0525, TryCatch #14 {RuntimeException -> 0x0522, blocks: (B:401:0x0514, B:402:0x053a, B:404:0x0540, B:405:0x0545, B:406:0x0550, B:408:0x0554, B:409:0x0563, B:411:0x0567, B:413:0x056b, B:415:0x056f, B:417:0x0575, B:419:0x057b, B:421:0x0581, B:423:0x0587, B:425:0x058f, B:427:0x05b1, B:429:0x05bb, B:430:0x05c1, B:432:0x05c5, B:434:0x05cb, B:436:0x05d3, B:438:0x05db, B:440:0x05f8, B:444:0x05fd, B:446:0x060a, B:448:0x0618, B:449:0x0637, B:452:0x07c5, B:454:0x07cb, B:456:0x07d1, B:459:0x07d6, B:460:0x07e1, B:462:0x07e5, B:467:0x080a, B:469:0x0810, B:473:0x081e, B:475:0x0826, B:480:0x0829, B:482:0x0832, B:536:0x0900, B:173:0x0905, B:178:0x0912, B:181:0x091c, B:183:0x0922, B:185:0x092e, B:186:0x0947, B:188:0x094b, B:191:0x0954, B:196:0x095e, B:484:0x083d, B:486:0x0841, B:488:0x0847, B:490:0x084d, B:492:0x0857, B:495:0x085d, B:496:0x0860, B:498:0x0869, B:500:0x087b, B:502:0x0884, B:504:0x088c, B:507:0x0898, B:509:0x08c3, B:511:0x08c9, B:513:0x08ce, B:515:0x08d6, B:517:0x08dc, B:518:0x08df, B:519:0x08e8, B:521:0x08ec, B:523:0x08f2, B:525:0x08f7, B:533:0x08ff, B:542:0x0643, B:573:0x0660, B:580:0x0671, B:584:0x0683, B:589:0x0699, B:594:0x06eb, B:596:0x06f2, B:598:0x06f6, B:600:0x0706, B:602:0x070a, B:606:0x0711, B:608:0x0717, B:610:0x0736, B:615:0x073f, B:619:0x0744, B:621:0x074a, B:623:0x0752, B:625:0x0758, B:627:0x06fc, B:631:0x0768, B:545:0x079b, B:547:0x07a1, B:549:0x07a5, B:551:0x07aa, B:557:0x07c2, B:558:0x07b9, B:560:0x07bf, B:673:0x0560, B:674:0x0527, B:676:0x052d), top: B:169:0x04dc }] */
    /* JADX WARN: Removed duplicated region for block: B:462:0x07e5 A[Catch: IOException -> 0x0029, zzvg -> 0x002c, zzhc -> 0x002f, zzat -> 0x0032, zztc -> 0x0035, RuntimeException -> 0x0522, zzit -> 0x0525, LOOP:11: B:460:0x07e1->B:462:0x07e5, LOOP_END, TryCatch #14 {RuntimeException -> 0x0522, blocks: (B:401:0x0514, B:402:0x053a, B:404:0x0540, B:405:0x0545, B:406:0x0550, B:408:0x0554, B:409:0x0563, B:411:0x0567, B:413:0x056b, B:415:0x056f, B:417:0x0575, B:419:0x057b, B:421:0x0581, B:423:0x0587, B:425:0x058f, B:427:0x05b1, B:429:0x05bb, B:430:0x05c1, B:432:0x05c5, B:434:0x05cb, B:436:0x05d3, B:438:0x05db, B:440:0x05f8, B:444:0x05fd, B:446:0x060a, B:448:0x0618, B:449:0x0637, B:452:0x07c5, B:454:0x07cb, B:456:0x07d1, B:459:0x07d6, B:460:0x07e1, B:462:0x07e5, B:467:0x080a, B:469:0x0810, B:473:0x081e, B:475:0x0826, B:480:0x0829, B:482:0x0832, B:536:0x0900, B:173:0x0905, B:178:0x0912, B:181:0x091c, B:183:0x0922, B:185:0x092e, B:186:0x0947, B:188:0x094b, B:191:0x0954, B:196:0x095e, B:484:0x083d, B:486:0x0841, B:488:0x0847, B:490:0x084d, B:492:0x0857, B:495:0x085d, B:496:0x0860, B:498:0x0869, B:500:0x087b, B:502:0x0884, B:504:0x088c, B:507:0x0898, B:509:0x08c3, B:511:0x08c9, B:513:0x08ce, B:515:0x08d6, B:517:0x08dc, B:518:0x08df, B:519:0x08e8, B:521:0x08ec, B:523:0x08f2, B:525:0x08f7, B:533:0x08ff, B:542:0x0643, B:573:0x0660, B:580:0x0671, B:584:0x0683, B:589:0x0699, B:594:0x06eb, B:596:0x06f2, B:598:0x06f6, B:600:0x0706, B:602:0x070a, B:606:0x0711, B:608:0x0717, B:610:0x0736, B:615:0x073f, B:619:0x0744, B:621:0x074a, B:623:0x0752, B:625:0x0758, B:627:0x06fc, B:631:0x0768, B:545:0x079b, B:547:0x07a1, B:549:0x07a5, B:551:0x07aa, B:557:0x07c2, B:558:0x07b9, B:560:0x07bf, B:673:0x0560, B:674:0x0527, B:676:0x052d), top: B:169:0x04dc }] */
    /* JADX WARN: Removed duplicated region for block: B:463:0x0805 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:484:0x083d A[Catch: IOException -> 0x0029, zzvg -> 0x002c, zzhc -> 0x002f, zzat -> 0x0032, zztc -> 0x0035, RuntimeException -> 0x0522, zzit -> 0x0525, TryCatch #14 {RuntimeException -> 0x0522, blocks: (B:401:0x0514, B:402:0x053a, B:404:0x0540, B:405:0x0545, B:406:0x0550, B:408:0x0554, B:409:0x0563, B:411:0x0567, B:413:0x056b, B:415:0x056f, B:417:0x0575, B:419:0x057b, B:421:0x0581, B:423:0x0587, B:425:0x058f, B:427:0x05b1, B:429:0x05bb, B:430:0x05c1, B:432:0x05c5, B:434:0x05cb, B:436:0x05d3, B:438:0x05db, B:440:0x05f8, B:444:0x05fd, B:446:0x060a, B:448:0x0618, B:449:0x0637, B:452:0x07c5, B:454:0x07cb, B:456:0x07d1, B:459:0x07d6, B:460:0x07e1, B:462:0x07e5, B:467:0x080a, B:469:0x0810, B:473:0x081e, B:475:0x0826, B:480:0x0829, B:482:0x0832, B:536:0x0900, B:173:0x0905, B:178:0x0912, B:181:0x091c, B:183:0x0922, B:185:0x092e, B:186:0x0947, B:188:0x094b, B:191:0x0954, B:196:0x095e, B:484:0x083d, B:486:0x0841, B:488:0x0847, B:490:0x084d, B:492:0x0857, B:495:0x085d, B:496:0x0860, B:498:0x0869, B:500:0x087b, B:502:0x0884, B:504:0x088c, B:507:0x0898, B:509:0x08c3, B:511:0x08c9, B:513:0x08ce, B:515:0x08d6, B:517:0x08dc, B:518:0x08df, B:519:0x08e8, B:521:0x08ec, B:523:0x08f2, B:525:0x08f7, B:533:0x08ff, B:542:0x0643, B:573:0x0660, B:580:0x0671, B:584:0x0683, B:589:0x0699, B:594:0x06eb, B:596:0x06f2, B:598:0x06f6, B:600:0x0706, B:602:0x070a, B:606:0x0711, B:608:0x0717, B:610:0x0736, B:615:0x073f, B:619:0x0744, B:621:0x074a, B:623:0x0752, B:625:0x0758, B:627:0x06fc, B:631:0x0768, B:545:0x079b, B:547:0x07a1, B:549:0x07a5, B:551:0x07aa, B:557:0x07c2, B:558:0x07b9, B:560:0x07bf, B:673:0x0560, B:674:0x0527, B:676:0x052d), top: B:169:0x04dc }] */
    /* JADX WARN: Removed duplicated region for block: B:495:0x085d A[Catch: IOException -> 0x0029, zzvg -> 0x002c, zzhc -> 0x002f, zzat -> 0x0032, zztc -> 0x0035, RuntimeException -> 0x0522, zzit -> 0x0525, TryCatch #14 {RuntimeException -> 0x0522, blocks: (B:401:0x0514, B:402:0x053a, B:404:0x0540, B:405:0x0545, B:406:0x0550, B:408:0x0554, B:409:0x0563, B:411:0x0567, B:413:0x056b, B:415:0x056f, B:417:0x0575, B:419:0x057b, B:421:0x0581, B:423:0x0587, B:425:0x058f, B:427:0x05b1, B:429:0x05bb, B:430:0x05c1, B:432:0x05c5, B:434:0x05cb, B:436:0x05d3, B:438:0x05db, B:440:0x05f8, B:444:0x05fd, B:446:0x060a, B:448:0x0618, B:449:0x0637, B:452:0x07c5, B:454:0x07cb, B:456:0x07d1, B:459:0x07d6, B:460:0x07e1, B:462:0x07e5, B:467:0x080a, B:469:0x0810, B:473:0x081e, B:475:0x0826, B:480:0x0829, B:482:0x0832, B:536:0x0900, B:173:0x0905, B:178:0x0912, B:181:0x091c, B:183:0x0922, B:185:0x092e, B:186:0x0947, B:188:0x094b, B:191:0x0954, B:196:0x095e, B:484:0x083d, B:486:0x0841, B:488:0x0847, B:490:0x084d, B:492:0x0857, B:495:0x085d, B:496:0x0860, B:498:0x0869, B:500:0x087b, B:502:0x0884, B:504:0x088c, B:507:0x0898, B:509:0x08c3, B:511:0x08c9, B:513:0x08ce, B:515:0x08d6, B:517:0x08dc, B:518:0x08df, B:519:0x08e8, B:521:0x08ec, B:523:0x08f2, B:525:0x08f7, B:533:0x08ff, B:542:0x0643, B:573:0x0660, B:580:0x0671, B:584:0x0683, B:589:0x0699, B:594:0x06eb, B:596:0x06f2, B:598:0x06f6, B:600:0x0706, B:602:0x070a, B:606:0x0711, B:608:0x0717, B:610:0x0736, B:615:0x073f, B:619:0x0744, B:621:0x074a, B:623:0x0752, B:625:0x0758, B:627:0x06fc, B:631:0x0768, B:545:0x079b, B:547:0x07a1, B:549:0x07a5, B:551:0x07aa, B:557:0x07c2, B:558:0x07b9, B:560:0x07bf, B:673:0x0560, B:674:0x0527, B:676:0x052d), top: B:169:0x04dc }] */
    /* JADX WARN: Removed duplicated region for block: B:498:0x0869 A[Catch: IOException -> 0x0029, zzvg -> 0x002c, zzhc -> 0x002f, zzat -> 0x0032, zztc -> 0x0035, RuntimeException -> 0x0522, zzit -> 0x0525, TryCatch #14 {RuntimeException -> 0x0522, blocks: (B:401:0x0514, B:402:0x053a, B:404:0x0540, B:405:0x0545, B:406:0x0550, B:408:0x0554, B:409:0x0563, B:411:0x0567, B:413:0x056b, B:415:0x056f, B:417:0x0575, B:419:0x057b, B:421:0x0581, B:423:0x0587, B:425:0x058f, B:427:0x05b1, B:429:0x05bb, B:430:0x05c1, B:432:0x05c5, B:434:0x05cb, B:436:0x05d3, B:438:0x05db, B:440:0x05f8, B:444:0x05fd, B:446:0x060a, B:448:0x0618, B:449:0x0637, B:452:0x07c5, B:454:0x07cb, B:456:0x07d1, B:459:0x07d6, B:460:0x07e1, B:462:0x07e5, B:467:0x080a, B:469:0x0810, B:473:0x081e, B:475:0x0826, B:480:0x0829, B:482:0x0832, B:536:0x0900, B:173:0x0905, B:178:0x0912, B:181:0x091c, B:183:0x0922, B:185:0x092e, B:186:0x0947, B:188:0x094b, B:191:0x0954, B:196:0x095e, B:484:0x083d, B:486:0x0841, B:488:0x0847, B:490:0x084d, B:492:0x0857, B:495:0x085d, B:496:0x0860, B:498:0x0869, B:500:0x087b, B:502:0x0884, B:504:0x088c, B:507:0x0898, B:509:0x08c3, B:511:0x08c9, B:513:0x08ce, B:515:0x08d6, B:517:0x08dc, B:518:0x08df, B:519:0x08e8, B:521:0x08ec, B:523:0x08f2, B:525:0x08f7, B:533:0x08ff, B:542:0x0643, B:573:0x0660, B:580:0x0671, B:584:0x0683, B:589:0x0699, B:594:0x06eb, B:596:0x06f2, B:598:0x06f6, B:600:0x0706, B:602:0x070a, B:606:0x0711, B:608:0x0717, B:610:0x0736, B:615:0x073f, B:619:0x0744, B:621:0x074a, B:623:0x0752, B:625:0x0758, B:627:0x06fc, B:631:0x0768, B:545:0x079b, B:547:0x07a1, B:549:0x07a5, B:551:0x07aa, B:557:0x07c2, B:558:0x07b9, B:560:0x07bf, B:673:0x0560, B:674:0x0527, B:676:0x052d), top: B:169:0x04dc }] */
    /* JADX WARN: Removed duplicated region for block: B:513:0x08ce A[Catch: IOException -> 0x0029, zzvg -> 0x002c, zzhc -> 0x002f, zzat -> 0x0032, zztc -> 0x0035, RuntimeException -> 0x0522, zzit -> 0x0525, LOOP:14: B:512:0x08cc->B:513:0x08ce, LOOP_END, TryCatch #14 {RuntimeException -> 0x0522, blocks: (B:401:0x0514, B:402:0x053a, B:404:0x0540, B:405:0x0545, B:406:0x0550, B:408:0x0554, B:409:0x0563, B:411:0x0567, B:413:0x056b, B:415:0x056f, B:417:0x0575, B:419:0x057b, B:421:0x0581, B:423:0x0587, B:425:0x058f, B:427:0x05b1, B:429:0x05bb, B:430:0x05c1, B:432:0x05c5, B:434:0x05cb, B:436:0x05d3, B:438:0x05db, B:440:0x05f8, B:444:0x05fd, B:446:0x060a, B:448:0x0618, B:449:0x0637, B:452:0x07c5, B:454:0x07cb, B:456:0x07d1, B:459:0x07d6, B:460:0x07e1, B:462:0x07e5, B:467:0x080a, B:469:0x0810, B:473:0x081e, B:475:0x0826, B:480:0x0829, B:482:0x0832, B:536:0x0900, B:173:0x0905, B:178:0x0912, B:181:0x091c, B:183:0x0922, B:185:0x092e, B:186:0x0947, B:188:0x094b, B:191:0x0954, B:196:0x095e, B:484:0x083d, B:486:0x0841, B:488:0x0847, B:490:0x084d, B:492:0x0857, B:495:0x085d, B:496:0x0860, B:498:0x0869, B:500:0x087b, B:502:0x0884, B:504:0x088c, B:507:0x0898, B:509:0x08c3, B:511:0x08c9, B:513:0x08ce, B:515:0x08d6, B:517:0x08dc, B:518:0x08df, B:519:0x08e8, B:521:0x08ec, B:523:0x08f2, B:525:0x08f7, B:533:0x08ff, B:542:0x0643, B:573:0x0660, B:580:0x0671, B:584:0x0683, B:589:0x0699, B:594:0x06eb, B:596:0x06f2, B:598:0x06f6, B:600:0x0706, B:602:0x070a, B:606:0x0711, B:608:0x0717, B:610:0x0736, B:615:0x073f, B:619:0x0744, B:621:0x074a, B:623:0x0752, B:625:0x0758, B:627:0x06fc, B:631:0x0768, B:545:0x079b, B:547:0x07a1, B:549:0x07a5, B:551:0x07aa, B:557:0x07c2, B:558:0x07b9, B:560:0x07bf, B:673:0x0560, B:674:0x0527, B:676:0x052d), top: B:169:0x04dc }] */
    /* JADX WARN: Removed duplicated region for block: B:517:0x08dc A[Catch: IOException -> 0x0029, zzvg -> 0x002c, zzhc -> 0x002f, zzat -> 0x0032, zztc -> 0x0035, RuntimeException -> 0x0522, zzit -> 0x0525, TryCatch #14 {RuntimeException -> 0x0522, blocks: (B:401:0x0514, B:402:0x053a, B:404:0x0540, B:405:0x0545, B:406:0x0550, B:408:0x0554, B:409:0x0563, B:411:0x0567, B:413:0x056b, B:415:0x056f, B:417:0x0575, B:419:0x057b, B:421:0x0581, B:423:0x0587, B:425:0x058f, B:427:0x05b1, B:429:0x05bb, B:430:0x05c1, B:432:0x05c5, B:434:0x05cb, B:436:0x05d3, B:438:0x05db, B:440:0x05f8, B:444:0x05fd, B:446:0x060a, B:448:0x0618, B:449:0x0637, B:452:0x07c5, B:454:0x07cb, B:456:0x07d1, B:459:0x07d6, B:460:0x07e1, B:462:0x07e5, B:467:0x080a, B:469:0x0810, B:473:0x081e, B:475:0x0826, B:480:0x0829, B:482:0x0832, B:536:0x0900, B:173:0x0905, B:178:0x0912, B:181:0x091c, B:183:0x0922, B:185:0x092e, B:186:0x0947, B:188:0x094b, B:191:0x0954, B:196:0x095e, B:484:0x083d, B:486:0x0841, B:488:0x0847, B:490:0x084d, B:492:0x0857, B:495:0x085d, B:496:0x0860, B:498:0x0869, B:500:0x087b, B:502:0x0884, B:504:0x088c, B:507:0x0898, B:509:0x08c3, B:511:0x08c9, B:513:0x08ce, B:515:0x08d6, B:517:0x08dc, B:518:0x08df, B:519:0x08e8, B:521:0x08ec, B:523:0x08f2, B:525:0x08f7, B:533:0x08ff, B:542:0x0643, B:573:0x0660, B:580:0x0671, B:584:0x0683, B:589:0x0699, B:594:0x06eb, B:596:0x06f2, B:598:0x06f6, B:600:0x0706, B:602:0x070a, B:606:0x0711, B:608:0x0717, B:610:0x0736, B:615:0x073f, B:619:0x0744, B:621:0x074a, B:623:0x0752, B:625:0x0758, B:627:0x06fc, B:631:0x0768, B:545:0x079b, B:547:0x07a1, B:549:0x07a5, B:551:0x07aa, B:557:0x07c2, B:558:0x07b9, B:560:0x07bf, B:673:0x0560, B:674:0x0527, B:676:0x052d), top: B:169:0x04dc }] */
    /* JADX WARN: Removed duplicated region for block: B:521:0x08ec A[Catch: IOException -> 0x0029, zzvg -> 0x002c, zzhc -> 0x002f, zzat -> 0x0032, zztc -> 0x0035, RuntimeException -> 0x0522, zzit -> 0x0525, TryCatch #14 {RuntimeException -> 0x0522, blocks: (B:401:0x0514, B:402:0x053a, B:404:0x0540, B:405:0x0545, B:406:0x0550, B:408:0x0554, B:409:0x0563, B:411:0x0567, B:413:0x056b, B:415:0x056f, B:417:0x0575, B:419:0x057b, B:421:0x0581, B:423:0x0587, B:425:0x058f, B:427:0x05b1, B:429:0x05bb, B:430:0x05c1, B:432:0x05c5, B:434:0x05cb, B:436:0x05d3, B:438:0x05db, B:440:0x05f8, B:444:0x05fd, B:446:0x060a, B:448:0x0618, B:449:0x0637, B:452:0x07c5, B:454:0x07cb, B:456:0x07d1, B:459:0x07d6, B:460:0x07e1, B:462:0x07e5, B:467:0x080a, B:469:0x0810, B:473:0x081e, B:475:0x0826, B:480:0x0829, B:482:0x0832, B:536:0x0900, B:173:0x0905, B:178:0x0912, B:181:0x091c, B:183:0x0922, B:185:0x092e, B:186:0x0947, B:188:0x094b, B:191:0x0954, B:196:0x095e, B:484:0x083d, B:486:0x0841, B:488:0x0847, B:490:0x084d, B:492:0x0857, B:495:0x085d, B:496:0x0860, B:498:0x0869, B:500:0x087b, B:502:0x0884, B:504:0x088c, B:507:0x0898, B:509:0x08c3, B:511:0x08c9, B:513:0x08ce, B:515:0x08d6, B:517:0x08dc, B:518:0x08df, B:519:0x08e8, B:521:0x08ec, B:523:0x08f2, B:525:0x08f7, B:533:0x08ff, B:542:0x0643, B:573:0x0660, B:580:0x0671, B:584:0x0683, B:589:0x0699, B:594:0x06eb, B:596:0x06f2, B:598:0x06f6, B:600:0x0706, B:602:0x070a, B:606:0x0711, B:608:0x0717, B:610:0x0736, B:615:0x073f, B:619:0x0744, B:621:0x074a, B:623:0x0752, B:625:0x0758, B:627:0x06fc, B:631:0x0768, B:545:0x079b, B:547:0x07a1, B:549:0x07a5, B:551:0x07aa, B:557:0x07c2, B:558:0x07b9, B:560:0x07bf, B:673:0x0560, B:674:0x0527, B:676:0x052d), top: B:169:0x04dc }] */
    /* JADX WARN: Removed duplicated region for block: B:531:0x08fe A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:639:0x0bfe  */
    /* JADX WARN: Removed duplicated region for block: B:644:0x0c08  */
    /* JADX WARN: Removed duplicated region for block: B:664:0x0bc1  */
    /* JADX WARN: Type inference failed for: r0v110, types: [com.google.android.gms.internal.ads.zzwe, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v117, types: [com.google.android.gms.internal.ads.zzwe, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v32, types: [com.google.android.gms.internal.ads.zzwe, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v22, types: [com.google.android.gms.internal.ads.zzwe, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v61, types: [com.google.android.gms.internal.ads.zzwe, java.lang.Object] */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean handleMessage(android.os.Message r38) {
        /*
            Method dump skipped, instructions count: 3434
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzlc.handleMessage(android.os.Message):boolean");
    }

    public final void i(boolean z) {
        zzwg zzwgVar = this.v.h.g.f9091a;
        long s = s(zzwgVar, this.J.r, true, false);
        if (s != this.J.r) {
            zzma zzmaVar = this.J;
            this.J = O(zzwgVar, s, zzmaVar.f9111c, zzmaVar.d, z, 5);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzacj
    public final void j(long j, long j2, zzv zzvVar, MediaFormat mediaFormat) {
        if (this.G) {
            ((zzfd) this.l.zzc(37)).a();
        }
    }

    public final void k() {
        zzlk zzlkVar = this.v.h;
        if (zzlkVar != null) {
            zzaae zzaaeVar = zzlkVar.o;
            for (int i = 0; i < 2; i++) {
                if (zzaaeVar.a(i)) {
                    this.f9081c[i].B();
                }
            }
        }
    }

    public final void l() {
        zzir zzirVar = this.r;
        zzirVar.j = false;
        zzmt zzmtVar = zzirVar.f9025c;
        if (zzmtVar.f9126c) {
            zzmtVar.a(zzmtVar.zzg());
            zzmtVar.f9126c = false;
        }
        for (int i = 0; i < 2; i++) {
            zzmm zzmmVar = this.f9081c[i];
            zzmi zzmiVar = zzmmVar.f9118a;
            if (zzmm.l(zzmiVar) && zzmiVar.zze() == 2) {
                zzmiVar.zzq();
            }
            zzmi zzmiVar2 = zzmmVar.f9119c;
            if (zzmiVar2 != null && zzmiVar2.zze() != 0 && zzmiVar2.zze() == 2) {
                zzmiVar2.zzq();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r18v10 */
    /* JADX WARN: Type inference failed for: r18v11 */
    /* JADX WARN: Type inference failed for: r18v7 */
    /* JADX WARN: Type inference failed for: r18v8 */
    /* JADX WARN: Type inference failed for: r18v9 */
    /* JADX WARN: Type inference failed for: r2v28, types: [com.google.android.gms.internal.ads.zzwe, java.lang.Object] */
    public final void m() {
        long j;
        long j2;
        boolean z;
        boolean z2;
        long j3;
        zzky zzkyVar;
        boolean z3;
        boolean z4;
        ?? r18;
        long j4;
        float f;
        long max;
        zzln zzlnVar = this.v;
        zzlk zzlkVar = zzlnVar.h;
        if (zzlkVar != null) {
            if (zzlkVar.e) {
                j = zzlkVar.f9089a.zzh();
            } else {
                j = -9223372036854775807L;
            }
            if (j != -9223372036854775807L) {
                if (!zzlkVar.b()) {
                    zzlnVar.y(zzlkVar);
                    R(false);
                    M();
                }
                t(j, true);
                if (j != this.J.r) {
                    zzma zzmaVar = this.J;
                    r18 = 0;
                    j2 = -9223372036854775807L;
                    this.J = O(zzmaVar.b, j, zzmaVar.f9111c, j, true, 5);
                    j3 = 0;
                } else {
                    j2 = -9223372036854775807L;
                    j3 = 0;
                    r18 = 0;
                }
            } else {
                j2 = -9223372036854775807L;
                boolean z5 = false;
                zzir zzirVar = this.r;
                if (zzlkVar != zzlnVar.i) {
                    z = true;
                } else {
                    z = false;
                }
                zzmt zzmtVar = zzirVar.f9025c;
                zzmi zzmiVar = zzirVar.g;
                if (zzmiVar != null && !zzmiVar.k() && ((!z || zzirVar.g.zze() == 2) && (zzirVar.g.h() || (!z && !zzirVar.g.t())))) {
                    zzlj zzljVar = zzirVar.h;
                    zzljVar.getClass();
                    long zzg = zzljVar.zzg();
                    if (zzirVar.i) {
                        if (zzg < zzmtVar.zzg()) {
                            if (zzmtVar.f9126c) {
                                zzmtVar.a(zzmtVar.zzg());
                                zzmtVar.f9126c = false;
                            }
                        } else {
                            zzirVar.i = false;
                            if (zzirVar.j && !zzmtVar.f9126c) {
                                zzmtVar.g = SystemClock.elapsedRealtime();
                                zzmtVar.f9126c = true;
                            }
                        }
                    }
                    zzmtVar.a(zzg);
                    zzav zzj = zzljVar.zzj();
                    if (!zzj.equals(zzmtVar.h)) {
                        zzmtVar.j(zzj);
                        ((zzfd) ((zzlc) zzirVar.f).l.j(16, zzj)).a();
                    }
                } else {
                    zzirVar.i = true;
                    if (zzirVar.j && !zzmtVar.f9126c) {
                        zzmtVar.g = SystemClock.elapsedRealtime();
                        zzmtVar.f9126c = true;
                    }
                }
                long zzg2 = zzirVar.zzg();
                this.W = zzg2;
                long j5 = zzg2 - zzlkVar.p;
                long j6 = this.J.r;
                ArrayList arrayList = this.s;
                if (arrayList.isEmpty() || this.J.b.b()) {
                    z2 = false;
                    j3 = 0;
                } else {
                    if (this.Z) {
                        j6--;
                        this.Z = false;
                    }
                    zzma zzmaVar2 = this.J;
                    int e = zzmaVar2.f9110a.e(zzmaVar2.b.f9337a);
                    int min = Math.min(this.Y, arrayList.size());
                    if (min > 0) {
                        zzkyVar = (zzky) arrayList.get(min - 1);
                    } else {
                        zzkyVar = null;
                    }
                    while (zzkyVar != null) {
                        if (e >= 0) {
                            if (e != 0) {
                                break;
                            }
                            z3 = z5;
                            j3 = 0;
                            z4 = z3;
                            if (j6 >= 0) {
                                break;
                            }
                        } else {
                            z4 = z5;
                        }
                        int i = min - 1;
                        if (i > 0) {
                            zzkyVar = (zzky) arrayList.get(min - 2);
                        } else {
                            zzkyVar = null;
                        }
                        min = i;
                        z5 = z4;
                    }
                    z3 = z5;
                    j3 = 0;
                    if (min < arrayList.size()) {
                    }
                    this.Y = min;
                    z2 = z3;
                }
                if (zzirVar.zzh()) {
                    boolean z6 = !this.K.d;
                    zzma zzmaVar3 = this.J;
                    this.J = O(zzmaVar3.b, j5, zzmaVar3.f9111c, j5, z6, 6);
                    r18 = z2;
                } else {
                    zzma zzmaVar4 = this.J;
                    zzmaVar4.r = j5;
                    zzmaVar4.s = SystemClock.elapsedRealtime();
                    r18 = z2;
                }
            }
            this.J.p = zzlnVar.k.d();
            zzma zzmaVar5 = this.J;
            zzmaVar5.q = S(zzmaVar5.p);
            zzma zzmaVar6 = this.J;
            if (zzmaVar6.l && zzmaVar6.e == 3 && p(zzmaVar6.f9110a, zzmaVar6.b)) {
                zzma zzmaVar7 = this.J;
                float f2 = 1.0f;
                if (zzmaVar7.o.f4431a == 1.0f) {
                    zzim zzimVar = this.g0;
                    long o = o(zzmaVar7.f9110a, zzmaVar7.b.f9337a, zzmaVar7.r);
                    long j7 = this.J.q;
                    if (zzimVar.f9018c != j2) {
                        long j8 = o - j7;
                        long j9 = zzimVar.k;
                        if (j9 == j2) {
                            zzimVar.k = j8;
                            zzimVar.l = j3;
                        } else {
                            float f3 = (float) j9;
                            zzimVar.k = Math.max(j8, (((float) j8) * 9.999871E-4f) + (f3 * 0.999f));
                            zzimVar.l = (((float) Math.abs(j8 - r9)) * 9.999871E-4f) + (((float) zzimVar.l) * 0.999f);
                        }
                        if (zzimVar.j != j2 && SystemClock.elapsedRealtime() - zzimVar.j < 1000) {
                            f2 = zzimVar.i;
                        } else {
                            zzimVar.j = SystemClock.elapsedRealtime();
                            long j10 = (zzimVar.l * 3) + zzimVar.k;
                            if (zzimVar.h > j10) {
                                long s = zzfj.s(1000L);
                                float f4 = zzimVar.i - 1.0f;
                                f = 1.0E-7f;
                                long j11 = zzimVar.e;
                                float f5 = (float) s;
                                j4 = o;
                                long j12 = zzimVar.h - ((f4 * f5) + (0.029999971f * f5));
                                long[] jArr = new long[3];
                                jArr[r18] = j10;
                                jArr[1] = j11;
                                jArr[2] = j12;
                                max = jArr[r18];
                                for (int i2 = 1; i2 < 3; i2++) {
                                    long j13 = jArr[i2];
                                    if (j13 > max) {
                                        max = j13;
                                    }
                                }
                                zzimVar.h = max;
                            } else {
                                j4 = o;
                                f = 1.0E-7f;
                                long j14 = zzimVar.h;
                                String str = zzfj.f7405a;
                                max = Math.max(j14, Math.min(j4 - (Math.max(0.0f, zzimVar.i - 1.0f) / 1.0E-7f), j10));
                                zzimVar.h = max;
                                long j15 = zzimVar.g;
                                if (j15 != j2 && max > j15) {
                                    zzimVar.h = j15;
                                    max = j15;
                                }
                            }
                            long j16 = j4 - max;
                            if (Math.abs(j16) < zzimVar.f9017a) {
                                zzimVar.i = 1.0f;
                                f2 = 1.0f;
                            } else {
                                f2 = Math.max(0.97f, Math.min((((float) j16) * f) + 1.0f, 1.03f));
                                zzimVar.i = f2;
                            }
                        }
                    }
                    zzir zzirVar2 = this.r;
                    if (zzirVar2.zzj().f4431a != f2) {
                        zzav zzavVar = new zzav(f2, this.J.o.b);
                        this.l.h(16);
                        this.r.j(zzavVar);
                        boolean z7 = r18;
                        L(this.J.o, zzirVar2.zzj().f4431a, z7, z7);
                    }
                }
            }
        }
    }

    public final void n(final int i, final boolean z) {
        boolean[] zArr = this.g;
        if (zArr[i] != z) {
            zArr[i] = z;
            this.A.g(new Runnable(i, z) { // from class: com.google.android.gms.internal.ads.zzks
                public final /* synthetic */ int f;

                @Override // java.lang.Runnable
                public final void run() {
                    int i2 = this.f;
                    zzlc zzlcVar = zzlc.this;
                    zzlcVar.f9081c[i2].f9118a.getClass();
                    zzlcVar.z.zzB();
                }
            });
        }
    }

    public final long o(zzbf zzbfVar, Object obj, long j) {
        long elapsedRealtime;
        int i = zzbfVar.o(obj, this.p).f4558c;
        zzbe zzbeVar = this.o;
        zzbfVar.b(i, zzbeVar, 0L);
        if (zzbeVar.d == -9223372036854775807L || !zzbeVar.b() || !zzbeVar.g) {
            return -9223372036854775807L;
        }
        long j2 = zzbeVar.e;
        String str = zzfj.f7405a;
        if (j2 == -9223372036854775807L) {
            elapsedRealtime = System.currentTimeMillis();
        } else {
            elapsedRealtime = j2 + SystemClock.elapsedRealtime();
        }
        return zzfj.s(elapsedRealtime - zzbeVar.d) - j;
    }

    public final boolean p(zzbf zzbfVar, zzwg zzwgVar) {
        if (!zzwgVar.b() && !zzbfVar.g()) {
            int i = zzbfVar.o(zzwgVar.f9337a, this.p).f4558c;
            zzbe zzbeVar = this.o;
            zzbfVar.b(i, zzbeVar, 0L);
            if (zzbeVar.b() && zzbeVar.g && zzbeVar.d != -9223372036854775807L) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final void q(long j) {
        zzlk zzlkVar;
        long j2;
        boolean z = this.F;
        long j3 = 1000;
        long j4 = h0;
        if (z) {
            this.E.getClass();
            if (this.J.e != 3) {
                j3 = j4;
            }
            for (int i = 0; i < 2; i++) {
                zzmm zzmmVar = this.f9081c[i];
                long j5 = this.W;
                long j6 = this.X;
                zzmi zzmiVar = zzmmVar.f9118a;
                if (zzmm.l(zzmiVar)) {
                    j2 = zzmiVar.m(j5, j6);
                } else {
                    j2 = LongCompanionObject.MAX_VALUE;
                }
                zzmi zzmiVar2 = zzmmVar.f9119c;
                if (zzmiVar2 != null && zzmiVar2.zze() != 0) {
                    j2 = Math.min(j2, zzmiVar2.m(j5, j6));
                }
                j3 = Math.min(j3, zzfj.r(j2));
            }
            if (this.J.i()) {
                zzlk zzlkVar2 = this.v.h;
                if (zzlkVar2 != null) {
                    zzlkVar = zzlkVar2.m;
                } else {
                    zzlkVar = null;
                }
                if (zzlkVar != null) {
                    if (((float) this.W) + (((float) zzfj.s(j3)) * this.J.o.f4431a) >= ((float) zzlkVar.a())) {
                        j3 = Math.min(j3, j4);
                    }
                }
            }
        } else if (this.J.e != 3 || U()) {
            j3 = j4;
        }
        this.l.b(j + j3);
    }

    /* JADX WARN: Code restructure failed: missing block: B:120:0x00a0, code lost:
    
        r7.f.getClass();
     */
    /* JADX WARN: Type inference failed for: r0v29, types: [com.google.android.gms.internal.ads.zzwe, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void r(com.google.android.gms.internal.ads.zzlb r20, boolean r21) {
        /*
            Method dump skipped, instructions count: 418
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzlc.r(com.google.android.gms.internal.ads.zzlb, boolean):void");
    }

    /* JADX WARN: Type inference failed for: r10v17, types: [com.google.android.gms.internal.ads.zzwe, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v8, types: [com.google.android.gms.internal.ads.zzwe, java.lang.Object] */
    public final long s(zzwg zzwgVar, long j, boolean z, boolean z2) {
        boolean z3;
        l();
        boolean z4 = true;
        z(false, true);
        if (z2 || this.J.e == 3) {
            c(2);
        }
        zzln zzlnVar = this.v;
        zzlk zzlkVar = zzlnVar.h;
        zzlk zzlkVar2 = zzlkVar;
        while (zzlkVar2 != null && !zzwgVar.equals(zzlkVar2.g.f9091a)) {
            zzlkVar2 = zzlkVar2.m;
        }
        if (z || zzlkVar != zzlkVar2 || (zzlkVar2 != null && zzlkVar2.p + j < 0)) {
            C();
            if (zzlkVar2 != null) {
                while (zzlnVar.h != zzlkVar2) {
                    zzlnVar.x();
                }
                zzlnVar.y(zzlkVar2);
                zzlkVar2.p = 1000000000000L;
                P(new boolean[2], this.v.i.a());
                zzlkVar2.h = true;
            }
        }
        D();
        if (zzlkVar2 != null) {
            zzlnVar.y(zzlkVar2);
            if (!zzlkVar2.e) {
                zzlkVar2.g = zzlkVar2.g.a(j);
            } else if (zzlkVar2.f) {
                if (this.F) {
                    this.E.getClass();
                    if (!this.J.f9110a.g() && zzlkVar2.g.f9091a.equals(this.J.b)) {
                        zzmm[] zzmmVarArr = this.f9081c;
                        boolean z5 = true;
                        for (int i = 0; i < 2; i++) {
                            zzmm zzmmVar = zzmmVarArr[i];
                            if (zzmmVar.g()) {
                                zzmi m = zzmmVar.m(zzlkVar2);
                                if (m != null && m.g(j)) {
                                    z3 = true;
                                } else {
                                    z3 = false;
                                }
                                z5 &= z3;
                            }
                        }
                        if (z5) {
                            ?? r10 = zzlkVar2.f9089a;
                            long j2 = this.J.r;
                            zzmq zzmqVar = zzmq.f9122c;
                            if (r10.c(j2, zzmqVar) == r10.c(j, zzmqVar)) {
                                z4 = false;
                            }
                        }
                    }
                }
                ?? r102 = zzlkVar2.f9089a;
                j = r102.b(j);
                r102.d(j - this.q);
            }
            t(j, z4);
            M();
        } else {
            zzlnVar.B();
            t(j, true);
        }
        R(false);
        this.l.e(2);
        return j;
    }

    public final void t(long j, boolean z) {
        long j2;
        zzlk zzlkVar = this.v.h;
        if (zzlkVar == null) {
            j2 = 1000000000000L;
        } else {
            j2 = zzlkVar.p;
        }
        long j3 = j + j2;
        this.W = j3;
        this.r.f9025c.a(j3);
        for (int i = 0; i < 2; i++) {
            zzmm zzmmVar = this.f9081c[i];
            long j4 = this.W;
            zzmi m = zzmmVar.m(zzlkVar);
            if (m != null) {
                m.i(j4, z);
            }
        }
        for (zzlk zzlkVar2 = r0.h; zzlkVar2 != null; zzlkVar2 = zzlkVar2.m) {
            for (zzzw zzzwVar : zzlkVar2.o.f3845c) {
            }
        }
    }

    public final void u() {
        zzmp zzmpVar;
        for (int i = 0; i < 2; i++) {
            zzmm zzmmVar = this.f9081c[i];
            if (this.F) {
                zzmpVar = this.E;
            } else {
                zzmpVar = null;
            }
            zzmmVar.f9118a.l(18, zzmpVar);
            zzmi zzmiVar = zzmmVar.f9119c;
            if (zzmiVar != null) {
                zzmiVar.l(18, zzmpVar);
            }
        }
    }

    public final void v(boolean z, boolean z2) {
        boolean z3;
        if (z || !this.T) {
            z3 = true;
        } else {
            z3 = false;
        }
        w(z3, false, true, false);
        this.K.a(z2 ? 1 : 0);
        this.j.a(this.y);
        this.C.b(1, this.J.l);
        c(1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x00ab, code lost:
    
        if (r2.equals(r33.J.b) == false) goto L33;
     */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:75:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x011a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void w(boolean r34, boolean r35, boolean r36, boolean r37) {
        /*
            Method dump skipped, instructions count: 418
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzlc.w(boolean, boolean, boolean, boolean):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x005c, code lost:
    
        r5.f.getClass();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.util.Pair x(com.google.android.gms.internal.ads.zzbf r10) {
        /*
            r9 = this;
            boolean r0 = r10.g()
            r1 = 0
            if (r0 == 0) goto L13
            com.google.android.gms.internal.ads.zzwg r10 = com.google.android.gms.internal.ads.zzma.t
            java.lang.Long r0 = java.lang.Long.valueOf(r1)
            android.util.Pair r10 = android.util.Pair.create(r10, r0)
            return r10
        L13:
            boolean r0 = r9.S
            int r6 = r10.k(r0)
            r7 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            com.google.android.gms.internal.ads.zzbe r4 = r9.o
            com.google.android.gms.internal.ads.zzbd r5 = r9.p
            r3 = r10
            android.util.Pair r10 = r3.m(r4, r5, r6, r7)
            com.google.android.gms.internal.ads.zzln r0 = r9.v
            java.lang.Object r4 = r10.first
            com.google.android.gms.internal.ads.zzwg r0 = r0.E(r3, r4)
            java.lang.Object r10 = r10.second
            java.lang.Long r10 = (java.lang.Long) r10
            long r6 = r10.longValue()
            boolean r10 = r0.b()
            if (r10 == 0) goto L62
            java.lang.Object r10 = r0.f9337a
            r3.o(r10, r5)
            com.google.android.gms.internal.ads.zzc r10 = r5.f
            r3 = -1
            com.google.android.gms.internal.ads.zza r10 = r10.a(r3)
            r4 = 0
        L4a:
            int[] r6 = r10.d
            int r7 = r6.length
            if (r4 >= r7) goto L5a
            r6 = r6[r4]
            if (r6 == 0) goto L5a
            r7 = 1
            if (r6 != r7) goto L57
            goto L5a
        L57:
            int r4 = r4 + 1
            goto L4a
        L5a:
            if (r3 != r4) goto L63
            com.google.android.gms.internal.ads.zzc r10 = r5.f
            r10.getClass()
            goto L63
        L62:
            r1 = r6
        L63:
            java.lang.Long r10 = java.lang.Long.valueOf(r1)
            android.util.Pair r10 = android.util.Pair.create(r0, r10)
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzlc.x(com.google.android.gms.internal.ads.zzbf):android.util.Pair");
    }

    public final void y(zzbf zzbfVar, zzbf zzbfVar2) {
        if (zzbfVar.g() && zzbfVar2.g()) {
            return;
        }
        ArrayList arrayList = this.s;
        int size = arrayList.size() - 1;
        if (size < 0) {
            Collections.sort(arrayList);
        } else {
            ((zzky) arrayList.get(size)).getClass();
            String str = zzfj.f7405a;
            throw null;
        }
    }

    public final void z(boolean z, boolean z2) {
        this.O = z;
        long j = -9223372036854775807L;
        if (z && !z2) {
            j = SystemClock.elapsedRealtime();
        }
        this.P = j;
    }
}
