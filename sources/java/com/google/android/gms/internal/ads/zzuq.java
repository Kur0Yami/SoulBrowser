package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Bundle;
import j$.util.Objects;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public abstract class zzuq extends zzij {
    public static final byte[] E0 = {0, 0, 1, 103, 66, -64, 11, -38, 37, -112, 0, 0, 1, 104, -50, 15, 19, 32, 0, 0, 1, 101, -120, -124, 13, -50, 113, 24, -96, 0, 47, -65, 28, 49, -61, 39, 93, 120};
    public final zzih A;
    public boolean A0;
    public final zzih B;
    public boolean B0;
    public final zztx C;
    public boolean C0;
    public final MediaCodec.BufferInfo D;
    public long D0;
    public final ArrayDeque E;
    public final zzsx F;
    public final AtomicInteger G;
    public zzv H;
    public zzv I;
    public zztd J;
    public zztd K;
    public zzmh L;
    public final long M;
    public float N;
    public float O;
    public zzug P;
    public zzv Q;
    public MediaFormat R;
    public boolean S;
    public float T;
    public ArrayDeque U;
    public zzum V;
    public zzuj W;
    public int X;
    public boolean Y;
    public boolean Z;
    public boolean a0;
    public boolean b0;
    public boolean c0;
    public long d0;
    public long e0;
    public int f0;
    public int g0;
    public ByteBuffer h0;
    public boolean i0;
    public boolean j0;
    public boolean k0;
    public boolean l0;
    public boolean m0;
    public int n0;
    public int o0;
    public int p0;
    public boolean q0;
    public boolean r0;
    public boolean s0;
    public long t0;
    public boolean u0;
    public boolean v0;
    public final zzue w;
    public boolean w0;
    public final zzus x;
    public zzik x0;
    public final float y;
    public zzup y0;
    public final zzih z;
    public long z0;

    /* JADX WARN: Type inference failed for: r3v10, types: [java.lang.Object, com.google.android.gms.internal.ads.zzik] */
    /* JADX WARN: Type inference failed for: r3v5, types: [com.google.android.gms.internal.ads.zzih, com.google.android.gms.internal.ads.zztx] */
    /* JADX WARN: Type inference failed for: r3v7, types: [java.lang.Object, com.google.android.gms.internal.ads.zzsx] */
    public zzuq(int i, zzty zztyVar, zzus zzusVar, float f) {
        super(i);
        this.w = zztyVar;
        zzusVar.getClass();
        this.x = zzusVar;
        this.y = f;
        this.G = new AtomicInteger();
        this.z = new zzih(0);
        this.A = new zzih(0);
        this.B = new zzih(2);
        ?? zzihVar = new zzih(2);
        zzihVar.k = 32;
        this.C = zzihVar;
        this.D = new MediaCodec.BufferInfo();
        this.N = 1.0f;
        this.O = 1.0f;
        this.M = -9223372036854775807L;
        this.E = new ArrayDeque();
        this.y0 = zzup.f;
        zzihVar.d(0);
        zzihVar.d.order(ByteOrder.nativeOrder());
        ?? obj = new Object();
        obj.f9263a = zzco.f5330a;
        obj.f9264c = 0;
        obj.b = 2;
        this.F = obj;
        this.T = -1.0f;
        this.X = 0;
        this.n0 = 0;
        this.f0 = -1;
        this.g0 = -1;
        this.e0 = -9223372036854775807L;
        this.t0 = -9223372036854775807L;
        this.z0 = -9223372036854775807L;
        this.d0 = -9223372036854775807L;
        this.o0 = 0;
        this.p0 = 0;
        this.x0 = new Object();
        this.C0 = false;
        this.D0 = 0L;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, com.google.android.gms.internal.ads.zzik] */
    @Override // com.google.android.gms.internal.ads.zzij
    public void D(boolean z, boolean z2) {
        this.x0 = new Object();
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x003a, code lost:
    
        if (r4 >= r0) goto L16;
     */
    @Override // com.google.android.gms.internal.ads.zzij
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void E(com.google.android.gms.internal.ads.zzv[] r12, long r13, long r15, com.google.android.gms.internal.ads.zzwg r17) {
        /*
            r11 = this;
            com.google.android.gms.internal.ads.zzup r12 = r11.y0
            long r0 = r12.f9301c
            r2 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r12 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r12 != 0) goto L24
            com.google.android.gms.internal.ads.zzup r4 = new com.google.android.gms.internal.ads.zzup
            r5 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r7 = r13
            r9 = r15
            r4.<init>(r5, r7, r9)
            r11.p0(r4)
            boolean r12 = r11.B0
            if (r12 == 0) goto L56
            r11.e0()
            return
        L24:
            java.util.ArrayDeque r12 = r11.E
            boolean r0 = r12.isEmpty()
            if (r0 == 0) goto L57
            long r0 = r11.t0
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 == 0) goto L3c
            long r4 = r11.z0
            int r6 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r6 == 0) goto L57
            int r0 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
            if (r0 < 0) goto L57
        L3c:
            com.google.android.gms.internal.ads.zzup r4 = new com.google.android.gms.internal.ads.zzup
            r5 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r7 = r13
            r9 = r15
            r4.<init>(r5, r7, r9)
            r11.p0(r4)
            com.google.android.gms.internal.ads.zzup r12 = r11.y0
            long r12 = r12.f9301c
            int r12 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1))
            if (r12 == 0) goto L56
            r11.e0()
        L56:
            return
        L57:
            com.google.android.gms.internal.ads.zzup r0 = new com.google.android.gms.internal.ads.zzup
            long r1 = r11.t0
            r3 = r13
            r5 = r15
            r0.<init>(r1, r3, r5)
            r12.add(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzuq.E(com.google.android.gms.internal.ads.zzv[], long, long, com.google.android.gms.internal.ads.zzwg):void");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(31:(5:193|194|e6|202|(2:204|205))(1:56)|57|58|59|60|62|63|64|(1:66)|67|68|(2:72|(16:80|81|82|(1:163)(1:86)|87|88|(3:156|157|(8:159|91|92|(5:94|(1:96)|97|98|(9:100|(1:102)|103|104|105|106|107|108|109)(3:130|131|132))|(3:152|98|(0)(0))|97|98|(0)(0)))|90|91|92|(0)|(6:134|136|138|140|142|144)|146|152|98|(0)(0)))|164|(4:166|(2:168|(1:170))|171|(17:179|81|82|(1:84)|163|87|88|(0)|90|91|92|(0)|(0)|146|152|98|(0)(0)))|180|81|82|(0)|163|87|88|(0)|90|91|92|(0)|(0)|146|152|98|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x02ac, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x02ad, code lost:
    
        r9 = r1;
        r19 = r19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:182:0x02bc, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:183:0x02bd, code lost:
    
        r9 = r1;
        r19 = r19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:185:0x02b7, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:186:0x02b8, code lost:
    
        r9 = r1;
        r19 = r19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:188:0x02b5, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:189:0x02b6, code lost:
    
        r9 = r9;
        r19 = r19;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x027b A[Catch: Exception -> 0x02ac, TRY_LEAVE, TryCatch #2 {Exception -> 0x02ac, blocks: (B:92:0x0217, B:98:0x0275, B:100:0x027b, B:103:0x028d, B:146:0x025b), top: B:91:0x0217 }] */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0312 A[Catch: zzum -> 0x032c, TryCatch #10 {zzum -> 0x032c, blocks: (B:114:0x02e0, B:116:0x0312, B:118:0x031f, B:120:0x0329, B:121:0x0343, B:126:0x034b, B:127:0x034d, B:128:0x032e, B:235:0x0351, B:237:0x0352, B:240:0x0359, B:241:0x035a, B:242:0x0364, B:254:0x0367), top: B:25:0x0053 }] */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0329 A[Catch: zzum -> 0x032c, TryCatch #10 {zzum -> 0x032c, blocks: (B:114:0x02e0, B:116:0x0312, B:118:0x031f, B:120:0x0329, B:121:0x0343, B:126:0x034b, B:127:0x034d, B:128:0x032e, B:235:0x0351, B:237:0x0352, B:240:0x0359, B:241:0x035a, B:242:0x0364, B:254:0x0367), top: B:25:0x0053 }] */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0349  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x034b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:128:0x032e A[Catch: zzum -> 0x032c, TryCatch #10 {zzum -> 0x032c, blocks: (B:114:0x02e0, B:116:0x0312, B:118:0x031f, B:120:0x0329, B:121:0x0343, B:126:0x034b, B:127:0x034d, B:128:0x032e, B:235:0x0351, B:237:0x0352, B:240:0x0359, B:241:0x035a, B:242:0x0364, B:254:0x0367), top: B:25:0x0053 }] */
    /* JADX WARN: Removed duplicated region for block: B:129:0x031c  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x02b1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:134:0x022b A[Catch: Exception -> 0x0210, TryCatch #0 {Exception -> 0x0210, blocks: (B:157:0x0203, B:94:0x021d, B:102:0x027f, B:134:0x022b, B:136:0x0233, B:138:0x023b, B:140:0x0243, B:142:0x024b, B:144:0x0253, B:148:0x0265, B:150:0x026f), top: B:156:0x0203 }] */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0203 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01f1 A[Catch: Exception -> 0x0106, TRY_ENTER, TRY_LEAVE, TryCatch #14 {Exception -> 0x0106, blocks: (B:201:0x00ef, B:202:0x00f0, B:205:0x00fa, B:66:0x0152, B:70:0x0184, B:72:0x018c, B:74:0x0196, B:76:0x019e, B:78:0x01a6, B:84:0x01f1, B:166:0x01b4, B:168:0x01bc, B:171:0x01c7, B:173:0x01d1, B:175:0x01d9, B:177:0x01e1, B:211:0x0111, B:198:0x00e9, B:200:0x00ed, B:206:0x010f), top: B:204:0x00fa, inners: #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x021d A[Catch: Exception -> 0x0210, TRY_ENTER, TryCatch #0 {Exception -> 0x0210, blocks: (B:157:0x0203, B:94:0x021d, B:102:0x027f, B:134:0x022b, B:136:0x0233, B:138:0x023b, B:140:0x0243, B:142:0x024b, B:144:0x0253, B:148:0x0265, B:150:0x026f), top: B:156:0x0203 }] */
    /* JADX WARN: Type inference failed for: r0v53 */
    /* JADX WARN: Type inference failed for: r0v69, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v75 */
    /* JADX WARN: Type inference failed for: r19v0, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r19v10, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r19v11, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r19v12 */
    /* JADX WARN: Type inference failed for: r19v13 */
    /* JADX WARN: Type inference failed for: r19v14 */
    /* JADX WARN: Type inference failed for: r19v19 */
    /* JADX WARN: Type inference failed for: r19v20 */
    /* JADX WARN: Type inference failed for: r19v21 */
    /* JADX WARN: Type inference failed for: r19v3 */
    /* JADX WARN: Type inference failed for: r19v5 */
    /* JADX WARN: Type inference failed for: r19v6, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r19v8 */
    /* JADX WARN: Type inference failed for: r19v9 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8, types: [boolean] */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12, types: [boolean] */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r9v19 */
    /* JADX WARN: Type inference failed for: r9v25 */
    /* JADX WARN: Type inference failed for: r9v27 */
    /* JADX WARN: Type inference failed for: r9v28, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r9v36 */
    /* JADX WARN: Type inference failed for: r9v37 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void F() {
        /*
            Method dump skipped, instructions count: 881
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzuq.F():void");
    }

    public boolean G(zzuj zzujVar) {
        return true;
    }

    public final void H() {
        try {
            zzug zzugVar = this.P;
            if (zzugVar != null) {
                zzugVar.zzl();
                this.x0.b++;
                zzuj zzujVar = this.W;
                if (zzujVar != null) {
                    a0(zzujVar.f9294a);
                } else {
                    throw null;
                }
            }
            this.P = null;
            this.J = null;
            L();
        } catch (Throwable th) {
            this.P = null;
            this.J = null;
            L();
            throw th;
        }
    }

    public boolean I() {
        int i = this.p0;
        if (i == 3 || ((this.Y && !this.s0) || (this.Z && this.r0))) {
            return true;
        }
        if (i == 2) {
            try {
                zztd zztdVar = this.K;
                zztdVar.getClass();
                this.J = zztdVar;
                this.o0 = 0;
                this.p0 = 0;
            } catch (zzit e) {
                zzee.d("MediaCodecRenderer", "Failed to update the DRM session, releasing the codec instead.", e);
                return true;
            }
        }
        return false;
    }

    public boolean J() {
        return true;
    }

    public void K() {
        this.f0 = -1;
        this.A.d = null;
        this.g0 = -1;
        this.h0 = null;
        this.t0 = -9223372036854775807L;
        q0().e = -9223372036854775807L;
        this.z0 = -9223372036854775807L;
        this.e0 = -9223372036854775807L;
        this.r0 = false;
        this.d0 = -9223372036854775807L;
        this.q0 = false;
        this.a0 = false;
        this.b0 = false;
        this.i0 = false;
        this.o0 = 0;
        this.p0 = 0;
        this.n0 = this.m0 ? 1 : 0;
        this.C0 = false;
        this.D0 = 0L;
    }

    public final void L() {
        K();
        this.U = null;
        this.W = null;
        this.Q = null;
        this.R = null;
        this.S = false;
        this.s0 = false;
        this.T = -1.0f;
        this.X = 0;
        this.Y = false;
        this.Z = false;
        this.c0 = false;
        this.m0 = false;
        this.n0 = 0;
    }

    public zzui M(IllegalStateException illegalStateException, zzuj zzujVar) {
        return new zzui(illegalStateException, zzujVar);
    }

    public void O(zzih zzihVar) {
    }

    public int P(zzih zzihVar) {
        return 0;
    }

    public boolean Q(zzih zzihVar) {
        return false;
    }

    public void R(long j) {
        this.z0 = j;
        while (true) {
            ArrayDeque arrayDeque = this.E;
            if (!arrayDeque.isEmpty() && j >= ((zzup) arrayDeque.peek()).f9300a) {
                zzup zzupVar = (zzup) arrayDeque.poll();
                zzupVar.getClass();
                p0(zzupVar);
                e0();
            } else {
                return;
            }
        }
    }

    public abstract int S(zzus zzusVar, zzv zzvVar);

    public abstract ArrayList T(zzus zzusVar, zzv zzvVar);

    public boolean U(zzv zzvVar) {
        return false;
    }

    public abstract zzud V(zzuj zzujVar, zzv zzvVar, float f);

    public zzil W(zzuj zzujVar, zzv zzvVar, zzv zzvVar2) {
        throw null;
    }

    public long X(long j, long j2) {
        return super.m(j, j2);
    }

    public float Y(float f, zzv zzvVar, zzv[] zzvVarArr) {
        throw null;
    }

    public void Z(long j, long j2, String str) {
        throw null;
    }

    public void a0(String str) {
        throw null;
    }

    /*  JADX ERROR: Types fix failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:96)
        */
    @Override // com.google.android.gms.internal.ads.zzmi
    public void b(long r32, long r34) {
        /*
            Method dump skipped, instructions count: 1694
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzuq.b(long, long):void");
    }

    public void b0(Exception exc) {
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x007b, code lost:
    
        if (m0() == false) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00a9, code lost:
    
        if (m0() == false) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00bb, code lost:
    
        if (m0() == false) goto L67;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.android.gms.internal.ads.zzil c0(com.google.android.gms.internal.ads.zzle r14) {
        /*
            Method dump skipped, instructions count: 258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzuq.c0(com.google.android.gms.internal.ads.zzle):com.google.android.gms.internal.ads.zzil");
    }

    public void d0(zzv zzvVar, MediaFormat mediaFormat) {
        throw null;
    }

    public abstract boolean f0(long j, long j2, zzug zzugVar, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, zzv zzvVar);

    public void g0() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzmi
    public boolean h() {
        throw null;
    }

    public void h0(zzih zzihVar) {
        throw null;
    }

    public final void i0() {
        this.t0 = -9223372036854775807L;
        q0().e = -9223372036854775807L;
        this.z0 = -9223372036854775807L;
        this.l0 = false;
        this.C.c();
        this.B.c();
        this.k0 = false;
        zzsx zzsxVar = this.F;
        zzsxVar.getClass();
        zzsxVar.f9263a = zzco.f5330a;
        zzsxVar.f9264c = 0;
        zzsxVar.b = 2;
    }

    public final void j0() {
        try {
            zzug zzugVar = this.P;
            if (zzugVar != null) {
                zzugVar.zzk();
                return;
            }
            throw null;
        } finally {
            K();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmi
    public boolean k() {
        return this.v0;
    }

    public final boolean k0(int i) {
        zzle zzleVar = this.g;
        zzleVar.f9082a = null;
        zzleVar.b = null;
        zzih zzihVar = this.z;
        zzihVar.c();
        int C = C(zzleVar, zzihVar, i | 4);
        if (C == -5) {
            c0(zzleVar);
            return true;
        }
        if (C == -4 && zzihVar.b(4)) {
            this.u0 = true;
            o0();
            return false;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzij, com.google.android.gms.internal.ads.zzmd
    public void l(int i, Object obj) {
        if (i == 11) {
            zzmh zzmhVar = (zzmh) obj;
            zzmhVar.getClass();
            this.L = zzmhVar;
        }
    }

    public final boolean l0(zzv zzvVar) {
        if (this.P != null && this.p0 != 3 && this.l != 0) {
            float f = this.O;
            zzvVar.getClass();
            zzv[] zzvVarArr = this.n;
            zzvVarArr.getClass();
            float Y = Y(f, zzvVar, zzvVarArr);
            float f2 = this.T;
            if (f2 != Y) {
                if (Y == -1.0f) {
                    n0();
                    return false;
                }
                if (f2 != -1.0f || Y > this.y) {
                    Bundle bundle = new Bundle();
                    bundle.putFloat("operating-rate", Y);
                    zzug zzugVar = this.P;
                    zzugVar.getClass();
                    zzugVar.a(bundle);
                    this.T = Y;
                }
            }
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzij, com.google.android.gms.internal.ads.zzmi
    public final long m(long j, long j2) {
        return X(j, j2);
    }

    public final boolean m0() {
        if (this.q0) {
            this.o0 = 1;
            if (this.Z) {
                this.p0 = 3;
                return false;
            }
            this.p0 = 2;
            return true;
        }
        zztd zztdVar = this.K;
        zztdVar.getClass();
        this.J = zztdVar;
        this.o0 = 0;
        this.p0 = 0;
        return true;
    }

    public final void n0() {
        if (this.q0) {
            this.o0 = 1;
            this.p0 = 3;
        } else {
            H();
            F();
        }
    }

    public final void o0() {
        int i = this.p0;
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    this.v0 = true;
                    g0();
                    return;
                } else {
                    H();
                    F();
                    return;
                }
            }
            j0();
            zztd zztdVar = this.K;
            zztdVar.getClass();
            this.J = zztdVar;
            this.o0 = 0;
            this.p0 = 0;
            return;
        }
        j0();
    }

    public final void p0(zzup zzupVar) {
        this.y0 = zzupVar;
        if (zzupVar.f9301c != -9223372036854775807L) {
            this.A0 = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzij, com.google.android.gms.internal.ads.zzmi
    public void q(float f, float f2) {
        this.N = f;
        this.O = f2;
        l0(this.Q);
    }

    public final zzup q0() {
        ArrayDeque arrayDeque = this.E;
        if (!arrayDeque.isEmpty()) {
            return (zzup) arrayDeque.getLast();
        }
        return this.y0;
    }

    public final boolean r0(long j, long j2) {
        if (j2 >= j) {
            return false;
        }
        zzv zzvVar = this.I;
        if (zzvVar != null && Objects.equals(zzvVar.m, "audio/opus") && j - j2 <= 80000) {
            return false;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzmk
    public final int s(zzv zzvVar) {
        try {
            return S(this.x, zzvVar);
        } catch (zzuu e) {
            throw B(e, zzvVar, false, 4002);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzij
    public void u(long j, boolean z, boolean z2) {
        ArrayDeque arrayDeque = this.E;
        if (!arrayDeque.isEmpty()) {
            this.y0 = (zzup) arrayDeque.getLast();
        }
        arrayDeque.clear();
        if (!z2) {
            return;
        }
        this.u0 = false;
        this.v0 = false;
        if (this.j0) {
            i0();
        } else if (this.P != null) {
            if (I()) {
                H();
                F();
            } else if (J()) {
                j0();
            } else {
                this.C0 = true;
            }
        }
        zzff zzffVar = this.y0.d;
        if (zzffVar.c() > 0) {
            this.w0 = true;
        }
        zzffVar.b();
    }

    @Override // com.google.android.gms.internal.ads.zzij
    public void x() {
        this.H = null;
        p0(zzup.f);
        this.E.clear();
        if (this.j0) {
            this.j0 = false;
            i0();
        } else if (this.P != null) {
            if (I()) {
                H();
            } else if (J()) {
                j0();
            } else {
                this.C0 = true;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzij
    public void y() {
        try {
            this.j0 = false;
            i0();
            H();
        } finally {
            this.K = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzij, com.google.android.gms.internal.ads.zzmk
    public final int zzu() {
        return 8;
    }

    public void e0() {
    }

    public void N(zzv zzvVar) {
    }
}
