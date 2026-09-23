package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.TypeEvaluator;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.transition.Transition;
import androidx.transition.TransitionUtils;
import java.util.HashMap;

/* loaded from: classes.dex */
public class ChangeImageTransform extends Transition {
    public static final String[] G = {"android:changeImageTransform:matrix", "android:changeImageTransform:bounds"};
    public static final TypeEvaluator H = new Object();
    public static final Property I = new Property(Matrix.class, "animatedTransform");

    /* renamed from: androidx.transition.ChangeImageTransform$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements TypeEvaluator<Matrix> {
        @Override // android.animation.TypeEvaluator
        public final /* bridge */ /* synthetic */ Matrix evaluate(float f, Matrix matrix, Matrix matrix2) {
            return null;
        }
    }

    /* renamed from: androidx.transition.ChangeImageTransform$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass2 extends Property<ImageView, Matrix> {
        @Override // android.util.Property
        public final /* bridge */ /* synthetic */ Matrix get(ImageView imageView) {
            return null;
        }

        @Override // android.util.Property
        public final void set(ImageView imageView, Matrix matrix) {
            ImageViewUtils.a(imageView, matrix);
        }
    }

    /* renamed from: androidx.transition.ChangeImageTransform$3, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass3 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f1675a;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            f1675a = iArr;
            try {
                iArr[ImageView.ScaleType.FIT_XY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1675a[ImageView.ScaleType.CENTER_CROP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes.dex */
    public static class Listener extends AnimatorListenerAdapter implements Transition.TransitionListener {

        /* renamed from: a, reason: collision with root package name */
        public final ImageView f1676a;
        public final Matrix b;

        /* renamed from: c, reason: collision with root package name */
        public final Matrix f1677c;
        public boolean d = true;

        public Listener(ImageView imageView, Matrix matrix, Matrix matrix2) {
            this.f1676a = imageView;
            this.b = matrix;
            this.f1677c = matrix2;
        }

        @Override // androidx.transition.Transition.TransitionListener
        public final void b() {
            if (this.d) {
                int i = R.id.transition_image_transform;
                ImageView imageView = this.f1676a;
                imageView.setTag(i, this.b);
                ImageViewUtils.a(imageView, this.f1677c);
            }
        }

        @Override // androidx.transition.Transition.TransitionListener
        public final void c(Transition transition) {
            throw null;
        }

        @Override // androidx.transition.Transition.TransitionListener
        public final void d(Transition transition) {
        }

        @Override // androidx.transition.Transition.TransitionListener
        public final void e(Transition transition) {
            throw null;
        }

        @Override // androidx.transition.Transition.TransitionListener
        public final void f(Transition transition) {
        }

        @Override // androidx.transition.Transition.TransitionListener
        public final void g(Transition transition) {
        }

        @Override // androidx.transition.Transition.TransitionListener
        public final void h() {
            int i = R.id.transition_image_transform;
            ImageView imageView = this.f1676a;
            Matrix matrix = (Matrix) imageView.getTag(i);
            if (matrix != null) {
                ImageViewUtils.a(imageView, matrix);
                imageView.setTag(R.id.transition_image_transform, null);
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator, boolean z) {
            this.d = z;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public final void onAnimationPause(Animator animator) {
            Matrix matrix = (Matrix) ((ObjectAnimator) animator).getAnimatedValue();
            int i = R.id.transition_image_transform;
            ImageView imageView = this.f1676a;
            imageView.setTag(i, matrix);
            ImageViewUtils.a(imageView, this.f1677c);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public final void onAnimationResume(Animator animator) {
            int i = R.id.transition_image_transform;
            ImageView imageView = this.f1676a;
            Matrix matrix = (Matrix) imageView.getTag(i);
            if (matrix != null) {
                ImageViewUtils.a(imageView, matrix);
                imageView.setTag(R.id.transition_image_transform, null);
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator, boolean z) {
            this.d = false;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            this.d = false;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
            this.d = false;
        }
    }

    public static void O(TransitionValues transitionValues, boolean z) {
        Matrix matrix;
        Matrix matrix2;
        View view = transitionValues.b;
        if ((view instanceof ImageView) && view.getVisibility() == 0) {
            ImageView imageView = (ImageView) view;
            if (imageView.getDrawable() != null) {
                HashMap hashMap = transitionValues.f1712a;
                hashMap.put("android:changeImageTransform:bounds", new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
                if (z) {
                    matrix = (Matrix) imageView.getTag(R.id.transition_image_transform);
                } else {
                    matrix = null;
                }
                if (matrix == null) {
                    Drawable drawable = imageView.getDrawable();
                    if (drawable.getIntrinsicWidth() > 0 && drawable.getIntrinsicHeight() > 0) {
                        int i = AnonymousClass3.f1675a[imageView.getScaleType().ordinal()];
                        if (i != 1) {
                            if (i != 2) {
                                matrix = new Matrix(imageView.getImageMatrix());
                            } else {
                                Drawable drawable2 = imageView.getDrawable();
                                int intrinsicWidth = drawable2.getIntrinsicWidth();
                                float width = imageView.getWidth();
                                float f = intrinsicWidth;
                                int intrinsicHeight = drawable2.getIntrinsicHeight();
                                float height = imageView.getHeight();
                                float f2 = intrinsicHeight;
                                float max = Math.max(width / f, height / f2);
                                int round = Math.round((width - (f * max)) / 2.0f);
                                int round2 = Math.round((height - (f2 * max)) / 2.0f);
                                matrix2 = new Matrix();
                                matrix2.postScale(max, max);
                                matrix2.postTranslate(round, round2);
                            }
                        } else {
                            Drawable drawable3 = imageView.getDrawable();
                            matrix2 = new Matrix();
                            matrix2.postScale(imageView.getWidth() / drawable3.getIntrinsicWidth(), imageView.getHeight() / drawable3.getIntrinsicHeight());
                        }
                        matrix = matrix2;
                    } else {
                        matrix = new Matrix(imageView.getImageMatrix());
                    }
                }
                hashMap.put("android:changeImageTransform:matrix", matrix);
            }
        }
    }

    @Override // androidx.transition.Transition
    public final void e(TransitionValues transitionValues) {
        O(transitionValues, false);
    }

    @Override // androidx.transition.Transition
    public final void h(TransitionValues transitionValues) {
        O(transitionValues, true);
    }

    @Override // androidx.transition.Transition
    public final Animator l(ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
        boolean z;
        if (transitionValues != null) {
            HashMap hashMap = transitionValues.f1712a;
            if (transitionValues2 != null) {
                HashMap hashMap2 = transitionValues2.f1712a;
                Rect rect = (Rect) hashMap.get("android:changeImageTransform:bounds");
                Rect rect2 = (Rect) hashMap2.get("android:changeImageTransform:bounds");
                if (rect != null && rect2 != null) {
                    Matrix matrix = (Matrix) hashMap.get("android:changeImageTransform:matrix");
                    Matrix matrix2 = (Matrix) hashMap2.get("android:changeImageTransform:matrix");
                    if ((matrix == null && matrix2 == null) || (matrix != null && matrix.equals(matrix2))) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (!rect.equals(rect2) || !z) {
                        ImageView imageView = (ImageView) transitionValues2.b;
                        Drawable drawable = imageView.getDrawable();
                        int intrinsicWidth = drawable.getIntrinsicWidth();
                        int intrinsicHeight = drawable.getIntrinsicHeight();
                        Property property = I;
                        if (intrinsicWidth > 0 && intrinsicHeight > 0) {
                            if (matrix == null) {
                                matrix = MatrixUtils.f1693a;
                            }
                            if (matrix2 == null) {
                                matrix2 = MatrixUtils.f1693a;
                            }
                            ((AnonymousClass2) property).getClass();
                            ImageViewUtils.a(imageView, matrix);
                            ObjectAnimator ofObject = ObjectAnimator.ofObject(imageView, (Property<ImageView, V>) property, new TransitionUtils.MatrixEvaluator(), matrix, matrix2);
                            Listener listener = new Listener(imageView, matrix, matrix2);
                            ofObject.addListener(listener);
                            ofObject.addPauseListener(listener);
                            a(listener);
                            return ofObject;
                        }
                        Matrix matrix3 = MatrixUtils.f1693a;
                        return ObjectAnimator.ofObject(imageView, (Property<ImageView, V>) property, H, matrix3, matrix3);
                    }
                    return null;
                }
                return null;
            }
            return null;
        }
        return null;
    }

    @Override // androidx.transition.Transition
    public final String[] s() {
        return G;
    }
}
