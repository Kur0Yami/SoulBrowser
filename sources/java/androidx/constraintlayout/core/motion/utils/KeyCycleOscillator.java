package androidx.constraintlayout.core.motion.utils;

import java.text.DecimalFormat;
import java.util.Comparator;

/* loaded from: classes.dex */
public abstract class KeyCycleOscillator {

    /* renamed from: androidx.constraintlayout.core.motion.utils.KeyCycleOscillator$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 implements Comparator<WavePoint> {
        @Override // java.util.Comparator
        public final int compare(WavePoint wavePoint, WavePoint wavePoint2) {
            wavePoint.getClass();
            wavePoint2.getClass();
            return Integer.compare(0, 0);
        }
    }

    /* loaded from: classes.dex */
    public static class CoreSpline extends KeyCycleOscillator {
    }

    /* loaded from: classes.dex */
    public static class CycleOscillator {
    }

    /* loaded from: classes.dex */
    public static class IntDoubleSort {
    }

    /* loaded from: classes.dex */
    public static class IntFloatFloatSort {
    }

    /* loaded from: classes.dex */
    public static class PathRotateSet extends KeyCycleOscillator {
    }

    /* loaded from: classes.dex */
    public static class WavePoint {
    }

    public final String toString() {
        new DecimalFormat("##.##");
        throw null;
    }
}
