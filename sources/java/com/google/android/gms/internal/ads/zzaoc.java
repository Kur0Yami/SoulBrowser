package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class zzaoc implements zzaog {
    public static final byte[] x = {73, 68, 51};

    /* renamed from: a, reason: collision with root package name */
    public final boolean f4263a;
    public final String d;
    public final int e;
    public final String f;
    public String g;
    public zzaga h;
    public zzaga i;
    public boolean m;
    public boolean n;
    public int q;
    public boolean r;
    public int t;
    public zzaga v;
    public long w;
    public final zzeq b = new zzeq(new byte[7], 7);

    /* renamed from: c, reason: collision with root package name */
    public final zzer f4264c = new zzer(Arrays.copyOf(x, 10));
    public int o = -1;
    public int p = -1;
    public long s = -9223372036854775807L;
    public long u = -9223372036854775807L;
    public int j = 0;
    public int k = 0;
    public int l = 256;

    public zzaoc(String str, int i, String str2, boolean z) {
        this.f4263a = z;
        this.d = str;
        this.e = i;
        this.f = str2;
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void v(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void w(int i, long j) {
        this.u = j;
    }

    /* JADX WARN: Code restructure failed: missing block: B:105:0x0221, code lost:
    
        r19 = r13;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x02d0  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0315 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzaog
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void x(com.google.android.gms.internal.ads.zzer r21) {
        /*
            Method dump skipped, instructions count: 816
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaoc.x(com.google.android.gms.internal.ads.zzer):void");
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void y(zzaer zzaerVar, zzapu zzapuVar) {
        zzapuVar.a();
        zzapuVar.b();
        this.g = zzapuVar.e;
        zzapuVar.b();
        zzaga f = zzaerVar.f(zzapuVar.d, 1);
        this.h = f;
        this.v = f;
        if (this.f4263a) {
            zzapuVar.a();
            zzapuVar.b();
            zzaga f2 = zzaerVar.f(zzapuVar.d, 5);
            this.i = f2;
            zzt zztVar = new zzt();
            zzapuVar.b();
            zztVar.f9265a = zzapuVar.e;
            zztVar.d(this.f);
            zztVar.e("application/id3");
            f2.e(new zzv(zztVar));
            return;
        }
        this.i = new zzael();
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void zza() {
        this.u = -9223372036854775807L;
        this.n = false;
        this.j = 0;
        this.k = 0;
        this.l = 256;
    }
}
