package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public final class zzwx extends zzvo {
    public static final zzak r;
    public final zzwi[] k;
    public final ArrayList l;
    public final zzbf[] m;
    public final ArrayList n;
    public int o = -1;
    public long[][] p;
    public zzwv q;

    static {
        zzz zzzVar = new zzz();
        zzzVar.f9404a = "MergingMediaSource";
        r = zzzVar.a();
    }

    /* JADX WARN: Type inference failed for: r4v7, types: [com.google.android.gms.internal.ads.zzgur, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v2, types: [com.google.android.gms.internal.ads.zzgqs, java.lang.Object] */
    public zzwx(zzvr zzvrVar, zzwi... zzwiVarArr) {
        this.k = zzwiVarArr;
        this.n = new ArrayList(Arrays.asList(zzwiVarArr));
        this.l = new ArrayList(zzwiVarArr.length);
        int i = 0;
        while (true) {
            int length = zzwiVarArr.length;
            if (i < length) {
                this.l.add(new ArrayList());
                i++;
            } else {
                this.m = new zzbf[length];
                this.p = new long[0];
                new HashMap();
                new zzgut(new Object().a(), new Object());
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvf, com.google.android.gms.internal.ads.zzwi
    public final void d(zzak zzakVar) {
        this.k[0].d(zzakVar);
    }

    @Override // com.google.android.gms.internal.ads.zzwi
    public final void i(zzwe zzweVar) {
        zzwe zzweVar2;
        zzwe zzweVar3;
        zzwu zzwuVar = (zzwu) zzweVar;
        int i = 0;
        while (true) {
            zzwi[] zzwiVarArr = this.k;
            if (i < zzwiVarArr.length) {
                List list = (List) this.l.get(i);
                zzwe[] zzweVarArr = zzwuVar.f9352c;
                boolean[] zArr = zzwuVar.f;
                if (zArr[i]) {
                    zzweVar2 = ((zzye) zzweVarArr[i]).f9385c;
                } else {
                    zzweVar2 = zzweVarArr[i];
                }
                int i2 = 0;
                while (true) {
                    if (i2 >= list.size()) {
                        break;
                    }
                    if (((zzww) list.get(i2)).b.equals(zzweVar2)) {
                        list.remove(i2);
                        break;
                    }
                    i2++;
                }
                zzwi zzwiVar = zzwiVarArr[i];
                zzwe[] zzweVarArr2 = zzwuVar.f9352c;
                if (zArr[i]) {
                    zzweVar3 = ((zzye) zzweVarArr2[i]).f9385c;
                } else {
                    zzweVar3 = zzweVarArr2[i];
                }
                zzwiVar.i(zzweVar3);
                i++;
            } else {
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzwi
    public final zzwe j(zzwg zzwgVar, zzaah zzaahVar, long j) {
        zzwi[] zzwiVarArr = this.k;
        int length = zzwiVarArr.length;
        zzwe[] zzweVarArr = new zzwe[length];
        zzbf[] zzbfVarArr = this.m;
        int e = zzbfVarArr[0].e(zzwgVar.f9337a);
        for (int i = 0; i < length; i++) {
            zzwg a2 = zzwgVar.a(zzbfVarArr[i].f(e));
            zzweVarArr[i] = zzwiVarArr[i].j(a2, zzaahVar, j - this.p[e][i]);
            ((List) this.l.get(i)).add(new zzww(a2, zzweVarArr[i]));
        }
        return new zzwu(this.p[e], zzweVarArr);
    }

    @Override // com.google.android.gms.internal.ads.zzvo, com.google.android.gms.internal.ads.zzvf
    public final void m(zzhz zzhzVar) {
        super.m(zzhzVar);
        int i = 0;
        while (true) {
            zzwi[] zzwiVarArr = this.k;
            if (i < zzwiVarArr.length) {
                s(Integer.valueOf(i), zzwiVarArr[i]);
                i++;
            } else {
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvo, com.google.android.gms.internal.ads.zzvf
    public final void o() {
        super.o();
        Arrays.fill(this.m, (Object) null);
        this.o = -1;
        this.q = null;
        ArrayList arrayList = this.n;
        arrayList.clear();
        Collections.addAll(arrayList, this.k);
    }

    /* JADX WARN: Type inference failed for: r7v2, types: [com.google.android.gms.internal.ads.zzwv, java.io.IOException] */
    @Override // com.google.android.gms.internal.ads.zzvo
    public final void q(Object obj, zzvf zzvfVar, zzbf zzbfVar) {
        int i;
        Integer num = (Integer) obj;
        if (this.q == null) {
            if (this.o == -1) {
                i = zzbfVar.c();
                this.o = i;
            } else {
                int c2 = zzbfVar.c();
                int i2 = this.o;
                if (c2 != i2) {
                    this.q = new IOException();
                    return;
                }
                i = i2;
            }
            int length = this.p.length;
            zzbf[] zzbfVarArr = this.m;
            if (length == 0) {
                this.p = (long[][]) Array.newInstance((Class<?>) Long.TYPE, i, zzbfVarArr.length);
            }
            ArrayList arrayList = this.n;
            arrayList.remove(zzvfVar);
            zzbfVarArr[num.intValue()] = zzbfVar;
            if (arrayList.isEmpty()) {
                p(zzbfVarArr[0]);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvo
    public final /* synthetic */ zzwg u(Object obj, zzwg zzwgVar) {
        int intValue = ((Integer) obj).intValue();
        ArrayList arrayList = this.l;
        List list = (List) arrayList.get(intValue);
        for (int i = 0; i < list.size(); i++) {
            if (((zzww) list.get(i)).f9353a.equals(zzwgVar)) {
                return ((zzww) ((List) arrayList.get(0)).get(i)).f9353a;
            }
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzwi
    public final zzak zzJ() {
        zzwi[] zzwiVarArr = this.k;
        if (zzwiVarArr.length > 0) {
            return zzwiVarArr[0].zzJ();
        }
        return r;
    }

    @Override // com.google.android.gms.internal.ads.zzvo, com.google.android.gms.internal.ads.zzwi
    public final void zzt() {
        zzwv zzwvVar = this.q;
        if (zzwvVar == null) {
            super.zzt();
            return;
        }
        throw zzwvVar;
    }
}
