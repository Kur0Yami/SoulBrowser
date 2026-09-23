package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.util.Comparator;

/* loaded from: classes.dex */
final class zzzt extends zzzm {
    public final boolean i;
    public final zzzf j;
    public final boolean k;
    public final boolean l;
    public final boolean m;
    public final int n;
    public final int o;
    public final int p;
    public final int q;
    public final int r;
    public final int s;
    public final int t;
    public final boolean u;
    public final int v;
    public final int w;
    public final boolean x;
    public final boolean y;
    public final int z;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0107 A[EDGE_INSN: B:130:0x0107->B:77:0x0107 BREAK  A[LOOP:1: B:69:0x00ec->B:128:0x0104], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:131:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x00b4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00c2 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0175  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzzt(int r8, com.google.android.gms.internal.ads.zzbg r9, int r10, com.google.android.gms.internal.ads.zzzf r11, int r12, java.lang.String r13, boolean r14) {
        /*
            Method dump skipped, instructions count: 438
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzzt.<init>(int, com.google.android.gms.internal.ads.zzbg, int, com.google.android.gms.internal.ads.zzzf, int, java.lang.String, boolean):void");
    }

    public static int b(zzzt zzztVar, zzzt zzztVar2) {
        zzgsq d = zzgsq.f8237a.d(zzztVar.l, zzztVar2.l);
        Integer valueOf = Integer.valueOf(zzztVar.q);
        Integer valueOf2 = Integer.valueOf(zzztVar2.q);
        zzgvf zzgvfVar = zzgvf.f8263c;
        zzgsq a2 = d.a(valueOf, valueOf2, zzgvfVar).b(zzztVar.r, zzztVar2.r).b(zzztVar.s, zzztVar2.s).a(Integer.valueOf(zzztVar.t), Integer.valueOf(zzztVar2.t), zzgvfVar).d(zzztVar.u, zzztVar2.u).b(zzztVar.v, zzztVar2.v).d(zzztVar.m, zzztVar2.m).d(zzztVar.i, zzztVar2.i).d(zzztVar.k, zzztVar2.k).a(Integer.valueOf(zzztVar.p), Integer.valueOf(zzztVar2.p), zzgvfVar);
        boolean z = zzztVar.x;
        zzgsq d2 = a2.d(z, zzztVar2.x);
        boolean z2 = zzztVar.y;
        zzgsq d3 = d2.d(z2, zzztVar2.y);
        if (z && z2) {
            d3 = d3.b(zzztVar.z, zzztVar2.z);
        }
        return d3.e();
    }

    public static int c(zzzt zzztVar, zzzt zzztVar2) {
        Comparator zzgvgVar;
        if (zzztVar.i && zzztVar.l) {
            zzgvgVar = zzzu.k;
        } else {
            zzgux zzguxVar = zzzu.k;
            zzgvgVar = new zzgvg();
        }
        zzztVar.j.getClass();
        return zzgso.f(zzgvgVar.compare(Integer.valueOf(zzztVar.o), Integer.valueOf(zzztVar2.o))).a(Integer.valueOf(zzztVar.n), Integer.valueOf(zzztVar2.n), zzgvgVar).e();
    }

    @Override // com.google.android.gms.internal.ads.zzzm
    public final /* bridge */ /* synthetic */ boolean a(zzzm zzzmVar) {
        zzzt zzztVar = (zzzt) zzzmVar;
        if (Objects.equals(this.h.m, zzztVar.h.m)) {
            this.j.getClass();
            if (this.x == zzztVar.x && this.y == zzztVar.y) {
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzzm
    public final int zza() {
        return this.w;
    }
}
