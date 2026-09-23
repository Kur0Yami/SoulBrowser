package androidx.constraintlayout.core.motion.utils;

/* loaded from: classes.dex */
public class Easing {
    public static final String[] b = {"standard", "accelerate", "decelerate", "linear"};

    /* renamed from: a, reason: collision with root package name */
    public final String f510a = "identity";

    /* loaded from: classes.dex */
    public static class CubicEasing extends Easing {
        @Override // androidx.constraintlayout.core.motion.utils.Easing
        public final double a(double d) {
            if (d <= 0.0d) {
                return 0.0d;
            }
            if (d >= 1.0d) {
                return 1.0d;
            }
            double d2 = 0.5d;
            double d3 = 0.5d;
            while (d2 > 0.01d) {
                d2 *= 0.5d;
                if (b(d3) < d) {
                    d3 += d2;
                } else {
                    d3 -= d2;
                }
            }
            double d4 = d3 - d2;
            double b = b(d4);
            double d5 = d3 + d2;
            double b2 = b(d5);
            double c2 = c(d4);
            return (((d - b) * (c(d5) - c2)) / (b2 - b)) + c2;
        }

        public final double b(double d) {
            double d2 = 1.0d - d;
            double d3 = 3.0d * d2;
            double d4 = d2 * d3 * d;
            double d5 = d3 * d * d;
            return (0.0d * d5) + (0.0d * d4) + (d * d * d);
        }

        public final double c(double d) {
            double d2 = 1.0d - d;
            double d3 = 3.0d * d2;
            double d4 = d2 * d3 * d;
            double d5 = d3 * d * d;
            return (0.0d * d5) + (0.0d * d4) + (d * d * d);
        }
    }

    public double a(double d) {
        return d;
    }

    public final String toString() {
        return this.f510a;
    }
}
