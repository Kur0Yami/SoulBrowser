package com.google.android.material.color.utilities;

import androidx.annotation.RestrictTo;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@RestrictTo
/* loaded from: classes3.dex */
public final class TonePolarity {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ TonePolarity[] f11740c = {new Enum("DARKER", 0), new Enum("LIGHTER", 1), new Enum("NEARER", 2), new Enum("FARTHER", 3)};

    /* JADX INFO: Fake field, exist only in values array */
    TonePolarity EF5;

    public static TonePolarity valueOf(String str) {
        return (TonePolarity) Enum.valueOf(TonePolarity.class, str);
    }

    public static TonePolarity[] values() {
        return (TonePolarity[]) f11740c.clone();
    }
}
