package androidx.constraintlayout.motion.widget;

import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;

/* loaded from: classes.dex */
public class MotionScene {

    /* renamed from: a, reason: collision with root package name */
    public Transition f569a;
    public int b;

    /* renamed from: androidx.constraintlayout.motion.widget.MotionScene$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 implements Interpolator {
        @Override // android.animation.TimeInterpolator
        public final float getInterpolation(float f) {
            throw null;
        }
    }

    /* loaded from: classes.dex */
    public static class Transition {

        /* renamed from: a, reason: collision with root package name */
        public int f570a;

        /* loaded from: classes.dex */
        public static class TransitionOnClick implements View.OnClickListener {
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                throw null;
            }
        }
    }

    public final int a() {
        Transition transition = this.f569a;
        if (transition != null) {
            return transition.f570a;
        }
        return this.b;
    }

    public final Interpolator b() {
        this.f569a.getClass();
        return new AccelerateDecelerateInterpolator();
    }
}
