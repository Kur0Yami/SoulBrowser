package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import j$.util.DesugarCollections;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.LongCompanionObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzxk implements zzwe, zzaer, zzaar, zzaaw, zzxu {
    public static final Map R;
    public static final zzv S;
    public boolean A;
    public zzxj B;
    public zzafr C;
    public long D;
    public boolean E;
    public boolean G;
    public boolean H;
    public boolean I;
    public int J;
    public boolean K;
    public long L;
    public boolean N;
    public int O;
    public boolean P;
    public boolean Q;

    /* renamed from: c, reason: collision with root package name */
    public final Uri f9365c;
    public final zzhb f;
    public final zztk g;
    public final zzwq h;
    public final zztf i;
    public final zzxo j;
    public final zzaah k;
    public final long l;
    public final long m;
    public final zzwz o;
    public zzwd t;
    public zzahv u;
    public boolean x;
    public boolean y;
    public boolean z;
    public final zzaaz n = new zzaaz();
    public final zzdq p = new Object();
    public final Runnable q = new Runnable() { // from class: com.google.android.gms.internal.ads.zzxg
        @Override // java.lang.Runnable
        public final /* synthetic */ void run() {
            zzxk.this.p();
        }
    };
    public final Runnable r = new Runnable() { // from class: com.google.android.gms.internal.ads.zzxd
        @Override // java.lang.Runnable
        public final /* synthetic */ void run() {
            zzxk zzxkVar = zzxk.this;
            if (!zzxkVar.Q) {
                zzwd zzwdVar = zzxkVar.t;
                zzwdVar.getClass();
                zzwdVar.f(zzxkVar);
            }
        }
    };
    public final Handler s = zzfj.n();
    public zzxi[] w = new zzxi[0];
    public zzxv[] v = new zzxv[0];
    public long M = -9223372036854775807L;
    public int F = 1;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("Icy-MetaData", "1");
        R = DesugarCollections.unmodifiableMap(hashMap);
        zzt zztVar = new zzt();
        zztVar.f9265a = "icy";
        zztVar.e("application/x-icy");
        S = new zzv(zztVar);
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [com.google.android.gms.internal.ads.zzdq, java.lang.Object] */
    public zzxk(Uri uri, zzhb zzhbVar, zzwz zzwzVar, zztk zztkVar, zztf zztfVar, zzwq zzwqVar, zzxo zzxoVar, zzaah zzaahVar, int i, long j) {
        this.f9365c = uri;
        this.f = zzhbVar;
        this.g = zztkVar;
        this.i = zztfVar;
        this.h = zzwqVar;
        this.j = zzxoVar;
        this.k = zzaahVar;
        this.l = i;
        this.o = zzwzVar;
        this.m = j;
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final boolean a(zzli zzliVar) {
        if (!this.P) {
            zzaaz zzaazVar = this.n;
            if (zzaazVar.f3860c == null && !this.N) {
                if (!this.y || this.J != 0) {
                    boolean a2 = this.p.a();
                    if (zzaazVar.b != null) {
                        return a2;
                    }
                    q();
                    return true;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzwe
    public final long b(long j) {
        boolean p;
        u();
        boolean[] zArr = this.B.b;
        boolean z = true;
        if (true != this.C.zzb()) {
            j = 0;
        }
        this.H = false;
        long j2 = this.L;
        this.L = j;
        if (t()) {
            this.M = j;
            return j;
        }
        if (this.F != 7 && (this.P || this.n.b != null)) {
            int length = this.v.length;
            for (int i = 0; i < length; i++) {
                zzxv zzxvVar = this.v[i];
                int i2 = zzxvVar.p;
                if (zzxvVar.r + i2 != 0 || j2 != j) {
                    if (this.A) {
                        synchronized (zzxvVar) {
                            zzxvVar.g();
                            int i3 = zzxvVar.p;
                            if (i2 >= i3 && i2 <= zzxvVar.o + i3) {
                                zzxvVar.s = Long.MIN_VALUE;
                                zzxvVar.r = i2 - i3;
                                p = true;
                            }
                            p = false;
                        }
                    } else {
                        p = zzxvVar.p(j, this.P);
                    }
                    if (p) {
                        continue;
                    } else if (!zArr[i] && this.z) {
                    }
                }
            }
            return j;
        }
        this.N = false;
        this.M = j;
        this.P = false;
        this.I = false;
        zzaaz zzaazVar = this.n;
        if (zzaazVar.b == null) {
            z = false;
        }
        if (z) {
            for (zzxv zzxvVar2 : this.v) {
                zzxvVar2.r();
            }
            zzaau zzaauVar = zzaazVar.b;
            zzaauVar.getClass();
            zzaauVar.a(false);
            return j;
        }
        zzaazVar.f3860c = null;
        for (zzxv zzxvVar3 : this.v) {
            zzxvVar3.l(false);
        }
        return j;
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x0096, code lost:
    
        if (r12 == Long.MIN_VALUE) goto L53;
     */
    /* JADX WARN: Removed duplicated region for block: B:28:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00d7 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x007e  */
    @Override // com.google.android.gms.internal.ads.zzwe
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long c(long r26, com.google.android.gms.internal.ads.zzmq r28) {
        /*
            Method dump skipped, instructions count: 217
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzxk.c(long, com.google.android.gms.internal.ads.zzmq):long");
    }

    @Override // com.google.android.gms.internal.ads.zzwe
    public final void d(long j) {
        long j2;
        long j3;
        int i;
        int i2;
        if (!this.A) {
            u();
            if (!t()) {
                boolean[] zArr = this.B.f9364c;
                int length = this.v.length;
                int i3 = 0;
                while (i3 < length) {
                    zzxv zzxvVar = this.v[i3];
                    boolean z = zArr[i3];
                    zzxq zzxqVar = zzxvVar.f9377a;
                    synchronized (zzxvVar) {
                        try {
                            int i4 = zzxvVar.o;
                            if (i4 != 0) {
                                long[] jArr = zzxvVar.m;
                                int i5 = zzxvVar.q;
                                if (j >= jArr[i5]) {
                                    if (z && (i2 = zzxvVar.r) != i4) {
                                        i = i2 + 1;
                                    } else {
                                        i = i4;
                                    }
                                    j2 = j;
                                    int i6 = zzxvVar.i(i5, i, j2, false);
                                    if (i6 != -1) {
                                        j3 = zzxvVar.j(i6);
                                    }
                                    j3 = -1;
                                }
                            }
                            j2 = j;
                            j3 = -1;
                        } finally {
                        }
                    }
                    zzxqVar.a(j3);
                    i3++;
                    j = j2;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaer
    public final void e(final zzafr zzafrVar) {
        this.s.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzxe
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzafr zzafqVar;
                zzxk zzxkVar = zzxk.this;
                zzahv zzahvVar = zzxkVar.u;
                zzafr zzafrVar2 = zzafrVar;
                if (zzahvVar == null) {
                    zzafqVar = zzafrVar2;
                } else {
                    zzafqVar = new zzafq(-9223372036854775807L, 0L);
                }
                zzxkVar.C = zzafqVar;
                zzxkVar.D = zzafrVar2.zza();
                boolean z = false;
                int i = 1;
                if (!zzxkVar.K && zzafrVar2.zza() == -9223372036854775807L) {
                    z = true;
                }
                zzxkVar.E = z;
                if (true == z) {
                    i = 7;
                }
                zzxkVar.F = i;
                if (zzxkVar.y) {
                    zzxkVar.j.q(zzxkVar.D, zzafrVar2, z);
                } else {
                    zzxkVar.p();
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzaer
    public final zzaga f(int i, int i2) {
        return o(new zzxi(i, false));
    }

    @Override // com.google.android.gms.internal.ads.zzwe
    public final long g(zzzw[] zzzwVarArr, boolean[] zArr, zzxw[] zzxwVarArr, boolean[] zArr2, long j) {
        boolean z;
        zzzw zzzwVar;
        boolean z2;
        boolean z3;
        u();
        zzxj zzxjVar = this.B;
        zzyh zzyhVar = zzxjVar.f9363a;
        boolean[] zArr3 = zzxjVar.f9364c;
        int i = this.J;
        for (int i2 = 0; i2 < zzzwVarArr.length; i2++) {
            zzxw zzxwVar = zzxwVarArr[i2];
            if (zzxwVar != null && (zzzwVarArr[i2] == null || !zArr[i2])) {
                int i3 = ((zzxh) zzxwVar).f9361a;
                zzgqa.f(zArr3[i3]);
                this.J--;
                zArr3[i3] = false;
                zzxwVarArr[i2] = null;
            }
        }
        if (!this.G ? !(j == 0 || this.A) : i == 0) {
            z = true;
        } else {
            z = false;
        }
        for (int i4 = 0; i4 < zzzwVarArr.length; i4++) {
            if (zzxwVarArr[i4] == null && (zzzwVar = zzzwVarArr[i4]) != null) {
                if (zzzwVar.zze() == 1) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                zzgqa.f(z2);
                if (zzzwVar.zzf(0) == 0) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                zzgqa.f(z3);
                int indexOf = zzyhVar.b.indexOf(zzzwVar.zza());
                if (indexOf < 0) {
                    indexOf = -1;
                }
                zzgqa.f(!zArr3[indexOf]);
                this.J++;
                zArr3[indexOf] = true;
                this.I = zzzwVar.zzc().s | this.I;
                zzxwVarArr[i4] = new zzxh(this, indexOf);
                zArr2[i4] = true;
                if (!z) {
                    zzxv zzxvVar = this.v[indexOf];
                    if (zzxvVar.p + zzxvVar.r != 0 && !zzxvVar.p(j, true)) {
                        z = true;
                    } else {
                        z = false;
                    }
                }
            }
        }
        if (this.J == 0) {
            this.N = false;
            this.H = false;
            this.I = false;
            zzaaz zzaazVar = this.n;
            if (zzaazVar.b != null) {
                for (zzxv zzxvVar2 : this.v) {
                    zzxvVar2.r();
                }
                zzaau zzaauVar = zzaazVar.b;
                zzaauVar.getClass();
                zzaauVar.a(false);
            } else {
                this.P = false;
                for (zzxv zzxvVar3 : this.v) {
                    zzxvVar3.l(false);
                }
            }
        } else if (z) {
            j = b(j);
            for (int i5 = 0; i5 < zzxwVarArr.length; i5++) {
                if (zzxwVarArr[i5] != null) {
                    zArr2[i5] = true;
                }
            }
        }
        this.G = true;
        return j;
    }

    @Override // com.google.android.gms.internal.ads.zzwe
    public final void h(zzwd zzwdVar, long j) {
        this.t = zzwdVar;
        this.p.a();
        q();
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final void i(long j) {
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, com.google.android.gms.internal.ads.zzvx] */
    public final void j(zzaav zzaavVar, boolean z) {
        zzxb zzxbVar = (zzxb) zzaavVar;
        Uri uri = zzxbVar.b.b;
        ?? obj = new Object();
        zzwc zzwcVar = new zzwc(-1, null, zzfj.r(zzxbVar.i), zzfj.r(this.D));
        zzwq zzwqVar = this.h;
        zzwqVar.a(new zzwl(zzwqVar, obj, zzwcVar));
        if (!z) {
            for (zzxv zzxvVar : this.v) {
                zzxvVar.l(false);
            }
            if (this.J > 0) {
                zzwd zzwdVar = this.t;
                zzwdVar.getClass();
                zzwdVar.f(this);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object, com.google.android.gms.internal.ads.zzvx] */
    public final void k(zzaav zzaavVar) {
        long j;
        zzxb zzxbVar = (zzxb) zzaavVar;
        if (this.D == -9223372036854775807L && this.C != null) {
            long s = s(true);
            if (s == Long.MIN_VALUE) {
                j = 0;
            } else {
                j = s + 10000;
            }
            this.D = j;
            this.j.q(j, this.C, this.E);
        }
        Uri uri = zzxbVar.b.b;
        ?? obj = new Object();
        zzwc zzwcVar = new zzwc(-1, null, zzfj.r(zzxbVar.i), zzfj.r(this.D));
        zzwq zzwqVar = this.h;
        zzwqVar.a(new zzwk(zzwqVar, obj, zzwcVar));
        this.P = true;
        zzwd zzwdVar = this.t;
        zzwdVar.getClass();
        zzwdVar.f(this);
    }

    public final void l(int i) {
        u();
        zzxj zzxjVar = this.B;
        boolean[] zArr = zzxjVar.d;
        if (!zArr[i]) {
            zzv zzvVar = zzxjVar.f9363a.a(i).d[0];
            zzwc zzwcVar = new zzwc(zzas.f(zzvVar.m), zzvVar, zzfj.r(this.L), -9223372036854775807L);
            zzwq zzwqVar = this.h;
            zzwqVar.a(new zzwn(zzwqVar, zzwcVar));
            zArr[i] = true;
        }
    }

    public final void m(int i) {
        u();
        if (this.N) {
            if ((!this.z || this.B.b[i]) && !this.v[i].o(false)) {
                this.M = 0L;
                this.N = false;
                this.H = true;
                this.L = 0L;
                this.O = 0;
                for (zzxv zzxvVar : this.v) {
                    zzxvVar.l(false);
                }
                zzwd zzwdVar = this.t;
                zzwdVar.getClass();
                zzwdVar.f(this);
            }
        }
    }

    public final boolean n() {
        return this.H || t();
    }

    public final zzaga o(zzxi zzxiVar) {
        int length = this.v.length;
        for (int i = 0; i < length; i++) {
            if (zzxiVar.equals(this.w[i])) {
                return this.v[i];
            }
        }
        if (this.x) {
            int i2 = zzxiVar.f9362a;
            StringBuilder sb = new StringBuilder(String.valueOf(i2).length() + 55);
            sb.append("Extractor added new track (id=");
            sb.append(i2);
            sb.append(") after finishing tracks.");
            zzee.c("ProgressiveMediaPeriod", sb.toString());
            return new zzael();
        }
        zzxv zzxvVar = new zzxv(this.k, this.g, this.i);
        zzxvVar.e = this;
        int i3 = length + 1;
        zzxi[] zzxiVarArr = (zzxi[]) Arrays.copyOf(this.w, i3);
        zzxiVarArr[length] = zzxiVar;
        String str = zzfj.f7405a;
        this.w = zzxiVarArr;
        zzxv[] zzxvVarArr = (zzxv[]) Arrays.copyOf(this.v, i3);
        zzxvVarArr[length] = zzxvVar;
        this.v = zzxvVarArr;
        return zzxvVar;
    }

    public final void p() {
        boolean z;
        boolean z2;
        zzap c2;
        int i;
        zzv zzvVar;
        long j = this.m;
        if (!this.Q && !this.y && this.x && this.C != null) {
            for (zzxv zzxvVar : this.v) {
                synchronized (zzxvVar) {
                    if (zzxvVar.x) {
                        zzvVar = null;
                    } else {
                        zzvVar = zzxvVar.y;
                    }
                }
                if (zzvVar == null) {
                    return;
                }
            }
            this.p.b();
            int length = this.v.length;
            zzbg[] zzbgVarArr = new zzbg[length];
            boolean[] zArr = new boolean[length];
            for (int i2 = 0; i2 < length; i2++) {
                zzv m = this.v[i2].m();
                m.getClass();
                String str = m.m;
                boolean a2 = zzas.a(str);
                if (a2 || zzas.b(str)) {
                    z = true;
                } else {
                    z = false;
                }
                zArr[i2] = z;
                this.z = z | this.z;
                boolean c3 = zzas.c(str);
                if (j != -9223372036854775807L && length == 1 && c3) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                this.A = z2;
                zzahv zzahvVar = this.u;
                if (zzahvVar != null) {
                    if (a2 || this.w[i2].b) {
                        zzap zzapVar = m.k;
                        if (zzapVar == null) {
                            c2 = new zzap(zzahvVar);
                        } else {
                            c2 = zzapVar.c(zzahvVar);
                        }
                        zzt zztVar = new zzt(m);
                        zztVar.j = c2;
                        m = new zzv(zztVar);
                    }
                    if (a2 && m.g == -1 && m.h == -1 && (i = zzahvVar.f4048a) != -1) {
                        zzt zztVar2 = new zzt(m);
                        zztVar2.g = i;
                        m = new zzv(zztVar2);
                    }
                }
                int b = this.g.b(m);
                zzt zztVar3 = new zzt(m);
                zztVar3.K = b;
                zzv zzvVar2 = new zzv(zztVar3);
                zzbgVarArr[i2] = new zzbg(Integer.toString(i2), zzvVar2);
                this.I = zzvVar2.s | this.I;
            }
            this.B = new zzxj(new zzyh(zzbgVarArr), zArr);
            if (this.A && this.D == -9223372036854775807L) {
                this.D = j;
                this.C = new zzxa(this, this.C);
            }
            this.j.q(this.D, this.C, this.E);
            this.y = true;
            zzwd zzwdVar = this.t;
            zzwdVar.getClass();
            zzwdVar.e(this);
        }
    }

    public final void q() {
        zzxb zzxbVar = new zzxb(this, this.f9365c, this.f, this.o, this, this.p);
        boolean z = false;
        if (this.y) {
            zzgqa.f(t());
            long j = this.D;
            if (j != -9223372036854775807L && this.M > j) {
                this.P = true;
                this.M = -9223372036854775807L;
                return;
            }
            zzafr zzafrVar = this.C;
            zzafrVar.getClass();
            zzafs zzafsVar = zzafrVar.b(this.M).f3984a;
            long j2 = this.M;
            zzxbVar.f.f3983a = zzafsVar.b;
            zzxbVar.i = j2;
            zzxbVar.h = true;
            zzxbVar.l = false;
            for (zzxv zzxvVar : this.v) {
                zzxvVar.s = this.M;
            }
            this.M = -9223372036854775807L;
        }
        this.O = r();
        zzaaz zzaazVar = this.n;
        zzaazVar.getClass();
        Looper myLooper = Looper.myLooper();
        myLooper.getClass();
        zzaazVar.f3860c = null;
        zzaau zzaauVar = new zzaau(zzaazVar, myLooper, zzxbVar, this, SystemClock.elapsedRealtime());
        zzaaz zzaazVar2 = zzaauVar.l;
        if (zzaazVar2.b == null) {
            z = true;
        }
        zzgqa.f(z);
        zzaazVar2.b = zzaauVar;
        zzaauVar.b();
    }

    public final int r() {
        int i = 0;
        for (zzxv zzxvVar : this.v) {
            i += zzxvVar.p + zzxvVar.o;
        }
        return i;
    }

    public final long s(boolean z) {
        int i = 0;
        long j = Long.MIN_VALUE;
        while (true) {
            zzxv[] zzxvVarArr = this.v;
            if (i < zzxvVarArr.length) {
                if (!z) {
                    zzxj zzxjVar = this.B;
                    zzxjVar.getClass();
                    if (!zzxjVar.f9364c[i]) {
                        i++;
                    }
                }
                j = Math.max(j, zzxvVarArr[i].n());
                i++;
            } else {
                return j;
            }
        }
    }

    public final boolean t() {
        return this.M != -9223372036854775807L;
    }

    public final void u() {
        zzgqa.f(this.y);
        this.B.getClass();
        this.C.getClass();
    }

    @Override // com.google.android.gms.internal.ads.zzwe
    public final void zzc() {
        int i;
        IOException iOException;
        if (this.F == 7) {
            i = 6;
        } else {
            i = 3;
        }
        zzaaz zzaazVar = this.n;
        IOException iOException2 = zzaazVar.f3860c;
        if (iOException2 == null) {
            zzaau zzaauVar = zzaazVar.b;
            if (zzaauVar != null && (iOException = zzaauVar.g) != null && zzaauVar.h > i) {
                throw iOException;
            }
            if (this.P && !this.y) {
                throw zzat.a("Loading finished before preparation is complete.", null);
            }
            return;
        }
        throw iOException2;
    }

    @Override // com.google.android.gms.internal.ads.zzwe
    public final zzyh zzd() {
        u();
        return this.B.f9363a;
    }

    @Override // com.google.android.gms.internal.ads.zzwe
    public final long zzh() {
        if (this.I) {
            this.I = false;
        } else if (this.H) {
            if (this.P || r() > this.O) {
                this.H = false;
            } else {
                return -9223372036854775807L;
            }
        } else {
            return -9223372036854775807L;
        }
        return this.L;
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final long zzi() {
        long j;
        boolean z;
        u();
        if (this.P || this.J == 0) {
            return Long.MIN_VALUE;
        }
        if (t()) {
            return this.M;
        }
        if (this.z) {
            int length = this.v.length;
            j = Long.MAX_VALUE;
            for (int i = 0; i < length; i++) {
                zzxj zzxjVar = this.B;
                if (zzxjVar.b[i] && zzxjVar.f9364c[i]) {
                    zzxv zzxvVar = this.v[i];
                    synchronized (zzxvVar) {
                        z = zzxvVar.v;
                    }
                    if (!z) {
                        j = Math.min(j, this.v[i].n());
                    }
                }
            }
        } else {
            j = Long.MAX_VALUE;
        }
        if (j == LongCompanionObject.MAX_VALUE) {
            j = s(false);
        }
        if (j == Long.MIN_VALUE) {
            return this.L;
        }
        return j;
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final long zzl() {
        return zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final boolean zzn() {
        boolean z;
        if (this.n.b != null) {
            zzdq zzdqVar = this.p;
            synchronized (zzdqVar) {
                z = zzdqVar.f6014a;
            }
            if (z) {
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzaaw
    public final void zzo() {
        for (zzxv zzxvVar : this.v) {
            zzxvVar.l(true);
            if (zzxvVar.g != null) {
                zzxvVar.g = null;
                zzxvVar.f = null;
            }
        }
        this.o.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzaer
    public final void zzv() {
        this.x = true;
        this.s.post(this.q);
    }
}
