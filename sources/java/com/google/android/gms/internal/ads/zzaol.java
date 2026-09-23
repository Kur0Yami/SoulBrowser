package com.google.android.gms.internal.ads;

import kotlin.uuid.Uuid;

/* loaded from: classes.dex */
public final class zzaol implements zzaog {
    public static final float[] l = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 1.0f};

    /* renamed from: a, reason: collision with root package name */
    public final zzapy f4278a;
    public final zzer b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean[] f4279c = new boolean[4];
    public final zzaoj d;
    public final zzaox e;
    public zzaok f;
    public long g;
    public String h;
    public zzaga i;
    public boolean j;
    public long k;

    /* JADX WARN: Type inference failed for: r3v3, types: [java.lang.Object, com.google.android.gms.internal.ads.zzaoj] */
    public zzaol(zzapy zzapyVar) {
        this.f4278a = zzapyVar;
        ?? obj = new Object();
        obj.e = new byte[Uuid.SIZE_BITS];
        this.d = obj;
        this.k = -9223372036854775807L;
        this.e = new zzaox(178);
        this.b = new zzer();
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void v(boolean z) {
        zzaok zzaokVar = this.f;
        zzaokVar.getClass();
        if (z) {
            zzaokVar.b(0, this.g, this.j);
            zzaok zzaokVar2 = this.f;
            zzaokVar2.b = false;
            zzaokVar2.f4277c = false;
            zzaokVar2.d = false;
            zzaokVar2.e = -1;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void w(int i, long j) {
        this.k = j;
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x013c  */
    @Override // com.google.android.gms.internal.ads.zzaog
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void x(com.google.android.gms.internal.ads.zzer r20) {
        /*
            Method dump skipped, instructions count: 604
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaol.x(com.google.android.gms.internal.ads.zzer):void");
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void y(zzaer zzaerVar, zzapu zzapuVar) {
        zzapuVar.a();
        zzapuVar.b();
        this.h = zzapuVar.e;
        zzapuVar.b();
        zzaga f = zzaerVar.f(zzapuVar.d, 2);
        this.i = f;
        this.f = new zzaok(f);
        this.f4278a.a(zzaerVar, zzapuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void zza() {
        zzgm.h(this.f4279c);
        zzaoj zzaojVar = this.d;
        zzaojVar.f4274a = false;
        zzaojVar.f4275c = 0;
        zzaojVar.b = 0;
        zzaok zzaokVar = this.f;
        if (zzaokVar != null) {
            zzaokVar.b = false;
            zzaokVar.f4277c = false;
            zzaokVar.d = false;
            zzaokVar.e = -1;
        }
        this.e.a();
        this.g = 0L;
        this.k = -9223372036854775807L;
    }
}
