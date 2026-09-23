package io.opencensus.tags;

import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes3.dex */
public abstract class TagMetadata {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class TagTtl {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ TagTtl[] f21083c = {new Enum("NO_PROPAGATION", 0), new Enum("UNLIMITED_PROPAGATION", 1)};

        /* JADX INFO: Fake field, exist only in values array */
        TagTtl EF5;

        public static TagTtl valueOf(String str) {
            return (TagTtl) Enum.valueOf(TagTtl.class, str);
        }

        public static TagTtl[] values() {
            return (TagTtl[]) f21083c.clone();
        }
    }

    public abstract TagTtl a();
}
