package com.google.android.material.transition;

import kotlin.KotlinVersion;

/* loaded from: classes3.dex */
class FadeModeEvaluators {

    /* renamed from: a, reason: collision with root package name */
    public static final AnonymousClass1 f12015a = new Object();
    public static final AnonymousClass2 b = new Object();

    /* renamed from: com.google.android.material.transition.FadeModeEvaluators$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 implements FadeModeEvaluator {
        @Override // com.google.android.material.transition.FadeModeEvaluator
        public final FadeModeResult a(float f, float f2, float f3) {
            return new FadeModeResult(KotlinVersion.MAX_COMPONENT_VALUE, TransitionUtils.e(f2, f3, f, 0, KotlinVersion.MAX_COMPONENT_VALUE), true);
        }
    }

    /* renamed from: com.google.android.material.transition.FadeModeEvaluators$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass2 implements FadeModeEvaluator {
        @Override // com.google.android.material.transition.FadeModeEvaluator
        public final FadeModeResult a(float f, float f2, float f3) {
            return new FadeModeResult(TransitionUtils.e(f2, f3, f, KotlinVersion.MAX_COMPONENT_VALUE, 0), KotlinVersion.MAX_COMPONENT_VALUE, false);
        }
    }

    /* renamed from: com.google.android.material.transition.FadeModeEvaluators$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass3 implements FadeModeEvaluator {
        @Override // com.google.android.material.transition.FadeModeEvaluator
        public final FadeModeResult a(float f, float f2, float f3) {
            return new FadeModeResult(TransitionUtils.e(f2, f3, f, KotlinVersion.MAX_COMPONENT_VALUE, 0), TransitionUtils.e(f2, f3, f, 0, KotlinVersion.MAX_COMPONENT_VALUE), false);
        }
    }

    /* renamed from: com.google.android.material.transition.FadeModeEvaluators$4, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass4 implements FadeModeEvaluator {
        @Override // com.google.android.material.transition.FadeModeEvaluator
        public final FadeModeResult a(float f, float f2, float f3) {
            float a2 = android.support.v4.media.a.a(f3, f2, 0.35f, f2);
            return new FadeModeResult(TransitionUtils.e(f2, a2, f, KotlinVersion.MAX_COMPONENT_VALUE, 0), TransitionUtils.e(a2, f3, f, 0, KotlinVersion.MAX_COMPONENT_VALUE), false);
        }
    }
}
