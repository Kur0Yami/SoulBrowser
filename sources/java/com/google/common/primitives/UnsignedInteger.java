package com.google.common.primitives;

import com.google.common.annotations.GwtCompatible;
import kotlin.jvm.internal.IntCompanionObject;

@GwtCompatible
/* loaded from: classes3.dex */
public final class UnsignedInteger extends Number implements Comparable<UnsignedInteger> {

    /* renamed from: c, reason: collision with root package name */
    public final int f12525c;

    static {
        new UnsignedInteger(0);
        new UnsignedInteger(1);
        new UnsignedInteger(-1);
    }

    public UnsignedInteger(int i) {
        this.f12525c = i;
    }

    @Override // java.lang.Comparable
    public final int compareTo(UnsignedInteger unsignedInteger) {
        UnsignedInteger unsignedInteger2 = unsignedInteger;
        unsignedInteger2.getClass();
        return Integer.compare(this.f12525c ^ IntCompanionObject.MIN_VALUE, unsignedInteger2.f12525c ^ IntCompanionObject.MIN_VALUE);
    }

    @Override // java.lang.Number
    public final double doubleValue() {
        return longValue();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof UnsignedInteger) || this.f12525c != ((UnsignedInteger) obj).f12525c) {
            return false;
        }
        return true;
    }

    @Override // java.lang.Number
    public final float floatValue() {
        return (float) longValue();
    }

    public final int hashCode() {
        return this.f12525c;
    }

    @Override // java.lang.Number
    public final int intValue() {
        return this.f12525c;
    }

    @Override // java.lang.Number
    public final long longValue() {
        return this.f12525c & 4294967295L;
    }

    public final String toString() {
        return Long.toString(this.f12525c & 4294967295L, 10);
    }
}
