package io.opencensus.trace.export;

import io.opencensus.internal.Utils;
import j$.util.DesugarCollections;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import javax.annotation.concurrent.Immutable;
import javax.annotation.concurrent.ThreadSafe;

@ThreadSafe
/* loaded from: classes3.dex */
public abstract class SampledSpanStore {

    @Immutable
    /* loaded from: classes3.dex */
    public static abstract class ErrorFilter {
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class LatencyBucketBoundaries {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ LatencyBucketBoundaries[] f21124c;

        /* JADX INFO: Fake field, exist only in values array */
        LatencyBucketBoundaries EF0;

        /* JADX WARN: Multi-variable type inference failed */
        static {
            TimeUnit timeUnit = TimeUnit.MICROSECONDS;
            timeUnit.toNanos(10L);
            Enum r0 = new Enum("ZERO_MICROSx10", 0);
            timeUnit.toNanos(10L);
            timeUnit.toNanos(100L);
            Enum r4 = new Enum("MICROSx10_MICROSx100", 1);
            timeUnit.toNanos(100L);
            TimeUnit timeUnit2 = TimeUnit.MILLISECONDS;
            timeUnit2.toNanos(1L);
            Enum r8 = new Enum("MICROSx100_MILLIx1", 2);
            timeUnit2.toNanos(1L);
            timeUnit2.toNanos(10L);
            Enum r12 = new Enum("MILLIx1_MILLIx10", 3);
            timeUnit2.toNanos(10L);
            timeUnit2.toNanos(100L);
            Enum r14 = new Enum("MILLIx10_MILLIx100", 4);
            timeUnit2.toNanos(100L);
            TimeUnit timeUnit3 = TimeUnit.SECONDS;
            timeUnit3.toNanos(1L);
            Enum r5 = new Enum("MILLIx100_SECONDx1", 5);
            timeUnit3.toNanos(1L);
            timeUnit3.toNanos(10L);
            Enum r9 = new Enum("SECONDx1_SECONDx10", 6);
            timeUnit3.toNanos(10L);
            timeUnit3.toNanos(100L);
            Enum r10 = new Enum("SECONDx10_SECONDx100", 7);
            timeUnit3.toNanos(100L);
            f21124c = new LatencyBucketBoundaries[]{r0, r4, r8, r12, r14, r5, r9, r10, new Enum("SECONDx100_MAX", 8)};
        }

        public static LatencyBucketBoundaries valueOf(String str) {
            return (LatencyBucketBoundaries) Enum.valueOf(LatencyBucketBoundaries.class, str);
        }

        public static LatencyBucketBoundaries[] values() {
            return (LatencyBucketBoundaries[]) f21124c.clone();
        }
    }

    @Immutable
    /* loaded from: classes3.dex */
    public static abstract class LatencyFilter {
    }

    @ThreadSafe
    /* loaded from: classes3.dex */
    public static final class NoopSampledSpanStore extends SampledSpanStore {

        /* renamed from: a, reason: collision with root package name */
        public final HashSet f21125a = new HashSet();

        static {
            Map map = Collections.EMPTY_MAP;
            Utils.b(map, "numbersOfLatencySampledSpans");
            Map map2 = map;
            new AutoValue_SampledSpanStore_PerSpanNameSummary(DesugarCollections.unmodifiableMap(new HashMap(map2)), DesugarCollections.unmodifiableMap(new HashMap(map2)));
        }

        @Override // io.opencensus.trace.export.SampledSpanStore
        public final void a(Collection collection) {
            Utils.b(collection, "spanNames");
            synchronized (this.f21125a) {
                this.f21125a.addAll(collection);
            }
        }
    }

    @Immutable
    /* loaded from: classes3.dex */
    public static abstract class PerSpanNameSummary {
        public abstract Map a();

        public abstract Map b();
    }

    @Immutable
    /* loaded from: classes3.dex */
    public static abstract class Summary {
    }

    public abstract void a(Collection collection);
}
