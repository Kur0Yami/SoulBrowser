package com.google.common.graph;

import com.google.common.annotations.Beta;
import com.google.common.base.MoreObjects;
import com.google.errorprone.annotations.Immutable;
import j$.util.Objects;

@Immutable
@Beta
/* loaded from: classes3.dex */
public final class ElementOrder<T> {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class Type {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ Type[] f12440c = {new Enum("UNORDERED", 0), new Enum("STABLE", 1), new Enum("INSERTION", 2), new Enum("SORTED", 3)};

        /* JADX INFO: Fake field, exist only in values array */
        Type EF5;

        public static Type valueOf(String str) {
            return (Type) Enum.valueOf(Type.class, str);
        }

        public static Type[] values() {
            return (Type[]) f12440c.clone();
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this || (obj instanceof ElementOrder)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(null, null);
    }

    public final String toString() {
        MoreObjects.ToStringHelper b = MoreObjects.b(this);
        b.b(null, "type");
        return b.toString();
    }
}
