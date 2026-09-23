package com.google.common.cache;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.MoreObjects;
import com.google.common.base.Splitter;
import com.google.common.cache.LocalCache;
import com.google.common.collect.ImmutableMap;
import j$.util.Objects;

@GwtIncompatible
/* loaded from: classes3.dex */
public final class CacheBuilderSpec {

    /* renamed from: com.google.common.cache.CacheBuilderSpec$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f12202a;

        static {
            int[] iArr = new int[LocalCache.Strength.values().length];
            f12202a = iArr;
            try {
                iArr[2] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12202a[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes3.dex */
    public static final class AccessDurationParser extends DurationParser {
    }

    /* loaded from: classes3.dex */
    public static final class ConcurrencyLevelParser extends IntegerParser {
    }

    /* loaded from: classes3.dex */
    public static abstract class DurationParser implements ValueParser {
    }

    /* loaded from: classes3.dex */
    public static final class InitialCapacityParser extends IntegerParser {
    }

    /* loaded from: classes3.dex */
    public static abstract class IntegerParser implements ValueParser {
    }

    /* loaded from: classes3.dex */
    public static final class KeyStrengthParser implements ValueParser {
    }

    /* loaded from: classes3.dex */
    public static abstract class LongParser implements ValueParser {
    }

    /* loaded from: classes3.dex */
    public static final class MaximumSizeParser extends LongParser {
    }

    /* loaded from: classes3.dex */
    public static final class MaximumWeightParser extends LongParser {
    }

    /* loaded from: classes3.dex */
    public static final class RecordStatsParser implements ValueParser {
    }

    /* loaded from: classes3.dex */
    public static final class RefreshDurationParser extends DurationParser {
    }

    /* loaded from: classes3.dex */
    public interface ValueParser {
    }

    /* loaded from: classes3.dex */
    public static final class ValueStrengthParser implements ValueParser {
    }

    /* loaded from: classes3.dex */
    public static final class WriteDurationParser extends DurationParser {
    }

    static {
        Splitter.a(',').e();
        Splitter.a('=').e();
        ImmutableMap.Builder a2 = ImmutableMap.a();
        a2.d("initialCapacity", new Object());
        a2.d("maximumSize", new Object());
        a2.d("maximumWeight", new Object());
        a2.d("concurrencyLevel", new Object());
        a2.d("weakKeys", new Object());
        a2.d("softValues", new Object());
        a2.d("weakValues", new Object());
        a2.d("recordStats", new Object());
        a2.d("expireAfterAccess", new Object());
        a2.d("expireAfterWrite", new Object());
        a2.d("refreshAfterWrite", new Object());
        a2.d("refreshInterval", new Object());
        a2.b(true);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof CacheBuilderSpec) && Objects.equals(null, null) && Objects.equals(null, null) && Objects.equals(null, null)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(null, null, null, null, null, null, null, null, null, null);
    }

    public final String toString() {
        MoreObjects.ToStringHelper b = MoreObjects.b(this);
        b.f(null);
        return b.toString();
    }
}
