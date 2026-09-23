package com.google.android.material.animation;

import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.support.v4.media.a;

/* loaded from: classes3.dex */
public class MotionTiming {

    /* renamed from: a, reason: collision with root package name */
    public long f11637a;

    /* renamed from: c, reason: collision with root package name */
    public TimeInterpolator f11638c = null;
    public int d = 0;
    public int e = 1;
    public long b = 150;

    public MotionTiming(long j) {
        this.f11637a = j;
    }

    public final void a(ObjectAnimator objectAnimator) {
        objectAnimator.setStartDelay(this.f11637a);
        objectAnimator.setDuration(this.b);
        objectAnimator.setInterpolator(b());
        objectAnimator.setRepeatCount(this.d);
        objectAnimator.setRepeatMode(this.e);
    }

    public final TimeInterpolator b() {
        TimeInterpolator timeInterpolator = this.f11638c;
        if (timeInterpolator != null) {
            return timeInterpolator;
        }
        return AnimationUtils.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MotionTiming)) {
            return false;
        }
        MotionTiming motionTiming = (MotionTiming) obj;
        if (this.f11637a != motionTiming.f11637a || this.b != motionTiming.b || this.d != motionTiming.d || this.e != motionTiming.e) {
            return false;
        }
        return b().getClass().equals(motionTiming.b().getClass());
    }

    public final int hashCode() {
        long j = this.f11637a;
        long j2 = this.b;
        return ((((b().getClass().hashCode() + (((((int) (j ^ (j >>> 32))) * 31) + ((int) ((j2 >>> 32) ^ j2))) * 31)) * 31) + this.d) * 31) + this.e;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("\n");
        sb.append(getClass().getName());
        sb.append('{');
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" delay: ");
        sb.append(this.f11637a);
        sb.append(" duration: ");
        sb.append(this.b);
        sb.append(" interpolator: ");
        sb.append(b().getClass());
        sb.append(" repeatCount: ");
        sb.append(this.d);
        sb.append(" repeatMode: ");
        return a.g(this.e, "}\n", sb);
    }
}
