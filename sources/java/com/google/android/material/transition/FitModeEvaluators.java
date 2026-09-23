package com.google.android.material.transition;

import android.graphics.RectF;

/* loaded from: classes3.dex */
class FitModeEvaluators {

    /* renamed from: a, reason: collision with root package name */
    public static final AnonymousClass1 f12018a = new Object();
    public static final AnonymousClass2 b = new Object();

    /* renamed from: com.google.android.material.transition.FitModeEvaluators$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 implements FitModeEvaluator {
        @Override // com.google.android.material.transition.FitModeEvaluator
        public final FitModeResult a(float f, float f2, float f3, float f4, float f5, float f6, float f7) {
            float d = TransitionUtils.d(f4, f6, f2, f3, f, true);
            float f8 = d / f4;
            float f9 = d / f6;
            return new FitModeResult(f8, f9, d, f5 * f8, d, f7 * f9);
        }

        @Override // com.google.android.material.transition.FitModeEvaluator
        public final boolean b(FitModeResult fitModeResult) {
            if (fitModeResult.d > fitModeResult.f) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.material.transition.FitModeEvaluator
        public final void c(RectF rectF, float f, FitModeResult fitModeResult) {
            rectF.bottom -= Math.abs(fitModeResult.f - fitModeResult.d) * f;
        }
    }

    /* renamed from: com.google.android.material.transition.FitModeEvaluators$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass2 implements FitModeEvaluator {
        @Override // com.google.android.material.transition.FitModeEvaluator
        public final FitModeResult a(float f, float f2, float f3, float f4, float f5, float f6, float f7) {
            float d = TransitionUtils.d(f5, f7, f2, f3, f, true);
            float f8 = d / f5;
            float f9 = d / f7;
            return new FitModeResult(f8, f9, f4 * f8, d, f6 * f9, d);
        }

        @Override // com.google.android.material.transition.FitModeEvaluator
        public final boolean b(FitModeResult fitModeResult) {
            if (fitModeResult.f12020c > fitModeResult.e) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.material.transition.FitModeEvaluator
        public final void c(RectF rectF, float f, FitModeResult fitModeResult) {
            float abs = (Math.abs(fitModeResult.e - fitModeResult.f12020c) / 2.0f) * f;
            rectF.left += abs;
            rectF.right -= abs;
        }
    }
}
