package com.google.android.material.slider;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.a;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOverlay;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.SeekBar;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.core.math.MathUtils;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.widget.ExploreByTouchHelper;
import com.google.android.material.shape.CornerTreatment;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.slider.BaseOnChangeListener;
import com.google.android.material.slider.BaseOnSliderTouchListener;
import com.google.android.material.slider.BaseSlider;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.math.BigDecimal;
import java.math.MathContext;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.jvm.internal.IntCompanionObject;

/* loaded from: classes3.dex */
abstract class BaseSlider<S extends BaseSlider<S, L, T>, L extends BaseOnChangeListener<S>, T extends BaseOnSliderTouchListener<S>> extends View {
    public Drawable A;
    public boolean B;
    public ColorStateList C;
    public int D;
    public float E;
    public float F;
    public MotionEvent G;
    public LabelFormatter H;
    public boolean I;
    public float J;
    public float K;
    public ArrayList L;
    public int M;
    public int N;
    public float O;
    public float[] P;
    public int Q;
    public int R;
    public int S;
    public int T;
    public boolean U;
    public boolean V;
    public ColorStateList W;
    public ColorStateList a0;
    public ColorStateList b0;

    /* renamed from: c, reason: collision with root package name */
    public int f11930c;
    public ColorStateList c0;
    public ColorStateList d0;
    public ArrayList e0;
    public int f;
    public float f0;
    public int g;
    public int g0;
    public int h;
    public int i;
    public int j;
    public int k;
    public int l;
    public int m;
    public int n;
    public int o;
    public int p;
    public int q;
    public int r;
    public boolean s;
    public Drawable t;
    public boolean u;
    public Drawable v;
    public boolean w;
    public ColorStateList x;
    public Drawable y;
    public boolean z;

    /* renamed from: com.google.android.material.slider.BaseSlider$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 extends AnimatorListenerAdapter {
        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public class AccessibilityEventSender implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static class AccessibilityHelper extends ExploreByTouchHelper {
        @Override // androidx.customview.widget.ExploreByTouchHelper
        public final void l(ArrayList arrayList) {
            throw null;
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public final boolean o(int i, int i2) {
            throw null;
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public final void q(int i, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            accessibilityNodeInfoCompat.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.o);
            throw null;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class FullCornerDirection {

        /* renamed from: c, reason: collision with root package name */
        public static final FullCornerDirection f11931c;
        public static final /* synthetic */ FullCornerDirection[] f;

