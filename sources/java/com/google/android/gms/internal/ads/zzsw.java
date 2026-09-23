package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioDeviceInfo;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.media.session.PlaybackStateCompat;
import j$.util.Objects;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public final class zzsw extends zzuq implements zzlj {
    public final Context F0;
    public final zzqx G0;
    public final zzss H0;
    public final zzuc I0;
    public int J0;
    public boolean K0;
    public boolean L0;
    public zzv M0;
    public zzv N0;
    public long O0;
    public boolean P0;
    public boolean Q0;
    public boolean R0;
    public int S0;
    public boolean T0;
    public long U0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzsw(Context context, zzty zztyVar, Handler handler, zzqy zzqyVar, zzss zzssVar) {
        super(1, zztyVar, zzur.b, 44100.0f);
        zzuc zzucVar;
        if (Build.VERSION.SDK_INT >= 35) {
            zzub zzubVar = zzub.f9289a;
            zzucVar = new zzuc();
        } else {
            zzucVar = null;
        }
        this.F0 = context.getApplicationContext();
        this.H0 = zzssVar;
        this.I0 = zzucVar;
        this.S0 = -1000;
        this.G0 = new zzqx(handler, zzqyVar);
        this.U0 = -9223372036854775807L;
        zzssVar.m = new zzsv(this);
    }

    @Override // com.google.android.gms.internal.ads.zzuq, com.google.android.gms.internal.ads.zzij
    public final void D(boolean z, boolean z2) {
        super.D(z, z2);
        final zzik zzikVar = this.x0;
        final zzqx zzqxVar = this.G0;
        Handler handler = zzqxVar.f9206a;
        if (handler != null) {
            handler.post(new Runnable(zzikVar) { // from class: com.google.android.gms.internal.ads.zzqw
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Object, com.google.android.gms.internal.ads.zzdy] */
                @Override // java.lang.Runnable
                public final void run() {
                    zzqx zzqxVar2 = zzqx.this;
                    zzqxVar2.getClass();
                    String str = zzfj.f7405a;
                    zzoz zzozVar = ((zzjl) zzqxVar2.b).f9043c.r;
                    zzozVar.n(zzozVar.r(), 1007, new Object());
                }
            });
        }
        A();
        zzpn zzpnVar = this.j;
        zzpnVar.getClass();
        zzss zzssVar = this.H0;
        zzssVar.l = zzpnVar;
        zzdn zzdnVar = this.k;
        zzdnVar.getClass();
        zzssVar.b.d = zzdnVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x002f, code lost:
    
        if (r1 != null) goto L19;
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x009e  */
    /* JADX WARN: Type inference failed for: r9v3, types: [java.lang.Object, com.google.android.gms.internal.ads.zzpv] */
    @Override // com.google.android.gms.internal.ads.zzuq
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int S(com.google.android.gms.internal.ads.zzus r12, com.google.android.gms.internal.ads.zzv r13) {
        /*
            Method dump skipped, instructions count: 291
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzsw.S(com.google.android.gms.internal.ads.zzus, com.google.android.gms.internal.ads.zzv):int");
    }

    @Override // com.google.android.gms.internal.ads.zzuq
    public final ArrayList T(zzus zzusVar, zzv zzvVar) {
        Collection b;
        zzuj zzujVar;
        if (zzvVar.m == null) {
            b = zzguy.i;
        } else {
            if (this.H0.n(zzvVar)) {
                List a2 = zzvc.a("audio/raw", false, false);
                if (a2.isEmpty()) {
                    zzujVar = null;
                } else {
                    zzujVar = (zzuj) a2.get(0);
                }
                if (zzujVar != null) {
                    b = zzgtd.r(zzujVar);
                }
            }
            b = zzvc.b(zzusVar, zzvVar, false, false);
        }
        HashMap hashMap = zzvc.f9311a;
        ArrayList arrayList = new ArrayList(b);
        Collections.sort(arrayList, new zzuz(new zzva(zzvVar)));
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzuq
    public final boolean U(zzv zzvVar) {
        A();
        return this.H0.n(zzvVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x00cc, code lost:
    
        if ("AXON 7 mini".equals(r5) == false) goto L43;
     */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x013b  */
    @Override // com.google.android.gms.internal.ads.zzuq
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.zzud V(com.google.android.gms.internal.ads.zzuj r13, com.google.android.gms.internal.ads.zzv r14, float r15) {
        /*
            Method dump skipped, instructions count: 356
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzsw.V(com.google.android.gms.internal.ads.zzuj, com.google.android.gms.internal.ads.zzv, float):com.google.android.gms.internal.ads.zzud");
    }

    @Override // com.google.android.gms.internal.ads.zzuq
    public final zzil W(zzuj zzujVar, zzv zzvVar, zzv zzvVar2) {
        int i;
        int i2;
        zzil d = zzujVar.d(zzvVar, zzvVar2);
        int i3 = d.e;
        if (this.K == null && U(zzvVar2)) {
            i3 |= 32768;
        }
        if (s0(zzujVar, zzvVar2) > this.J0) {
            i3 |= 64;
        }
        String str = zzujVar.f9294a;
        if (i3 != 0) {
            i2 = 0;
            i = i3;
        } else {
            i = 0;
            i2 = d.d;
        }
        return new zzil(str, zzvVar, zzvVar2, i2, i);
    }

    @Override // com.google.android.gms.internal.ads.zzuq
    public final long X(long j, long j2) {
        boolean z;
        long u;
        float f;
        zzss zzssVar = this.H0;
        boolean z2 = true;
        if (zzssVar.s() && this.U0 != -9223372036854775807L) {
            z = true;
        } else {
            z = false;
        }
        if (!this.T0) {
            if (z || this.v0) {
                return 1000000L;
            }
        } else {
            if (!zzssVar.k()) {
                u = -9223372036854775807L;
            } else if (zzssVar.o.a()) {
                u = zzfj.t(zzssVar.o.e.b, zzssVar.r.zzj());
            } else {
                long zzj = zzssVar.r.zzj();
                int b = zzaes.b(zzssVar.o.e.f9191a);
                if (b == -2147483647) {
                    z2 = false;
                }
                zzgqa.f(z2);
                u = zzfj.u(zzj, 1000000L, b, RoundingMode.DOWN);
            }
            if (z && u != -9223372036854775807L) {
                float min = (float) Math.min(u, this.U0 - j);
                zzav zzavVar = zzssVar.v;
                if (zzavVar != null) {
                    f = zzavVar.f4431a;
                } else {
                    f = 1.0f;
                }
                float f2 = min / f;
                zzdn zzdnVar = this.k;
                zzdnVar.getClass();
                return Math.max(10000L, (f2 / 2.0f) - (zzfj.s(zzdnVar.zzb()) - j2));
            }
        }
        return 10000L;
    }

    @Override // com.google.android.gms.internal.ads.zzuq
    public final float Y(float f, zzv zzvVar, zzv[] zzvVarArr) {
        int i = -1;
        for (zzv zzvVar2 : zzvVarArr) {
            int i2 = zzvVar2.F;
            if (i2 != -1) {
                i = Math.max(i, i2);
            }
        }
        if (i == -1) {
            return -1.0f;
        }
        return i * f;
    }

    @Override // com.google.android.gms.internal.ads.zzuq
    public final void Z(final long j, final long j2, final String str) {
        final zzqx zzqxVar = this.G0;
        Handler handler = zzqxVar.f9206a;
        if (handler != null) {
            handler.post(new Runnable(str, j, j2) { // from class: com.google.android.gms.internal.ads.zzqk
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Object, com.google.android.gms.internal.ads.zzdy] */
                @Override // java.lang.Runnable
                public final void run() {
                    zzqx zzqxVar2 = zzqx.this;
                    zzqxVar2.getClass();
                    String str2 = zzfj.f7405a;
                    zzoz zzozVar = ((zzjl) zzqxVar2.b).f9043c.r;
                    zzozVar.n(zzozVar.r(), 1008, new Object());
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzuq
    public final void a0(final String str) {
        final zzqx zzqxVar = this.G0;
        Handler handler = zzqxVar.f9206a;
        if (handler != null) {
            handler.post(new Runnable(str) { // from class: com.google.android.gms.internal.ads.zzqq
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Object, com.google.android.gms.internal.ads.zzdy] */
                @Override // java.lang.Runnable
                public final void run() {
                    zzqx zzqxVar2 = zzqx.this;
                    zzqxVar2.getClass();
                    String str2 = zzfj.f7405a;
                    zzoz zzozVar = ((zzjl) zzqxVar2.b).f9043c.r;
                    zzozVar.n(zzozVar.r(), 1012, new Object());
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzuq
    public final void b0(final Exception exc) {
        zzee.f("MediaCodecAudioRenderer", "Audio codec error", exc);
        final zzqx zzqxVar = this.G0;
        Handler handler = zzqxVar.f9206a;
        if (handler != null) {
            handler.post(new Runnable(exc) { // from class: com.google.android.gms.internal.ads.zzqu
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Object, com.google.android.gms.internal.ads.zzdy] */
                @Override // java.lang.Runnable
                public final void run() {
                    zzqx zzqxVar2 = zzqx.this;
                    zzqxVar2.getClass();
                    String str = zzfj.f7405a;
                    zzoz zzozVar = ((zzjl) zzqxVar2.b).f9043c.r;
                    zzozVar.n(zzozVar.r(), 1029, new Object());
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmi, com.google.android.gms.internal.ads.zzmk
    public final String c() {
        return "MediaCodecAudioRenderer";
    }

    @Override // com.google.android.gms.internal.ads.zzuq
    public final zzil c0(zzle zzleVar) {
        final zzv zzvVar = zzleVar.b;
        zzvVar.getClass();
        this.M0 = zzvVar;
        final zzil c0 = super.c0(zzleVar);
        final zzqx zzqxVar = this.G0;
        Handler handler = zzqxVar.f9206a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzqn
                @Override // java.lang.Runnable
                public final void run() {
                    zzqx zzqxVar2 = zzqx.this;
                    zzqxVar2.getClass();
                    String str = zzfj.f7405a;
                    zzoz zzozVar = ((zzjl) zzqxVar2.b).f9043c.r;
                    zzmv r = zzozVar.r();
                    zzozVar.n(r, 1009, new zzdy(r, zzvVar, c0) { // from class: com.google.android.gms.internal.ads.zzos

                        /* renamed from: a, reason: collision with root package name */
                        public final /* synthetic */ zzv f9143a;

                        {
                            this.f9143a = r2;
                        }

                        @Override // com.google.android.gms.internal.ads.zzdy
                        public final /* synthetic */ void zza(Object obj) {
                            ((zzmx) obj).i(this.f9143a);
                        }
                    });
                }
            });
        }
        return c0;
    }

    @Override // com.google.android.gms.internal.ads.zzuq
    public final void d0(zzv zzvVar, MediaFormat mediaFormat) {
        int i;
        int i2;
        zzv zzvVar2 = this.N0;
        int[] iArr = null;
        boolean z = true;
        if (zzvVar2 != null) {
            zzvVar = zzvVar2;
        } else if (this.P != null) {
            mediaFormat.getClass();
            if ("audio/raw".equals(zzvVar.m)) {
                i = zzvVar.G;
            } else if (Build.VERSION.SDK_INT >= 24 && mediaFormat.containsKey("pcm-encoding")) {
                i = mediaFormat.getInteger("pcm-encoding");
            } else if (mediaFormat.containsKey("v-bits-per-sample")) {
                i = zzfj.y(mediaFormat.getInteger("v-bits-per-sample"), ByteOrder.LITTLE_ENDIAN);
            } else {
                i = 2;
            }
            zzt zztVar = new zzt();
            zztVar.e("audio/raw");
            zztVar.F = i;
            zztVar.G = zzvVar.H;
            zztVar.H = zzvVar.I;
            zztVar.j = zzvVar.k;
            zztVar.f9265a = zzvVar.f9308a;
            zztVar.b = zzvVar.b;
            zztVar.f9266c = zzgtd.v(zzvVar.f9309c);
            zztVar.d = zzvVar.d;
            zztVar.e = zzvVar.e;
            zztVar.f = zzvVar.f;
            zztVar.D = mediaFormat.getInteger("channel-count");
            zztVar.E = mediaFormat.getInteger("sample-rate");
            zzv zzvVar3 = new zzv(zztVar);
            boolean z2 = this.K0;
            int i3 = zzvVar3.E;
            if (z2 && i3 == 6 && (i2 = zzvVar.E) < 6) {
                iArr = new int[i2];
                for (int i4 = 0; i4 < i2; i4++) {
                    iArr[i4] = i4;
                }
            } else if (this.L0) {
                if (i3 != 3) {
                    if (i3 != 5) {
                        if (i3 != 6) {
                            if (i3 != 7) {
                                if (i3 == 8) {
                                    iArr = new int[]{0, 2, 1, 7, 5, 6, 3, 4};
                                }
                            } else {
                                iArr = new int[]{0, 2, 1, 6, 5, 3, 4};
                            }
                        } else {
                            iArr = new int[]{0, 2, 1, 5, 3, 4};
                        }
                    } else {
                        iArr = new int[]{0, 2, 1, 3, 4};
                    }
                } else {
                    iArr = new int[]{0, 2, 1};
                }
            }
            zzvVar = zzvVar3;
        }
        try {
            int i5 = Build.VERSION.SDK_INT;
            if (i5 >= 29) {
                if (this.j0) {
                    A();
                }
                if (i5 < 29) {
                    z = false;
                }
                zzgqa.f(z);
            }
            this.H0.p(zzvVar, iArr);
        } catch (zzra e) {
            throw B(e, e.f9208c, false, 5001);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzuq
    public final void e0() {
        this.H0.C = true;
    }

    @Override // com.google.android.gms.internal.ads.zzuq
    public final boolean f0(long j, long j2, zzug zzugVar, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, zzv zzvVar) {
        byteBuffer.getClass();
        this.U0 = -9223372036854775807L;
        if (this.N0 != null && (i2 & 2) != 0) {
            zzugVar.getClass();
            zzugVar.zzc(i);
            return true;
        }
        zzss zzssVar = this.H0;
        if (z) {
            if (zzugVar != null) {
                zzugVar.zzc(i);
            }
            this.x0.f += i3;
            zzssVar.C = true;
            return true;
        }
        try {
            if (zzssVar.r(byteBuffer, j3, i3)) {
                if (zzugVar != null) {
                    zzugVar.zzc(i);
                }
                this.x0.e += i3;
                return true;
            }
            this.U0 = j3;
            return false;
        } catch (zzrb e) {
            zzv zzvVar2 = this.M0;
            if (this.j0) {
                A();
            }
            throw B(e, zzvVar2, false, 5001);
        } catch (zzre e2) {
            if (this.j0) {
                A();
            }
            throw B(e2, zzvVar, e2.f, 5002);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzuq
    public final void g0() {
        int i;
        try {
            zzss zzssVar = this.H0;
            if (!zzssVar.J && zzssVar.k() && zzssVar.f()) {
                if (!zzssVar.K) {
                    zzssVar.K = true;
                    if (zzssVar.r.zzg()) {
                        zzssVar.L = false;
                    }
                    zzssVar.r.zzd();
                }
                zzssVar.J = true;
            }
            long j = this.y0.e;
            if (j != -9223372036854775807L) {
                this.U0 = j;
            }
        } catch (zzre e) {
            if (true != this.j0) {
                i = 5002;
            } else {
                i = 5003;
            }
            throw B(e, e.g, e.f, i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzuq, com.google.android.gms.internal.ads.zzmi
    public final boolean h() {
        return this.H0.s();
    }

    @Override // com.google.android.gms.internal.ads.zzuq
    public final void h0(zzih zzihVar) {
        zzv zzvVar;
        if (Build.VERSION.SDK_INT >= 29 && (zzvVar = zzihVar.b) != null && Objects.equals(zzvVar.m, "audio/opus") && this.j0) {
            ByteBuffer byteBuffer = zzihVar.g;
            byteBuffer.getClass();
            zzihVar.b.getClass();
            if (byteBuffer.remaining() == 8) {
                byteBuffer.order(ByteOrder.LITTLE_ENDIAN).getLong();
                zzpz zzpzVar = this.H0.r;
                if (zzpzVar != null) {
                    zzpzVar.zzg();
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlj
    public final void j(zzav zzavVar) {
        zzss zzssVar = this.H0;
        zzssVar.getClass();
        float f = zzavVar.f4431a;
        String str = zzfj.f7405a;
        zzssVar.v = new zzav(Math.max(0.1f, Math.min(f, 8.0f)), Math.max(0.1f, Math.min(zzavVar.b, 8.0f)));
        zzsq zzsqVar = new zzsq(zzavVar, -9223372036854775807L, -9223372036854775807L);
        if (zzssVar.k()) {
            zzssVar.t = zzsqVar;
        } else {
            zzssVar.u = zzsqVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzuq, com.google.android.gms.internal.ads.zzmi
    public final boolean k() {
        if (this.v0) {
            zzss zzssVar = this.H0;
            if (zzssVar.k()) {
                if (zzssVar.J && !zzssVar.s()) {
                    return true;
                }
                return false;
            }
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzuq, com.google.android.gms.internal.ads.zzij, com.google.android.gms.internal.ads.zzmd
    public final void l(int i, Object obj) {
        zzuc zzucVar;
        zzss zzssVar = this.H0;
        if (i != 2) {
            if (i != 3) {
                if (i != 6) {
                    if (i != 12) {
                        if (i != 16) {
                            if (i != 19) {
                                if (i != 9) {
                                    if (i != 10) {
                                        super.l(i, obj);
                                        return;
                                    }
                                    obj.getClass();
                                    int intValue = ((Integer) obj).intValue();
                                    if (zzssVar.O) {
                                        if (zzssVar.N == intValue) {
                                            zzssVar.O = false;
                                        }
                                        if (Build.VERSION.SDK_INT < 35 && (zzucVar = this.I0) != null) {
                                            zzucVar.a(intValue);
                                            return;
                                        }
                                        return;
                                    }
                                    if (zzssVar.N != intValue) {
                                        zzssVar.N = intValue;
                                        zzssVar.i();
                                    }
                                    if (Build.VERSION.SDK_INT < 35) {
                                        return;
                                    } else {
                                        return;
                                    }
                                }
                                obj.getClass();
                                zzssVar.w = ((Boolean) obj).booleanValue();
                                zzsq zzsqVar = new zzsq(zzssVar.v, -9223372036854775807L, -9223372036854775807L);
                                if (zzssVar.k()) {
                                    zzssVar.t = zzsqVar;
                                    return;
                                } else {
                                    zzssVar.u = zzsqVar;
                                    return;
                                }
                            }
                            obj.getClass();
                            int intValue2 = ((Integer) obj).intValue();
                            int i2 = zzssVar.R;
                            if (intValue2 == 0 || intValue2 == -1) {
                                intValue2 = -1;
                            }
                            if (i2 != intValue2) {
                                zzssVar.R = intValue2;
                                zzssVar.i();
                                return;
                            }
                            return;
                        }
                        obj.getClass();
                        this.S0 = ((Integer) obj).intValue();
                        zzug zzugVar = this.P;
                        if (zzugVar != null && Build.VERSION.SDK_INT >= 35) {
                            Bundle bundle = new Bundle();
                            bundle.putInt("importance", Math.max(0, -this.S0));
                            zzugVar.a(bundle);
                            return;
                        }
                        return;
                    }
                    AudioDeviceInfo audioDeviceInfo = (AudioDeviceInfo) obj;
                    zzssVar.Q = audioDeviceInfo;
                    zzpz zzpzVar = zzssVar.r;
                    if (zzpzVar != null) {
                        zzpzVar.b(audioDeviceInfo);
                        return;
                    }
                    return;
                }
                zze zzeVar = (zze) obj;
                zzeVar.getClass();
                if (!zzssVar.P.equals(zzeVar)) {
                    if (zzssVar.r != null) {
                        zzssVar.P.getClass();
                    }
                    zzssVar.P = zzeVar;
                    return;
                }
                return;
            }
            zzd zzdVar = (zzd) obj;
            zzdVar.getClass();
            if (!zzssVar.s.equals(zzdVar)) {
                zzssVar.s = zzdVar;
                zzssVar.i();
                return;
            }
            return;
        }
        obj.getClass();
        float floatValue = ((Float) obj).floatValue();
        if (zzssVar.F != floatValue) {
            zzssVar.F = floatValue;
            if (zzssVar.k()) {
                zzssVar.r.zzf(zzssVar.F);
            }
        }
    }

    public final int s0(zzuj zzujVar, zzv zzvVar) {
        if ("OMX.google.raw.decoder".equals(zzujVar.f9294a) && Build.VERSION.SDK_INT == 23 && !zzfj.h(this.F0)) {
            return -1;
        }
        return zzvVar.n;
    }

    public final void t0() {
        long j;
        long j2;
        ArrayDeque arrayDeque;
        long j3;
        k();
        final zzss zzssVar = this.H0;
        zzsn zzsnVar = zzssVar.W;
        if (!zzssVar.k() || zzssVar.D) {
            j = Long.MIN_VALUE;
            j2 = Long.MIN_VALUE;
        } else {
            long min = Math.min(zzssVar.r.zzk(), zzfj.t(zzssVar.o.e.b, zzssVar.l()));
            while (true) {
                arrayDeque = zzssVar.h;
                if (arrayDeque.isEmpty() || min < ((zzsq) arrayDeque.getFirst()).f9257c) {
                    break;
                } else {
                    zzssVar.u = (zzsq) arrayDeque.remove();
                }
            }
            zzsq zzsqVar = zzssVar.u;
            long j4 = min - zzsqVar.f9257c;
            long w = zzfj.w(j4, zzsqVar.f9256a.f4431a);
            if (arrayDeque.isEmpty()) {
                zzcu zzcuVar = zzsnVar.f9253c;
                if (zzcuVar.zzc()) {
                    if (zzcuVar.n >= PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) {
                        long j5 = zzcuVar.m;
                        zzcuVar.j.getClass();
                        long zza = j5 - ((r10.j * r10.b) * r10.i.zza());
                        int i = zzcuVar.h.f5231a;
                        int i2 = zzcuVar.g.f5231a;
                        if (i == i2) {
                            j4 = zzfj.u(j4, zza, zzcuVar.n, RoundingMode.DOWN);
                        } else {
                            j = Long.MIN_VALUE;
                            j4 = zzfj.u(j4, zza * i, zzcuVar.n * i2, RoundingMode.DOWN);
                        }
                    } else {
                        j = Long.MIN_VALUE;
                        j4 = (long) (zzcuVar.f5473c * j4);
                    }
                    zzsq zzsqVar2 = zzssVar.u;
                    j3 = zzsqVar2.b + j4;
                    zzsqVar2.d = j4 - w;
                }
                j = Long.MIN_VALUE;
                zzsq zzsqVar22 = zzssVar.u;
                j3 = zzsqVar22.b + j4;
                zzsqVar22.d = j4 - w;
            } else {
                j = Long.MIN_VALUE;
                zzsq zzsqVar3 = zzssVar.u;
                j3 = zzsqVar3.b + w + zzsqVar3.d;
            }
            long j6 = zzsnVar.b.l;
            j2 = zzfj.t(zzssVar.o.e.b, j6) + j3;
            long j7 = zzssVar.T;
            if (j6 > j7) {
                long t = zzfj.t(zzssVar.o.e.b, j6 - j7);
                zzssVar.T = j6;
                zzssVar.U += t;
                if (zzssVar.V == null) {
                    zzssVar.V = new Handler(Looper.myLooper());
                }
                zzssVar.V.removeCallbacksAndMessages(null);
                zzssVar.V.postDelayed(new Runnable() { // from class: com.google.android.gms.internal.ads.zzsp
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zzss zzssVar2 = zzss.this;
                        if (zzssVar2.U >= 300000) {
                            ((zzsv) zzssVar2.m).f9262a.R0 = true;
                            zzssVar2.U = 0L;
                        }
                    }
                }, 100L);
            }
        }
        if (j2 != j) {
            if (!this.P0) {
                j2 = Math.max(this.O0, j2);
            }
            this.O0 = j2;
            this.P0 = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzuq, com.google.android.gms.internal.ads.zzij
    public final void u(long j, boolean z, boolean z2) {
        super.u(j, z, z2);
        this.H0.a();
        this.O0 = j;
        this.U0 = -9223372036854775807L;
        this.R0 = false;
        this.P0 = true;
    }

    @Override // com.google.android.gms.internal.ads.zzij
    public final void v() {
        this.H0.q();
        this.T0 = true;
    }

    @Override // com.google.android.gms.internal.ads.zzij
    public final void w() {
        t0();
        this.T0 = false;
        zzss zzssVar = this.H0;
        zzssVar.M = false;
        if (zzssVar.k()) {
            zzssVar.r.zzb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzuq, com.google.android.gms.internal.ads.zzij
    public final void x() {
        zzqx zzqxVar = this.G0;
        this.Q0 = true;
        this.M0 = null;
        this.U0 = -9223372036854775807L;
        try {
            try {
                this.H0.a();
                super.x();
                zzik zzikVar = this.x0;
                zzqxVar.getClass();
                synchronized (zzikVar) {
                }
                Handler handler = zzqxVar.f9206a;
                if (handler != null) {
                    handler.post(new zzqr(zzqxVar, zzikVar));
                }
            } catch (Throwable th) {
                super.x();
                zzqxVar.a(this.x0);
                throw th;
            }
        } catch (Throwable th2) {
            zzqxVar.a(this.x0);
            throw th2;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzuq, com.google.android.gms.internal.ads.zzij
    public final void y() {
        zzss zzssVar = this.H0;
        this.R0 = false;
        this.U0 = -9223372036854775807L;
        try {
            super.y();
            if (this.Q0) {
                this.Q0 = false;
                zzssVar.b();
            }
        } catch (Throwable th) {
            if (this.Q0) {
                this.Q0 = false;
                zzssVar.b();
            }
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzij
    public final void z() {
        zzuc zzucVar;
        zzse zzseVar = this.H0.b;
        zzed zzedVar = zzseVar.f9242c;
        if (zzedVar != null) {
            zzedVar.e();
        }
        zzpu zzpuVar = zzseVar.f;
        if (zzpuVar != null && zzpuVar.j) {
            zzpuVar.g = null;
            Context context = zzpuVar.f9173a;
            zzcj.a(context).unregisterAudioDeviceCallback(zzpuVar.d);
            context.unregisterReceiver(zzpuVar.e);
            zzpr zzprVar = zzpuVar.f;
            if (zzprVar != null) {
                zzprVar.f9170a.unregisterContentObserver(zzprVar);
            }
            zzpuVar.j = false;
        }
        if (Build.VERSION.SDK_INT >= 35 && (zzucVar = this.I0) != null) {
            zzucVar.d();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzij, com.google.android.gms.internal.ads.zzmi
    public final zzlj zzd() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzlj
    public final long zzg() {
        if (this.l == 2) {
            t0();
        }
        return this.O0;
    }

    @Override // com.google.android.gms.internal.ads.zzlj
    public final boolean zzh() {
        boolean z = this.R0;
        this.R0 = false;
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzlj
    public final zzav zzj() {
        return this.H0.v;
    }
}
