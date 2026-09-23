package io.opencensus.tags;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes3.dex */
public final class TaggingState {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ TaggingState[] f21084c = {new Enum("ENABLED", 0), new Enum("DISABLED", 1)};

    /* JADX INFO: Fake field, exist only in values array */
    TaggingState EF5;

    public static TaggingState valueOf(String str) {
        return (TaggingState) Enum.valueOf(TaggingState.class, str);
    }

    public static TaggingState[] values() {
        return (TaggingState[]) f21084c.clone();
    }
}
