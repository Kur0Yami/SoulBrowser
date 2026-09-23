package com.mycompany.app.lock;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.v4.media.a;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class PatternLock extends View {
    public static int J;
    public boolean A;
    public boolean B;
    public boolean C;
    public boolean D;
    public float E;
    public float F;
    public final Path G;
    public Interpolator H;
    public Interpolator I;

    /* renamed from: c, reason: collision with root package name */
    public DotState[][] f16338c;
    public int f;
    public long g;
    public final float h;
    public boolean i;
    public int j;
    public int k;
    public int l;
    public int m;
    public int n;
    public int o;
    public int p;
    public int q;
    public int r;
    public Paint s;
    public Paint t;
    public final ArrayList u;
    public ArrayList v;
    public boolean[][] w;
    public float x;
    public float y;
    public int z;

    /* loaded from: classes3.dex */
    public static class Dot implements Parcelable {
        public static final Parcelable.Creator<Dot> CREATOR;
        public static final Dot[][] g;

        /* renamed from: c, reason: collision with root package name */
        public int f16345c;
        public int f;

        /* renamed from: com.mycompany.app.lock.PatternLock$Dot$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        public class AnonymousClass1 implements Parcelable.Creator<Dot> {
            /* JADX WARN: Type inference failed for: r0v0, types: [com.mycompany.app.lock.PatternLock$Dot, java.lang.Object] */
            @Override // android.os.Parcelable.Creator
            public final Dot createFromParcel(Parcel parcel) {
                ?? obj = new Object();
                obj.f = parcel.readInt();
                obj.f16345c = parcel.readInt();
                return obj;
            }

            @Override // android.os.Parcelable.Creator
            public final Dot[] newArray(int i) {
                return new Dot[i];
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v6, types: [android.os.Parcelable$Creator<com.mycompany.app.lock.PatternLock$Dot>, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r4v0, types: [com.mycompany.app.lock.PatternLock$Dot, java.lang.Object] */
        static {
            int i = PatternLock.J;
            g = (Dot[][]) Array.newInstance((Class<?>) Dot.class, i, i);
            for (int i2 = 0; i2 < PatternLock.J; i2++) {
                for (int i3 = 0; i3 < PatternLock.J; i3++) {
                    Object[] objArr = g[i2];
                    ?? obj = new Object();
                    a(i2, i3);
                    obj.f16345c = i2;
                    obj.f = i3;
                    objArr[i3] = obj;
                }
            }
            CREATOR = new Object();
        }

        public static void a(int i, int i2) {
            if (i >= 0) {
                int i3 = PatternLock.J;
                if (i <= i3 - 1) {
                    if (i2 >= 0 && i2 <= i3 - 1) {
                        return;
                    }
                    StringBuilder sb = new StringBuilder("mColumn must be in range 0-");
                    sb.append(PatternLock.J - 1);
                    throw new IllegalArgumentException(sb.toString());
                }
            }
            StringBuilder sb2 = new StringBuilder("mRow must be in range 0-");
            sb2.append(PatternLock.J - 1);
            throw new IllegalArgumentException(sb2.toString());
        }

        public static synchronized Dot b(int i, int i2) {
            Dot dot;
            synchronized (Dot.class) {
                a(i, i2);
                dot = g[i][i2];
            }
            return dot;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof Dot) {
                Dot dot = (Dot) obj;
                if (this.f == dot.f && this.f16345c == dot.f16345c) {
                    return true;
                }
                return false;
            }
            return super.equals(obj);
        }

        public final int hashCode() {
            return (this.f16345c * 31) + this.f;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("(Row = ");
            sb.append(this.f16345c);
            sb.append(", Col = ");
            return a.g(this.f, ")", sb);
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f);
            parcel.writeInt(this.f16345c);
        }
    }

    /* loaded from: classes3.dex */
    public static class DotState {

        /* renamed from: a, reason: collision with root package name */
        public float f16346a;
        public float b = Float.MIN_VALUE;

        /* renamed from: c, reason: collision with root package name */
        public float f16347c = Float.MIN_VALUE;
        public ValueAnimator d;
    }

    /* loaded from: classes3.dex */
    public interface PatternLockListener {
        void a(ArrayList arrayList);

        void b();
    }

    public PatternLock(PatternActivity patternActivity) {
        super(patternActivity);
        this.h = 0.6f;
        this.x = -1.0f;
        this.y = -1.0f;
        this.z = 0;
        this.A = true;
        this.B = false;
        this.C = false;
        this.D = false;
        this.G = new Path();
        J = 3;
        this.i = true;
        this.j = 2;
        this.n = (int) MainUtil.G(patternActivity, 3.0f);
        this.o = (int) MainUtil.G(patternActivity, 10.0f);
        this.p = (int) MainUtil.G(patternActivity, 24.0f);
        this.q = 150;
        this.r = 100;
        if (MainApp.K1) {
            this.k = -1;
            this.m = -1;
            this.l = -765666;
        } else {
            this.k = -16777216;
            this.m = -16777216;
            this.l = -765666;
        }
        int i = J;
        this.f = i * i;
        this.v = new ArrayList(this.f);
        int i2 = J;
        this.w = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, i2, i2);
        int i3 = J;
        this.f16338c = (DotState[][]) Array.newInstance((Class<?>) DotState.class, i3, i3);
        for (int i4 = 0; i4 < J; i4++) {
            for (int i5 = 0; i5 < J; i5++) {
                DotState[][] dotStateArr = this.f16338c;
                dotStateArr[i4][i5] = new DotState();
                dotStateArr[i4][i5].f16346a = this.o;
            }
        }
        this.u = new ArrayList();
        g();
    }

    public static String h(PatternLock patternLock, List list) {
        if (patternLock != null && list != null) {
            int size = list.size();
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < size; i++) {
                Dot dot = (Dot) list.get(i);
                sb.append((patternLock.getDotCount() * dot.f16345c) + dot.f);
            }
            return sb.toString();
        }
        return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    public final void a(Dot dot) {
        PatternLock patternLock;
        boolean[][] zArr = this.w;
        int i = dot.f16345c;
        boolean[] zArr2 = zArr[i];
        int i2 = dot.f;
        zArr2[i2] = true;
        this.v.add(dot);
        if (!this.B) {
            final DotState dotState = this.f16338c[i][i2];
            j(this.o, this.p, this.q, this.I, dotState, new Runnable() { // from class: com.mycompany.app.lock.PatternLock.1
                @Override // java.lang.Runnable
                public final void run() {
                    PatternLock patternLock2 = PatternLock.this;
                    patternLock2.j(patternLock2.p, patternLock2.o, patternLock2.q, patternLock2.H, dotState, null);
                }
            });
            final float f = this.x;
            final float f2 = this.y;
            final float d = d(i2);
            final float e = e(i);
            ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            patternLock = this;
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.lock.PatternLock.2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    float f3 = 1.0f - floatValue;
                    float f4 = (d * floatValue) + (f * f3);
                    DotState dotState2 = dotState;
                    dotState2.b = f4;
                    dotState2.f16347c = (floatValue * e) + (f3 * f2);
                    PatternLock.this.invalidate();
                }
            });
            ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.mycompany.app.lock.PatternLock.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    DotState.this.d = null;
                }
            });
            ofFloat.setInterpolator(patternLock.H);
            ofFloat.setDuration(patternLock.r);
            ofFloat.start();
            dotState.d = ofFloat;
        } else {
            patternLock = this;
        }
        ArrayList arrayList = patternLock.u;
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
        }
    }

    public final void b() {
        for (int i = 0; i < J; i++) {
            for (int i2 = 0; i2 < J; i2++) {
                this.w[i][i2] = false;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00bf A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.mycompany.app.lock.PatternLock.Dot c(float r11, float r12) {
        /*
            Method dump skipped, instructions count: 192
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.lock.PatternLock.c(float, float):com.mycompany.app.lock.PatternLock$Dot");
    }

    public final float d(int i) {
        float paddingLeft = getPaddingLeft();
        float f = this.E;
        return (f / 2.0f) + (i * f) + paddingLeft;
    }

    public final float e(int i) {
        float paddingTop = getPaddingTop();
        float f = this.F;
        return (f / 2.0f) + (i * f) + paddingTop;
    }

    public final int f(boolean z) {
        if (z && !this.B && !this.D) {
            int i = this.z;
            if (i == 2) {
                return this.l;
            }
            if (i != 0 && i != 1) {
                throw new IllegalStateException("Unknown view mode " + this.z);
            }
            return this.m;
        }
        return this.k;
    }

    public final void g() {
        setClickable(true);
        Paint paint = new Paint();
        this.t = paint;
        paint.setAntiAlias(true);
        this.t.setColor(this.k);
        this.t.setStyle(Paint.Style.STROKE);
        this.t.setStrokeJoin(Paint.Join.ROUND);
        this.t.setStrokeCap(Paint.Cap.ROUND);
        this.t.setStrokeWidth(this.n);
        Paint paint2 = new Paint();
        this.s = paint2;
        paint2.setAntiAlias(true);
        if (!isInEditMode()) {
            this.H = AnimationUtils.loadInterpolator(getContext(), R.interpolator.fast_out_slow_in);
            this.I = AnimationUtils.loadInterpolator(getContext(), R.interpolator.linear_out_slow_in);
        }
    }

    public int getAspectRatio() {
        return this.j;
    }

    public int getCorrectStateColor() {
        return this.m;
    }

    public int getDotAnimationDuration() {
        return this.q;
    }

    public int getDotCount() {
        return J;
    }

    public int getDotNormalSize() {
        return this.o;
    }

    public int getDotSelectedSize() {
        return this.p;
    }

    public int getNormalStateColor() {
        return this.k;
    }

    public int getPathEndAnimationDuration() {
        return this.r;
    }

    public int getPathWidth() {
        return this.n;
    }

    public List<Dot> getPattern() {
        return (List) this.v.clone();
    }

    public int getPatternSize() {
        return this.f;
    }

    public int getPatternViewMode() {
        return this.z;
    }

    public int getWrongStateColor() {
        return this.l;
    }

    public final void i() {
        this.v.clear();
        b();
        this.z = 0;
        invalidate();
    }

    public final void j(float f, float f2, long j, Interpolator interpolator, final DotState dotState, final Runnable runnable) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(f, f2);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.lock.PatternLock.4
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                dotState.f16346a = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                PatternLock.this.invalidate();
            }
        });
        if (runnable != null) {
            ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.mycompany.app.lock.PatternLock.5
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    Runnable runnable2 = runnable;
                    if (runnable2 != null) {
                        runnable2.run();
                    }
                }
            });
        }
        ofFloat.setInterpolator(interpolator);
        ofFloat.setDuration(j);
        ofFloat.start();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        ArrayList arrayList = this.v;
        int size = arrayList.size();
        boolean[][] zArr = this.w;
        if (this.z == 1) {
            int elapsedRealtime = (((int) (SystemClock.elapsedRealtime() - this.g)) % ((size + 1) * 700)) / 700;
            b();
            for (int i = 0; i < elapsedRealtime; i++) {
                Dot dot = (Dot) arrayList.get(i);
                zArr[dot.f16345c][dot.f] = true;
            }
            if (elapsedRealtime > 0 && elapsedRealtime < size) {
                float f = (r8 % 700) / 700.0f;
                Dot dot2 = (Dot) arrayList.get(elapsedRealtime - 1);
                float d = d(dot2.f);
                float e = e(dot2.f16345c);
                Dot dot3 = (Dot) arrayList.get(elapsedRealtime);
                float d2 = (d(dot3.f) - d) * f;
                float e2 = (e(dot3.f16345c) - e) * f;
                this.x = d + d2;
                this.y = e + e2;
            }
            invalidate();
        }
        Path path = this.G;
        path.rewind();
        int i2 = 0;
        while (true) {
            float f2 = 1.0f;
            float f3 = 0.0f;
            if (i2 >= J) {
                break;
            }
            float e3 = e(i2);
            int i3 = 0;
            while (i3 < J) {
                DotState dotState = this.f16338c[i2][i3];
                float d3 = d(i3);
                float f4 = dotState.f16346a * f2;
                this.s.setColor(f(zArr[i2][i3]));
                this.s.setAlpha((int) 255.0f);
                canvas.drawCircle((int) d3, ((int) e3) + f3, f4 / 2.0f, this.s);
                i3++;
                f2 = 1.0f;
                f3 = 0.0f;
            }
            i2++;
        }
        if (!this.B) {
            this.t.setColor(f(true));
            int i4 = 0;
            float f5 = 0.0f;
            float f6 = 0.0f;
            boolean z = false;
            while (i4 < size) {
                Dot dot4 = (Dot) arrayList.get(i4);
                int i5 = dot4.f16345c;
                int i6 = dot4.f;
                if (!zArr[i5][i6]) {
                    break;
                }
                float d4 = d(i6);
                float e4 = e(i5);
                if (i4 != 0) {
                    DotState dotState2 = this.f16338c[i5][i6];
                    path.rewind();
                    path.moveTo(f5, f6);
                    float f7 = dotState2.b;
                    if (f7 != Float.MIN_VALUE) {
                        float f8 = dotState2.f16347c;
                        if (f8 != Float.MIN_VALUE) {
                            path.lineTo(f7, f8);
                            canvas.drawPath(path, this.t);
                        }
                    }
                    path.lineTo(d4, e4);
                    canvas.drawPath(path, this.t);
                }
                i4++;
                z = true;
                f5 = d4;
                f6 = e4;
            }
            if ((this.D || this.z == 1) && z) {
                path.rewind();
                path.moveTo(f5, f6);
                path.lineTo(this.x, this.y);
                Paint paint = this.t;
                float f9 = this.x - f5;
                float f10 = this.y - f6;
                paint.setAlpha((int) (Math.min(1.0f, Math.max(0.0f, ((((float) Math.sqrt((f10 * f10) + (f9 * f9))) / this.E) - 0.3f) * 4.0f)) * 255.0f));
                canvas.drawPath(path, this.t);
            }
        }
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        if (((AccessibilityManager) getContext().getSystemService("accessibility")).isTouchExplorationEnabled()) {
            int action = motionEvent.getAction();
            if (action != 7) {
                if (action != 9) {
                    if (action == 10) {
                        motionEvent.setAction(1);
                    }
                } else {
                    motionEvent.setAction(0);
                }
            } else {
                motionEvent.setAction(2);
            }
            onTouchEvent(motionEvent);
            motionEvent.setAction(action);
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (!this.i) {
            return;
        }
        int suggestedMinimumWidth = getSuggestedMinimumWidth();
        int size = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        if (mode != Integer.MIN_VALUE) {
            if (mode != 0) {
                suggestedMinimumWidth = size;
            }
        } else {
            suggestedMinimumWidth = Math.max(size, suggestedMinimumWidth);
        }
        int suggestedMinimumHeight = getSuggestedMinimumHeight();
        int size2 = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i2);
        if (mode2 != Integer.MIN_VALUE) {
            if (mode2 != 0) {
                suggestedMinimumHeight = size2;
            }
        } else {
            suggestedMinimumHeight = Math.max(size2, suggestedMinimumHeight);
        }
        int i3 = this.j;
        if (i3 != 0) {
            if (i3 != 1) {
                if (i3 == 2) {
                    suggestedMinimumWidth = Math.min(suggestedMinimumWidth, suggestedMinimumHeight);
                } else {
                    throw new IllegalStateException("Unknown aspect ratio");
                }
            } else {
                suggestedMinimumHeight = Math.min(suggestedMinimumWidth, suggestedMinimumHeight);
            }
        } else {
            suggestedMinimumWidth = Math.min(suggestedMinimumWidth, suggestedMinimumHeight);
            suggestedMinimumHeight = suggestedMinimumWidth;
        }
        setMeasuredDimension(suggestedMinimumWidth, suggestedMinimumHeight);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        try {
            SavedState savedState = (SavedState) parcelable;
            super.onRestoreInstanceState(savedState.getSuperState());
            String str = savedState.f16348c;
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < str.length(); i++) {
                int numericValue = Character.getNumericValue(str.charAt(i));
                arrayList.add(Dot.b(numericValue / getDotCount(), numericValue % getDotCount()));
            }
            this.v.clear();
            this.v.addAll(arrayList);
            b();
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                Dot dot = (Dot) obj;
                this.w[dot.f16345c][dot.f] = true;
            }
            setViewMode(0);
            this.z = savedState.f;
            this.A = savedState.g;
            this.B = savedState.h;
            this.C = savedState.i;
        } catch (Exception unused) {
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        return new SavedState(super.onSaveInstanceState(), h(this, this.v), this.z, this.A, this.B, this.C);
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        this.E = ((i - getPaddingLeft()) - getPaddingRight()) / J;
        this.F = ((i2 - getPaddingTop()) - getPaddingBottom()) / J;
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        float x;
        float y;
        boolean z;
        int i = 0;
        if (this.A && isEnabled()) {
            int action = motionEvent.getAction();
            boolean z2 = true;
            if (action != 0) {
                if (action != 1) {
                    if (action != 2) {
                        if (action == 3) {
                            this.D = false;
                            i();
                            ArrayList arrayList = this.u;
                            int size = arrayList.size();
                            while (i < size) {
                                Object obj = arrayList.get(i);
                                i++;
                            }
                            return true;
                        }
                    } else {
                        float f = this.n;
                        int historySize = motionEvent.getHistorySize();
                        int i2 = 0;
                        boolean z3 = false;
                        while (i2 < historySize + 1) {
                            if (i2 < historySize) {
                                x = motionEvent.getHistoricalX(i2);
                            } else {
                                x = motionEvent.getX();
                            }
                            if (i2 < historySize) {
                                y = motionEvent.getHistoricalY(i2);
                            } else {
                                y = motionEvent.getY();
                            }
                            Dot c2 = c(x, y);
                            int size2 = this.v.size();
                            if (c2 != null && size2 == z2) {
                                this.D = z2;
                                ArrayList arrayList2 = this.u;
                                int size3 = arrayList2.size();
                                int i3 = 0;
                                while (i3 < size3) {
                                    Object obj2 = arrayList2.get(i3);
                                    i3++;
                                    PatternLockListener patternLockListener = (PatternLockListener) obj2;
                                    if (patternLockListener != null) {
                                        patternLockListener.b();
                                    }
                                }
                            }
                            float abs = Math.abs(x - this.x);
                            float abs2 = Math.abs(y - this.y);
                            if (abs > 0.0f || abs2 > 0.0f) {
                                z3 = z2;
                            }
                            if (this.D && size2 > 0) {
                                Dot dot = (Dot) this.v.get(size2 - 1);
                                float d = d(dot.f);
                                float e = e(dot.f16345c);
                                float min = Math.min(d, x) - f;
                                float max = Math.max(d, x) + f;
                                float min2 = Math.min(e, y) - f;
                                float max2 = Math.max(e, y) + f;
                                if (c2 != null) {
                                    float f2 = this.E * 0.5f;
                                    float f3 = this.F * 0.5f;
                                    float d2 = d(c2.f);
                                    float e2 = e(c2.f16345c);
                                    z = z2;
                                    Math.min(d2 - f2, min);
                                    Math.max(d2 + f2, max);
                                    Math.min(e2 - f3, min2);
                                    Math.max(e2 + f3, max2);
                                    i2++;
                                    z2 = z;
                                }
                            }
                            z = z2;
                            i2++;
                            z2 = z;
                        }
                        boolean z4 = z2;
                        this.x = motionEvent.getX();
                        this.y = motionEvent.getY();
                        if (z3) {
                            invalidate();
                            return z4;
                        }
                        return z4;
                    }
                } else {
                    if (this.v.isEmpty()) {
                        return true;
                    }
                    this.D = false;
                    for (int i4 = 0; i4 < J; i4++) {
                        for (int i5 = 0; i5 < J; i5++) {
                            DotState dotState = this.f16338c[i4][i5];
                            ValueAnimator valueAnimator = dotState.d;
                            if (valueAnimator != null) {
                                valueAnimator.cancel();
                                dotState.b = Float.MIN_VALUE;
                                dotState.f16347c = Float.MIN_VALUE;
                            }
                        }
                    }
                    ArrayList arrayList3 = this.v;
                    ArrayList arrayList4 = this.u;
                    int size4 = arrayList4.size();
                    while (i < size4) {
                        Object obj3 = arrayList4.get(i);
                        i++;
                        PatternLockListener patternLockListener2 = (PatternLockListener) obj3;
                        if (patternLockListener2 != null) {
                            patternLockListener2.a(arrayList3);
                        }
                    }
                    invalidate();
                    return true;
                }
            } else {
                i();
                float x2 = motionEvent.getX();
                float y2 = motionEvent.getY();
                Dot c3 = c(x2, y2);
                if (c3 != null) {
                    this.D = true;
                    this.z = 0;
                    ArrayList arrayList5 = this.u;
                    int size5 = arrayList5.size();
                    while (i < size5) {
                        Object obj4 = arrayList5.get(i);
                        i++;
                        PatternLockListener patternLockListener3 = (PatternLockListener) obj4;
                        if (patternLockListener3 != null) {
                            patternLockListener3.b();
                        }
                    }
                } else {
                    this.D = false;
                    ArrayList arrayList6 = this.u;
                    int size6 = arrayList6.size();
                    while (i < size6) {
                        Object obj5 = arrayList6.get(i);
                        i++;
                    }
                }
                if (c3 != null) {
                    invalidate();
                }
                this.x = x2;
                this.y = y2;
                return true;
            }
        }
        return false;
    }

    public void setAspectRatio(int i) {
        this.j = i;
        requestLayout();
    }

    public void setAspectRatioEnabled(boolean z) {
        this.i = z;
        requestLayout();
    }

    public void setCorrectStateColor(int i) {
        this.m = i;
    }

    public void setDotAnimationDuration(int i) {
        this.q = i;
        invalidate();
    }

    public void setDotCount(int i) {
        J = i;
        this.f = i * i;
        this.v = new ArrayList(this.f);
        int i2 = J;
        this.w = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, i2, i2);
        int i3 = J;
        this.f16338c = (DotState[][]) Array.newInstance((Class<?>) DotState.class, i3, i3);
        for (int i4 = 0; i4 < J; i4++) {
            for (int i5 = 0; i5 < J; i5++) {
                DotState[][] dotStateArr = this.f16338c;
                dotStateArr[i4][i5] = new DotState();
                dotStateArr[i4][i5].f16346a = this.o;
            }
        }
        requestLayout();
        invalidate();
    }

    public void setDotNormalSize(int i) {
        this.o = i;
        for (int i2 = 0; i2 < J; i2++) {
            for (int i3 = 0; i3 < J; i3++) {
                DotState[][] dotStateArr = this.f16338c;
                dotStateArr[i2][i3] = new DotState();
                dotStateArr[i2][i3].f16346a = this.o;
            }
        }
        invalidate();
    }

    public void setDotSelectedSize(int i) {
        this.p = i;
    }

    public void setEnableHapticFeedback(boolean z) {
        this.C = z;
    }

    public void setInStealthMode(boolean z) {
        this.B = z;
    }

    public void setInputEnabled(boolean z) {
        this.A = z;
    }

    public void setNormalStateColor(int i) {
        this.k = i;
    }

    public void setPathEndAnimationDuration(int i) {
        this.r = i;
    }

    public void setPathWidth(int i) {
        this.n = i;
        g();
        invalidate();
    }

    public void setTactileFeedbackEnabled(boolean z) {
        this.C = z;
    }

    public void setViewMode(int i) {
        this.z = i;
        if (i == 1) {
            if (this.v.size() != 0) {
                this.g = SystemClock.elapsedRealtime();
                Dot dot = (Dot) this.v.get(0);
                this.x = d(dot.f);
                this.y = e(dot.f16345c);
                b();
            } else {
                throw new IllegalStateException("you must have a pattern to animate if you want to set the display mode to animate");
            }
        }
        invalidate();
    }

    public void setWrongStateColor(int i) {
        this.l = i;
    }

    /* loaded from: classes3.dex */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Object();

        /* renamed from: c, reason: collision with root package name */
        public final String f16348c;
        public final int f;
        public final boolean g;
        public final boolean h;
        public final boolean i;

        /* renamed from: com.mycompany.app.lock.PatternLock$SavedState$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        public class AnonymousClass1 implements Parcelable.Creator<SavedState> {
            @Override // android.os.Parcelable.Creator
            public final SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Parcelable parcelable, String str, int i, boolean z, boolean z2, boolean z3) {
            super(parcelable);
            this.f16348c = str;
            this.f = i;
            this.g = z;
            this.h = z2;
            this.i = z3;
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.f16348c);
            parcel.writeInt(this.f);
            parcel.writeValue(Boolean.valueOf(this.g));
            parcel.writeValue(Boolean.valueOf(this.h));
            parcel.writeValue(Boolean.valueOf(this.i));
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            ClassLoader classLoader;
            try {
                classLoader = getClass().getClassLoader();
            } catch (Exception unused) {
                classLoader = null;
            }
            this.f16348c = parcel.readString();
            this.f = parcel.readInt();
            this.g = ((Boolean) parcel.readValue(classLoader)).booleanValue();
            this.h = ((Boolean) parcel.readValue(classLoader)).booleanValue();
            this.i = ((Boolean) parcel.readValue(classLoader)).booleanValue();
        }
    }
}
