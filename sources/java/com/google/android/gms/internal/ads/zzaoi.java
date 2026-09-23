package com.google.android.gms.internal.ads;

import kotlin.uuid.Uuid;

/* loaded from: classes.dex */
public final class zzaoi implements zzaog {
    public static final double[] r = {23.976023976023978d, 24.0d, 25.0d, 29.97002997002997d, 30.0d, 50.0d, 59.94005994005994d, 60.0d};

    /* renamed from: a, reason: collision with root package name */
    public String f4272a;
    public zzaga b;

    /* renamed from: c, reason: collision with root package name */
    public final zzapy f4273c;
    public final String d;
    public final zzer e;
    public final zzaox f;
    public final boolean[] g = new boolean[4];
    public final zzaoh h;
    public long i;
    public boolean j;
    public boolean k;
    public long l;
    public long m;
    public long n;
    public long o;
    public boolean p;
    public boolean q;

    /* JADX WARN: Type inference failed for: r3v3, types: [com.google.android.gms.internal.ads.zzaoh, java.lang.Object] */
    public zzaoi(zzapy zzapyVar, String str) {
        zzer zzerVar;
        this.f4273c = zzapyVar;
        this.d = str;
        ?? obj = new Object();
        obj.d = new byte[Uuid.SIZE_BITS];
        this.h = obj;
        if (zzapyVar != null) {
            this.f = new zzaox(178);
            zzerVar = new zzer();
        } else {
            zzerVar = null;
            this.f = null;
        }
        this.e = zzerVar;
        this.m = -9223372036854775807L;
        this.o = -9223372036854775807L;
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void v(boolean z) {
        zzaga zzagaVar = this.b;
        zzagaVar.getClass();
        if (z) {
            boolean z2 = this.p;
            long j = this.i - this.n;
            zzagaVar.d(this.o, z2 ? 1 : 0, (int) j, 0, null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void w(int i, long j) {
        this.m = j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01f6  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01f8  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01dc  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0114  */
    @Override // com.google.android.gms.internal.ads.zzaog
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void x(com.google.android.gms.internal.ads.zzer r23) {
        /*
            Method dump skipped, instructions count: 512
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaoi.x(com.google.android.gms.internal.ads.zzer):void");
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void y(zzaer zzaerVar, zzapu zzapuVar) {
        zzapuVar.a();
        zzapuVar.b();
        this.f4272a = zzapuVar.e;
        zzapuVar.b();
        this.b = zzaerVar.f(zzapuVar.d, 2);
        zzapy zzapyVar = this.f4273c;
        if (zzapyVar != null) {
            zzapyVar.a(zzaerVar, zzapuVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void zza() {
        zzgm.h(this.g);
        zzaoh zzaohVar = this.h;
        zzaohVar.f4270a = false;
        zzaohVar.b = 0;
        zzaohVar.f4271c = 0;
        zzaox zzaoxVar = this.f;
        if (zzaoxVar != null) {
            zzaoxVar.a();
        }
        this.i = 0L;
        this.j = false;
        this.m = -9223372036854775807L;
        this.o = -9223372036854775807L;
    }
}
