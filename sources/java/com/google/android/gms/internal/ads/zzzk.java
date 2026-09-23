package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.Comparator;

/* loaded from: classes.dex */
final class zzzk extends zzzm implements Comparable {
    public final int i;
    public final boolean j;
    public final boolean k;
    public final boolean l;
    public final int m;
    public final int n;
    public final int o;
    public final int p;
    public final int q;
    public final boolean r;

    public zzzk(int i, zzbg zzbgVar, int i2, zzzf zzzfVar, int i3, String str, String str2) {
        super(i, zzbgVar, i2);
        boolean z;
        boolean z2;
        zzgtd zzgtdVar;
        int i4;
        int i5;
        int bitCount;
        boolean z3;
        boolean z4;
        boolean z5;
        int i6 = 0;
        this.j = a.n(i3, false);
        int i7 = this.h.e;
        zzzfVar.getClass();
        zzgtd zzgtdVar2 = zzzfVar.r;
        if (1 != (i7 & 1)) {
            z = false;
        } else {
            z = true;
        }
        this.k = z;
        if ((i7 & 2) != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.l = z2;
        if (str2 != null) {
            zzgtdVar = zzgtd.r(str2);
        } else if (zzgtdVar2.isEmpty()) {
            zzgtdVar = zzgtd.r(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        } else {
            zzgtdVar = zzgtdVar2;
        }
        int i8 = 0;
        while (true) {
            if (i8 < zzgtdVar.size()) {
                i4 = zzzu.j(this.h, (String) zzgtdVar.get(i8), false);
                if (i4 > 0) {
                    break;
                } else {
                    i8++;
                }
            } else {
                i4 = 0;
                i8 = Integer.MAX_VALUE;
                break;
            }
        }
        this.m = i8;
        this.n = i4;
        if (str2 != null) {
            i5 = 1088;
        } else {
            i5 = 0;
        }
        int i9 = this.h.f;
        zzgux zzguxVar = zzzu.k;
        if (i9 != 0 && i9 == i5) {
            bitCount = Integer.MAX_VALUE;
        } else {
            bitCount = Integer.bitCount(i5 & i9);
        }
        this.o = bitCount;
        zzv zzvVar = this.h;
        if ((1088 & zzvVar.f) != 0) {
            z3 = true;
        } else {
            z3 = false;
        }
        this.r = z3;
        int k = zzzu.k(zzvVar, zzzfVar.s);
        this.p = k;
        if (zzzu.i(str) == null) {
            z4 = true;
        } else {
            z4 = false;
        }
        int j = zzzu.j(this.h, str, z4);
        this.q = j;
        if (i4 > 0 || ((zzgtdVar2.isEmpty() && bitCount > 0) || ((zzgtdVar2.isEmpty() && k != Integer.MAX_VALUE) || this.k || (this.l && j > 0)))) {
            z5 = true;
        } else {
            z5 = false;
        }
        if (a.n(i3, zzzfVar.B) && z5) {
            i6 = 1;
        }
        this.i = i6;
    }

    @Override // com.google.android.gms.internal.ads.zzzm
    public final /* bridge */ /* synthetic */ boolean a(zzzm zzzmVar) {
        return false;
    }

    @Override // java.lang.Comparable
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final int compareTo(zzzk zzzkVar) {
        zzgsq d = zzgsq.f8237a.d(this.j, zzzkVar.j);
        Integer valueOf = Integer.valueOf(this.m);
        Integer valueOf2 = Integer.valueOf(zzzkVar.m);
        Comparator comparator = zzgvf.f8263c;
        zzgsq a2 = d.a(valueOf, valueOf2, comparator);
        int i = zzzkVar.n;
        int i2 = this.n;
        zzgsq b = a2.b(i2, i);
        int i3 = zzzkVar.o;
        int i4 = this.o;
        zzgsq d2 = b.b(i4, i3).a(Integer.valueOf(this.p), Integer.valueOf(zzzkVar.p), comparator).d(this.k, zzzkVar.k);
        Boolean valueOf3 = Boolean.valueOf(this.l);
        Boolean valueOf4 = Boolean.valueOf(zzzkVar.l);
        if (i2 == 0) {
            comparator = zzguv.f8262c;
        }
        zzgsq b2 = d2.a(valueOf3, valueOf4, comparator).b(this.q, zzzkVar.q);
        if (i4 == 0) {
            b2 = b2.c(this.r, zzzkVar.r);
        }
        return b2.e();
    }

    @Override // com.google.android.gms.internal.ads.zzzm
    public final int zza() {
        return this.i;
    }
}
