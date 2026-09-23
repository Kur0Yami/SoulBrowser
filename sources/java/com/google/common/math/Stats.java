package com.google.common.math;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.base.MoreObjects;
import j$.util.Objects;
import java.io.Serializable;

@J2ktIncompatible
@GwtIncompatible
/* loaded from: classes3.dex */
public final class Stats implements Serializable {
    public final boolean equals(Object obj) {
        if (obj == null || Stats.class != obj.getClass()) {
            return false;
        }
        if (Double.doubleToLongBits(0.0d) != Double.doubleToLongBits(0.0d) || Double.doubleToLongBits(0.0d) != Double.doubleToLongBits(0.0d) || Double.doubleToLongBits(0.0d) != Double.doubleToLongBits(0.0d) || Double.doubleToLongBits(0.0d) != Double.doubleToLongBits(0.0d)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        Double valueOf = Double.valueOf(0.0d);
        return Objects.hash(0L, valueOf, valueOf, valueOf, valueOf);
    }

    public final String toString() {
        MoreObjects.ToStringHelper b = MoreObjects.b(this);
        b.c("count");
        return b.toString();
    }
}
