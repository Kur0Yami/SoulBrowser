package com.google.android.gms.internal.auth;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzgb implements zzgi {

    /* renamed from: a, reason: collision with root package name */
    public final zzfx f9550a;
    public final zzgz b;

    /* renamed from: c, reason: collision with root package name */
    public final zzem f9551c;

    public zzgb(zzgz zzgzVar, zzem zzemVar, zzfx zzfxVar) {
        this.b = zzgzVar;
        this.f9551c = zzemVar;
        this.f9550a = zzfxVar;
    }

    @Override // com.google.android.gms.internal.auth.zzgi
    public final boolean c(Object obj) {
        this.f9551c.a(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.auth.zzgi
    public final boolean d(zzev zzevVar, zzev zzevVar2) {
        zzgz zzgzVar = this.b;
        if (!zzgzVar.b(zzevVar).equals(zzgzVar.b(zzevVar2))) {
            return false;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.auth.zzgi
    public final int e(zzev zzevVar) {
        return this.b.b(zzevVar).hashCode();
    }

    @Override // com.google.android.gms.internal.auth.zzgi
    public final void f(Object obj) {
        this.b.e(obj);
        this.f9551c.b(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.auth.zzgi
    public final void g(Object obj, byte[] bArr, int i, int i2, zzdt zzdtVar) {
        zzev zzevVar = (zzev) obj;
        if (zzevVar.zzc == zzha.e) {
            zzevVar.zzc = zzha.a();
        }
        throw null;
    }

    @Override // com.google.android.gms.internal.auth.zzgi
    public final void h(Object obj, Object obj2) {
        Class cls = zzgk.f9557a;
        zzgz zzgzVar = this.b;
        zzgzVar.f(obj, zzgzVar.c(zzgzVar.b(obj), zzgzVar.b(obj2)));
    }

    @Override // com.google.android.gms.internal.auth.zzgi
    public final zzev zzd() {
        zzfx zzfxVar = this.f9550a;
        if (zzfxVar instanceof zzev) {
            return ((zzev) zzfxVar).b();
        }
        zzet zzetVar = (zzet) ((zzev) zzfxVar).h(5);
        if (!zzetVar.f.g()) {
            return zzetVar.f;
        }
        zzev zzevVar = zzetVar.f;
        zzevVar.getClass();
        zzgf.f9553c.a(zzevVar.getClass()).f(zzevVar);
        zzevVar.d();
        return zzetVar.f;
    }
}
