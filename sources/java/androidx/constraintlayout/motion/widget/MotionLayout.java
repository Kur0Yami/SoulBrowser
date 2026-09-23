package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Bundle;
import android.util.Log;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;
import androidx.constraintlayout.motion.widget.MotionScene;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintLayoutStates;
import androidx.core.view.NestedScrollingParent3;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class MotionLayout extends ConstraintLayout implements NestedScrollingParent3 {
    public static final /* synthetic */ int i0 = 0;
    public int A;
    public int B;
    public int C;
    public int D;
    public boolean E;
    public float F;
    public float G;
    public float H;
    public long I;
    public float J;
    public boolean K;
    public boolean L;
    public TransitionListener M;
    public int N;
    public DesignTool O;
    public int P;
    public int Q;
    public boolean R;
    public long S;
    public boolean T;
    public int U;
    public long V;
    public float W;
    public int a0;
    public float b0;
    public float c0;
    public boolean d0;
    public StateCache e0;
    public boolean f0;
    public TransitionState g0;
    public boolean h0;
    public MotionScene w;
    public Interpolator x;
    public float y;
    public int z;

    /* renamed from: androidx.constraintlayout.motion.widget.MotionLayout$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
            throw null;
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.MotionLayout$2, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass2 implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
            throw null;
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.MotionLayout$3, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass3 implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
            throw null;
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.MotionLayout$5, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass5 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f565a;

        static {
            int[] iArr = new int[TransitionState.values().length];
            f565a = iArr;
            try {
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f565a[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f565a[2] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f565a[3] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* loaded from: classes.dex */
    public class DecelerateInterpolator extends MotionInterpolator {
        @Override // android.animation.TimeInterpolator
        public final float getInterpolation(float f) {
            throw null;
        }
    }

    /* loaded from: classes.dex */
    public class DevModeDraw {
    }

    /* loaded from: classes.dex */
    public class Model {
    }

    /* loaded from: classes.dex */
    public interface MotionTracker {
    }

    /* loaded from: classes.dex */
    public static class MyTracker implements MotionTracker {
    }

    /* loaded from: classes.dex */
    public class StateCache {

        /* renamed from: a, reason: collision with root package name */
        public float f566a = Float.NaN;
        public float b = Float.NaN;

        /* renamed from: c, reason: collision with root package name */
        public int f567c = -1;
        public int d = -1;

        public StateCache() {
        }

        public final void a() {
            int i = this.f567c;
            MotionLayout motionLayout = MotionLayout.this;
            if (i != -1 || this.d != -1) {
                TransitionState transitionState = TransitionState.f568c;
                if (i == -1) {
                    motionLayout.u(this.d);
                } else {
                    int i2 = this.d;
                    if (i2 == -1) {
                        motionLayout.setState(transitionState);
                        motionLayout.A = i;
                        motionLayout.z = -1;
                        motionLayout.B = -1;
                        ConstraintLayoutStates constraintLayoutStates = motionLayout.o;
                        if (constraintLayoutStates != null) {
                            float f = -1;
                            constraintLayoutStates.b(f, f, i);
                        } else if (motionLayout.w != null) {
                            throw null;
                        }
                    } else {
                        motionLayout.t(i, i2);
                    }
                }
                motionLayout.setState(transitionState);
            }
            if (Float.isNaN(this.b)) {
                if (Float.isNaN(this.f566a)) {
                    return;
                }
                motionLayout.setProgress(this.f566a);
            } else {
                motionLayout.s(this.f566a, this.b);
                this.f566a = Float.NaN;
                this.b = Float.NaN;
                this.f567c = -1;
                this.d = -1;
            }
        }
    }

    /* loaded from: classes.dex */
    public interface TransitionListener {
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public static final class TransitionState {

        /* renamed from: c, reason: collision with root package name */
        public static final TransitionState f568c;
        public static final TransitionState f;
        public static final TransitionState g;
        public static final /* synthetic */ TransitionState[] h;

        /* JADX INFO: Fake field, exist only in values array */
        TransitionState EF0;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v1, types: [androidx.constraintlayout.motion.widget.MotionLayout$TransitionState, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r3v1, types: [androidx.constraintlayout.motion.widget.MotionLayout$TransitionState, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r5v1, types: [androidx.constraintlayout.motion.widget.MotionLayout$TransitionState, java.lang.Enum] */
        static {
            Enum r0 = new Enum("UNDEFINED", 0);
            ?? r1 = new Enum("SETUP", 1);
            f568c = r1;
            ?? r3 = new Enum("MOVING", 2);
            f = r3;
            ?? r5 = new Enum("FINISHED", 3);
            g = r5;
            h = new TransitionState[]{r0, r1, r3, r5};
        }

        public static TransitionState valueOf(String str) {
            return (TransitionState) Enum.valueOf(TransitionState.class, str);
        }

        public static TransitionState[] values() {
            return (TransitionState[]) h.clone();
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        throw null;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    public final void f(int i) {
        this.o = null;
    }

    public int[] getConstraintSetIds() {
        MotionScene motionScene = this.w;
        if (motionScene == null) {
            return null;
        }
        motionScene.getClass();
        throw null;
    }

    public int getCurrentState() {
        return this.A;
    }

    public ArrayList<MotionScene.Transition> getDefinedTransitions() {
        MotionScene motionScene = this.w;
        if (motionScene == null) {
            return null;
        }
        motionScene.getClass();
        return null;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, androidx.constraintlayout.motion.widget.DesignTool] */
    public DesignTool getDesignTool() {
        if (this.O == null) {
            this.O = new Object();
        }
        return this.O;
    }

    public int getEndState() {
        return this.B;
    }

    public long getNanoTime() {
        return System.nanoTime();
    }

    public float getProgress() {
        return this.H;
    }

    public int getStartState() {
        return this.z;
    }

    public float getTargetPosition() {
        return this.J;
    }

    public Bundle getTransitionState() {
        if (this.e0 == null) {
            this.e0 = new StateCache();
        }
        StateCache stateCache = this.e0;
        MotionLayout motionLayout = MotionLayout.this;
        stateCache.d = motionLayout.B;
        stateCache.f567c = motionLayout.z;
        stateCache.b = motionLayout.getVelocity();
        stateCache.f566a = motionLayout.getProgress();
        StateCache stateCache2 = this.e0;
        stateCache2.getClass();
        Bundle bundle = new Bundle();
        bundle.putFloat("motion.progress", stateCache2.f566a);
        bundle.putFloat("motion.velocity", stateCache2.b);
        bundle.putInt("motion.StartState", stateCache2.f567c);
        bundle.putInt("motion.EndState", stateCache2.d);
        return bundle;
    }

    public long getTransitionTimeMs() {
        if (this.w != null) {
            this.F = r0.a() / 1000.0f;
        }
        return this.F * 1000.0f;
    }

    public float getVelocity() {
        return this.y;
    }

    public final void i(float f) {
        if (this.w != null) {
            float f2 = this.H;
            float f3 = this.G;
            if (f2 != f3 && this.K) {
                this.H = f3;
            }
            float f4 = this.H;
            if (f4 == f) {
                return;
            }
            this.J = f;
            this.F = r0.a() / 1000.0f;
            setProgress(this.J);
            this.x = this.w.b();
            this.K = false;
            getNanoTime();
            this.L = true;
            this.G = f4;
            this.H = f4;
            invalidate();
        }
    }

    @Override // androidx.core.view.NestedScrollingParent3
    public final void j(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        if (this.R || i != 0 || i2 != 0) {
            iArr[0] = iArr[0] + i3;
            iArr[1] = iArr[1] + i4;
        }
        this.R = false;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void k(View view, int i, int i2, int i3, int i4, int i5) {
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final boolean l(View view, View view2, int i, int i2) {
        return false;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void m(View view, View view2, int i, int i2) {
        this.S = getNanoTime();
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void n(View view, int i) {
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void o(View view, int i, int i2, int[] iArr, int i3) {
        boolean z;
        char c2;
        float f;
        int i4;
        MotionScene motionScene = this.w;
        if (motionScene != null && motionScene.f569a != null) {
            float f2 = this.G;
            this.S = getNanoTime();
            if (f2 != this.G) {
                iArr[0] = i;
                iArr[1] = i2;
            }
            if (this.I == -1) {
                this.I = getNanoTime();
            }
            float f3 = this.H;
            if (f3 > 0.0f && f3 < 1.0f) {
                this.A = -1;
            }
            boolean z2 = true;
            boolean z3 = false;
            if (!this.T && (!this.L || this.J == f3)) {
                c2 = 0;
                f = 0.0f;
            } else {
                float signum = Math.signum(this.J - f3);
                long nanoTime = getNanoTime();
                float f4 = ((((float) (nanoTime - this.I)) * signum) * 1.0E-9f) / this.F;
                float f5 = this.H + f4;
                if (this.K) {
                    f5 = this.J;
                }
                if ((signum > 0.0f && f5 >= this.J) || (signum <= 0.0f && f5 <= this.J)) {
                    f5 = this.J;
                    this.L = false;
                }
                this.H = f5;
                this.G = f5;
                this.I = nanoTime;
                this.y = f4;
                if (Math.abs(f4) > 1.0E-5f) {
                    setState(TransitionState.f);
                }
                if ((signum > 0.0f && f5 >= this.J) || (signum <= 0.0f && f5 <= this.J)) {
                    f5 = this.J;
                    this.L = false;
                }
                TransitionState transitionState = TransitionState.g;
                if (f5 >= 1.0f || f5 <= 0.0f) {
                    this.L = false;
                    setState(transitionState);
                }
                int childCount = getChildCount();
                this.T = false;
                getNanoTime();
                this.c0 = f5;
                Interpolator interpolator = this.x;
                if (interpolator != null) {
                    interpolator.getInterpolation(f5);
                }
                Interpolator interpolator2 = this.x;
                if (interpolator2 != null) {
                    float interpolation = interpolator2.getInterpolation((signum / this.F) + f5);
                    this.y = interpolation;
                    this.y = interpolation - this.x.getInterpolation(f5);
                }
                if (childCount <= 0) {
                    if ((signum > 0.0f && f5 >= this.J) || (signum <= 0.0f && f5 <= this.J)) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (!this.T && !this.L && z) {
                        setState(transitionState);
                    }
                    boolean z4 = (!z) | this.T;
                    this.T = z4;
                    if (f5 > 0.0f || (i4 = this.z) == -1 || this.A == i4) {
                        c2 = 0;
                        f = 0.0f;
                        if (f5 >= 1.0d) {
                            int i5 = this.A;
                            int i6 = this.B;
                            if (i5 != i6) {
                                this.A = i6;
                                this.w.getClass();
                                throw null;
                            }
                        }
                        if (!z4 && !this.L) {
                            if ((signum > 0.0f && f5 == 1.0f) || (signum < 0.0f && f5 == 0.0f)) {
                                setState(transitionState);
                            }
                        } else {
                            invalidate();
                        }
                        if (!this.T && !this.L && ((signum > 0.0f && f5 == 1.0f) || (signum < 0.0f && f5 == 0.0f))) {
                            r();
                        }
                    } else {
                        this.A = i4;
                        this.w.getClass();
                        throw null;
                    }
                } else {
                    getChildAt(0);
                    throw null;
                }
            }
            float f6 = this.H;
            if (f6 >= 1.0f) {
                int i7 = this.A;
                int i8 = this.B;
                if (i7 == i8) {
                    z2 = false;
                }
                this.A = i8;
            } else {
                if (f6 <= f) {
                    int i9 = this.A;
                    int i10 = this.z;
                    if (i9 == i10) {
                        z2 = false;
                    }
                    this.A = i10;
                }
                this.h0 |= z3;
                if (z3 && !this.d0) {
                    requestLayout();
                }
                this.G = this.H;
                if (iArr[c2] == 0 || iArr[1] != 0) {
                    this.R = true;
                }
                return;
            }
            z3 = z2;
            this.h0 |= z3;
            if (z3) {
                requestLayout();
            }
            this.G = this.H;
            if (iArr[c2] == 0) {
            }
            this.R = true;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        Display display = getDisplay();
        if (display != null) {
            display.getRotation();
        }
        if (this.w != null && this.A != -1) {
            throw null;
        }
        r();
        StateCache stateCache = this.e0;
        if (this.f0) {
            post(new Runnable() { // from class: androidx.constraintlayout.motion.widget.MotionLayout.4
                @Override // java.lang.Runnable
                public final void run() {
                    MotionLayout.this.e0.a();
                }
            });
        } else {
            stateCache.a();
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        MotionScene motionScene = this.w;
        if (motionScene != null && this.E) {
            motionScene.getClass();
            MotionScene.Transition transition = this.w.f569a;
        }
        return false;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        MotionLayout motionLayout;
        this.d0 = true;
        try {
            if (this.w == null) {
                super.onLayout(z, i, i2, i3, i4);
                this.d0 = false;
                return;
            }
            motionLayout = this;
            int i5 = i3 - i;
            int i6 = i4 - i2;
            try {
                if (motionLayout.P == i5 && motionLayout.Q == i6) {
                    motionLayout.P = i5;
                    motionLayout.Q = i6;
                    motionLayout.d0 = false;
                    return;
                }
                throw null;
            } catch (Throwable th) {
                th = th;
                Throwable th2 = th;
                motionLayout.d0 = false;
                throw th2;
            }
        } catch (Throwable th3) {
            th = th3;
            motionLayout = this;
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        boolean z;
        if (this.w == null) {
            super.onMeasure(i, i2);
            return;
        }
        boolean z2 = true;
        if (this.C == i && this.D == i2) {
            z = false;
        } else {
            z = true;
        }
        if (!this.h0) {
            if (!this.l) {
                z2 = z;
            }
            this.C = i;
            this.D = i2;
            this.w.getClass();
            this.w.getClass();
            if (z2) {
                if (this.z == -1) {
                    if (z2) {
                        super.onMeasure(i, i2);
                    }
                    getPaddingTop();
                    getPaddingBottom();
                    getPaddingLeft();
                    getPaddingRight();
                    this.g.getClass();
                    float f = 0;
                    int i3 = (int) ((this.c0 * f) + f);
                    requestLayout();
                    int i4 = (int) ((this.c0 * f) + f);
                    requestLayout();
                    setMeasuredDimension(i3, i4);
                    float signum = Math.signum(this.J - this.H);
                    float nanoTime = this.H + (((((float) (getNanoTime() - this.I)) * signum) * 1.0E-9f) / this.F);
                    if (this.K) {
                        nanoTime = this.J;
                    }
                    if ((signum > 0.0f && nanoTime >= this.J) || (signum <= 0.0f && nanoTime <= this.J)) {
                        nanoTime = this.J;
                    }
                    if ((signum > 0.0f && nanoTime >= this.J) || (signum <= 0.0f && nanoTime <= this.J)) {
                        nanoTime = this.J;
                    }
                    this.c0 = nanoTime;
                    int childCount = getChildCount();
                    getNanoTime();
                    Interpolator interpolator = this.x;
                    if (interpolator != null) {
                        interpolator.getInterpolation(nanoTime);
                    }
                    if (childCount <= 0) {
                        return;
                    }
                    getChildAt(0);
                    throw null;
                }
                super.onMeasure(i, i2);
                this.w.getClass();
                throw null;
            }
            throw null;
        }
        this.h0 = false;
        r();
        this.M.getClass();
        throw null;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f, float f2, boolean z) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f, float f2) {
        return false;
    }

    @Override // android.view.View
    public final void onRtlPropertiesChanged(int i) {
        if (this.w != null) {
            e();
        }
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        MotionScene motionScene = this.w;
        if (motionScene != null && this.E) {
            motionScene.getClass();
            throw null;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public final void onViewAdded(View view) {
        super.onViewAdded(view);
        if (!(view instanceof MotionHelper)) {
            return;
        }
        throw null;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public final void onViewRemoved(View view) {
        super.onViewRemoved(view);
    }

    public final void p() {
        this.M.getClass();
        if (this.b0 != this.G) {
            if (this.a0 != -1) {
                throw null;
            }
            this.a0 = -1;
            this.b0 = this.G;
            throw null;
        }
    }

    public final void q() {
        this.M.getClass();
        if (this.a0 != -1) {
            this.M.getClass();
            throw null;
        }
        this.a0 = this.A;
        throw null;
    }

    public final void r() {
        if (this.w == null) {
        } else {
            throw null;
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View, android.view.ViewParent
    public final void requestLayout() {
        MotionScene motionScene;
        if (this.A == -1 && (motionScene = this.w) != null && motionScene.f569a != null) {
            return;
        }
        super.requestLayout();
    }

    public final void s(float f, float f2) {
        if (!super.isAttachedToWindow()) {
            StateCache stateCache = this.e0;
            stateCache.f566a = f;
            stateCache.b = f2;
        } else {
            setProgress(f);
            setState(TransitionState.f);
            this.y = f2;
            i(1.0f);
        }
    }

    public void setDebugMode(int i) {
        this.N = i;
        invalidate();
    }

    public void setDelayedApplicationOfInitialState(boolean z) {
        this.f0 = z;
    }

    public void setInteractionEnabled(boolean z) {
        this.E = z;
    }

    public void setInterpolatedProgress(float f) {
        if (this.w != null) {
            setState(TransitionState.f);
            setProgress(((AccelerateDecelerateInterpolator) this.w.b()).getInterpolation(f));
        } else {
            setProgress(f);
        }
    }

    public void setOnHide(float f) {
    }

    public void setOnShow(float f) {
    }

    public void setProgress(float f) {
        if (f < 0.0f || f > 1.0f) {
            Log.w("MotionLayout", "Warning! Progress is defined for values between 0.0 and 1.0 inclusive");
        }
        if (!super.isAttachedToWindow()) {
            this.e0.f566a = f;
            return;
        }
        TransitionState transitionState = TransitionState.g;
        TransitionState transitionState2 = TransitionState.f;
        if (f <= 0.0f) {
            if (this.H == 1.0f && this.A == this.B) {
                setState(transitionState2);
            }
            this.A = this.z;
            if (this.H == 0.0f) {
                setState(transitionState);
            }
        } else if (f >= 1.0f) {
            if (this.H == 0.0f && this.A == this.z) {
                setState(transitionState2);
            }
            this.A = this.B;
            if (this.H == 1.0f) {
                setState(transitionState);
            }
        } else {
            this.A = -1;
            setState(transitionState2);
        }
        if (this.w == null) {
            return;
        }
        this.K = true;
        this.J = f;
        this.G = f;
        this.I = -1L;
        this.L = true;
        invalidate();
    }

    public void setScene(MotionScene motionScene) {
        this.w = motionScene;
        e();
        motionScene.getClass();
        throw null;
    }

    public void setStartState(int i) {
        if (!super.isAttachedToWindow()) {
            if (this.e0 == null) {
                this.e0 = new StateCache();
            }
            StateCache stateCache = this.e0;
            stateCache.f567c = i;
            stateCache.d = i;
            return;
        }
        this.A = i;
    }

    public void setState(TransitionState transitionState) {
        TransitionState transitionState2 = TransitionState.g;
        if (transitionState != transitionState2 || this.A != -1) {
            TransitionState transitionState3 = this.g0;
            this.g0 = transitionState;
            TransitionState transitionState4 = TransitionState.f;
            if (transitionState3 == transitionState4 && transitionState == transitionState4) {
                p();
            }
            int ordinal = transitionState3.ordinal();
            if (ordinal != 0 && ordinal != 1) {
                if (ordinal == 2 && transitionState == transitionState2) {
                    q();
                    return;
                }
                return;
            }
            if (transitionState == transitionState4) {
                p();
            }
            if (transitionState == transitionState2) {
                q();
            }
        }
    }

    public void setTransition(int i) {
        MotionScene motionScene = this.w;
        if (motionScene == null) {
            return;
        }
        motionScene.getClass();
        throw null;
    }

    public void setTransitionDuration(int i) {
        MotionScene motionScene = this.w;
        if (motionScene == null) {
            Log.e("MotionLayout", "MotionScene not defined");
            return;
        }
        MotionScene.Transition transition = motionScene.f569a;
        if (transition != null) {
            transition.f570a = Math.max(i, 8);
        } else {
            motionScene.b = i;
        }
    }

    public void setTransitionListener(TransitionListener transitionListener) {
        this.M = transitionListener;
    }

    public void setTransitionState(Bundle bundle) {
        if (this.e0 == null) {
            this.e0 = new StateCache();
        }
        StateCache stateCache = this.e0;
        stateCache.getClass();
        stateCache.f566a = bundle.getFloat("motion.progress");
        stateCache.b = bundle.getFloat("motion.velocity");
        stateCache.f567c = bundle.getInt("motion.StartState");
        stateCache.d = bundle.getInt("motion.EndState");
        if (super.isAttachedToWindow()) {
            this.e0.a();
        }
    }

    public final void t(int i, int i2) {
        if (!super.isAttachedToWindow()) {
            StateCache stateCache = this.e0;
            stateCache.f567c = i;
            stateCache.d = i2;
            return;
        }
        MotionScene motionScene = this.w;
        if (motionScene == null) {
            return;
        }
        this.z = i;
        this.B = i2;
        if (motionScene.f569a != null) {
            if (i2 == 0) {
                if (i == 0) {
                    motionScene.getClass();
                    throw null;
                }
                throw null;
            }
            throw null;
        }
        throw null;
    }

    @Override // android.view.View
    public final String toString() {
        Context context = getContext();
        return Debug.a(context, this.z) + "->" + Debug.a(context, this.B) + " (pos:" + this.H + " Dpos/Dt:" + this.y;
    }

    public final void u(int i) {
        if (!super.isAttachedToWindow()) {
            this.e0.d = i;
            return;
        }
        int i2 = this.A;
        if (i2 != i) {
            if (this.z == i) {
                i(0.0f);
                return;
            }
            if (this.B == i) {
                i(1.0f);
                return;
            }
            this.B = i;
            if (i2 != -1) {
                t(i2, i);
                i(1.0f);
                this.H = 0.0f;
                i(1.0f);
                return;
            }
            this.J = 1.0f;
            this.G = 0.0f;
            this.H = 0.0f;
            this.I = getNanoTime();
            getNanoTime();
            this.K = false;
            this.F = this.w.a() / 1000.0f;
            this.z = -1;
            MotionScene.Transition transition = this.w.f569a;
            throw null;
        }
    }

    public void setTransition(MotionScene.Transition transition) {
        this.w.f569a = transition;
        setState(TransitionState.f568c);
        if (this.A == (this.w.f569a == null ? -1 : 0)) {
            this.H = 1.0f;
            this.G = 1.0f;
            this.J = 1.0f;
        } else {
            this.H = 0.0f;
            this.G = 0.0f;
            this.J = 0.0f;
        }
        transition.getClass();
        this.I = getNanoTime();
        MotionScene motionScene = this.w;
        MotionScene.Transition transition2 = motionScene.f569a;
        int i = transition2 == null ? -1 : 0;
        int i2 = transition2 == null ? -1 : 0;
        if (i == this.z && i2 == this.B) {
            return;
        }
        this.z = i;
        this.B = i2;
        if (transition2 == null) {
            throw null;
        }
        if (i2 != 0) {
            throw null;
        }
        if (i == 0) {
            motionScene.getClass();
            throw null;
        }
        throw null;
    }
}
