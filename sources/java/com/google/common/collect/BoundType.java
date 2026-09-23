package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@GwtCompatible
/* loaded from: classes3.dex */
public final class BoundType {

    /* renamed from: c, reason: collision with root package name */
    public static final BoundType f12251c;
    public static final BoundType f;
    public static final /* synthetic */ BoundType[] g;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.google.common.collect.BoundType] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, com.google.common.collect.BoundType] */
    static {
        ?? r0 = new Enum("OPEN", 0);
        f12251c = r0;
        ?? r1 = new Enum("CLOSED", 1);
        f = r1;
        g = new BoundType[]{r0, r1};
    }

    public static BoundType a(boolean z) {
        if (z) {
            return f;
        }
        return f12251c;
    }

    public static BoundType valueOf(String str) {
        return (BoundType) Enum.valueOf(BoundType.class, str);
    }

    public static BoundType[] values() {
        return (BoundType[]) g.clone();
    }
}
