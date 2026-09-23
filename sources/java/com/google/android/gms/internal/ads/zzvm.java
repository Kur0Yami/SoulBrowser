package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzvm implements zzwr, zztg {

    /* renamed from: a, reason: collision with root package name */
    public final Object f9322a;
    public zzwq b;

    /* renamed from: c, reason: collision with root package name */
    public zztf f9323c;
    public final /* synthetic */ zzvo d;

    public zzvm(zzvo zzvoVar, Object obj) {
        this.d = zzvoVar;
        this.b = new zzwq(zzvoVar.f9314c.b, null);
        this.f9323c = new zztf(zzvoVar.d.b, null);
        this.f9322a = obj;
    }

    public final boolean a(zzwg zzwgVar) {
        zzwg zzwgVar2;
        Object obj = this.f9322a;
        zzvo zzvoVar = this.d;
        if (zzwgVar != null) {
            zzwgVar2 = zzvoVar.u(obj, zzwgVar);
            if (zzwgVar2 == null) {
                return false;
            }
        } else {
            zzwgVar2 = null;
        }
        zzvoVar.t(obj);
        zzwq zzwqVar = this.b;
        zzwqVar.getClass();
        if (!Objects.equals(zzwqVar.f9350a, zzwgVar2)) {
            this.b = new zzwq(zzvoVar.f9314c.b, zzwgVar2);
        }
        zztf zztfVar = this.f9323c;
        zztfVar.getClass();
        if (!Objects.equals(zztfVar.f9269a, zzwgVar2)) {
            this.f9323c = new zztf(zzvoVar.d.b, zzwgVar2);
            return true;
        }
        return true;
    }

    public final void d(zzwc zzwcVar, zzwg zzwgVar) {
        long j = zzwcVar.f9336c;
        zzvo zzvoVar = this.d;
        Object obj = this.f9322a;
        zzvoVar.v(j, obj);
        zzvoVar.v(zzwcVar.d, obj);
    }

    @Override // com.google.android.gms.internal.ads.zzwr
    public final void g(int i, zzwg zzwgVar, zzvx zzvxVar, zzwc zzwcVar) {
        if (a(zzwgVar)) {
            zzwq zzwqVar = this.b;
            d(zzwcVar, zzwgVar);
            zzwqVar.getClass();
            zzwqVar.a(new zzwl(zzwqVar, zzvxVar, zzwcVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzwr
    public final void h(int i, zzwg zzwgVar, zzvx zzvxVar, zzwc zzwcVar, int i2) {
        if (a(zzwgVar)) {
            zzwq zzwqVar = this.b;
            d(zzwcVar, zzwgVar);
            zzwqVar.getClass();
            zzwqVar.a(new zzwp(zzwqVar, zzvxVar, zzwcVar, i2));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzwr
    public final void i(int i, zzwg zzwgVar, zzwc zzwcVar) {
        if (a(zzwgVar)) {
            zzwq zzwqVar = this.b;
            d(zzwcVar, zzwgVar);
            zzwqVar.getClass();
            zzwqVar.a(new zzwn(zzwqVar, zzwcVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzwr
    public final void j(int i, zzwg zzwgVar, zzvx zzvxVar, zzwc zzwcVar) {
        if (a(zzwgVar)) {
            zzwq zzwqVar = this.b;
            d(zzwcVar, zzwgVar);
            zzwqVar.getClass();
            zzwqVar.a(new zzwk(zzwqVar, zzvxVar, zzwcVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzwr
    public final void l(int i, zzwg zzwgVar, zzvx zzvxVar, zzwc zzwcVar, IOException iOException, boolean z) {
        if (a(zzwgVar)) {
            zzwq zzwqVar = this.b;
            d(zzwcVar, zzwgVar);
            zzwqVar.getClass();
            zzwqVar.a(new zzwm(zzwqVar, zzvxVar, zzwcVar, iOException, z));
        }
    }
}
