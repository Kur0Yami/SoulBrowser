package com.google.android.gms.internal.ads;

import java.util.List;

/* loaded from: classes.dex */
public final class zzalf implements zzaeo {

    /* renamed from: a, reason: collision with root package name */
    public zzaer f4156a;
    public zzalm b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f4157c;

    public final boolean a(zzaep zzaepVar) {
        zzalh zzalhVar = new zzalh();
        if (zzalhVar.b(zzaepVar, true) && (zzalhVar.f4160a & 2) == 2) {
            int min = Math.min(zzalhVar.e, 8);
            zzer zzerVar = new zzer(min);
            zzaepVar.j(zzerVar.f6834a, 0, min);
            zzerVar.E(0);
            if (zzerVar.B() >= 5 && zzerVar.K() == 127 && zzerVar.P() == 1179402563) {
                this.b = new zzalm();
                return true;
            }
            zzerVar.E(0);
            try {
                if (zzagg.c(1, zzerVar, true)) {
                    this.b = new zzalm();
                    return true;
                }
            } catch (zzat unused) {
            }
            zzerVar.E(0);
            if (zzalj.e(zzerVar, zzalj.o)) {
                this.b = new zzalm();
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final void c(long j, long j2) {
        zzalm zzalmVar = this.b;
        if (zzalmVar != null) {
            zzalg zzalgVar = zzalmVar.f4163a;
            zzalh zzalhVar = zzalgVar.f4158a;
            zzalhVar.f4160a = 0;
            zzalhVar.b = 0L;
            zzalhVar.f4161c = 0;
            zzalhVar.d = 0;
            zzalhVar.e = 0;
            zzalgVar.b.y(0);
            zzalgVar.f4159c = -1;
            zzalgVar.e = false;
            if (j == 0) {
                zzalmVar.a(!zzalmVar.l);
                return;
            }
            if (zzalmVar.h != 0) {
                long j3 = (zzalmVar.i * j2) / 1000000;
                zzalmVar.e = j3;
                zzali zzaliVar = zzalmVar.d;
                String str = zzfj.f7405a;
                zzaliVar.a(j3);
                zzalmVar.h = 2;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final boolean d(zzaep zzaepVar) {
        try {
            return a(zzaepVar);
        } catch (zzat unused) {
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x0165 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0166  */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.lang.Object, com.google.android.gms.internal.ads.zzali] */
    @Override // com.google.android.gms.internal.ads.zzaeo
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int e(com.google.android.gms.internal.ads.zzaep r21, com.google.android.gms.internal.ads.zzafo r22) {
        /*
            Method dump skipped, instructions count: 374
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzalf.e(com.google.android.gms.internal.ads.zzaep, com.google.android.gms.internal.ads.zzafo):int");
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final void f(zzaer zzaerVar) {
        this.f4156a = zzaerVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final List zzb() {
        zzgvs zzgvsVar = zzgtd.f;
        return zzguy.i;
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final void zzf() {
    }
}
