package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzlz {

    /* renamed from: a, reason: collision with root package name */
    public final zzpn f9107a;
    public final zzly e;
    public final zzmu h;
    public final zzdx i;
    public boolean j;
    public zzhz k;
    public zzxz l = new zzxz();

    /* renamed from: c, reason: collision with root package name */
    public final IdentityHashMap f9108c = new IdentityHashMap();
    public final HashMap d = new HashMap();
    public final ArrayList b = new ArrayList();
    public final HashMap f = new HashMap();
    public final HashSet g = new HashSet();

    public zzlz(zzly zzlyVar, zzmu zzmuVar, zzdx zzdxVar, zzpn zzpnVar) {
        this.f9107a = zzpnVar;
        this.e = zzlyVar;
        this.h = zzmuVar;
        this.i = zzdxVar;
    }

    public final zzbf a(int i, int i2, List list) {
        boolean z;
        ArrayList arrayList = this.b;
        boolean z2 = true;
        if (i >= 0 && i <= i2 && i2 <= arrayList.size()) {
            z = true;
        } else {
            z = false;
        }
        zzgqa.a(z);
        if (list.size() != i2 - i) {
            z2 = false;
        }
        zzgqa.a(z2);
        for (int i3 = i; i3 < i2; i3++) {
            ((zzlw) arrayList.get(i3)).f9104a.d((zzak) list.get(i3 - i));
        }
        return e();
    }

    public final boolean b() {
        return this.j;
    }

    public final void c(zzhz zzhzVar) {
        zzgqa.f(!this.j);
        this.k = zzhzVar;
        int i = 0;
        while (true) {
            ArrayList arrayList = this.b;
            if (i < arrayList.size()) {
                zzlw zzlwVar = (zzlw) arrayList.get(i);
                m(zzlwVar);
                this.g.add(zzlwVar);
                i++;
            } else {
                this.j = true;
                return;
            }
        }
    }

    public final void d(zzwe zzweVar) {
        IdentityHashMap identityHashMap = this.f9108c;
        zzlw zzlwVar = (zzlw) identityHashMap.remove(zzweVar);
        zzlwVar.getClass();
        zzlwVar.f9104a.i(zzweVar);
        zzlwVar.f9105c.remove(((zzvy) zzweVar).f9333c);
        if (!identityHashMap.isEmpty()) {
            k();
        }
        n(zzlwVar);
    }

    public final zzbf e() {
        ArrayList arrayList = this.b;
        if (!arrayList.isEmpty()) {
            int i = 0;
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                zzlw zzlwVar = (zzlw) arrayList.get(i2);
                zzlwVar.d = i;
                i += zzlwVar.f9104a.o.b.a();
            }
            return new zzmg(arrayList, this.l);
        }
        return zzbf.f4601a;
    }

    public final zzbf f(List list, zzxz zzxzVar) {
        ArrayList arrayList = this.b;
        l(0, arrayList.size());
        return g(arrayList.size(), list, zzxzVar);
    }

    public final zzbf g(int i, List list, zzxz zzxzVar) {
        if (!list.isEmpty()) {
            this.l = zzxzVar;
            for (int i2 = i; i2 < list.size() + i; i2++) {
                zzlw zzlwVar = (zzlw) list.get(i2 - i);
                ArrayList arrayList = this.b;
                if (i2 > 0) {
                    zzlw zzlwVar2 = (zzlw) arrayList.get(i2 - 1);
                    zzlwVar.d = zzlwVar2.f9104a.o.b.a() + zzlwVar2.d;
                    zzlwVar.e = false;
                    zzlwVar.f9105c.clear();
                } else {
                    zzlwVar.d = 0;
                    zzlwVar.e = false;
                    zzlwVar.f9105c.clear();
                }
                int a2 = zzlwVar.f9104a.o.b.a();
                for (int i3 = i2; i3 < arrayList.size(); i3++) {
                    ((zzlw) arrayList.get(i3)).d += a2;
                }
                arrayList.add(i2, zzlwVar);
                this.d.put(zzlwVar.b, zzlwVar);
                if (this.j) {
                    m(zzlwVar);
                    if (this.f9108c.isEmpty()) {
                        this.g.add(zzlwVar);
                    } else {
                        zzlv zzlvVar = (zzlv) this.f.get(zzlwVar);
                        if (zzlvVar != null) {
                            zzlvVar.f9102a.g(zzlvVar.b);
                        }
                    }
                }
            }
        }
        return e();
    }

    public final zzbf h(int i, int i2, zzxz zzxzVar) {
        boolean z = false;
        if (i >= 0 && i <= i2 && i2 <= this.b.size()) {
            z = true;
        }
        zzgqa.a(z);
        this.l = zzxzVar;
        l(i, i2);
        return e();
    }

    public final zzbf i() {
        boolean z;
        if (this.b.size() >= 0) {
            z = true;
        } else {
            z = false;
        }
        zzgqa.a(z);
        this.l = null;
        return e();
    }

    public final zzbf j(zzxz zzxzVar) {
        int size = this.b.size();
        if (zzxzVar.b.length != size) {
            zzxzVar = new zzxz(new Random(zzxzVar.f9379a.nextLong())).a(size);
        }
        this.l = zzxzVar;
        return e();
    }

    public final void k() {
        Iterator it = this.g.iterator();
        while (it.hasNext()) {
            zzlw zzlwVar = (zzlw) it.next();
            if (zzlwVar.f9105c.isEmpty()) {
                zzlv zzlvVar = (zzlv) this.f.get(zzlwVar);
                if (zzlvVar != null) {
                    zzlvVar.f9102a.g(zzlvVar.b);
                }
                it.remove();
            }
        }
    }

    public final void l(int i, int i2) {
        while (true) {
            i2--;
            if (i2 >= i) {
                ArrayList arrayList = this.b;
                zzlw zzlwVar = (zzlw) arrayList.remove(i2);
                this.d.remove(zzlwVar.b);
                int i3 = -zzlwVar.f9104a.o.b.a();
                for (int i4 = i2; i4 < arrayList.size(); i4++) {
                    ((zzlw) arrayList.get(i4)).d += i3;
                }
                zzlwVar.e = true;
                if (this.j) {
                    n(zzlwVar);
                }
            } else {
                return;
            }
        }
    }

    public final void m(zzlw zzlwVar) {
        zzwb zzwbVar = zzlwVar.f9104a;
        zzwh zzwhVar = new zzwh() { // from class: com.google.android.gms.internal.ads.zzlx
            @Override // com.google.android.gms.internal.ads.zzwh
            public final void a(zzvf zzvfVar, zzbf zzbfVar) {
                zzdx zzdxVar = ((zzlc) zzlz.this.e).l;
                zzdxVar.h(2);
                zzdxVar.e(22);
            }
        };
        zzlu zzluVar = new zzlu(this, zzlwVar);
        this.f.put(zzlwVar, new zzlv(zzwbVar, zzwhVar, zzluVar));
        String str = zzfj.f7405a;
        Looper myLooper = Looper.myLooper();
        if (myLooper == null) {
            myLooper = Looper.getMainLooper();
        }
        zzwbVar.b(new Handler(myLooper, null), zzluVar);
        Looper myLooper2 = Looper.myLooper();
        if (myLooper2 == null) {
            myLooper2 = Looper.getMainLooper();
        }
        zzwbVar.a(new Handler(myLooper2, null), zzluVar);
        zzwbVar.f(zzwhVar, this.k, this.f9107a);
    }

    public final void n(zzlw zzlwVar) {
        if (zzlwVar.e && zzlwVar.f9105c.isEmpty()) {
            zzlv zzlvVar = (zzlv) this.f.remove(zzlwVar);
            zzlvVar.getClass();
            zzwi zzwiVar = zzlvVar.f9102a;
            zzwiVar.k(zzlvVar.b);
            zzlu zzluVar = zzlvVar.f9103c;
            zzwiVar.e(zzluVar);
            zzwiVar.c(zzluVar);
            this.g.remove(zzlwVar);
        }
    }
}
