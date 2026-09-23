package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzoy {

    /* renamed from: a, reason: collision with root package name */
    public final zzbd f9145a;
    public zzgtd b;

    /* renamed from: c, reason: collision with root package name */
    public zzgtg f9146c;
    public zzwg d;
    public zzwg e;
    public zzwg f;

    public zzoy(zzbd zzbdVar) {
        this.f9145a = zzbdVar;
        zzgvs zzgvsVar = zzgtd.f;
        this.b = zzguy.i;
        this.f9146c = zzgvd.k;
    }

    public static zzwg c(zzbb zzbbVar, zzgtd zzgtdVar, zzwg zzwgVar, zzbd zzbdVar) {
        Object f;
        zzbf zzq = zzbbVar.zzq();
        int zzr = zzbbVar.zzr();
        if (zzq.g()) {
            f = null;
        } else {
            f = zzq.f(zzr);
        }
        if (!zzbbVar.zzx() && !zzq.g()) {
            zzbd d = zzq.d(zzr, zzbdVar, false);
            zzbbVar.zzu();
            String str = zzfj.f7405a;
            d.getClass();
        }
        for (int i = 0; i < zzgtdVar.size(); i++) {
            zzwg zzwgVar2 = (zzwg) zzgtdVar.get(i);
            if (d(zzwgVar2, f, zzbbVar.zzx(), zzbbVar.g(), zzbbVar.zzz())) {
                return zzwgVar2;
            }
        }
        if (!zzgtdVar.isEmpty() || zzwgVar == null || !d(zzwgVar, f, zzbbVar.zzx(), zzbbVar.g(), zzbbVar.zzz())) {
            return null;
        }
        return zzwgVar;
    }

    public static boolean d(zzwg zzwgVar, Object obj, boolean z, int i, int i2) {
        Object obj2 = zzwgVar.f9337a;
        int i3 = zzwgVar.b;
        if (obj2.equals(obj)) {
            if (z) {
                if (i3 == i && zzwgVar.f9338c == i2) {
                    return true;
                }
                return false;
            }
            if (i3 == -1 && zzwgVar.e == -1) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final void a(zzbf zzbfVar) {
        zzgtf zzgtfVar = new zzgtf(4);
        if (this.b.isEmpty()) {
            b(zzgtfVar, this.e, zzbfVar);
            if (!Objects.equals(this.f, this.e)) {
                b(zzgtfVar, this.f, zzbfVar);
            }
            if (!Objects.equals(this.d, this.e) && !Objects.equals(this.d, this.f)) {
                b(zzgtfVar, this.d, zzbfVar);
            }
        } else {
            for (int i = 0; i < this.b.size(); i++) {
                b(zzgtfVar, (zzwg) this.b.get(i), zzbfVar);
            }
            if (!this.b.contains(this.d)) {
                b(zzgtfVar, this.d, zzbfVar);
            }
        }
        this.f9146c = zzgtfVar.d(true);
    }

    public final void b(zzgtf zzgtfVar, zzwg zzwgVar, zzbf zzbfVar) {
        if (zzwgVar != null) {
            if (zzbfVar.e(zzwgVar.f9337a) != -1) {
                zzgtfVar.a(zzwgVar, zzbfVar);
                return;
            }
            zzbf zzbfVar2 = (zzbf) this.f9146c.get(zzwgVar);
            if (zzbfVar2 != null) {
                zzgtfVar.a(zzwgVar, zzbfVar2);
            }
        }
    }
}
