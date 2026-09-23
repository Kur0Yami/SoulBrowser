package com.google.android.gms.internal.ads;

import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.text.TextUtils;
import j$.util.Objects;
import java.util.Comparator;

/* loaded from: classes.dex */
final class zzyr extends zzzm implements Comparable {
    public final boolean A;
    public final boolean B;
    public final int i;
    public final boolean j;
    public final String k;
    public final zzzf l;
    public final boolean m;
    public final int n;
    public final int o;
    public final int p;
    public final int q;
    public final boolean r;
    public final int s;
    public final int t;
    public final boolean u;
    public final int v;
    public final int w;
    public final int x;
    public final int y;
    public final boolean z;

    public zzyr(int i, zzbg zzbgVar, int i2, zzzf zzzfVar, int i3, boolean z, zzgqb zzgqbVar) {
        super(i, zzbgVar, i2);
        int i4;
        int i5;
        int i6;
        int bitCount;
        boolean z2;
        boolean z3;
        int hashCode;
        boolean z4;
        boolean z5;
        String[] strArr;
        int i7;
        boolean z6;
        boolean z7;
        boolean z8;
        this.l = zzzfVar;
        boolean z9 = zzzfVar.z;
        zzgtd zzgtdVar = zzzfVar.p;
        zzgtd zzgtdVar2 = zzzfVar.l;
        int i8 = 1;
        if (true != z9) {
            i4 = 16;
        } else {
            i4 = 24;
        }
        this.k = zzzu.i(this.h.d);
        this.m = a.n(i3, false);
        int i9 = 0;
        while (true) {
            i5 = Integer.MAX_VALUE;
            if (i9 < zzgtdVar2.size()) {
                i6 = zzzu.j(this.h, (String) zzgtdVar2.get(i9), false);
                if (i6 > 0) {
                    break;
                } else {
                    i9++;
                }
            } else {
                i6 = 0;
                i9 = Integer.MAX_VALUE;
                break;
            }
        }
        this.o = i9;
        this.n = i6;
        int i10 = this.h.f;
        if (i10 != 0 && i10 == 0) {
            bitCount = Integer.MAX_VALUE;
        } else {
            bitCount = Integer.bitCount(0);
        }
        this.p = bitCount;
        this.q = zzzu.k(this.h, zzzfVar.m);
        zzv zzvVar = this.h;
        int i11 = zzvVar.f;
        if (i11 == 0 || (i11 & 1) != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.r = z2;
        if (1 != (zzvVar.e & 1)) {
            z3 = false;
        } else {
            z3 = true;
        }
        this.u = z3;
        String str = zzvVar.m;
        if (str == null || ((hashCode = str.hashCode()) == -2123537834 ? !str.equals("audio/eac3-joc") : hashCode == 187078297 ? !str.equals("audio/ac4") : hashCode != 1504698186 || !str.equals("audio/iamf"))) {
            z4 = false;
        } else {
            z4 = true;
        }
        this.B = z4;
        int i12 = zzvVar.E;
        this.v = i12;
        this.w = zzvVar.F;
        int i13 = zzvVar.i;
        this.x = i13;
        if ((i13 != -1 && i13 > zzzfVar.o) || ((i12 != -1 && i12 > zzzfVar.n) || !((zzyz) zzgqbVar).zza(zzvVar))) {
            z5 = false;
        } else {
            z5 = true;
        }
        this.j = z5;
        String str2 = zzfj.f7405a;
        Configuration configuration = Resources.getSystem().getConfiguration();
        if (Build.VERSION.SDK_INT >= 24) {
            strArr = configuration.getLocales().toLanguageTags().split(",", -1);
        } else {
            strArr = new String[]{configuration.locale.toLanguageTag()};
        }
        for (int i14 = 0; i14 < strArr.length; i14++) {
            strArr[i14] = zzfj.o(strArr[i14]);
        }
        int i15 = 0;
        while (true) {
            if (i15 < strArr.length) {
                i7 = zzzu.j(this.h, strArr[i15], false);
                if (i7 > 0) {
                    break;
                } else {
                    i15++;
                }
            } else {
                i7 = 0;
                i15 = Integer.MAX_VALUE;
                break;
            }
        }
        this.s = i15;
        this.t = i7;
        int i16 = 0;
        while (true) {
            if (i16 >= zzgtdVar.size()) {
                break;
            }
            String str3 = this.h.m;
            if (str3 != null && str3.equals(zzgtdVar.get(i16))) {
                i5 = i16;
                break;
            }
            i16++;
        }
        this.y = i5;
        if ((i3 & 384) == 128) {
            z6 = true;
        } else {
            z6 = false;
        }
        this.z = z6;
        if ((i3 & 64) == 64) {
            z7 = true;
        } else {
            z7 = false;
        }
        this.A = z7;
        zzzf zzzfVar2 = this.l;
        if (!a.n(i3, zzzfVar2.B) || (!(z8 = this.j) && !zzzfVar2.y)) {
            i8 = 0;
        } else {
            zzzfVar2.q.getClass();
            if (a.n(i3, false) && z8 && this.h.i != -1 && ((zzzfVar2.C || !z) && (i4 & i3) != 0)) {
                i8 = 2;
            }
        }
        this.i = i8;
    }

    @Override // com.google.android.gms.internal.ads.zzzm
    public final /* bridge */ /* synthetic */ boolean a(zzzm zzzmVar) {
        String str;
        int i;
        zzyr zzyrVar = (zzyr) zzzmVar;
        this.l.getClass();
        zzv zzvVar = this.h;
        int i2 = zzvVar.E;
        if (i2 != -1) {
            zzv zzvVar2 = zzyrVar.h;
            if (i2 == zzvVar2.E && (str = zzvVar.m) != null && TextUtils.equals(str, zzvVar2.m) && (i = zzvVar.F) != -1 && i == zzvVar2.F && this.z == zzyrVar.z && this.A == zzyrVar.A) {
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // java.lang.Comparable
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final int compareTo(zzyr zzyrVar) {
        Comparator zzgvgVar;
        boolean z = this.m;
        boolean z2 = this.j;
        if (z2 && z) {
            zzgvgVar = zzzu.k;
        } else {
            zzgux zzguxVar = zzzu.k;
            zzgvgVar = new zzgvg();
        }
        zzgsq d = zzgsq.f8237a.d(z, zzyrVar.m);
        Integer valueOf = Integer.valueOf(this.o);
        Integer valueOf2 = Integer.valueOf(zzyrVar.o);
        zzgvf zzgvfVar = zzgvf.f8263c;
        zzgsq a2 = d.a(valueOf, valueOf2, zzgvfVar).b(this.n, zzyrVar.n).b(this.p, zzyrVar.p).a(Integer.valueOf(this.q), Integer.valueOf(zzyrVar.q), zzgvfVar).d(this.u, zzyrVar.u).d(this.r, zzyrVar.r).a(Integer.valueOf(this.s), Integer.valueOf(zzyrVar.s), zzgvfVar).b(this.t, zzyrVar.t).d(z2, zzyrVar.j).a(Integer.valueOf(this.y), Integer.valueOf(zzyrVar.y), zzgvfVar);
        this.l.getClass();
        zzgsq a3 = a2.d(this.z, zzyrVar.z).d(this.A, zzyrVar.A).d(this.B, zzyrVar.B).a(Integer.valueOf(this.v), Integer.valueOf(zzyrVar.v), zzgvgVar).a(Integer.valueOf(this.w), Integer.valueOf(zzyrVar.w), zzgvgVar);
        if (Objects.equals(this.k, zzyrVar.k)) {
            a3 = a3.a(Integer.valueOf(this.x), Integer.valueOf(zzyrVar.x), zzgvgVar);
        }
        return a3.e();
    }

    @Override // com.google.android.gms.internal.ads.zzzm
    public final int zza() {
        return this.i;
    }
}
