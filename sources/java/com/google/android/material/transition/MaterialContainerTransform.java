package com.google.android.material.transition;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import androidx.annotation.RestrictTo;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import androidx.transition.ArcMotion;
import androidx.transition.PathMotion;
import androidx.transition.Transition;
import androidx.transition.TransitionValues;
import com.google.android.material.R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.canvas.CanvasCompat;
import com.google.android.material.motion.MotionUtils;
import com.google.android.material.shape.CornerSize;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.RelativeCornerSize;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class MaterialContainerTransform extends Transition {
    public static final String[] G = {"materialContainerTransition:bounds", "materialContainerTransition:shapeAppearance"};
    public static final ProgressThresholdsGroup H = new ProgressThresholdsGroup(new ProgressThresholds(0.0f, 0.25f), new ProgressThresholds(0.0f, 1.0f), new ProgressThresholds(0.0f, 1.0f), new ProgressThresholds(0.0f, 0.75f));
    public static final ProgressThresholdsGroup I = new ProgressThresholdsGroup(new ProgressThresholds(0.6f, 0.9f), new ProgressThresholds(0.0f, 1.0f), new ProgressThresholds(0.0f, 0.9f), new ProgressThresholds(0.3f, 0.9f));
    public static final ProgressThresholdsGroup J = new ProgressThresholdsGroup(new ProgressThresholds(0.1f, 0.4f), new ProgressThresholds(0.1f, 1.0f), new ProgressThresholds(0.1f, 1.0f), new ProgressThresholds(0.1f, 0.9f));
    public static final ProgressThresholdsGroup K = new ProgressThresholdsGroup(new ProgressThresholds(0.6f, 0.9f), new ProgressThresholds(0.0f, 0.9f), new ProgressThresholds(0.0f, 0.9f), new ProgressThresholds(0.2f, 0.9f));

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes3.dex */
    public @interface FadeMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes3.dex */
    public @interface FitMode {
    }

    /* loaded from: classes3.dex */
    public static class ProgressThresholds {

        /* renamed from: a, reason: collision with root package name */
        public final float f12026a;
        public final float b;

        public ProgressThresholds(float f, float f2) {
            this.f12026a = f;
            this.b = f2;
        }
    }

    /* loaded from: classes3.dex */
    public static class ProgressThresholdsGroup {

        /* renamed from: a, reason: collision with root package name */
        public final ProgressThresholds f12027a;
        public final ProgressThresholds b;

        /* renamed from: c, reason: collision with root package name */
        public final ProgressThresholds f12028c;
        public final ProgressThresholds d;

        public ProgressThresholdsGroup(ProgressThresholds progressThresholds, ProgressThresholds progressThresholds2, ProgressThresholds progressThresholds3, ProgressThresholds progressThresholds4) {
            this.f12027a = progressThresholds;
            this.b = progressThresholds2;
            this.f12028c = progressThresholds3;
            this.d = progressThresholds4;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes3.dex */
    public @interface TransitionDirection {
    }

    /* loaded from: classes3.dex */
    public static final class TransitionDrawable extends Drawable {
        public final FitModeEvaluator A;
        public FadeModeResult B;
        public FitModeResult C;
        public RectF D;
        public float E;
        public float F;

        /* renamed from: a, reason: collision with root package name */
        public final View f12029a;
        public final RectF b;

        /* renamed from: c, reason: collision with root package name */
        public final ShapeAppearanceModel f12030c;
        public final float d;
        public final View e;
        public final RectF f;
        public final ShapeAppearanceModel g;
        public final float h;
        public final Paint i;
        public final Paint j;
        public final Paint k;
        public final Paint l;
        public final Paint m;
        public final MaskEvaluator n;
        public final PathMeasure o;
        public final float p;
        public final float[] q;
        public final boolean r;
        public final float s;
        public final float t;
        public final RectF u;
        public final RectF v;
        public final RectF w;
        public final RectF x;
        public final ProgressThresholdsGroup y;
        public final FadeModeEvaluator z;

        public TransitionDrawable(PathMotion pathMotion, View view, RectF rectF, ShapeAppearanceModel shapeAppearanceModel, float f, View view2, RectF rectF2, ShapeAppearanceModel shapeAppearanceModel2, float f2, boolean z, FadeModeEvaluator fadeModeEvaluator, FitModeEvaluator fitModeEvaluator, ProgressThresholdsGroup progressThresholdsGroup) {
            Paint paint = new Paint();
            this.i = paint;
            Paint paint2 = new Paint();
            this.j = paint2;
            Paint paint3 = new Paint();
            this.k = paint3;
            this.l = new Paint();
            Paint paint4 = new Paint();
            this.m = paint4;
            this.n = new MaskEvaluator();
            this.q = r5;
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
            Paint paint5 = new Paint();
            new Path();
            this.f12029a = view;
            this.b = rectF;
            this.f12030c = shapeAppearanceModel;
            this.d = f;
            this.e = view2;
            this.f = rectF2;
            this.g = shapeAppearanceModel2;
            this.h = f2;
            this.r = z;
            this.z = fadeModeEvaluator;
            this.A = fitModeEvaluator;
            this.y = progressThresholdsGroup;
            WindowManager windowManager = (WindowManager) view.getContext().getSystemService("window");
            windowManager.getDefaultDisplay().getMetrics(new DisplayMetrics());
            this.s = r13.widthPixels;
            this.t = r13.heightPixels;
            paint.setColor(0);
            paint2.setColor(0);
            paint3.setColor(0);
            materialShapeDrawable.o(ColorStateList.valueOf(0));
            materialShapeDrawable.q();
            materialShapeDrawable.B = false;
            materialShapeDrawable.p();
            RectF rectF3 = new RectF(rectF);
            this.u = rectF3;
            this.v = new RectF(rectF3);
            RectF rectF4 = new RectF(rectF3);
            this.w = rectF4;
            this.x = new RectF(rectF4);
            PointF pointF = new PointF(rectF.centerX(), rectF.top);
            PointF pointF2 = new PointF(rectF2.centerX(), rectF2.top);
            PathMeasure pathMeasure = new PathMeasure(pathMotion.a(pointF.x, pointF.y, pointF2.x, pointF2.y), false);
            this.o = pathMeasure;
            this.p = pathMeasure.getLength();
            float[] fArr = {rectF.centerX(), rectF.top};
            paint4.setStyle(Paint.Style.FILL);
            RectF rectF5 = TransitionUtils.f12033a;
            paint4.setShader(new LinearGradient(0.0f, 0.0f, 0.0f, 0.0f, 0, 0, Shader.TileMode.CLAMP));
            paint5.setStyle(Paint.Style.STROKE);
            paint5.setStrokeWidth(10.0f);
            d(0.0f);
        }

        public final void a(Canvas canvas) {
            c(canvas, this.k);
            Rect bounds = getBounds();
            RectF rectF = this.w;
            TransitionUtils.f(canvas, bounds, rectF.left, rectF.top, this.C.b, this.B.b, new CanvasCompat.CanvasOperation() { // from class: com.google.android.material.transition.MaterialContainerTransform.TransitionDrawable.2
                @Override // com.google.android.material.canvas.CanvasCompat.CanvasOperation
                public final void a(Canvas canvas2) {
                    TransitionDrawable.this.e.draw(canvas2);
                }
            });
        }

        public final void b(Canvas canvas) {
            c(canvas, this.j);
            Rect bounds = getBounds();
            RectF rectF = this.u;
            TransitionUtils.f(canvas, bounds, rectF.left, rectF.top, this.C.f12019a, this.B.f12016a, new CanvasCompat.CanvasOperation() { // from class: com.google.android.material.transition.MaterialContainerTransform.TransitionDrawable.1
                @Override // com.google.android.material.canvas.CanvasCompat.CanvasOperation
                public final void a(Canvas canvas2) {
                    TransitionDrawable.this.f12029a.draw(canvas2);
                }
            });
        }

        public final void c(Canvas canvas, Paint paint) {
            if (paint.getColor() != 0 && paint.getAlpha() > 0) {
                canvas.drawRect(getBounds(), paint);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:21:0x0207  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0216  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void d(float r26) {
            /*
                Method dump skipped, instructions count: 545
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.transition.MaterialContainerTransform.TransitionDrawable.d(float):void");
        }

        @Override // android.graphics.drawable.Drawable
        public final void draw(Canvas canvas) {
            Paint paint = this.m;
            if (paint.getAlpha() > 0) {
                canvas.drawRect(getBounds(), paint);
            }
            canvas.clipPath(this.n.f12021a);
            c(canvas, this.i);
            if (this.B.f12017c) {
                b(canvas);
                a(canvas);
            } else {
                a(canvas);
                b(canvas);
            }
        }

        @Override // android.graphics.drawable.Drawable
        public final int getOpacity() {
            return -3;
        }

        @Override // android.graphics.drawable.Drawable
        public final void setAlpha(int i) {
            throw new UnsupportedOperationException("Setting alpha on is not supported");
        }

        @Override // android.graphics.drawable.Drawable
        public final void setColorFilter(ColorFilter colorFilter) {
            throw new UnsupportedOperationException("Setting a color filter is not supported");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void O(TransitionValues transitionValues) {
        final RectF b;
        ShapeAppearanceModel a2;
        View view = transitionValues.b;
        RectF rectF = TransitionUtils.f12033a;
        View findViewById = view.findViewById(0);
        View view2 = findViewById;
        if (findViewById == null) {
            view2 = TransitionUtils.a(view);
        }
        transitionValues.b = view2;
        HashMap hashMap = transitionValues.f1712a;
        if (!view2.isLaidOut() && view2.getWidth() == 0 && view2.getHeight() == 0) {
            return;
        }
        if (view2.getParent() == null) {
            b = new RectF(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
        } else {
            b = TransitionUtils.b(view2);
        }
        hashMap.put("materialContainerTransition:bounds", b);
        if (view2.getTag(R.id.mtrl_motion_snapshot_view) instanceof ShapeAppearanceModel) {
            a2 = (ShapeAppearanceModel) view2.getTag(R.id.mtrl_motion_snapshot_view);
        } else {
            Context context = view2.getContext();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[]{R.attr.transitionShapeAppearance});
            int resourceId = obtainStyledAttributes.getResourceId(0, -1);
            obtainStyledAttributes.recycle();
            if (resourceId != -1) {
                a2 = ShapeAppearanceModel.a(context, resourceId, 0).a();
            } else if (view2 instanceof Shapeable) {
                a2 = ((Shapeable) view2).getShapeAppearanceModel();
            } else {
                a2 = new ShapeAppearanceModel.Builder().a();
            }
        }
        hashMap.put("materialContainerTransition:shapeAppearance", a2.h(new ShapeAppearanceModel.CornerSizeUnaryOperator() { // from class: com.google.android.material.transition.a
            @Override // com.google.android.material.shape.ShapeAppearanceModel.CornerSizeUnaryOperator
            public final CornerSize a(CornerSize cornerSize) {
                RectF rectF2 = TransitionUtils.f12033a;
                if (cornerSize instanceof RelativeCornerSize) {
                    return (RelativeCornerSize) cornerSize;
                }
                RectF rectF3 = b;
                return new RelativeCornerSize(cornerSize.a(rectF3) / Math.min(rectF3.width(), rectF3.height()));
            }
        }));
    }

    @Override // androidx.transition.Transition
    public final void e(TransitionValues transitionValues) {
        O(transitionValues);
    }

    @Override // androidx.transition.Transition
    public final void h(TransitionValues transitionValues) {
        O(transitionValues);
    }

    @Override // androidx.transition.Transition
    public final Animator l(ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
        View view;
        final View a2;
        RectF rectF;
        boolean z;
        int i;
        FadeModeEvaluator fadeModeEvaluator;
        FitModeEvaluator fitModeEvaluator;
        ProgressThresholdsGroup progressThresholdsGroup;
        ProgressThresholdsGroup progressThresholdsGroup2;
        ProgressThresholdsGroup progressThresholdsGroup3;
        int c2;
        View view2 = null;
        if (transitionValues != null) {
            HashMap hashMap = transitionValues.f1712a;
            if (transitionValues2 != null) {
                HashMap hashMap2 = transitionValues2.f1712a;
                RectF rectF2 = (RectF) hashMap.get("materialContainerTransition:bounds");
                ShapeAppearanceModel shapeAppearanceModel = (ShapeAppearanceModel) hashMap.get("materialContainerTransition:shapeAppearance");
                if (rectF2 != null && shapeAppearanceModel != null) {
                    RectF rectF3 = (RectF) hashMap2.get("materialContainerTransition:bounds");
                    ShapeAppearanceModel shapeAppearanceModel2 = (ShapeAppearanceModel) hashMap2.get("materialContainerTransition:shapeAppearance");
                    if (rectF3 != null && shapeAppearanceModel2 != null) {
                        final View view3 = transitionValues.b;
                        final View view4 = transitionValues2.b;
                        if (view4.getParent() != null) {
                            view = view4;
                        } else {
                            view = view3;
                        }
                        if (view.getId() == 0) {
                            a2 = (View) view.getParent();
                            view2 = view;
                        } else {
                            a2 = TransitionUtils.a(view);
                        }
                        RectF b = TransitionUtils.b(a2);
                        float f = -b.left;
                        float f2 = -b.top;
                        if (view2 != null) {
                            rectF = TransitionUtils.b(view2);
                            rectF.offset(f, f2);
                        } else {
                            rectF = new RectF(0.0f, 0.0f, a2.getWidth(), a2.getHeight());
                        }
                        rectF2.offset(f, f2);
                        rectF3.offset(f, f2);
                        if (rectF3.height() * rectF3.width() > rectF2.height() * rectF2.width()) {
                            z = true;
                        } else {
                            z = false;
                        }
                        boolean z2 = z;
                        Context context = view.getContext();
                        int i2 = R.attr.motionEasingEmphasizedInterpolator;
                        FastOutSlowInInterpolator fastOutSlowInInterpolator = AnimationUtils.b;
                        if (i2 != 0 && this.h == null) {
                            this.h = MotionUtils.d(context, i2, fastOutSlowInInterpolator);
                        }
                        if (z2) {
                            i = R.attr.motionDurationLong2;
                        } else {
                            i = R.attr.motionDurationMedium4;
                        }
                        if (i != 0 && this.g == -1 && (c2 = MotionUtils.c(context, i, -1)) != -1) {
                            this.g = c2;
                        }
                        PathMotion pathMotion = this.B;
                        if (z2) {
                            fadeModeEvaluator = FadeModeEvaluators.f12015a;
                        } else {
                            fadeModeEvaluator = FadeModeEvaluators.b;
                        }
                        FadeModeEvaluator fadeModeEvaluator2 = fadeModeEvaluator;
                        float width = rectF2.width();
                        float height = rectF2.height();
                        float width2 = rectF3.width();
                        float height2 = rectF3.height();
                        float f3 = (height2 * width) / width2;
                        float f4 = (width2 * height) / width;
                        if (!z2 ? f4 >= height2 : f3 >= height) {
                            fitModeEvaluator = FitModeEvaluators.f12018a;
                        } else {
                            fitModeEvaluator = FitModeEvaluators.b;
                        }
                        FitModeEvaluator fitModeEvaluator2 = fitModeEvaluator;
                        PathMotion pathMotion2 = this.B;
                        if (!(pathMotion2 instanceof ArcMotion) && !(pathMotion2 instanceof MaterialArcMotion)) {
                            if (z2) {
                                progressThresholdsGroup3 = H;
                            } else {
                                progressThresholdsGroup3 = I;
                            }
                            progressThresholdsGroup2 = new ProgressThresholdsGroup(progressThresholdsGroup3.f12027a, progressThresholdsGroup3.b, progressThresholdsGroup3.f12028c, progressThresholdsGroup3.d);
                        } else {
                            if (z2) {
                                progressThresholdsGroup = J;
                            } else {
                                progressThresholdsGroup = K;
                            }
                            progressThresholdsGroup2 = new ProgressThresholdsGroup(progressThresholdsGroup.f12027a, progressThresholdsGroup.b, progressThresholdsGroup.f12028c, progressThresholdsGroup.d);
                        }
                        final TransitionDrawable transitionDrawable = new TransitionDrawable(pathMotion, view3, rectF2, shapeAppearanceModel, 0.0f, view4, rectF3, shapeAppearanceModel2, 0.0f, z2, fadeModeEvaluator2, fitModeEvaluator2, progressThresholdsGroup2);
                        transitionDrawable.setBounds(Math.round(rectF.left), Math.round(rectF.top), Math.round(rectF.right), Math.round(rectF.bottom));
                        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.transition.MaterialContainerTransform.1
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                float animatedFraction = valueAnimator.getAnimatedFraction();
                                TransitionDrawable transitionDrawable2 = TransitionDrawable.this;
                                if (transitionDrawable2.F != animatedFraction) {
                                    transitionDrawable2.d(animatedFraction);
                                }
                            }
                        });
                        a(new TransitionListenerAdapter() { // from class: com.google.android.material.transition.MaterialContainerTransform.2
                            @Override // com.google.android.material.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
                            public final void c(Transition transition) {
                                a2.getOverlay().add(transitionDrawable);
                                view3.setAlpha(0.0f);
                                view4.setAlpha(0.0f);
                            }

                            @Override // com.google.android.material.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
                            public final void e(Transition transition) {
                                MaterialContainerTransform materialContainerTransform = MaterialContainerTransform.this;
                                materialContainerTransform.A(this);
                                materialContainerTransform.getClass();
                                view3.setAlpha(1.0f);
                                view4.setAlpha(1.0f);
                                a2.getOverlay().remove(transitionDrawable);
                            }
                        });
                        return ofFloat;
                    }
                    Log.w("MaterialContainerTransform", "Skipping due to null end bounds. Ensure end view is laid out and measured.");
                    return null;
                }
                Log.w("MaterialContainerTransform", "Skipping due to null start bounds. Ensure start view is laid out and measured.");
            }
        }
        return null;
    }

    @Override // androidx.transition.Transition
    public final String[] s() {
        return G;
    }
}
