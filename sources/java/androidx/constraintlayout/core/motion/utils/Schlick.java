package androidx.constraintlayout.core.motion.utils;

/* loaded from: classes.dex */
public class Schlick extends Easing {
    @Override // androidx.constraintlayout.core.motion.utils.Easing
    public final double a(double d) {
        if (d < 0.0d) {
            return (0.0d * d) / (((0.0d - d) * 0.0d) + d);
        }
        return ((d - 1.0d) * (1.0d - 0.0d)) / ((1.0d - d) - ((0.0d - d) * 0.0d));
    }
}
