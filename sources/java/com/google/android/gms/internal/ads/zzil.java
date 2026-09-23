package com.google.android.gms.internal.ads;

import android.text.TextUtils;

/* loaded from: classes.dex */
public final class zzil {

    /* renamed from: a, reason: collision with root package name */
    public final String f9015a;
    public final zzv b;

    /* renamed from: c, reason: collision with root package name */
    public final zzv f9016c;
    public final int d;
    public final int e;

    public zzil(String str, zzv zzvVar, zzv zzvVar2, int i, int i2) {
        boolean z;
        if (i != 0) {
            z = false;
            i2 = i2 == 0 ? 0 : i2;
            zzgqa.a(z);
            zzgqa.a(true ^ TextUtils.isEmpty(str));
            this.f9015a = str;
            this.b = zzvVar;
            zzvVar2.getClass();
            this.f9016c = zzvVar2;
            this.d = i;
            this.e = i2;
        }
        z = true;
        zzgqa.a(z);
        zzgqa.a(true ^ TextUtils.isEmpty(str));
        this.f9015a = str;
        this.b = zzvVar;
        zzvVar2.getClass();
        this.f9016c = zzvVar2;
        this.d = i;
        this.e = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzil.class == obj.getClass()) {
            zzil zzilVar = (zzil) obj;
            if (this.d == zzilVar.d && this.e == zzilVar.e && this.f9015a.equals(zzilVar.f9015a) && this.b.equals(zzilVar.b) && this.f9016c.equals(zzilVar.f9016c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f9016c.hashCode() + ((this.b.hashCode() + ((this.f9015a.hashCode() + ((((this.d + 527) * 31) + this.e) * 31)) * 31)) * 31);
    }
}
