package com.google.common.hash;

import java.io.Serializable;

/* loaded from: classes3.dex */
final class LongAdder extends Striped64 implements Serializable, LongAddable {
    @Override // java.lang.Number
    public final double doubleValue() {
        return this.f12460c;
    }

    @Override // java.lang.Number
    public final float floatValue() {
        return (float) this.f12460c;
    }

    @Override // java.lang.Number
    public final int intValue() {
        return (int) this.f12460c;
    }

    @Override // java.lang.Number
    public final long longValue() {
        return this.f12460c;
    }

    public final String toString() {
        return Long.toString(this.f12460c);
    }
}
