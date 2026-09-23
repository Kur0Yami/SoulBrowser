package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzahk implements zzaeo {
    public zzaer b;

    /* renamed from: c, reason: collision with root package name */
    public int f4037c;
    public int d;
    public int e;
    public zzaho g;
    public zzaep h;
    public zzafw i;
    public zzakp j;

    /* renamed from: a, reason: collision with root package name */
    public final zzer f4036a = new zzer(2);
    public long f = -1;

    public final void a() {
        zzaer zzaerVar = this.b;
        zzaerVar.getClass();
        zzaerVar.zzv();
        this.b.e(new zzafq(-9223372036854775807L, 0L));
        this.f4037c = 6;
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final void c(long j, long j2) {
        if (j == 0) {
            this.f4037c = 0;
            this.j = null;
        } else if (this.f4037c == 5) {
            zzakp zzakpVar = this.j;
            zzakpVar.getClass();
            zzakpVar.c(j, j2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final boolean d(zzaep zzaepVar) {
        String m;
        zzaef zzaefVar = (zzaef) zzaepVar;
        zzer zzerVar = this.f4036a;
        zzerVar.y(2);
        zzaefVar.m(zzerVar.f6834a, 0, 2, false);
        if (zzerVar.L() == 65496) {
            while (true) {
                zzerVar.y(2);
                zzaefVar.m(zzerVar.f6834a, 0, 2, false);
                int L = zzerVar.L();
                this.d = L;
                if (L == 65498) {
                    break;
                }
                zzerVar.y(2);
                zzaefVar.j(zzerVar.f6834a, 0, 2);
                int L2 = zzerVar.L() - 2;
                if (L2 < 0) {
                    break;
                }
                if (this.d != 65505) {
                    zzaefVar.e(L2, false);
                } else {
                    zzerVar.y(L2);
                    zzaefVar.m(zzerVar.f6834a, 0, L2, false);
                    if (Objects.equals(zzerVar.m(), "http://ns.adobe.com/xap/1.0/") && (m = zzerVar.m()) != null) {
                        for (int i = 0; i < 4; i++) {
                            if (m.contains(String.valueOf(zzahn.f4041a[i]).concat("=\"1\""))) {
                                return true;
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:128:0x0185, code lost:
    
        r16 = -9223372036854775807L;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:150:0x026e  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x020c  */
    /* JADX WARN: Type inference failed for: r20v0, types: [com.google.android.gms.internal.ads.zzain] */
    @Override // com.google.android.gms.internal.ads.zzaeo
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int e(com.google.android.gms.internal.ads.zzaep r34, com.google.android.gms.internal.ads.zzafo r35) {
        /*
            Method dump skipped, instructions count: 709
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzahk.e(com.google.android.gms.internal.ads.zzaep, com.google.android.gms.internal.ads.zzafo):int");
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final void f(zzaer zzaerVar) {
        this.b = zzaerVar;
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
