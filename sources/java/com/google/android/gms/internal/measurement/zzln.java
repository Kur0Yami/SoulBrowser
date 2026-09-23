package com.google.android.gms.internal.measurement;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzln implements zzlu {

    /* renamed from: a, reason: collision with root package name */
    public final zzlj f10393a;
    public final zzml b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f10394c;
    public final zzjp d;

    public zzln(zzml zzmlVar, zzjp zzjpVar, zzlj zzljVar) {
        this.b = zzmlVar;
        this.f10394c = zzjpVar.b(zzljVar);
        this.d = zzjpVar;
        this.f10393a = zzljVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzlu
    public final int a(zzkc zzkcVar) {
        int hashCode = this.b.b(zzkcVar).hashCode();
        if (!this.f10394c) {
            return hashCode;
        }
        this.d.a(zzkcVar);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzlu
    public final boolean b(zzkc zzkcVar, zzkc zzkcVar2) {
        zzml zzmlVar = this.b;
        if (!zzmlVar.b(zzkcVar).equals(zzmlVar.b(zzkcVar2))) {
            return false;
        }
        if (!this.f10394c) {
            return true;
        }
        this.d.a(zzkcVar);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzlu
    public final void c(Object obj, zznd zzndVar) {
        this.d.a(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzlu
    public final int zza(Object obj) {
        zzml zzmlVar = this.b;
        int a2 = zzmlVar.a(zzmlVar.b(obj));
        if (!this.f10394c) {
            return a2;
        }
        this.d.a(obj);
        throw null;
    }
}
