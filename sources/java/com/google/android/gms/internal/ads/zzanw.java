package com.google.android.gms.internal.ads;

import kotlin.uuid.Uuid;

/* loaded from: classes.dex */
public final class zzanw implements zzaog {

    /* renamed from: a, reason: collision with root package name */
    public final zzeq f4255a;
    public final zzer b;

    /* renamed from: c, reason: collision with root package name */
    public final String f4256c;
    public final int d;
    public final String e;
    public String f;
    public zzaga g;
    public int h;
    public int i;
    public boolean j;
    public long k;
    public zzv l;
    public int m;
    public long n;

    public zzanw(String str, int i, String str2) {
        zzeq zzeqVar = new zzeq(new byte[Uuid.SIZE_BITS], Uuid.SIZE_BITS);
        this.f4255a = zzeqVar;
        this.b = new zzer(zzeqVar.f6806a);
        this.h = 0;
        this.n = -9223372036854775807L;
        this.f4256c = str;
        this.d = i;
        this.e = str2;
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void v(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void w(int i, long j) {
        this.n = j;
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x0255  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0286 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:128:0x028e A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:135:0x02a3  */
    @Override // com.google.android.gms.internal.ads.zzaog
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void x(com.google.android.gms.internal.ads.zzer r25) {
        /*
            Method dump skipped, instructions count: 947
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzanw.x(com.google.android.gms.internal.ads.zzer):void");
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void y(zzaer zzaerVar, zzapu zzapuVar) {
        zzapuVar.a();
        zzapuVar.b();
        this.f = zzapuVar.e;
        zzapuVar.b();
        this.g = zzaerVar.f(zzapuVar.d, 1);
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void zza() {
        this.h = 0;
        this.i = 0;
        this.j = false;
        this.n = -9223372036854775807L;
    }
}
