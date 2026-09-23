package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class zzaae {

    /* renamed from: a, reason: collision with root package name */
    public final int f3844a;
    public final zzml[] b;

    /* renamed from: c, reason: collision with root package name */
    public final zzzw[] f3845c;
    public final zzbn d;
    public final Object e;

    public zzaae(zzml[] zzmlVarArr, zzzw[] zzzwVarArr, zzbn zzbnVar, zzzz zzzzVar) {
        boolean z;
        int length = zzmlVarArr.length;
        if (length == zzzwVarArr.length) {
            z = true;
        } else {
            z = false;
        }
        zzgqa.a(z);
        this.b = zzmlVarArr;
        this.f3845c = (zzzw[]) zzzwVarArr.clone();
        this.d = zzbnVar;
        this.e = zzzzVar;
        this.f3844a = length;
    }

    public final boolean a(int i) {
        if (this.b[i] != null) {
            return true;
        }
        return false;
    }

    public final boolean b(zzaae zzaaeVar, int i) {
        if (zzaaeVar == null || !Objects.equals(this.b[i], zzaaeVar.b[i]) || !Objects.equals(this.f3845c[i], zzaaeVar.f3845c[i])) {
            return false;
        }
        return true;
    }
}
