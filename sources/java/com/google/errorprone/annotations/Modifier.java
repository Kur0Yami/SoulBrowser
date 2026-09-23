package com.google.errorprone.annotations;

import org.jsoup.nodes.DocumentType;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes3.dex */
public final class Modifier {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ Modifier[] f12603c = {new Enum(DocumentType.PUBLIC_KEY, 0), new Enum("PROTECTED", 1), new Enum("PRIVATE", 2), new Enum("ABSTRACT", 3), new Enum("DEFAULT", 4), new Enum("STATIC", 5), new Enum("FINAL", 6), new Enum("TRANSIENT", 7), new Enum("VOLATILE", 8), new Enum("SYNCHRONIZED", 9), new Enum("NATIVE", 10), new Enum("STRICTFP", 11)};

    /* JADX INFO: Fake field, exist only in values array */
    Modifier EF5;

    public static Modifier valueOf(String str) {
        return (Modifier) Enum.valueOf(Modifier.class, str);
    }

    public static Modifier[] values() {
        return (Modifier[]) f12603c.clone();
    }
}
