package io.opencensus.tags;

import io.opencensus.tags.TagMetadata;

/* loaded from: classes3.dex */
final class AutoValue_TagMetadata extends TagMetadata {
    @Override // io.opencensus.tags.TagMetadata
    public final TagMetadata.TagTtl a() {
        return null;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TagMetadata)) {
            return false;
        }
        ((TagMetadata) obj).a();
        throw null;
    }

    public final int hashCode() {
        throw null;
    }

    public final String toString() {
        return "TagMetadata{tagTtl=" + ((Object) null) + "}";
    }
}
