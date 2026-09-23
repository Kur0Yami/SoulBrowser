package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.SuppressLint;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.RestrictTo;
import androidx.transition.Transition;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.HashMap;

/* loaded from: classes.dex */
public abstract class Visibility extends Transition {
    public static final String[] H = {"android:visibility:visibility", "android:visibility:parent"};
    public int G = 3;

    /* loaded from: classes.dex */
    public static class DisappearListener extends AnimatorListenerAdapter implements Transition.TransitionListener {

        /* renamed from: a, reason: collision with root package name */
        public final View f1722a;
        public final int b;

        /* renamed from: c, reason: collision with root package name */
        public final ViewGroup f1723c;
        public boolean e;
        public boolean f = false;
        public final boolean d = true;

        public DisappearListener(View view, int i) {
            this.f1722a = view;
            this.b = i;
            this.f1723c = (ViewGroup) view.getParent();
            a(true);
        }

        public final void a(boolean z) {
            ViewGroup viewGroup;
            if (this.d && this.e != z && (viewGroup = this.f1723c) != null) {
                this.e = z;
                ViewGroupUtils.a(viewGroup, z);
            }
        }

        @Override // androidx.transition.Transition.TransitionListener
        public final void b() {
            a(false);
            if (!this.f) {
                ViewUtils.b(this.f1722a, this.b);
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
            transition.A(this);
        }

        @Override // androidx.transition.Transition.TransitionListener
        public final void f(Transition transition) {
            transition.A(this);
        }

        @Override // androidx.transition.Transition.TransitionListener
        public final void g(Transition transition) {
        }

        @Override // androidx.transition.Transition.TransitionListener
        public final void h() {
            a(true);
            if (!this.f) {
                ViewUtils.b(this.f1722a, 0);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            this.f = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            if (!this.f) {
                ViewUtils.b(this.f1722a, this.b);
                ViewGroup viewGroup = this.f1723c;
                if (viewGroup != null) {
                    viewGroup.invalidate();
                }
            }
            a(false);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator, boolean z) {
            if (z) {
                ViewUtils.b(this.f1722a, 0);
                ViewGroup viewGroup = this.f1723c;
                if (viewGroup != null) {
                    viewGroup.invalidate();
                }
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator, boolean z) {
            if (z) {
                return;
            }
            if (!this.f) {
                ViewUtils.b(this.f1722a, this.b);
                ViewGroup viewGroup = this.f1723c;
                if (viewGroup != null) {
                    viewGroup.invalidate();
                }
            }
            a(false);
        }
    }

    @SuppressLint({"UniqueConstants"})
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface Mode {
    }

    /* loaded from: classes.dex */
    public class OverlayListener extends AnimatorListenerAdapter implements Transition.TransitionListener {

        /* renamed from: a, reason: collision with root package name */
        public final ViewGroup f1724a;
        public final View b;

        /* renamed from: c, reason: collision with root package name */
        public final View f1725c;
        public boolean d = true;

        public OverlayListener(ViewGroup viewGroup, View view, View view2) {
            this.f1724a = viewGroup;
            this.b = view;
            this.f1725c = view2;
        }

        public final void a() {
            this.f1725c.setTag(R.id.save_overlay_view, null);
            this.f1724a.getOverlay().remove(this.b);
            this.d = false;
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
            transition.A(this);
        }

        @Override // androidx.transition.Transition.TransitionListener
        public final void f(Transition transition) {
            transition.A(this);
        }

        @Override // androidx.transition.Transition.TransitionListener
        public final void g(Transition transition) {
            if (this.d) {
                a();
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            a();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public final void onAnimationPause(Animator animator) {
            this.f1724a.getOverlay().remove(this.b);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public final void onAnimationResume(Animator animator) {
            View view = this.b;
            if (view.getParent() == null) {
                this.f1724a.getOverlay().add(view);
            } else {
                Visibility.this.d();
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator, boolean z) {
            if (z) {
                View view = this.f1725c;
                int i = R.id.save_overlay_view;
                View view2 = this.b;
                view.setTag(i, view2);
                this.f1724a.getOverlay().add(view2);
                this.d = true;
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator, boolean z) {
            if (z) {
                return;
            }
            a();
        }

        @Override // androidx.transition.Transition.TransitionListener
        public final void b() {
        }

        @Override // androidx.transition.Transition.TransitionListener
        public final void h() {
        }
    }

    /* loaded from: classes.dex */
    public static class VisibilityInfo {

        /* renamed from: a, reason: collision with root package name */
        public boolean f1726a;
        public boolean b;

        /* renamed from: c, reason: collision with root package name */
        public int f1727c;
        public int d;
        public ViewGroup e;
        public ViewGroup f;
    }

    public static void O(TransitionValues transitionValues) {
        int visibility = transitionValues.b.getVisibility();
        HashMap hashMap = transitionValues.f1712a;
        hashMap.put("android:visibility:visibility", Integer.valueOf(visibility));
        hashMap.put("android:visibility:parent", transitionValues.b.getParent());
        int[] iArr = new int[2];
        transitionValues.b.getLocationOnScreen(iArr);
        hashMap.put("android:visibility:screenLocation", iArr);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0059 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0035  */
    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.transition.Visibility$VisibilityInfo, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.transition.Visibility.VisibilityInfo P(androidx.transition.TransitionValues r8, androidx.transition.TransitionValues r9) {
        /*
            androidx.transition.Visibility$VisibilityInfo r0 = new androidx.transition.Visibility$VisibilityInfo
            r0.<init>()
            r1 = 0
            r0.f1726a = r1
            r0.b = r1
            r2 = 0
            r3 = -1
            java.lang.String r4 = "android:visibility:parent"
            java.lang.String r5 = "android:visibility:visibility"
            if (r8 == 0) goto L2f
            java.util.HashMap r6 = r8.f1712a
            boolean r7 = r6.containsKey(r5)
            if (r7 == 0) goto L2f
            java.lang.Object r7 = r6.get(r5)
            java.lang.Integer r7 = (java.lang.Integer) r7
            int r7 = r7.intValue()
            r0.f1727c = r7
            java.lang.Object r6 = r6.get(r4)
            android.view.ViewGroup r6 = (android.view.ViewGroup) r6
            r0.e = r6
            goto L33
        L2f:
            r0.f1727c = r3
            r0.e = r2
        L33:
            if (r9 == 0) goto L52
            java.util.HashMap r6 = r9.f1712a
            boolean r7 = r6.containsKey(r5)
            if (r7 == 0) goto L52
            java.lang.Object r2 = r6.get(r5)
            java.lang.Integer r2 = (java.lang.Integer) r2
            int r2 = r2.intValue()
            r0.d = r2
            java.lang.Object r2 = r6.get(r4)
            android.view.ViewGroup r2 = (android.view.ViewGroup) r2
            r0.f = r2
            goto L56
        L52:
            r0.d = r3
            r0.f = r2
        L56:
            r2 = 1
            if (r8 == 0) goto L8a
            if (r9 == 0) goto L8a
            int r8 = r0.f1727c
            int r9 = r0.d
            if (r8 != r9) goto L68
            android.view.ViewGroup r3 = r0.e
            android.view.ViewGroup r4 = r0.f
            if (r3 != r4) goto L68
            goto L9f
        L68:
            if (r8 == r9) goto L78
            if (r8 != 0) goto L71
            r0.b = r1
            r0.f1726a = r2
            return r0
        L71:
            if (r9 != 0) goto L9f
            r0.b = r2
            r0.f1726a = r2
            return r0
        L78:
            android.view.ViewGroup r8 = r0.f
            if (r8 != 0) goto L81
            r0.b = r1
            r0.f1726a = r2
            return r0
        L81:
            android.view.ViewGroup r8 = r0.e
            if (r8 != 0) goto L9f
            r0.b = r2
            r0.f1726a = r2
            return r0
        L8a:
            if (r8 != 0) goto L95
            int r8 = r0.d
            if (r8 != 0) goto L95
            r0.b = r2
            r0.f1726a = r2
            return r0
        L95:
            if (r9 != 0) goto L9f
            int r8 = r0.f1727c
            if (r8 != 0) goto L9f
            r0.b = r1
            r0.f1726a = r2
        L9f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.Visibility.P(androidx.transition.TransitionValues, androidx.transition.TransitionValues):androidx.transition.Visibility$VisibilityInfo");
    }

    public Animator Q(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return null;
    }

    public Animator R(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return null;
    }

    @Override // androidx.transition.Transition
    public void e(TransitionValues transitionValues) {
        O(transitionValues);
    }

    @Override // androidx.transition.Transition
    public void h(TransitionValues transitionValues) {
        O(transitionValues);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0043, code lost:
    
        if (P(p(r4, false), t(r4, false)).f1726a != false) goto L9;
     */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01d6  */
    @Override // androidx.transition.Transition
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.animation.Animator l(android.view.ViewGroup r24, androidx.transition.TransitionValues r25, androidx.transition.TransitionValues r26) {
        /*
            Method dump skipped, instructions count: 679
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.Visibility.l(android.view.ViewGroup, androidx.transition.TransitionValues, androidx.transition.TransitionValues):android.animation.Animator");
    }

    @Override // androidx.transition.Transition
    public final String[] s() {
        return H;
    }

    @Override // androidx.transition.Transition
    public final boolean v(TransitionValues transitionValues, TransitionValues transitionValues2) {
        if (transitionValues != null || transitionValues2 != null) {
            if (transitionValues == null || transitionValues2 == null || transitionValues2.f1712a.containsKey("android:visibility:visibility") == transitionValues.f1712a.containsKey("android:visibility:visibility")) {
                VisibilityInfo P = P(transitionValues, transitionValues2);
                if (P.f1726a) {
                    if (P.f1727c == 0 || P.d == 0) {
                        return true;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }
}
