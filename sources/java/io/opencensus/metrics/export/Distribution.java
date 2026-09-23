package io.opencensus.metrics.export;

import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes3.dex */
public abstract class Distribution {

    @Immutable
    /* loaded from: classes3.dex */
    public static abstract class Bucket {
    }

    @Immutable
    /* loaded from: classes3.dex */
    public static abstract class BucketOptions {

        @Immutable
        /* loaded from: classes3.dex */
        public static abstract class ExplicitOptions extends BucketOptions {
        }
    }
}
