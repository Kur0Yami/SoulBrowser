package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzhxs extends Number {

    /* renamed from: c, reason: collision with root package name */
    public final String f8873c;

    public zzhxs(String str) {
        this.f8873c = str;
    }

    @Override // java.lang.Number
    public final double doubleValue() {
        return Double.parseDouble(this.f8873c);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzhxs) {
            return this.f8873c.equals(((zzhxs) obj).f8873c);
        }
        return false;
    }

    @Override // java.lang.Number
    public final float floatValue() {
        return Float.parseFloat(this.f8873c);
    }

    public final int hashCode() {
        return this.f8873c.hashCode();
    }

    @Override // java.lang.Number
    public final int intValue() {
        String str = this.f8873c;
        try {
            try {
                return Integer.parseInt(str);
            } catch (NumberFormatException unused) {
                return (int) Long.parseLong(str);
            }
        } catch (NumberFormatException unused2) {
            return zzhyb.a(str).intValue();
        }
    }

    @Override // java.lang.Number
    public final long longValue() {
        String str = this.f8873c;
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return zzhyb.a(str).longValue();
        }
    }

    public final String toString() {
        return this.f8873c;
    }
}
