package io.opencensus.trace;

import android.support.v4.media.a;
import io.opencensus.trace.AttributeValue;

/* loaded from: classes3.dex */
final class AutoValue_AttributeValue_AttributeValueString extends AttributeValue.AttributeValueString {

    /* renamed from: a, reason: collision with root package name */
    public final String f21086a;

    public AutoValue_AttributeValue_AttributeValueString(String str) {
        this.f21086a = str;
    }

    @Override // io.opencensus.trace.AttributeValue.AttributeValueString
    public final String b() {
        return this.f21086a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AttributeValue.AttributeValueString) {
            return this.f21086a.equals(((AttributeValue.AttributeValueString) obj).b());
        }
        return false;
    }

    public final int hashCode() {
        return this.f21086a.hashCode() ^ 1000003;
    }

    public final String toString() {
        return a.p(new StringBuilder("AttributeValueString{stringValue="), this.f21086a, "}");
    }
}
