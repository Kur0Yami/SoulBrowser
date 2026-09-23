package io.opencensus.stats;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes3.dex */
public final class StatsCollectionState {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ StatsCollectionState[] f21079c = {new Enum("ENABLED", 0), new Enum("DISABLED", 1)};

    /* JADX INFO: Fake field, exist only in values array */
    StatsCollectionState EF5;

    public static StatsCollectionState valueOf(String str) {
        return (StatsCollectionState) Enum.valueOf(StatsCollectionState.class, str);
    }

    public static StatsCollectionState[] values() {
        return (StatsCollectionState[]) f21079c.clone();
    }
}
