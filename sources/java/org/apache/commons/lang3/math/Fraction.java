package org.apache.commons.lang3.math;

import j$.util.Objects;

/* loaded from: classes4.dex */
public final class Fraction extends Number implements Comparable<Fraction> {

    /* renamed from: c, reason: collision with root package name */
    public final int f22386c;
    public final int f;
    public transient int g;
    public transient String h;

    static {
        new Fraction(0, 1);
        new Fraction(1, 1);
        new Fraction(1, 2);
        new Fraction(1, 3);
        new Fraction(2, 3);
        new Fraction(1, 4);
        new Fraction(2, 4);
        new Fraction(3, 4);
        new Fraction(1, 5);
        new Fraction(2, 5);
        new Fraction(3, 5);
        new Fraction(4, 5);
    }

    public Fraction(int i, int i2) {
        this.f22386c = i;
        this.f = i2;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Fraction fraction) {
        Fraction fraction2 = fraction;
        if (this != fraction2) {
            int i = fraction2.f22386c;
            int i2 = fraction2.f;
            int i3 = this.f;
            int i4 = this.f22386c;
            if (i4 == i && i3 == i2) {
                return 0;
            }
            return Long.compare(i4 * i2, i * i3);
        }
        return 0;
    }

    @Override // java.lang.Number
    public final double doubleValue() {
        return this.f22386c / this.f;
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof Fraction) {
                Fraction fraction = (Fraction) obj;
                if (this.f22386c == fraction.f22386c && this.f == fraction.f) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    @Override // java.lang.Number
    public final float floatValue() {
        return this.f22386c / this.f;
    }

    public final int hashCode() {
        if (this.g == 0) {
            this.g = Objects.hash(Integer.valueOf(this.f), Integer.valueOf(this.f22386c));
        }
        return this.g;
    }

    @Override // java.lang.Number
    public final int intValue() {
        return this.f22386c / this.f;
    }

    @Override // java.lang.Number
    public final long longValue() {
        return this.f22386c / this.f;
    }

    public final String toString() {
        if (this.h == null) {
            this.h = this.f22386c + "/" + this.f;
        }
        return this.h;
    }
}
