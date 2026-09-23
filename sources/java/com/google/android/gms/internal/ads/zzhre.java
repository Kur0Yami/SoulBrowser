package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class zzhre extends zzhts {

    /* renamed from: a, reason: collision with root package name */
    public final zzhrc f8692a;
    public final zzhra b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhrb f8693c;
    public final zzhrd d;

    public zzhre(zzhrc zzhrcVar, zzhra zzhraVar, zzhrb zzhrbVar, zzhrd zzhrdVar) {
        this.f8692a = zzhrcVar;
        this.b = zzhraVar;
        this.f8693c = zzhrbVar;
        this.d = zzhrdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhan
    public final boolean a() {
        return this.d != zzhrd.e;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzhre)) {
            return false;
        }
        zzhre zzhreVar = (zzhre) obj;
        if (zzhreVar.f8692a != this.f8692a || zzhreVar.b != this.b || zzhreVar.f8693c != this.f8693c || zzhreVar.d != this.d) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(zzhre.class, this.f8692a, this.b, this.f8693c, this.d);
    }

    public final String toString() {
        String str = this.d.f8691a;
        int length = str.length();
        String str2 = this.f8693c.f8687a;
        int length2 = str2.length();
        String str3 = this.f8692a.f8689a;
        int length3 = str3.length();
        String str4 = this.b.f8685a;
        StringBuilder sb = new StringBuilder(length + 39 + length2 + 12 + length3 + 9 + str4.length() + 1);
        android.support.v4.media.a.z(sb, "ECDSA Parameters (variant: ", str, ", hashType: ", str2);
        android.support.v4.media.a.z(sb, ", encoding: ", str3, ", curve: ", str4);
        sb.append(")");
        return sb.toString();
    }
}
