package io.opencensus.trace;

import io.opencensus.trace.AttributeValue;

/* loaded from: classes3.dex */
final class AutoValue_AttributeValue_AttributeValueLong extends AttributeValue.AttributeValueLong {
    @Override // io.opencensus.trace.AttributeValue.AttributeValueLong
    public final Long b() {
        return null;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AttributeValue.AttributeValueLong)) {
            return false;
        }
        ((AttributeValue.AttributeValueLong) obj).b();
        throw null;
    }

    public final int hashCode() {
        throw null;
    }

    public final String toString() {
        return "AttributeValueLong{longValue=" + ((Object) null) + "}";
    }
}
