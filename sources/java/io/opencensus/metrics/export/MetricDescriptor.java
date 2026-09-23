package io.opencensus.metrics.export;

import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes3.dex */
public abstract class MetricDescriptor {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class Type {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ Type[] f21070c = {new Enum("GAUGE_INT64", 0), new Enum("GAUGE_DOUBLE", 1), new Enum("GAUGE_DISTRIBUTION", 2), new Enum("CUMULATIVE_INT64", 3), new Enum("CUMULATIVE_DOUBLE", 4), new Enum("CUMULATIVE_DISTRIBUTION", 5), new Enum("SUMMARY", 6)};

        /* JADX INFO: Fake field, exist only in values array */
        Type EF5;

        public static Type valueOf(String str) {
            return (Type) Enum.valueOf(Type.class, str);
        }

        public static Type[] values() {
            return (Type[]) f21070c.clone();
        }
    }
}
