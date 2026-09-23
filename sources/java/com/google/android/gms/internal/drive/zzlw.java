package com.google.android.gms.internal.drive;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzlw<T> implements zzmf<T> {

    /* renamed from: a, reason: collision with root package name */
    public final zzlq f10238a;
    public final zzmx b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f10239c;
    public final zzjy d;

    public zzlw(zzmx zzmxVar, zzjy zzjyVar, zzlq zzlqVar) {
        this.b = zzmxVar;
        this.f10239c = zzjyVar.f(zzlqVar);
        this.d = zzjyVar;
        this.f10238a = zzlqVar;
    }

    @Override // com.google.android.gms.internal.drive.zzmf
    public final void a(Object obj) {
        this.b.c(obj);
        this.d.e(obj);
    }

    @Override // com.google.android.gms.internal.drive.zzmf
    public final void b(Object obj, zzns zznsVar) {
        Iterator b = this.d.c(obj).b();
        while (b.hasNext()) {
            Map.Entry entry = (Map.Entry) b.next();
            zzkd zzkdVar = (zzkd) entry.getKey();
            if (zzkdVar.X() == zznr.MESSAGE && !zzkdVar.k0() && !zzkdVar.F()) {
                if (entry instanceof zzkv) {
                    zznsVar.n(zzkdVar.m(), ((zzkt) ((zzkv) entry).f10226c.getValue()).a());
                } else {
                    zznsVar.n(zzkdVar.m(), entry.getValue());
                }
            } else {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
        }
        zzmx zzmxVar = this.b;
        zzmxVar.b(zzmxVar.g(obj), zznsVar);
    }

    @Override // com.google.android.gms.internal.drive.zzmf
    public final int c(zzit zzitVar) {
        zzmx zzmxVar = this.b;
        int h = zzmxVar.h(zzmxVar.g(zzitVar));
        if (this.f10239c) {
            zzmj zzmjVar = this.d.c(zzitVar).f10213a;
            int i = 0;
            for (int i2 = 0; i2 < zzmjVar.f.size(); i2++) {
                i += zzkb.j(zzmjVar.c(i2));
            }
            Iterator<T> it = zzmjVar.f().iterator();
            while (it.hasNext()) {
                i += zzkb.j((Map.Entry) it.next());
            }
            return h + i;
        }
        return h;
    }

    @Override // com.google.android.gms.internal.drive.zzmf
    public final int d(zzkk zzkkVar) {
        int hashCode = this.b.g(zzkkVar).hashCode();
        if (this.f10239c) {
            return (hashCode * 53) + this.d.c(zzkkVar).f10213a.hashCode();
        }
        return hashCode;
    }

    @Override // com.google.android.gms.internal.drive.zzmf
    public final void e(zzkk zzkkVar, zzkk zzkkVar2) {
        Class cls = zzmh.f10246a;
        zzmx zzmxVar = this.b;
        zzmxVar.d(zzkkVar, zzmxVar.e(zzmxVar.g(zzkkVar), zzmxVar.g(zzkkVar2)));
        if (this.f10239c) {
            zzmh.c(this.d, zzkkVar, zzkkVar2);
        }
    }

    @Override // com.google.android.gms.internal.drive.zzmf
    public final boolean f(zzkk zzkkVar, zzkk zzkkVar2) {
        zzmx zzmxVar = this.b;
        if (!zzmxVar.g(zzkkVar).equals(zzmxVar.g(zzkkVar2))) {
            return false;
        }
        if (this.f10239c) {
            zzjy zzjyVar = this.d;
            return zzjyVar.c(zzkkVar).equals(zzjyVar.c(zzkkVar2));
        }
        return true;
    }

    @Override // com.google.android.gms.internal.drive.zzmf
    public final boolean g(Object obj) {
        return this.d.c(obj).a();
    }
}
