package com.google.android.material.color.utilities;

import androidx.annotation.RestrictTo;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@RestrictTo
/* loaded from: classes3.dex */
public final class Variant {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ Variant[] f11741c = {new Enum("MONOCHROME", 0), new Enum("NEUTRAL", 1), new Enum("TONAL_SPOT", 2), new Enum("VIBRANT", 3), new Enum("EXPRESSIVE", 4), new Enum("FIDELITY", 5), new Enum("CONTENT", 6), new Enum("RAINBOW", 7), new Enum("FRUIT_SALAD", 8)};

    /* JADX INFO: Fake field, exist only in values array */
    Variant EF5;

    public static Variant valueOf(String str) {
        return (Variant) Enum.valueOf(Variant.class, str);
    }

    public static Variant[] values() {
        return (Variant[]) f11741c.clone();
    }
}
