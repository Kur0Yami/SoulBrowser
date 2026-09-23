package com.google.android.gms.internal.ads;

import java.math.BigDecimal;

/* loaded from: classes.dex */
final class zzhhx extends Number {

    /* renamed from: c, reason: collision with root package name */
    public final String f8565c;

    public zzhhx(String str) {
        this.f8565c = str;
    }

    @Override // java.lang.Number
    public final double doubleValue() {
        return Double.parseDouble(this.f8565c);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzhhx) {
            return this.f8565c.equals(((zzhhx) obj).f8565c);
        }
        return false;
    }

    @Override // java.lang.Number
    public final float floatValue() {
        return Float.parseFloat(this.f8565c);
    }

    public final int hashCode() {
        return this.f8565c.hashCode();
    }

    @Override // java.lang.Number
    public final int intValue() {
        String str = this.f8565c;
        try {
            try {
                return Integer.parseInt(str);
            } catch (NumberFormatException unused) {
                return (int) Long.parseLong(str);
            }
        } catch (NumberFormatException unused2) {
            return new BigDecimal(str).intValue();
        }
    }

    @Override // java.lang.Number
    public final long longValue() {
        String str = this.f8565c;
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return new BigDecimal(str).longValue();
        }
    }

    public final String toString() {
        return this.f8565c;
    }
}
