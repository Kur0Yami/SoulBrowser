package org.apache.commons.lang3.util;

import j$.util.Objects;
import java.io.Serializable;
import java.util.BitSet;

/* loaded from: classes4.dex */
public final class FluentBitSet implements Cloneable, Serializable {

    /* renamed from: c, reason: collision with root package name */
    public final BitSet f22460c;

    public FluentBitSet(BitSet bitSet) {
        Objects.requireNonNull(bitSet, "set");
        this.f22460c = bitSet;
    }

    public final Object clone() {
        return new FluentBitSet((BitSet) this.f22460c.clone());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FluentBitSet)) {
            return false;
        }
        return Objects.equals(this.f22460c, ((FluentBitSet) obj).f22460c);
    }

    public final int hashCode() {
        return this.f22460c.hashCode();
    }

    public final String toString() {
        return this.f22460c.toString();
    }
}
