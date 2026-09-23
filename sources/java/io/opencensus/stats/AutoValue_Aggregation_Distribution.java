package io.opencensus.stats;

import io.opencensus.stats.Aggregation;

/* loaded from: classes3.dex */
final class AutoValue_Aggregation_Distribution extends Aggregation.Distribution {

    /* renamed from: a, reason: collision with root package name */
    public final BucketBoundaries f21073a;

    public AutoValue_Aggregation_Distribution(BucketBoundaries bucketBoundaries) {
        this.f21073a = bucketBoundaries;
    }

    @Override // io.opencensus.stats.Aggregation.Distribution
    public final BucketBoundaries b() {
        return this.f21073a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Aggregation.Distribution) {
            return this.f21073a.equals(((Aggregation.Distribution) obj).b());
        }
        return false;
    }

    public final int hashCode() {
        return this.f21073a.hashCode() ^ 1000003;
    }

    public final String toString() {
        return "Distribution{bucketBoundaries=" + this.f21073a + "}";
    }
}