        /* JADX INFO: Fake field, exist only in values array */
        FullCornerDirection EF0;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.material.slider.BaseSlider$FullCornerDirection, java.lang.Enum] */
        static {
            Enum r0 = new Enum("BOTH", 0);
            ?? r1 = new Enum("LEFT", 1);
            f11931c = r1;
            f = new FullCornerDirection[]{r0, r1, new Enum("RIGHT", 2), new Enum("NONE", 3)};
        }

        public static FullCornerDirection valueOf(String str) {
            return (FullCornerDirection) Enum.valueOf(FullCornerDirection.class, str);
        }

        public static FullCornerDirection[] values() {
            return (FullCornerDirection[]) f.clone();
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    public @interface Orientation {
    }

    /* loaded from: classes3.dex */
    public static class SliderState extends View.BaseSavedState {
        public static final Parcelable.Creator<SliderState> CREATOR = new Object();

        /* renamed from: c, reason: collision with root package name */
        public float f11932c;
        public float f;
        public ArrayList g;
        public float h;
        public boolean i;

        /* renamed from: com.google.android.material.slider.BaseSlider$SliderState$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        public class AnonymousClass1 implements Parcelable.Creator<SliderState> {
            /* JADX WARN: Type inference failed for: r0v0, types: [android.view.View$BaseSavedState, com.google.android.material.slider.BaseSlider$SliderState] */
            @Override // android.os.Parcelable.Creator
            public final SliderState createFromParcel(Parcel parcel) {
                ?? baseSavedState = new View.BaseSavedState(parcel);
                baseSavedState.f11932c = parcel.readFloat();
                baseSavedState.f = parcel.readFloat();
                ArrayList arrayList = new ArrayList();
                baseSavedState.g = arrayList;
                parcel.readList(arrayList, Float.class.getClassLoader());
                baseSavedState.h = parcel.readFloat();
                baseSavedState.i = parcel.createBooleanArray()[0];
                return baseSavedState;
            }

            @Override // android.os.Parcelable.Creator
            public final SliderState[] newArray(int i) {
                return new SliderState[i];
            }
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeFloat(this.f11932c);
            parcel.writeFloat(this.f);
            parcel.writeList(this.g);
            parcel.writeFloat(this.h);
            parcel.writeBooleanArray(new boolean[]{this.i});
        }
    }

    public final int a() {
        int i = this.f / 2;
        int i2 = this.g;
        if (i2 != 1 && i2 != 3) {
            return i;
        }
        throw null;
    }

    public final void b(ColorStateList colorStateList) {
        colorStateList.getColorForState(getDrawableState(), colorStateList.getDefaultColor());
    }

    public boolean c() {
        return this.s;
    }

    public final boolean d(double d) {
        if (Math.abs(Math.round(r3) - new BigDecimal(Double.toString(d)).divide(new BigDecimal(Float.toString(this.O)), MathContext.DECIMAL64).doubleValue()) < 1.0E-4d) {
            return true;
        }
        return false;
    }

    @Override // android.view.View
    public boolean dispatchHoverEvent(MotionEvent motionEvent) {
        throw null;
    }

    @Override // android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        b(this.d0);
        throw null;
    }

    public final boolean e(MotionEvent motionEvent) {
        if (motionEvent.getToolType(0) != 3) {
            for (ViewParent parent = getParent(); parent instanceof ViewGroup; parent = parent.getParent()) {
                ViewGroup viewGroup = (ViewGroup) parent;
                if ((viewGroup.canScrollHorizontally(1) || viewGroup.canScrollHorizontally(-1)) && viewGroup.shouldDelayChildPressedState()) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean f(MotionEvent motionEvent) {
        if (motionEvent.getToolType(0) != 3) {
            for (ViewParent parent = getParent(); parent instanceof ViewGroup; parent = parent.getParent()) {
                ViewGroup viewGroup = (ViewGroup) parent;
                if ((viewGroup.canScrollVertically(1) || viewGroup.canScrollVertically(-1)) && viewGroup.shouldDelayChildPressedState()) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean g() {
        if (getLayoutDirection() == 1) {
            return true;
        }
        return false;
    }

    @Override // android.view.View
    public CharSequence getAccessibilityClassName() {
        return SeekBar.class.getName();
    }

    @VisibleForTesting
    public final int getAccessibilityFocusedVirtualViewId() {
        throw null;
    }

    public float getMinSeparation() {
        return 0.0f;
    }

    public int getTrackCornerSize() {
        int i = this.q;
        if (i == -1) {
            return this.h / 2;
        }
        return i;
    }

    @NonNull
    public List<Float> getValues() {
        return new ArrayList(this.L);
    }

    public boolean h() {
        if (this.f11930c == 1) {
            return true;
        }
        return false;
    }

    public final boolean i(int i) {
        int i2 = this.N;
        long j = i2 + i;
        long size = this.L.size() - 1;
        if (j < 0) {
            j = 0;
        } else if (j > size) {
            j = size;
        }
        int i3 = (int) j;
        this.N = i3;
        if (i3 == i2) {
            return false;
        }
        if (this.M != -1) {
            this.M = i3;
        }
        o();
        postInvalidate();
        return true;
    }

    public final void j(int i) {
        if (g() || h()) {
            if (i == Integer.MIN_VALUE) {
                i = Integer.MAX_VALUE;
            } else {
                i = -i;
            }
        }
        i(i);
    }

    public final float k(float f) {
        float f2 = this.J;
        float f3 = (f - f2) / (this.K - f2);
        if (!g() && !h()) {
            return f3;
        }
        return 1.0f - f3;
    }

    public boolean l() {
        boolean z;
        if (this.M == -1) {
            float f = this.f0;
            if (g() || h()) {
                f = 1.0f - f;
            }
            float f2 = this.K;
            float f3 = this.J;
            float a2 = a.a(f2, f3, f, f3);
            float z2 = z(a2);
            this.M = 0;
            float abs = Math.abs(((Float) this.L.get(0)).floatValue() - a2);
            for (int i = 1; i < this.L.size(); i++) {
                float abs2 = Math.abs(((Float) this.L.get(i)).floatValue() - a2);
                float z3 = z(((Float) this.L.get(i)).floatValue());
                if (Float.compare(abs2, abs) > 0) {
                    break;
                }
                if (g() || h() ? z3 - z2 > 0.0f : z3 - z2 < 0.0f) {
                    z = true;
                } else {
                    z = false;
                }
                if (Float.compare(abs2, abs) < 0) {
                    this.M = i;
                } else {
                    if (Float.compare(abs2, abs) != 0) {
                        continue;
                    } else {
                        if (Math.abs(z3 - z2) < 0) {
                            this.M = -1;
                            return false;
                        }
                        if (z) {
                            this.M = i;
                        }
                    }
                }
                abs = abs2;
            }
            if (this.M == -1) {
                return false;
            }
        }
        return true;
    }

    public final void m(ArrayList arrayList) {
        if (!arrayList.isEmpty()) {
            Collections.sort(arrayList);
            if (this.L.size() == arrayList.size() && this.L.equals(arrayList)) {
                return;
            }
            this.L = arrayList;
            this.V = true;
            this.N = 0;
            o();
            throw null;
        }
        throw new IllegalArgumentException("At least one value must be set");
    }

    public final void n() {
        double d;
        float floatValue;
        float floatValue2;
        float f = this.f0;
        float f2 = this.O;
        float f3 = 0.0f;
        if (f2 > 0.0f) {
            d = Math.round(f * r1) / ((int) ((this.K - this.J) / f2));
        } else {
            d = f;
        }
        if (g() || h()) {
            d = 1.0d - d;
        }
        float f4 = this.K;
        float f5 = (float) ((d * (f4 - r1)) + this.J);
        int i = this.M;
        this.N = i;
        if (Math.abs(f5 - ((Float) this.L.get(i)).floatValue()) < 1.0E-4d) {
            return;
        }
        float minSeparation = getMinSeparation();
        if (this.g0 == 0) {
            if (minSeparation != 0.0f) {
                float f6 = this.J;
                f3 = a.a(f6, this.K, (minSeparation - this.i) / this.T, f6);
            }
            minSeparation = f3;
        }
        if (g() || h()) {
            minSeparation = -minSeparation;
        }
        int i2 = i + 1;
        if (i2 >= this.L.size()) {
            floatValue = this.K;
        } else {
            floatValue = ((Float) this.L.get(i2)).floatValue() - minSeparation;
        }
        int i3 = i - 1;
        if (i3 < 0) {
            floatValue2 = this.J;
        } else {
            floatValue2 = minSeparation + ((Float) this.L.get(i3)).floatValue();
        }
        this.L.set(i, Float.valueOf(MathUtils.a(f5, floatValue2, floatValue)));
        throw null;
    }

    public final void o() {
        if ((getBackground() instanceof RippleDrawable) && getMeasuredWidth() > 0) {
            Drawable background = getBackground();
            if (background instanceof RippleDrawable) {
                float k = (k(((Float) this.L.get(this.N)).floatValue()) * this.T) + this.i;
                int a2 = a();
                float f = this.l;
                float[] fArr = {k - f, a2 - r3, k + f, a2 + r3};
                if (!h()) {
                    background.setHotspotBounds((int) fArr[0], (int) fArr[1], (int) fArr[2], (int) fArr[3]);
                    return;
                }
                throw null;
            }
        }
    }

    @Override // android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        isShown();
        getViewTreeObserver().addOnScrollChangedListener(null);
        getViewTreeObserver().addOnGlobalLayoutListener(null);
        throw null;
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        throw null;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        float[] fArr;
        if (this.V) {
            x();
            q();
        }
        super.onDraw(canvas);
        a();
        int i = this.T;
        float floatValue = ((Float) this.L.get(0)).floatValue();
        float floatValue2 = ((Float) a.c(1, this.L)).floatValue();
        if (this.L.size() == 1) {
            floatValue = this.J;
        }
        float k = k(floatValue);
        float k2 = k(floatValue2);
        if (c()) {
            float min = Math.min(0.5f, k2);
            k2 = Math.max(0.5f, k2);
            k = min;
        }
        if (!c() && (g() || h())) {
            fArr = new float[]{k2, k};
        } else {
            fArr = new float[]{k, k2};
        }
        if ((((fArr[0] * i) + this.i) - this.m) - (this.i - getTrackCornerSize()) > getTrackCornerSize() - this.m) {
            throw null;
        }
        throw null;
    }

    @Override // android.view.View
    public final void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        if (z) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 17) {
                        if (i == 66) {
                            j(IntCompanionObject.MIN_VALUE);
                            throw null;
                        }
                        throw null;
                    }
                    j(Integer.MAX_VALUE);
                    throw null;
                }
                i(IntCompanionObject.MIN_VALUE);
                throw null;
            }
            i(Integer.MAX_VALUE);
            throw null;
        }
        this.M = -1;
        throw null;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setVisibleToUser(false);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        Float valueOf;
        float floatValue;
        float floatValue2;
        if (!isEnabled()) {
            return super.onKeyDown(i, keyEvent);
        }
        if (this.L.size() == 1) {
            this.M = 0;
        }
        Boolean bool = null;
        if (this.M == -1) {
            if (i != 61) {
                if (i != 66) {
                    if (i != 81) {
                        if (i != 69) {
                            if (i != 70) {
                                switch (i) {
                                    case 21:
                                        j(-1);
                                        bool = Boolean.TRUE;
                                        break;
                                    case 22:
                                        j(1);
                                        bool = Boolean.TRUE;
                                        break;
                                }
                            }
                        } else {
                            i(-1);
                            bool = Boolean.TRUE;
                        }
                    }
                    i(1);
                    bool = Boolean.TRUE;
                }
                this.M = this.N;
                postInvalidate();
                bool = Boolean.TRUE;
            } else if (keyEvent.hasNoModifiers()) {
                bool = Boolean.valueOf(i(1));
            } else if (keyEvent.isShiftPressed()) {
                bool = Boolean.valueOf(i(-1));
            } else {
                bool = Boolean.FALSE;
            }
            if (bool != null) {
                return bool.booleanValue();
            }
            return super.onKeyDown(i, keyEvent);
        }
        boolean isLongPress = this.U | keyEvent.isLongPress();
        this.U = isLongPress;
        float f = 1.0f;
        float f2 = 0.0f;
        if (isLongPress) {
            float f3 = this.O;
            if (f3 != 0.0f) {
                f = f3;
            }
            if ((this.K - this.J) / f > 20) {
                f *= Math.round(r2 / r14);
            }
        } else {
            float f4 = this.O;
            if (f4 != 0.0f) {
                f = f4;
            }
        }
        if (i != 69) {
            if (i != 70 && i != 81) {
                switch (i) {
                    case 19:
                        if (h()) {
                            valueOf = Float.valueOf(f);
                            break;
                        }
                        valueOf = null;
                        break;
                    case 20:
                        if (h()) {
                            valueOf = Float.valueOf(-f);
                            break;
                        }
                        valueOf = null;
                        break;
                    case 21:
                        if (!g()) {
                            f = -f;
                        }
                        valueOf = Float.valueOf(f);
                        break;
                    case 22:
                        if (g()) {
                            f = -f;
                        }
                        valueOf = Float.valueOf(f);
                        break;
                    default:
                        valueOf = null;
                        break;
                }
            } else {
                valueOf = Float.valueOf(f);
            }
        } else {
            valueOf = Float.valueOf(-f);
        }
        if (valueOf != null) {
            float floatValue3 = valueOf.floatValue() + ((Float) this.L.get(this.M)).floatValue();
            int i2 = this.M;
            this.N = i2;
            if (Math.abs(floatValue3 - ((Float) this.L.get(i2)).floatValue()) < 1.0E-4d) {
                return true;
            }
            float minSeparation = getMinSeparation();
            if (this.g0 == 0) {
                if (minSeparation != 0.0f) {
                    float f5 = this.J;
                    f2 = a.a(f5, this.K, (minSeparation - this.i) / this.T, f5);
                }
                minSeparation = f2;
            }
            if (g() || h()) {
                minSeparation = -minSeparation;
            }
            int i3 = i2 + 1;
            if (i3 >= this.L.size()) {
                floatValue = this.K;
            } else {
                floatValue = ((Float) this.L.get(i3)).floatValue() - minSeparation;
            }
            int i4 = i2 - 1;
            if (i4 < 0) {
                floatValue2 = this.J;
            } else {
                floatValue2 = minSeparation + ((Float) this.L.get(i4)).floatValue();
            }
            this.L.set(i2, Float.valueOf(MathUtils.a(floatValue3, floatValue2, floatValue)));
            throw null;
        }
        if (i != 23) {
            if (i != 61) {
                if (i != 66) {
                    return super.onKeyDown(i, keyEvent);
                }
            } else {
                if (keyEvent.hasNoModifiers()) {
                    return i(1);
                }
                if (!keyEvent.isShiftPressed()) {
                    return false;
                }
                return i(-1);
            }
        }
        this.M = -1;
        postInvalidate();
        return true;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        this.U = false;
        return super.onKeyUp(i, keyEvent);
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int i3 = this.g;
        if (i3 != 1 && i3 != 3) {
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.f, 1073741824);
            if (h()) {
                super.onMeasure(makeMeasureSpec, i2);
                return;
            } else {
                super.onMeasure(i, makeMeasureSpec);
                return;
            }
        }
        throw null;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SliderState sliderState = (SliderState) parcelable;
        super.onRestoreInstanceState(sliderState.getSuperState());
        this.J = sliderState.f11932c;
        this.K = sliderState.f;
        m(sliderState.g);
        this.O = sliderState.h;
        if (sliderState.i) {
            requestFocus();
        }
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [android.view.View$BaseSavedState, android.os.Parcelable, com.google.android.material.slider.BaseSlider$SliderState] */
    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        ?? baseSavedState = new View.BaseSavedState(super.onSaveInstanceState());
        baseSavedState.f11932c = this.J;
        baseSavedState.f = this.K;
        baseSavedState.g = new ArrayList(this.L);
        baseSavedState.h = this.O;
        baseSavedState.i = hasFocus();
        return baseSavedState;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        if (h()) {
            i = i2;
        }
        this.T = Math.max(i - (this.i * 2), 0);
        q();
        o();
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x004f, code lost:
    
        if (r3 != 3) goto L79;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r8) {
        /*
            Method dump skipped, instructions count: 334
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.slider.BaseSlider.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i) {
        ViewOverlay overlay;
        super.onVisibilityChanged(view, i);
        if (i != 0) {
            View rootView = getRootView();
            ViewGroup viewGroup = (ViewGroup) rootView.findViewById(R.id.content);
            if (viewGroup == null) {
                if (rootView != this && (rootView instanceof ViewGroup)) {
                    viewGroup = (ViewGroup) rootView;
                } else {
                    viewGroup = null;
                }
            }
            if (viewGroup == null) {
                overlay = null;
            } else {
                overlay = viewGroup.getOverlay();
            }
            if (overlay != null) {
                throw null;
            }
        }
    }

    public final void p() {
        int i = this.m;
        if (i > 0) {
            int i2 = this.j;
            this.n = i2;
            this.o = i;
            int round = Math.round(i2 * 0.5f);
            int i3 = this.j - round;
            setThumbWidth(round);
            setThumbTrackGapSize(this.m - (i3 / 2));
        }
    }

    public final void q() {
        x();
        float f = this.O;
        int i = 0;
        if (f <= 0.0f) {
            r(0);
            return;
        }
        int i2 = this.Q;
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    throw new IllegalStateException("Unexpected tickVisibilityMode: " + this.Q);
                }
            } else {
                int i3 = (int) (((this.K - this.J) / f) + 1.0f);
                if (i3 <= (this.T / 0) + 1) {
                    i = i3;
                }
            }
        } else {
            i = Math.min((int) (((this.K - this.J) / f) + 1.0f), (this.T / 0) + 1);
        }
        r(i);
    }

    public final void r(int i) {
        if (i == 0) {
            this.P = null;
            return;
        }
        float[] fArr = this.P;
        if (fArr == null || fArr.length != i * 2) {
            this.P = new float[i * 2];
        }
        float f = this.T / (i - 1);
        float a2 = a();
        for (int i2 = 0; i2 < i * 2; i2 += 2) {
            float[] fArr2 = this.P;
            fArr2[i2] = ((i2 / 2.0f) * f) + this.i;
            fArr2[i2 + 1] = a2;
        }
        if (h()) {
            throw null;
        }
    }

    public final void s() {
        Drawable drawable = this.v;
        if (drawable != null) {
            if (!this.w && this.x != null) {
                this.v = drawable.mutate();
                this.w = true;
            }
            if (this.w) {
                this.v.setTintList(this.x);
            }
        }
    }

    public void setActiveThumbIndex(int i) {
        this.M = i;
    }

    public void setCentered(boolean z) {
        if (this.s == z) {
            return;
        }
        this.s = z;
        if (z) {
            setValues(Float.valueOf((this.J + this.K) / 2.0f));
        } else {
            setValues(Float.valueOf(this.J));
        }
        w();
    }

    public void setCustomThumbDrawable(Drawable drawable) {
        Drawable newDrawable = drawable.mutate().getConstantState().newDrawable();
        int intrinsicWidth = newDrawable.getIntrinsicWidth();
        int intrinsicHeight = newDrawable.getIntrinsicHeight();
        if (intrinsicWidth == -1 && intrinsicHeight == -1) {
            newDrawable.setBounds(0, 0, this.j, this.k);
        } else {
            float max = Math.max(this.j, this.k) / Math.max(intrinsicWidth, intrinsicHeight);
            newDrawable.setBounds(0, 0, (int) (intrinsicWidth * max), (int) (intrinsicHeight * max));
        }
        this.e0.clear();
        postInvalidate();
    }

    public void setCustomThumbDrawablesForValues(@NonNull @DrawableRes int... iArr) {
        Drawable[] drawableArr = new Drawable[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            drawableArr[i] = getResources().getDrawable(iArr[i]);
        }
        setCustomThumbDrawablesForValues(drawableArr);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        int i;
        super.setEnabled(z);
        if (z) {
            i = 0;
        } else {
            i = 2;
        }
        setLayerType(i, null);
    }

    public void setHaloRadius(int i) {
        if (i == this.l) {
            return;
        }
        this.l = i;
        Drawable background = getBackground();
        if ((getBackground() instanceof RippleDrawable) && (background instanceof RippleDrawable)) {
            ((RippleDrawable) background).setRadius(this.l);
        } else {
            postInvalidate();
        }
    }

    public void setHaloTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.W)) {
            return;
        }
        this.W = colorStateList;
        Drawable background = getBackground();
        if ((getBackground() instanceof RippleDrawable) && (background instanceof RippleDrawable)) {
            ((RippleDrawable) background).setColor(colorStateList);
        } else {
            b(colorStateList);
            throw null;
        }
    }

    public void setSeparationUnit(int i) {
        this.g0 = i;
        this.V = true;
        postInvalidate();
    }

    public void setStepSize(float f) {
        if (f >= 0.0f) {
            if (this.O != f) {
                this.O = f;
                this.V = true;
                postInvalidate();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("The stepSize(" + f + ") must be 0, or a factor of the valueFrom(" + this.J + ")-valueTo(" + this.K + ") range");
    }

    public void setThumbHeight(int i) {
        if (i == this.k) {
            return;
        }
        this.k = i;
        throw null;
    }

    public void setThumbRadius(int i) {
        int i2 = i * 2;
        setThumbWidth(i2);
        setThumbHeight(i2);
    }

    public void setThumbTrackGapSize(int i) {
        if (this.m == i) {
            return;
        }
        this.m = i;
        invalidate();
    }

    public void setThumbWidth(int i) {
        if (i == this.j) {
            return;
        }
        this.j = i;
        ShapeAppearanceModel.Builder builder = new ShapeAppearanceModel.Builder();
        float f = this.j / 2.0f;
        CornerTreatment a2 = MaterialShapeUtils.a(0);
        builder.f11889a = a2;
        builder.b = a2;
        builder.f11890c = a2;
        builder.d = a2;
        builder.d(f);
        builder.e(f);
        builder.c(f);
        builder.b(f);
        builder.a();
        throw null;
    }

    public void setTickActiveTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.a0)) {
            return;
        }
        this.a0 = colorStateList;
        b(colorStateList);
        throw null;
    }

    public void setTickInactiveTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.b0)) {
            return;
        }
        this.b0 = colorStateList;
        b(colorStateList);
        throw null;
    }

    public void setTickVisibilityMode(int i) {
        if (this.Q != i) {
            this.Q = i;
            postInvalidate();
        }
    }

    public void setTrackActiveTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.c0)) {
            return;
        }
        this.c0 = colorStateList;
        b(colorStateList);
        throw null;
    }

    public void setTrackIconActiveEnd(Drawable drawable) {
        if (drawable == this.v) {
            return;
        }
        this.v = drawable;
        this.w = false;
        s();
        invalidate();
    }

    public void setTrackIconActiveStart(Drawable drawable) {
        if (drawable == this.t) {
            return;
        }
        this.t = drawable;
        this.u = false;
        t();
        invalidate();
    }

    public void setTrackIconInactiveEnd(Drawable drawable) {
        if (drawable == this.A) {
            return;
        }
        this.A = drawable;
        this.B = false;
        u();
        invalidate();
    }

    public void setTrackIconInactiveStart(Drawable drawable) {
        if (drawable == this.y) {
            return;
        }
        this.y = drawable;
        this.z = false;
        v();
        invalidate();
    }

    public void setTrackInactiveTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.d0)) {
            return;
        }
        this.d0 = colorStateList;
        b(colorStateList);
        throw null;
    }

    public void setValues(@NonNull Float... fArr) {
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, fArr);
        m(arrayList);
    }

    public final void t() {
        Drawable drawable = this.t;
        if (drawable != null) {
            if (!this.u && this.x != null) {
                this.t = drawable.mutate();
                this.u = true;
            }
            if (this.u) {
                this.t.setTintList(this.x);
            }
        }
    }

    public final void u() {
        Drawable drawable = this.A;
        if (drawable != null) {
            if (!this.B && this.C != null) {
                this.A = drawable.mutate();
                this.B = true;
            }
            if (this.B) {
                this.A.setTintList(this.C);
            }
        }
    }

    public final void v() {
        Drawable drawable = this.y;
        if (drawable != null) {
            if (!this.z && this.C != null) {
                this.y = drawable.mutate();
                this.z = true;
            }
            if (this.z) {
                this.y.setTintList(this.C);
            }
        }
    }

    public final void w() {
        int paddingTop;
        int paddingBottom;
        int width;
        if (h()) {
            paddingTop = getPaddingLeft();
            paddingBottom = getPaddingRight();
        } else {
            paddingTop = getPaddingTop();
            paddingBottom = getPaddingBottom();
        }
        int i = paddingBottom + paddingTop;
        int max = Math.max(0, Math.max(this.h + i, this.k + i));
        if (max != this.f) {
            this.f = max;
        }
        int max2 = Math.max(Math.max(Math.max(this.j / 2, 0), Math.max(this.h / 2, 0)), Math.max(Math.max(this.R, 0), Math.max(this.S, 0)));
        if (this.i != max2) {
            this.i = max2;
            if (isLaidOut()) {
                if (h()) {
                    width = getHeight();
                } else {
                    width = getWidth();
                }
                this.T = Math.max(width - (this.i * 2), 0);
                q();
            }
        }
        if (!h()) {
            requestLayout();
        } else {
            a();
            throw null;
        }
    }

    public final void x() {
        if (this.V) {
            if (this.J < this.K) {
                ArrayList arrayList = this.L;
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    Float f = (Float) obj;
                    if (f.floatValue() >= this.J && f.floatValue() <= this.K) {
                        if (this.O > 0.0f && !y(f.floatValue())) {
                            float f2 = this.J;
                            float f3 = this.O;
                            throw new IllegalStateException("Value(" + f + ") must be equal to valueFrom(" + f2 + ") plus a multiple of stepSize(" + f3 + ") when using stepSize(" + f3 + ")");
                        }
                    } else {
                        throw new IllegalStateException("Slider value(" + f + ") must be greater or equal to valueFrom(" + this.J + "), and lower or equal to valueTo(" + this.K + ")");
                    }
                }
                if (this.O > 0.0f && !y(this.K)) {
                    throw new IllegalStateException("The stepSize(" + this.O + ") must be 0, or a factor of the valueFrom(" + this.J + ")-valueTo(" + this.K + ") range");
                }
                float minSeparation = getMinSeparation();
                if (minSeparation >= 0.0f) {
                    float f4 = this.O;
                    if (f4 > 0.0f && minSeparation > 0.0f) {
                        if (this.g0 == 1) {
                            if (minSeparation < f4 || !d(minSeparation)) {
                                float f5 = this.O;
                                throw new IllegalStateException("minSeparation(" + minSeparation + ") must be greater or equal and a multiple of stepSize(" + f5 + ") when using stepSize(" + f5 + ")");
                            }
                        } else {
                            throw new IllegalStateException("minSeparation(" + minSeparation + ") cannot be set as a dimension when using stepSize(" + this.O + ")");
                        }
                    }
                    float f6 = this.O;
                    if (f6 != 0.0f) {
                        if (((int) f6) != f6) {
                            Log.w("BaseSlider", "Floating point value used for stepSize(" + f6 + "). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the value correctly.");
                        }
                        float f7 = this.J;
                        if (((int) f7) != f7) {
                            Log.w("BaseSlider", "Floating point value used for valueFrom(" + f7 + "). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the value correctly.");
                        }
                        float f8 = this.K;
                        if (((int) f8) != f8) {
                            Log.w("BaseSlider", "Floating point value used for valueTo(" + f8 + "). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the value correctly.");
                        }
                    }
                    this.V = false;
                    return;
                }
                throw new IllegalStateException("minSeparation(" + minSeparation + ") must be greater or equal to 0");
            }
            throw new IllegalStateException("valueFrom(" + this.J + ") must be smaller than valueTo(" + this.K + ")");
        }
    }

    public final boolean y(float f) {
        return d(new BigDecimal(Float.toString(f)).subtract(new BigDecimal(Float.toString(this.J)), MathContext.DECIMAL64).doubleValue());
    }

    public final float z(float f) {
        return (k(f) * this.T) + this.i;
    }

    public void setValues(@NonNull List<Float> list) {
        m(new ArrayList(list));
    }

    public void setCustomThumbDrawablesForValues(@NonNull Drawable... drawableArr) {
        this.e0 = new ArrayList();
        for (Drawable drawable : drawableArr) {
            ArrayList arrayList = this.e0;
            Drawable newDrawable = drawable.mutate().getConstantState().newDrawable();
            int intrinsicWidth = newDrawable.getIntrinsicWidth();
            int intrinsicHeight = newDrawable.getIntrinsicHeight();
            if (intrinsicWidth == -1 && intrinsicHeight == -1) {
                newDrawable.setBounds(0, 0, this.j, this.k);
            } else {
                float max = Math.max(this.j, this.k) / Math.max(intrinsicWidth, intrinsicHeight);
                newDrawable.setBounds(0, 0, (int) (intrinsicWidth * max), (int) (intrinsicHeight * max));
            }
            arrayList.add(newDrawable);
        }
        postInvalidate();
    }
}
