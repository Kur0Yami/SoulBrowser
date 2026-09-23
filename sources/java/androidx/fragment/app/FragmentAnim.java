package androidx.fragment.app;

import android.R;
import android.animation.Animator;
import android.content.Context;
import android.content.res.TypedArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.Transformation;
import androidx.core.view.OneShotPreDrawListener;

/* loaded from: classes.dex */
class FragmentAnim {
    public static int a(Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(R.style.Animation.Activity, new int[]{i});
        int resourceId = obtainStyledAttributes.getResourceId(0, -1);
        obtainStyledAttributes.recycle();
        return resourceId;
    }

    /* loaded from: classes.dex */
    public static class AnimationOrAnimator {

        /* renamed from: a, reason: collision with root package name */
        public final Animation f1096a;
        public final Animator b;

        public AnimationOrAnimator(Animation animation) {
            this.f1096a = animation;
            this.b = null;
        }

        public AnimationOrAnimator(Animator animator) {
            this.f1096a = null;
            this.b = animator;
        }
    }

    /* loaded from: classes.dex */
    public static class EndViewTransitionAnimation extends AnimationSet implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public final ViewGroup f1097c;
        public final View f;
        public boolean g;
        public boolean h;
        public boolean i;

        public EndViewTransitionAnimation(Animation animation, ViewGroup viewGroup, View view) {
            super(false);
            this.i = true;
            this.f1097c = viewGroup;
            this.f = view;
            addAnimation(animation);
            viewGroup.post(this);
        }

        @Override // android.view.animation.AnimationSet, android.view.animation.Animation
        public final boolean getTransformation(long j, Transformation transformation) {
            this.i = true;
            if (this.g) {
                return !this.h;
            }
            if (!super.getTransformation(j, transformation)) {
                this.g = true;
                OneShotPreDrawListener.a(this.f1097c, this);
            }
            return true;
        }

        @Override // java.lang.Runnable
        public final void run() {
            boolean z = this.g;
            ViewGroup viewGroup = this.f1097c;
            if (!z && this.i) {
                this.i = false;
                viewGroup.post(this);
            } else {
                viewGroup.endViewTransition(this.f);
                this.h = true;
            }
        }

        @Override // android.view.animation.Animation
        public final boolean getTransformation(long j, Transformation transformation, float f) {
            this.i = true;
            if (this.g) {
                return !this.h;
            }
            if (!super.getTransformation(j, transformation, f)) {
                this.g = true;
                OneShotPreDrawListener.a(this.f1097c, this);
            }
            return true;
        }
    }
}
