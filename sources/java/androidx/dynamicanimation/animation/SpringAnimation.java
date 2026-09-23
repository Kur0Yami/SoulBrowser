package androidx.dynamicanimation.animation;

import android.util.AndroidRuntimeException;
import androidx.dynamicanimation.animation.AnimationHandler;
import androidx.dynamicanimation.animation.DynamicAnimation;
import com.google.android.material.shape.Shapeable;

/* loaded from: classes.dex */
public final class SpringAnimation extends DynamicAnimation<SpringAnimation> {
    public SpringForce r;
    public float s;
    public boolean t;

    public SpringAnimation(Shapeable shapeable, FloatPropertyCompat floatPropertyCompat) {
        super(shapeable, floatPropertyCompat);
        this.r = null;
        this.s = Float.MAX_VALUE;
        this.t = false;
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    public final boolean d(long j) {
        if (this.t) {
            float f = this.s;
            if (f != Float.MAX_VALUE) {
                this.r.i = f;
                this.s = Float.MAX_VALUE;
            }
            this.b = (float) this.r.i;
            this.f990a = 0.0f;
            this.t = false;
            return true;
        }
        if (this.s != Float.MAX_VALUE) {
            long j2 = j / 2;
            DynamicAnimation.MassState c2 = this.r.c(this.b, this.f990a, j2);
            SpringForce springForce = this.r;
            springForce.i = this.s;
            this.s = Float.MAX_VALUE;
            DynamicAnimation.MassState c3 = springForce.c(c2.f992a, c2.b, j2);
            this.b = c3.f992a;
            this.f990a = c3.b;
        } else {
            DynamicAnimation.MassState c4 = this.r.c(this.b, this.f990a, j);
            this.b = c4.f992a;
            this.f990a = c4.b;
        }
        float max = Math.max(this.b, this.g);
        this.b = max;
        this.b = Math.min(max, Float.MAX_VALUE);
        float f2 = this.f990a;
        SpringForce springForce2 = this.r;
        springForce2.getClass();
        if (Math.abs(f2) >= springForce2.e || Math.abs(r1 - ((float) springForce2.i)) >= springForce2.d) {
            return false;
        }
        this.b = (float) this.r.i;
        this.f990a = 0.0f;
        return true;
    }

    public final void e(float f) {
        if (this.f) {
            this.s = f;
            return;
        }
        if (this.r == null) {
            this.r = new SpringForce(f);
        }
        SpringForce springForce = this.r;
        double d = f;
        springForce.i = d;
        double d2 = (float) d;
        if (d2 <= Float.MAX_VALUE) {
            float f2 = this.g;
            if (d2 >= f2) {
                double abs = Math.abs(this.i * 0.75f);
                springForce.d = abs;
                springForce.e = abs * 62.5d;
                if (((AnimationHandler.FrameCallbackScheduler16) DynamicAnimation.b().e).a()) {
                    boolean z = this.f;
                    if (!z && !z) {
                        this.f = true;
                        if (!this.f991c) {
                            this.b = this.e.a(this.d);
                        }
                        float f3 = this.b;
                        if (f3 <= Float.MAX_VALUE && f3 >= f2) {
                            DynamicAnimation.b().a(this);
                            return;
                        }
                        throw new IllegalArgumentException("Starting value need to be in between min value and max value");
                    }
                    return;
                }
                throw new AndroidRuntimeException("Animations may only be started on the same thread as the animation handler");
            }
            throw new UnsupportedOperationException("Final position of the spring cannot be less than the min value.");
        }
        throw new UnsupportedOperationException("Final position of the spring cannot be greater than the max value.");
    }

    public final void f() {
        if (this.r.b > 0.0d) {
            if (((AnimationHandler.FrameCallbackScheduler16) DynamicAnimation.b().e).a()) {
                if (this.f) {
                    this.t = true;
                    return;
                }
                return;
            }
            throw new AndroidRuntimeException("Animations may only be started on the same thread as the animation handler");
        }
        throw new UnsupportedOperationException("Spring animations can only come to an end when there is damping");
    }
}
