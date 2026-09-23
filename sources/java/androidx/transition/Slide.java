package androidx.transition;

import android.animation.Animator;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.annotation.RestrictTo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public class Slide extends Visibility {

    /* renamed from: androidx.transition.Slide$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 extends CalculateSlideHorizontal {
    }

    /* renamed from: androidx.transition.Slide$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass2 extends CalculateSlideHorizontal {
    }

    /* renamed from: androidx.transition.Slide$3, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass3 extends CalculateSlideVertical {
    }

    /* renamed from: androidx.transition.Slide$4, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass4 extends CalculateSlideHorizontal {
    }

    /* renamed from: androidx.transition.Slide$5, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass5 extends CalculateSlideHorizontal {
    }

    /* renamed from: androidx.transition.Slide$6, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass6 extends CalculateSlideVertical {
    }

    /* loaded from: classes.dex */
    public interface CalculateSlide {
    }

    /* loaded from: classes.dex */
    public static abstract class CalculateSlideHorizontal implements CalculateSlide {
    }

    /* loaded from: classes.dex */
    public static abstract class CalculateSlideVertical implements CalculateSlide {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface GravityFlag {
    }

    static {
        new DecelerateInterpolator();
        new AccelerateInterpolator();
    }

    @Override // androidx.transition.Visibility
    public final Animator Q(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        if (transitionValues2 == null) {
            return null;
        }
        view.getTranslationX();
        view.getTranslationY();
        throw null;
    }

    @Override // androidx.transition.Visibility
    public final Animator R(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        if (transitionValues == null) {
            return null;
        }
        view.getTranslationX();
        view.getTranslationY();
        throw null;
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    public final void e(TransitionValues transitionValues) {
        Visibility.O(transitionValues);
        int[] iArr = new int[2];
        transitionValues.b.getLocationOnScreen(iArr);
        transitionValues.f1712a.put("android:slide:screenPosition", iArr);
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    public final void h(TransitionValues transitionValues) {
        Visibility.O(transitionValues);
        int[] iArr = new int[2];
        transitionValues.b.getLocationOnScreen(iArr);
        transitionValues.f1712a.put("android:slide:screenPosition", iArr);
    }
}
