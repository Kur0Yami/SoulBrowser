package io.opencensus.stats;

import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes3.dex */
public abstract class Aggregation {

    @Immutable
    /* loaded from: classes3.dex */
    public static abstract class Count extends Aggregation {

        /* renamed from: a, reason: collision with root package name */
        public static final Count f21072a = new Object();
    }

    @Immutable
    /* loaded from: classes3.dex */
    public static abstract class Distribution extends Aggregation {
        public static Distribution a(BucketBoundaries bucketBoundaries) {
            return new AutoValue_Aggregation_Distribution(bucketBoundaries);
        }

        public abstract BucketBoundaries b();
    }

    @Immutable
    /* loaded from: classes3.dex */
    public static abstract class LastValue extends Aggregation {
    }

    @Deprecated
    @Immutable
    /* loaded from: classes3.dex */
    public static abstract class Mean extends Aggregation {
    }

    @Immutable
    /* loaded from: classes3.dex */
    public static abstract class Sum extends Aggregation {
    }
}
