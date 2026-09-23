package com.google.common.math;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;

@J2ktIncompatible
@GwtIncompatible
/* loaded from: classes3.dex */
public abstract class LinearTransformation {

    /* loaded from: classes3.dex */
    public static final class LinearTransformationBuilder {
    }

    /* loaded from: classes3.dex */
    public static final class NaNLinearTransformation extends LinearTransformation {
        public final String toString() {
            return "NaN";
        }
    }

    /* loaded from: classes3.dex */
    public static final class RegularLinearTransformation extends LinearTransformation {
        public final String toString() {
            Double valueOf = Double.valueOf(0.0d);
            return String.format("y = %g * x + %g", valueOf, valueOf);
        }
    }

    /* loaded from: classes3.dex */
    public static final class VerticalLinearTransformation extends LinearTransformation {
        public final String toString() {
            return String.format("x = %g", Double.valueOf(0.0d));
        }
    }
}
