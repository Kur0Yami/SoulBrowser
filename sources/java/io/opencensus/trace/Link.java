package io.opencensus.trace;

import java.util.Collections;
import java.util.Map;
import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes3.dex */
public abstract class Link {

    /* renamed from: a, reason: collision with root package name */
    public static final Map f21101a = Collections.EMPTY_MAP;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class Type {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ Type[] f21102c = {new Enum("CHILD_LINKED_SPAN", 0), new Enum("PARENT_LINKED_SPAN", 1)};

        /* JADX INFO: Fake field, exist only in values array */
        Type EF5;

        public static Type valueOf(String str) {
            return (Type) Enum.valueOf(Type.class, str);
        }

        public static Type[] values() {
            return (Type[]) f21102c.clone();
        }
    }
}
