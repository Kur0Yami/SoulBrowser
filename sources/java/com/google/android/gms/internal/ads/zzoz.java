package com.google.android.gms.internal.ads;

import android.os.Looper;
import android.util.SparseArray;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.SortedSet;

/* loaded from: classes.dex */
public final class zzoz implements zzmu {

    /* renamed from: a, reason: collision with root package name */
    public final zzdn f9147a;
    public final zzbd b;

    /* renamed from: c, reason: collision with root package name */
    public final zzbe f9148c;
    public final zzoy d;
    public final SparseArray e;
    public zzed f;
    public zzbb g;
    public zzdx h;
    public boolean i;

    public zzoz(zzdn zzdnVar) {
        zzdnVar.getClass();
        this.f9147a = zzdnVar;
        String str = zzfj.f7405a;
        Looper myLooper = Looper.myLooper();
        this.f = new zzed(myLooper == null ? Looper.getMainLooper() : myLooper, zzdnVar);
        zzbd zzbdVar = new zzbd();
        this.b = zzbdVar;
        this.f9148c = new zzbe();
        this.d = new zzoy(zzbdVar);
        this.e = new SparseArray();
    }

    @Override // com.google.android.gms.internal.ads.zzaz
    public final void a(final zzbv zzbvVar) {
        final zzmv r = r();
        n(r, 25, new zzdy(r, zzbvVar) { // from class: com.google.android.gms.internal.ads.zzoo

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ zzbv f9140a;

            {
                this.f9140a = zzbvVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdy
            public final /* synthetic */ void zza(Object obj) {
                zzbv zzbvVar2 = this.f9140a;
                ((zzmx) obj).g(zzbvVar2);
                int i = zzbvVar2.f4911a;
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, com.google.android.gms.internal.ads.zzdy] */
    @Override // com.google.android.gms.internal.ads.zzmu
    public final void b() {
        n(o(), 1034, new Object());
    }

    @Override // com.google.android.gms.internal.ads.zzmu
    public final void c(List list, zzwg zzwgVar) {
        zzbb zzbbVar = this.g;
        zzbbVar.getClass();
        zzoy zzoyVar = this.d;
        zzoyVar.getClass();
        zzoyVar.b = zzgtd.v(list);
        if (!list.isEmpty()) {
            zzoyVar.e = (zzwg) list.get(0);
            zzwgVar.getClass();
            zzoyVar.f = zzwgVar;
        }
        if (zzoyVar.d == null) {
            zzoyVar.d = zzoy.c(zzbbVar, zzoyVar.b, zzoyVar.e, zzoyVar.f9145a);
        }
        zzoyVar.a(zzbbVar.zzq());
    }

    @Override // com.google.android.gms.internal.ads.zzaz
    public final void d(final int i) {
        final zzmv o = o();
        n(o, 4, new zzdy(o, i) { // from class: com.google.android.gms.internal.ads.zzoc

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ int f9137a;

            {
                this.f9137a = i;
            }

            @Override // com.google.android.gms.internal.ads.zzdy
            public final /* synthetic */ void zza(Object obj) {
                ((zzmx) obj).b(this.f9137a);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzaal
    public final void e(final long j, final long j2, final int i) {
        Object next;
        Object obj;
        zzwg zzwgVar;
        zzoy zzoyVar = this.d;
        if (zzoyVar.b.isEmpty()) {
            zzwgVar = null;
        } else {
            List list = zzoyVar.b;
            if (list != null) {
                if (!list.isEmpty()) {
                    obj = list.get(list.size() - 1);
                } else {
                    throw new NoSuchElementException();
                }
            } else if (list instanceof SortedSet) {
                obj = ((SortedSet) list).last();
            } else {
                Iterator it = list.iterator();
                do {
                    next = it.next();
                } while (it.hasNext());
                obj = next;
            }
            zzwgVar = (zzwg) obj;
        }
        final zzmv q = q(zzwgVar);
        n(q, 1006, new zzdy(i, j, j2) { // from class: com.google.android.gms.internal.ads.zzoq
            public final /* synthetic */ int b;

            /* renamed from: c, reason: collision with root package name */
            public final /* synthetic */ long f9142c;

            @Override // com.google.android.gms.internal.ads.zzdy
            public final /* synthetic */ void zza(Object obj2) {
                ((zzmx) obj2).k(zzmv.this, this.b, this.f9142c);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzaz
    public final void f(final int i, final zzba zzbaVar, final zzba zzbaVar2) {
        if (i == 1) {
            this.i = false;
            i = 1;
        }
        zzbb zzbbVar = this.g;
        zzbbVar.getClass();
        zzoy zzoyVar = this.d;
        zzoyVar.d = zzoy.c(zzbbVar, zzoyVar.b, zzoyVar.e, zzoyVar.f9145a);
        final zzmv o = o();
        n(o, 11, new zzdy(o, i, zzbaVar, zzbaVar2) { // from class: com.google.android.gms.internal.ads.zzoj

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ int f9139a;

            {
                this.f9139a = i;
            }

            @Override // com.google.android.gms.internal.ads.zzdy
            public final /* synthetic */ void zza(Object obj) {
                ((zzmx) obj).a(this.f9139a);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object, com.google.android.gms.internal.ads.zzdy] */
    @Override // com.google.android.gms.internal.ads.zzwr
    public final void g(int i, zzwg zzwgVar, zzvx zzvxVar, zzwc zzwcVar) {
        n(s(i, zzwgVar), 1002, new Object());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object, com.google.android.gms.internal.ads.zzdy] */
    @Override // com.google.android.gms.internal.ads.zzwr
    public final void h(int i, zzwg zzwgVar, zzvx zzvxVar, zzwc zzwcVar, int i2) {
        n(s(i, zzwgVar), 1000, new Object());
    }

    @Override // com.google.android.gms.internal.ads.zzwr
    public final void i(int i, zzwg zzwgVar, final zzwc zzwcVar) {
        final zzmv s = s(i, zzwgVar);
        n(s, 1004, new zzdy() { // from class: com.google.android.gms.internal.ads.zznv
            @Override // com.google.android.gms.internal.ads.zzdy
            public final /* synthetic */ void zza(Object obj) {
                ((zzmx) obj).j(zzmv.this, zzwcVar);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object, com.google.android.gms.internal.ads.zzdy] */
    @Override // com.google.android.gms.internal.ads.zzwr
    public final void j(int i, zzwg zzwgVar, zzvx zzvxVar, zzwc zzwcVar) {
        n(s(i, zzwgVar), 1001, new Object());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, com.google.android.gms.internal.ads.zzdy] */
    @Override // com.google.android.gms.internal.ads.zzaz
    public final void k(zzau zzauVar) {
        zzmv o;
        zzwg zzwgVar;
        if ((zzauVar instanceof zzit) && (zzwgVar = ((zzit) zzauVar).l) != null) {
            o = q(zzwgVar);
        } else {
            o = o();
        }
        n(o, 10, new Object());
    }

    @Override // com.google.android.gms.internal.ads.zzwr
    public final void l(int i, zzwg zzwgVar, final zzvx zzvxVar, final zzwc zzwcVar, final IOException iOException, final boolean z) {
        final zzmv s = s(i, zzwgVar);
        n(s, 1003, new zzdy(s, zzvxVar, zzwcVar, iOException, z) { // from class: com.google.android.gms.internal.ads.zznt

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ IOException f9135a;

            {
                this.f9135a = iOException;
            }

            @Override // com.google.android.gms.internal.ads.zzdy
            public final /* synthetic */ void zza(Object obj) {
                ((zzmx) obj).o(this.f9135a);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzaz
    public final void m(final zzau zzauVar) {
        final zzmv o;
        zzwg zzwgVar;
        if ((zzauVar instanceof zzit) && (zzwgVar = ((zzit) zzauVar).l) != null) {
            o = q(zzwgVar);
        } else {
            o = o();
        }
        n(o, 10, new zzdy(o, zzauVar) { // from class: com.google.android.gms.internal.ads.zzoh

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ zzau f9138a;

            {
                this.f9138a = zzauVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdy
            public final /* synthetic */ void zza(Object obj) {
                ((zzmx) obj).l(this.f9138a);
            }
        });
    }

    public final void n(zzmv zzmvVar, int i, zzdy zzdyVar) {
        this.e.put(i, zzmvVar);
        zzed zzedVar = this.f;
        zzedVar.c(i, zzdyVar);
        zzedVar.d();
    }

    public final zzmv o() {
        return q(this.d.d);
    }

    public final zzmv p(zzbf zzbfVar, int i, zzwg zzwgVar) {
        zzwg zzwgVar2;
        boolean z = true;
        if (true == zzbfVar.g()) {
            zzwgVar2 = null;
        } else {
            zzwgVar2 = zzwgVar;
        }
        long zzb = this.f9147a.zzb();
        if (!zzbfVar.equals(this.g.zzq()) || i != this.g.zzs()) {
            z = false;
        }
        long j = 0;
        if (zzwgVar2 != null && zzwgVar2.b()) {
            if (z && this.g.g() == zzwgVar2.b && this.g.zzz() == zzwgVar2.f9338c) {
                j = this.g.zzu();
            }
        } else if (z) {
            j = this.g.zzA();
        } else if (!zzbfVar.g()) {
            zzbfVar.b(i, this.f9148c, 0L).getClass();
            j = zzfj.r(0L);
        }
        return new zzmv(zzb, zzbfVar, i, zzwgVar2, j, this.g.zzq(), this.g.zzs(), this.d.d, this.g.zzu(), this.g.zzw());
    }

    public final zzmv q(zzwg zzwgVar) {
        zzbf zzbfVar;
        this.g.getClass();
        if (zzwgVar == null) {
            zzbfVar = null;
        } else {
            zzbfVar = (zzbf) this.d.f9146c.get(zzwgVar);
        }
        if (zzwgVar != null && zzbfVar != null) {
            return p(zzbfVar, zzbfVar.o(zzwgVar.f9337a, this.b).f4558c, zzwgVar);
        }
        int zzs = this.g.zzs();
        zzbf zzq = this.g.zzq();
        if (zzs >= zzq.a()) {
            zzq = zzbf.f4601a;
        }
        return p(zzq, zzs, null);
    }

    public final zzmv r() {
        return q(this.d.f);
    }

    public final zzmv s(int i, zzwg zzwgVar) {
        zzbb zzbbVar = this.g;
        zzbbVar.getClass();
        if (zzwgVar != null) {
            if (((zzbf) this.d.f9146c.get(zzwgVar)) != null) {
                return q(zzwgVar);
            }
            return p(zzbf.f4601a, i, zzwgVar);
        }
        zzbf zzq = zzbbVar.zzq();
        if (i >= zzq.a()) {
            zzq = zzbf.f4601a;
        }
        return p(zzq, i, null);
    }

    public final void t(final zzms zzmsVar, Looper looper) {
        boolean z = true;
        if (this.g != null && !this.d.b.isEmpty()) {
            z = false;
        }
        zzgqa.f(z);
        zzmsVar.getClass();
        this.g = zzmsVar;
        this.h = this.f9147a.a(looper, null);
        zzed zzedVar = this.f;
        this.f = new zzed(zzedVar.d, looper, zzedVar.f6387a, new zzdz() { // from class: com.google.android.gms.internal.ads.zzox
            @Override // com.google.android.gms.internal.ads.zzdz
            public final /* synthetic */ void a(Object obj, zzs zzsVar) {
                ((zzmx) obj).e(zzmsVar, new zzmw(zzsVar, zzoz.this.e));
            }
        }, zzedVar.i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, com.google.android.gms.internal.ads.zzdy] */
    @Override // com.google.android.gms.internal.ads.zzmu
    public final void zzB() {
        n(r(), 1033, new Object());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, com.google.android.gms.internal.ads.zzdy] */
    @Override // com.google.android.gms.internal.ads.zzaz
    public final void zzb() {
        zzbb zzbbVar = this.g;
        zzbbVar.getClass();
        zzoy zzoyVar = this.d;
        zzoyVar.d = zzoy.c(zzbbVar, zzoyVar.b, zzoyVar.e, zzoyVar.f9145a);
        zzoyVar.a(zzbbVar.zzq());
        n(o(), 0, new Object());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, com.google.android.gms.internal.ads.zzdy] */
    @Override // com.google.android.gms.internal.ads.zzaz
    public final void zzc() {
        n(o(), 1, new Object());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, com.google.android.gms.internal.ads.zzdy] */
    @Override // com.google.android.gms.internal.ads.zzaz
    public final void zzd() {
        n(o(), 2, new Object());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, com.google.android.gms.internal.ads.zzdy] */
    @Override // com.google.android.gms.internal.ads.zzaz
    public final void zze() {
        n(o(), 14, new Object());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, com.google.android.gms.internal.ads.zzdy] */
    @Override // com.google.android.gms.internal.ads.zzaz
    public final void zzf() {
        n(o(), 3, new Object());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, com.google.android.gms.internal.ads.zzdy] */
    @Override // com.google.android.gms.internal.ads.zzaz
    public final void zzg() {
        n(o(), 13, new Object());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, com.google.android.gms.internal.ads.zzdy] */
    @Override // com.google.android.gms.internal.ads.zzaz
    public final void zzh() {
        n(o(), -1, new Object());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, com.google.android.gms.internal.ads.zzdy] */
    @Override // com.google.android.gms.internal.ads.zzaz
    public final void zzj() {
        n(o(), 5, new Object());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, com.google.android.gms.internal.ads.zzdy] */
    @Override // com.google.android.gms.internal.ads.zzaz
    public final void zzk() {
        n(o(), 6, new Object());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, com.google.android.gms.internal.ads.zzdy] */
    @Override // com.google.android.gms.internal.ads.zzaz
    public final void zzl() {
        n(o(), 7, new Object());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, com.google.android.gms.internal.ads.zzdy] */
    @Override // com.google.android.gms.internal.ads.zzaz
    public final void zzp() {
        n(o(), 12, new Object());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, com.google.android.gms.internal.ads.zzdy] */
    @Override // com.google.android.gms.internal.ads.zzaz
    public final void zzq() {
        n(r(), 21, new Object());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, com.google.android.gms.internal.ads.zzdy] */
    @Override // com.google.android.gms.internal.ads.zzaz
    public final void zzr() {
        n(r(), 22, new Object());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, com.google.android.gms.internal.ads.zzdy] */
    @Override // com.google.android.gms.internal.ads.zzaz
    public final void zzs() {
        n(r(), 23, new Object());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, com.google.android.gms.internal.ads.zzdy] */
    @Override // com.google.android.gms.internal.ads.zzaz
    public final void zzu() {
        n(r(), 24, new Object());
    }

    @Override // com.google.android.gms.internal.ads.zzaz
    public final void zza() {
    }
}
