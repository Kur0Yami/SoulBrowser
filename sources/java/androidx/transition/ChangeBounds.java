package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.graphics.PointF;
import android.graphics.Rect;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.transition.ObjectAnimatorUtils;
import androidx.transition.Transition;
import java.util.HashMap;

/* loaded from: classes.dex */
public class ChangeBounds extends Transition {
    public static final String[] G = {"android:changeBounds:bounds", "android:changeBounds:clip", "android:changeBounds:parent", "android:changeBounds:windowX", "android:changeBounds:windowY"};
    public static final Property H = new Property(PointF.class, "topLeft");
    public static final Property I = new Property(PointF.class, "bottomRight");
    public static final Property J = new Property(PointF.class, "bottomRight");
    public static final Property K = new Property(PointF.class, "topLeft");
    public static final Property L = new Property(PointF.class, "position");

    /* renamed from: androidx.transition.ChangeBounds$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 extends Property<ViewBounds, PointF> {
        @Override // android.util.Property
        public final /* bridge */ /* synthetic */ PointF get(ViewBounds viewBounds) {
            return null;
        }

        @Override // android.util.Property
        public final void set(ViewBounds viewBounds, PointF pointF) {
            ViewBounds viewBounds2 = viewBounds;
            PointF pointF2 = pointF;
            viewBounds2.getClass();
            viewBounds2.f1671a = Math.round(pointF2.x);
            int round = Math.round(pointF2.y);
            viewBounds2.b = round;
            int i = viewBounds2.f + 1;
            viewBounds2.f = i;
            if (i == viewBounds2.g) {
                ViewUtils.a(viewBounds2.e, viewBounds2.f1671a, round, viewBounds2.f1672c, viewBounds2.d);
                viewBounds2.f = 0;
                viewBounds2.g = 0;
            }
        }
    }

    /* renamed from: androidx.transition.ChangeBounds$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass2 extends Property<ViewBounds, PointF> {
        @Override // android.util.Property
        public final /* bridge */ /* synthetic */ PointF get(ViewBounds viewBounds) {
            return null;
        }

        @Override // android.util.Property
        public final void set(ViewBounds viewBounds, PointF pointF) {
            ViewBounds viewBounds2 = viewBounds;
            PointF pointF2 = pointF;
            viewBounds2.getClass();
            viewBounds2.f1672c = Math.round(pointF2.x);
            int round = Math.round(pointF2.y);
            viewBounds2.d = round;
            int i = viewBounds2.g + 1;
            viewBounds2.g = i;
            if (viewBounds2.f == i) {
                ViewUtils.a(viewBounds2.e, viewBounds2.f1671a, viewBounds2.b, viewBounds2.f1672c, round);
                viewBounds2.f = 0;
                viewBounds2.g = 0;
            }
        }
    }

    /* renamed from: androidx.transition.ChangeBounds$3, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass3 extends Property<View, PointF> {
        @Override // android.util.Property
        public final /* bridge */ /* synthetic */ PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        public final void set(View view, PointF pointF) {
            View view2 = view;
            PointF pointF2 = pointF;
            ViewUtils.a(view2, view2.getLeft(), view2.getTop(), Math.round(pointF2.x), Math.round(pointF2.y));
        }
    }

    /* renamed from: androidx.transition.ChangeBounds$4, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass4 extends Property<View, PointF> {
        @Override // android.util.Property
        public final /* bridge */ /* synthetic */ PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        public final void set(View view, PointF pointF) {
            View view2 = view;
            PointF pointF2 = pointF;
            ViewUtils.a(view2, Math.round(pointF2.x), Math.round(pointF2.y), view2.getRight(), view2.getBottom());
        }
    }

    /* renamed from: androidx.transition.ChangeBounds$5, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass5 extends Property<View, PointF> {
        @Override // android.util.Property
        public final /* bridge */ /* synthetic */ PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        public final void set(View view, PointF pointF) {
            View view2 = view;
            PointF pointF2 = pointF;
            int round = Math.round(pointF2.x);
            int round2 = Math.round(pointF2.y);
            ViewUtils.a(view2, round, round2, view2.getWidth() + round, view2.getHeight() + round2);
        }
    }

    /* loaded from: classes.dex */
    public static class ClipListener extends AnimatorListenerAdapter implements Transition.TransitionListener {

        /* renamed from: a, reason: collision with root package name */
        public boolean f1669a;

        @Override // androidx.transition.Transition.TransitionListener
        public final void b() {
            throw null;
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
            this.f1669a = true;
        }

        @Override // androidx.transition.Transition.TransitionListener
        public final void h() {
            throw null;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            onAnimationEnd(animator, false);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
            onAnimationStart(animator, false);
            throw null;
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator, boolean z) {
            if (!this.f1669a) {
                throw null;
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator, boolean z) {
            ViewUtils.a(null, 0, 0, Math.max(0, 0), Math.max(0, 0));
            throw null;
        }
    }

    /* loaded from: classes.dex */
    public static class SuppressLayoutListener extends TransitionListenerAdapter {

        /* renamed from: a, reason: collision with root package name */
        public boolean f1670a = false;
        public final ViewGroup b;

        public SuppressLayoutListener(ViewGroup viewGroup) {
            this.b = viewGroup;
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public final void b() {
            ViewGroupUtils.a(this.b, false);
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public final void e(Transition transition) {
            if (!this.f1670a) {
                ViewGroupUtils.a(this.b, false);
            }
            transition.A(this);
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public final void g(Transition transition) {
            ViewGroupUtils.a(this.b, false);
            this.f1670a = true;
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public final void h() {
            ViewGroupUtils.a(this.b, true);
        }
    }

    /* loaded from: classes.dex */
    public static class ViewBounds {

        /* renamed from: a, reason: collision with root package name */
        public int f1671a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public int f1672c;
        public int d;
        public final View e;
        public int f;
        public int g;

        public ViewBounds(View view) {
            this.e = view;
        }
    }

    public static void O(TransitionValues transitionValues) {
        View view = transitionValues.b;
        HashMap hashMap = transitionValues.f1712a;
        if (!view.isLaidOut() && view.getWidth() == 0 && view.getHeight() == 0) {
            return;
        }
        hashMap.put("android:changeBounds:bounds", new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
        hashMap.put("android:changeBounds:parent", transitionValues.b.getParent());
    }

    @Override // androidx.transition.Transition
    public final void e(TransitionValues transitionValues) {
        O(transitionValues);
    }

    @Override // androidx.transition.Transition
    public final void h(TransitionValues transitionValues) {
        O(transitionValues);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.transition.Transition
    public final Animator l(ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
        int i;
        ChangeBounds changeBounds;
        ObjectAnimator a2;
        if (transitionValues != null) {
            HashMap hashMap = transitionValues.f1712a;
            if (transitionValues2 != null) {
                HashMap hashMap2 = transitionValues2.f1712a;
                ViewGroup viewGroup2 = (ViewGroup) hashMap.get("android:changeBounds:parent");
                ViewGroup viewGroup3 = (ViewGroup) hashMap2.get("android:changeBounds:parent");
                if (viewGroup2 != null && viewGroup3 != null) {
                    View view = transitionValues2.b;
                    Rect rect = (Rect) hashMap.get("android:changeBounds:bounds");
                    Rect rect2 = (Rect) hashMap2.get("android:changeBounds:bounds");
                    int i2 = rect.left;
                    int i3 = rect2.left;
                    int i4 = rect.top;
                    int i5 = rect2.top;
                    int i6 = rect.right;
                    int i7 = rect2.right;
                    int i8 = rect.bottom;
                    int i9 = rect2.bottom;
                    int i10 = i6 - i2;
                    int i11 = i8 - i4;
                    int i12 = i7 - i3;
                    int i13 = i9 - i5;
                    Rect rect3 = (Rect) hashMap.get("android:changeBounds:clip");
                    Rect rect4 = (Rect) hashMap2.get("android:changeBounds:clip");
                    if ((i10 != 0 && i11 != 0) || (i12 != 0 && i13 != 0)) {
                        if (i2 == i3 && i4 == i5) {
                            i = 0;
                        } else {
                            i = 1;
                        }
                        if (i6 != i7 || i8 != i9) {
                            i++;
                        }
                    } else {
                        i = 0;
                    }
                    if ((rect3 != null && !rect3.equals(rect4)) || (rect3 == null && rect4 != null)) {
                        i++;
                    }
                    int i14 = i;
                    if (i14 > 0) {
                        ViewUtils.a(view, i2, i4, i6, i8);
                        if (i14 == 2) {
                            if (i10 == i12 && i11 == i13) {
                                changeBounds = this;
                                a2 = ObjectAnimatorUtils.Api21Impl.a(view, L, changeBounds.B.a(i2, i4, i3, i5));
                            } else {
                                changeBounds = this;
                                ViewBounds viewBounds = new ViewBounds(view);
                                ObjectAnimator a3 = ObjectAnimatorUtils.Api21Impl.a(viewBounds, H, changeBounds.B.a(i2, i4, i3, i5));
                                ObjectAnimator a4 = ObjectAnimatorUtils.Api21Impl.a(viewBounds, I, changeBounds.B.a(i6, i8, i7, i9));
                                AnimatorSet animatorSet = new AnimatorSet();
                                animatorSet.playTogether(a3, a4);
                                animatorSet.addListener(new AnimatorListenerAdapter(viewBounds) { // from class: androidx.transition.ChangeBounds.6
                                    private final ViewBounds mViewBounds;

                                    {
                                        this.mViewBounds = viewBounds;
                                    }
                                });
                                a2 = animatorSet;
                            }
                        } else {
                            changeBounds = this;
                            if (i2 == i3 && i4 == i5) {
                                a2 = ObjectAnimatorUtils.Api21Impl.a(view, J, changeBounds.B.a(i6, i8, i7, i9));
                            } else {
                                a2 = ObjectAnimatorUtils.Api21Impl.a(view, K, changeBounds.B.a(i2, i4, i3, i5));
                            }
                        }
                        if (view.getParent() instanceof ViewGroup) {
                            ViewGroup viewGroup4 = (ViewGroup) view.getParent();
                            ViewGroupUtils.a(viewGroup4, true);
                            changeBounds.q().a(new SuppressLayoutListener(viewGroup4));
                        }
                        return a2;
                    }
                }
            }
        }
        return null;
    }

    @Override // androidx.transition.Transition
    public final String[] s() {
        return G;
    }
}
