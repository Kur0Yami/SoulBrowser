package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzhxl extends zzhxj {

    /* renamed from: c, reason: collision with root package name */
    public final zzhya f8870c = new zzhya();

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof zzhxl) && ((zzhxl) obj).f8870c.equals(this.f8870c)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.f8870c.hashCode();
    }

    public final zzhxj i(String str) {
        return (zzhxj) this.f8870c.get(str);
    }
}
