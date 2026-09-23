package com.google.android.material.color.utilities;

import androidx.annotation.RestrictTo;

@RestrictTo
/* loaded from: classes3.dex */
public final class QuantizerWu implements Quantizer {

    /* loaded from: classes3.dex */
    public static final class Box {
    }

    /* loaded from: classes3.dex */
    public static final class CreateBoxesResult {
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class Direction {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ Direction[] f11739c = {new Enum("RED", 0), new Enum("GREEN", 1), new Enum("BLUE", 2)};

        /* JADX INFO: Fake field, exist only in values array */
        Direction EF5;

        public static Direction valueOf(String str) {
            return (Direction) Enum.valueOf(Direction.class, str);
        }

        public static Direction[] values() {
            return (Direction[]) f11739c.clone();
        }
    }

    /* loaded from: classes3.dex */
    public static final class MaximizeResult {
    }
}
