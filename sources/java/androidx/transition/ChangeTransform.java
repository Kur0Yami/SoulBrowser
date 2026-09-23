package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.TypeEvaluator;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.os.Build;
import android.util.Log;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewCompat;
import androidx.transition.PropertyValuesHolderUtils;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;

/* loaded from: classes.dex */
public class ChangeTransform extends Transition {
    public static final String[] G = {"android:changeTransform:matrix", "android:changeTransform:transforms", "android:changeTransform:parentMatrix"};
    public static final Property H = new Property(float[].class, "nonTranslations");
    public static final Property I = new Property(PointF.class, "translations");
    public static final boolean J = true;

    /* renamed from: androidx.transition.ChangeTransform$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 extends Property<PathAnimatorMatrix, float[]> {
        @Override // android.util.Property
        public final /* bridge */ /* synthetic */ float[] get(PathAnimatorMatrix pathAnimatorMatrix) {
            return null;
        }

        @Override // android.util.Property
        public final void set(PathAnimatorMatrix pathAnimatorMatrix, float[] fArr) {
            PathAnimatorMatrix pathAnimatorMatrix2 = pathAnimatorMatrix;
            float[] fArr2 = fArr;
            System.arraycopy(fArr2, 0, pathAnimatorMatrix2.f1681c, 0, fArr2.length);
            pathAnimatorMatrix2.a();
        }
    }

    /* renamed from: androidx.transition.ChangeTransform$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass2 extends Property<PathAnimatorMatrix, PointF> {
        @Override // android.util.Property
        public final /* bridge */ /* synthetic */ PointF get(PathAnimatorMatrix pathAnimatorMatrix) {
            return null;
        }

        @Override // android.util.Property
        public final void set(PathAnimatorMatrix pathAnimatorMatrix, PointF pointF) {
            PathAnimatorMatrix pathAnimatorMatrix2 = pathAnimatorMatrix;
            PointF pointF2 = pointF;
            pathAnimatorMatrix2.getClass();
            pathAnimatorMatrix2.d = pointF2.x;
            pathAnimatorMatrix2.e = pointF2.y;
            pathAnimatorMatrix2.a();
        }
    }

    /* loaded from: classes.dex */
    public static class GhostListener extends TransitionListenerAdapter {
        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public final void b() {
            throw null;
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public final void e(Transition transition) {
            transition.A(this);
            if (Build.VERSION.SDK_INT == 28) {
                if (!GhostViewPlatform.h) {
                    try {
                        if (!GhostViewPlatform.f) {
                            try {
                                GhostViewPlatform.f1690c = Class.forName("android.view.GhostView");
                            } catch (ClassNotFoundException e) {
                                Log.i("GhostViewApi21", "Failed to retrieve GhostView class", e);
                            }
                            GhostViewPlatform.f = true;
                        }
                        Method declaredMethod = GhostViewPlatform.f1690c.getDeclaredMethod("removeGhost", View.class);
                        GhostViewPlatform.g = declaredMethod;
                        declaredMethod.setAccessible(true);
                    } catch (NoSuchMethodException e2) {
                        Log.i("GhostViewApi21", "Failed to retrieve removeGhost method", e2);
                    }
                    GhostViewPlatform.h = true;
                }
                Method method = GhostViewPlatform.g;
                if (method != null) {
                    try {
                        method.invoke(null, null);
                        throw null;
                    } catch (IllegalAccessException unused) {
                        throw null;
                    } catch (InvocationTargetException e3) {
                        throw new RuntimeException(e3.getCause());
                    }
                }
                throw null;
            }
            int i = GhostViewPort.g;
            throw null;
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public final void h() {
            throw null;
        }
    }

    /* loaded from: classes.dex */
    public static class Listener extends AnimatorListenerAdapter {

        /* renamed from: a, reason: collision with root package name */
        public boolean f1678a;
        public final Matrix b = new Matrix();

        /* renamed from: c, reason: collision with root package name */
        public final View f1679c;
        public final Transforms d;
        public final PathAnimatorMatrix e;

        public Listener(View view, Transforms transforms, PathAnimatorMatrix pathAnimatorMatrix, Matrix matrix) {
            this.f1679c = view;
            this.d = transforms;
            this.e = pathAnimatorMatrix;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            this.f1678a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            boolean z = this.f1678a;
            View view = this.f1679c;
            if (!z) {
                view.setTag(R.id.transition_transform, null);
                view.setTag(R.id.parent_matrix, null);
            }
            ViewUtils.f1718a.d(view, null);
            Transforms transforms = this.d;
            float f = transforms.f1682a;
            float f2 = transforms.b;
            float f3 = transforms.f1683c;
            float f4 = transforms.d;
            float f5 = transforms.e;
            float f6 = transforms.f;
            float f7 = transforms.g;
            float f8 = transforms.h;
            String[] strArr = ChangeTransform.G;
            view.setTranslationX(f);
            view.setTranslationY(f2);
            ViewCompat.M(view, f3);
            view.setScaleX(f4);
            view.setScaleY(f5);
            view.setRotationX(f6);
            view.setRotationY(f7);
            view.setRotation(f8);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public final void onAnimationPause(Animator animator) {
            Matrix matrix = this.e.f1680a;
            Matrix matrix2 = this.b;
            matrix2.set(matrix);
            int i = R.id.transition_transform;
            View view = this.f1679c;
            view.setTag(i, matrix2);
            Transforms transforms = this.d;
            float f = transforms.f1682a;
            float f2 = transforms.b;
            float f3 = transforms.f1683c;
            float f4 = transforms.d;
            float f5 = transforms.e;
            float f6 = transforms.f;
            float f7 = transforms.g;
            float f8 = transforms.h;
            String[] strArr = ChangeTransform.G;
            view.setTranslationX(f);
            view.setTranslationY(f2);
            ViewCompat.M(view, f3);
            view.setScaleX(f4);
            view.setScaleY(f5);
            view.setRotationX(f6);
            view.setRotationY(f7);
            view.setRotation(f8);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public final void onAnimationResume(Animator animator) {
            String[] strArr = ChangeTransform.G;
            View view = this.f1679c;
            view.setTranslationX(0.0f);
            view.setTranslationY(0.0f);
            ViewCompat.M(view, 0.0f);
            view.setScaleX(1.0f);
            view.setScaleY(1.0f);
            view.setRotationX(0.0f);
            view.setRotationY(0.0f);
            view.setRotation(0.0f);
        }
    }

    /* loaded from: classes.dex */
    public static class PathAnimatorMatrix {

        /* renamed from: a, reason: collision with root package name */
        public final Matrix f1680a = new Matrix();
        public final View b;

        /* renamed from: c, reason: collision with root package name */
        public final float[] f1681c;
        public float d;
        public float e;

        public PathAnimatorMatrix(View view, float[] fArr) {
            this.b = view;
            float[] fArr2 = (float[]) fArr.clone();
            this.f1681c = fArr2;
            this.d = fArr2[2];
            this.e = fArr2[5];
            a();
        }

        public final void a() {
            float f = this.d;
            float[] fArr = this.f1681c;
            fArr[2] = f;
            fArr[5] = this.e;
            Matrix matrix = this.f1680a;
            matrix.setValues(fArr);
            ViewUtils.f1718a.d(this.b, matrix);
        }
    }

    /* loaded from: classes.dex */
    public static class Transforms {

        /* renamed from: a, reason: collision with root package name */
        public final float f1682a;
        public final float b;

        /* renamed from: c, reason: collision with root package name */
        public final float f1683c;
        public final float d;
        public final float e;
        public final float f;
        public final float g;
        public final float h;

        public Transforms(View view) {
            this.f1682a = view.getTranslationX();
            this.b = view.getTranslationY();
            this.f1683c = ViewCompat.p(view);
            this.d = view.getScaleX();
            this.e = view.getScaleY();
            this.f = view.getRotationX();
            this.g = view.getRotationY();
            this.h = view.getRotation();
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof Transforms)) {
                return false;
            }
            Transforms transforms = (Transforms) obj;
            if (transforms.f1682a != this.f1682a || transforms.b != this.b || transforms.f1683c != this.f1683c || transforms.d != this.d || transforms.e != this.e || transforms.f != this.f || transforms.g != this.g || transforms.h != this.h) {
                return false;
            }
            return true;
        }

        public final int hashCode() {
            int i;
            int i2;
            int i3;
            int i4;
            int i5;
            int i6;
            int i7;
            float f = this.f1682a;
            int i8 = 0;
            if (f != 0.0f) {
                i = Float.floatToIntBits(f);
            } else {
                i = 0;
            }
            int i9 = i * 31;
            float f2 = this.b;
            if (f2 != 0.0f) {
                i2 = Float.floatToIntBits(f2);
            } else {
                i2 = 0;
            }
            int i10 = (i9 + i2) * 31;
            float f3 = this.f1683c;
            if (f3 != 0.0f) {
                i3 = Float.floatToIntBits(f3);
            } else {
                i3 = 0;
            }
            int i11 = (i10 + i3) * 31;
            float f4 = this.d;
            if (f4 != 0.0f) {
                i4 = Float.floatToIntBits(f4);
            } else {
                i4 = 0;
            }
            int i12 = (i11 + i4) * 31;
            float f5 = this.e;
            if (f5 != 0.0f) {
                i5 = Float.floatToIntBits(f5);
            } else {
                i5 = 0;
            }
            int i13 = (i12 + i5) * 31;
            float f6 = this.f;
            if (f6 != 0.0f) {
                i6 = Float.floatToIntBits(f6);
            } else {
                i6 = 0;
            }
            int i14 = (i13 + i6) * 31;
            float f7 = this.g;
            if (f7 != 0.0f) {
                i7 = Float.floatToIntBits(f7);
            } else {
                i7 = 0;
            }
            int i15 = (i14 + i7) * 31;
            float f8 = this.h;
            if (f8 != 0.0f) {
                i8 = Float.floatToIntBits(f8);
            }
            return i15 + i8;
        }
    }

    public static void O(TransitionValues transitionValues) {
        Matrix matrix;
        View view = transitionValues.b;
        HashMap hashMap = transitionValues.f1712a;
        if (view.getVisibility() == 8) {
            return;
        }
        hashMap.put("android:changeTransform:parent", view.getParent());
        hashMap.put("android:changeTransform:transforms", new Transforms(view));
        Matrix matrix2 = view.getMatrix();
        if (matrix2 != null && !matrix2.isIdentity()) {
            matrix = new Matrix(matrix2);
        } else {
            matrix = null;
        }
        hashMap.put("android:changeTransform:matrix", matrix);
    }

    @Override // androidx.transition.Transition
    public final void e(TransitionValues transitionValues) {
        O(transitionValues);
    }

    @Override // androidx.transition.Transition
    public final void h(TransitionValues transitionValues) {
        O(transitionValues);
        if (!J) {
            ((ViewGroup) transitionValues.b.getParent()).startViewTransition(transitionValues.b);
        }
    }

    /* JADX WARN: Type inference failed for: r9v0, types: [androidx.transition.FloatArrayEvaluator, android.animation.TypeEvaluator, java.lang.Object] */
    @Override // androidx.transition.Transition
    public final Animator l(ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
        ObjectAnimator objectAnimator = null;
        if (transitionValues != null) {
            HashMap hashMap = transitionValues.f1712a;
            if (transitionValues2 != null) {
                HashMap hashMap2 = transitionValues2.f1712a;
                if (hashMap.containsKey("android:changeTransform:parent") && hashMap2.containsKey("android:changeTransform:parent")) {
                    ViewGroup viewGroup2 = (ViewGroup) hashMap.get("android:changeTransform:parent");
                    Matrix matrix = (Matrix) hashMap.get("android:changeTransform:intermediateMatrix");
                    if (matrix != null) {
                        hashMap.put("android:changeTransform:matrix", matrix);
                    }
                    Matrix matrix2 = (Matrix) hashMap.get("android:changeTransform:intermediateParentMatrix");
                    if (matrix2 != null) {
                        hashMap.put("android:changeTransform:parentMatrix", matrix2);
                    }
                    Matrix matrix3 = (Matrix) hashMap.get("android:changeTransform:matrix");
                    Matrix matrix4 = (Matrix) hashMap2.get("android:changeTransform:matrix");
                    if (matrix3 == null) {
                        matrix3 = MatrixUtils.f1693a;
                    }
                    if (matrix4 == null) {
                        matrix4 = MatrixUtils.f1693a;
                    }
                    if (!matrix3.equals(matrix4)) {
                        Transforms transforms = (Transforms) hashMap2.get("android:changeTransform:transforms");
                        View view = transitionValues2.b;
                        view.setTranslationX(0.0f);
                        view.setTranslationY(0.0f);
                        ViewCompat.M(view, 0.0f);
                        view.setScaleX(1.0f);
                        view.setScaleY(1.0f);
                        view.setRotationX(0.0f);
                        view.setRotationY(0.0f);
                        view.setRotation(0.0f);
                        float[] fArr = new float[9];
                        matrix3.getValues(fArr);
                        float[] fArr2 = new float[9];
                        matrix4.getValues(fArr2);
                        PathAnimatorMatrix pathAnimatorMatrix = new PathAnimatorMatrix(view, fArr);
                        ?? obj = new Object();
                        obj.f1685a = new float[9];
                        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(pathAnimatorMatrix, PropertyValuesHolder.ofObject(H, (TypeEvaluator) obj, fArr, fArr2), PropertyValuesHolderUtils.Api21Impl.a(I, this.B.a(fArr[2], fArr[5], fArr2[2], fArr2[5])));
                        Listener listener = new Listener(view, transforms, pathAnimatorMatrix, matrix4);
                        ofPropertyValuesHolder.addListener(listener);
                        ofPropertyValuesHolder.addPauseListener(listener);
                        objectAnimator = ofPropertyValuesHolder;
                    }
                    if (!J) {
                        viewGroup2.endViewTransition(transitionValues.b);
                    }
                    return objectAnimator;
                }
            }
        }
        return objectAnimator;
    }

    @Override // androidx.transition.Transition
    public final String[] s() {
        return G;
    }
}
