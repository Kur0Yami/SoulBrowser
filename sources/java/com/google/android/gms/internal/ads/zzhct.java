package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class zzhct extends zzhbf {

    /* renamed from: a, reason: collision with root package name */
    public final int f8401a;
    public final zzhcs b;

    public zzhct(int i, zzhcs zzhcsVar) {
        this.f8401a = i;
        this.b = zzhcsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhan
    public final boolean a() {
        return this.b != zzhcs.d;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzhct)) {
            return false;
        }
        zzhct zzhctVar = (zzhct) obj;
        if (zzhctVar.f8401a != this.f8401a || zzhctVar.b != this.b) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(zzhct.class, Integer.valueOf(this.f8401a), this.b);
    }

    public final String toString() {
        String valueOf = String.valueOf(this.b);
        int length = valueOf.length();
        int i = this.f8401a;
        StringBuilder sb = new StringBuilder(length + 33 + String.valueOf(i).length() + 10);
        sb.append("AesGcmSiv Parameters (variant: ");
        sb.append(valueOf);
        sb.append(", ");
        sb.append(i);
        sb.append("-byte key)");
        return sb.toString();
    }
}
