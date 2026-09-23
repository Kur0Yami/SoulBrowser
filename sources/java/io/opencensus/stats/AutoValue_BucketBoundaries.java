package io.opencensus.stats;

import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class AutoValue_BucketBoundaries extends BucketBoundaries {
    public final List b;

    public AutoValue_BucketBoundaries(List list) {
        if (list != null) {
            this.b = list;
            return;
        }
        throw new NullPointerException("Null boundaries");
    }

    @Override // io.opencensus.stats.BucketBoundaries
    public final List b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof BucketBoundaries) {
            return this.b.equals(((BucketBoundaries) obj).b());
        }
        return false;
    }

    public final int hashCode() {
        return this.b.hashCode() ^ 1000003;
    }

    public final String toString() {
        return "BucketBoundaries{boundaries=" + this.b + "}";
    }
}
