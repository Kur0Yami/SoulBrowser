package com.google.gson.internal;

/* loaded from: classes3.dex */
public final class LazilyParsedNumber extends Number {

    /* renamed from: c, reason: collision with root package name */
    public final String f12688c;

    public LazilyParsedNumber(String str) {
        this.f12688c = str;
    }

    @Override // java.lang.Number
    public final double doubleValue() {
        return Double.parseDouble(this.f12688c);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LazilyParsedNumber) {
            return this.f12688c.equals(((LazilyParsedNumber) obj).f12688c);
        }
        return false;
    }

    @Override // java.lang.Number
    public final float floatValue() {
        return Float.parseFloat(this.f12688c);
    }

    public final int hashCode() {
        return this.f12688c.hashCode();
    }

    @Override // java.lang.Number
    public final int intValue() {
        String str = this.f12688c;
        try {
            try {
                return Integer.parseInt(str);
            } catch (NumberFormatException unused) {
                return (int) Long.parseLong(str);
            }
        } catch (NumberFormatException unused2) {
            return NumberLimits.b(str).intValue();
        }
    }

    @Override // java.lang.Number
    public final long longValue() {
        String str = this.f12688c;
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return NumberLimits.b(str).longValue();
        }
    }

    public final String toString() {
        return this.f12688c;
    }
}
