package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.content.Context;
import android.content.res.Resources;
import android.transition.Transition;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import androidx.collection.ArrayMap;
import androidx.core.os.CancellationSignal;
import androidx.core.view.ViewCompat;
import androidx.fragment.R;
import androidx.fragment.app.FragmentAnim;
import androidx.fragment.app.SpecialEffectsController;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004¨\u0006\u0005"}, d2 = {"Landroidx/fragment/app/DefaultSpecialEffectsController;", "Landroidx/fragment/app/SpecialEffectsController;", "AnimationInfo", "SpecialEffectsInfo", "TransitionInfo", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDefaultSpecialEffectsController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultSpecialEffectsController.kt\nandroidx/fragment/app/DefaultSpecialEffectsController\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,877:1\n288#2,2:878\n533#2,6:880\n819#2:886\n847#2,2:887\n766#2:889\n857#2,2:890\n1789#2,3:892\n819#2:895\n847#2,2:896\n1855#2,2:898\n*S KotlinDebug\n*F\n+ 1 DefaultSpecialEffectsController.kt\nandroidx/fragment/app/DefaultSpecialEffectsController\n*L\n47#1:878,2\n53#1:880,6\n312#1:886\n312#1:887,2\n315#1:889\n315#1:890,2\n317#1:892,3\n629#1:895\n629#1:896,2\n632#1:898,2\n*E\n"})
/* loaded from: classes.dex */
public final class DefaultSpecialEffectsController extends SpecialEffectsController {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;", "Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class AnimationInfo extends SpecialEffectsInfo {

        /* renamed from: c, reason: collision with root package name */
        public final boolean f1069c;
        public boolean d;
        public FragmentAnim.AnimationOrAnimator e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnimationInfo(SpecialEffectsController.Operation operation, CancellationSignal signal, boolean z) {
            super(operation, signal);
            Intrinsics.checkNotNullParameter(operation, "operation");
            Intrinsics.checkNotNullParameter(signal, "signal");
            this.f1069c = z;
        }

        public final FragmentAnim.AnimationOrAnimator c(Context context) {
            boolean z;
            int exitAnim;
            Animation loadAnimation;
            FragmentAnim.AnimationOrAnimator animationOrAnimator;
            int i;
            Intrinsics.checkNotNullParameter(context, "context");
            if (this.d) {
                return this.e;
            }
            SpecialEffectsController.Operation operation = this.f1070a;
            Fragment fragment = operation.f1147c;
            if (operation.f1146a == SpecialEffectsController.Operation.State.f) {
                z = true;
            } else {
                z = false;
            }
            int nextTransition = fragment.getNextTransition();
            if (this.f1069c) {
                if (z) {
                    exitAnim = fragment.getPopEnterAnim();
                } else {
                    exitAnim = fragment.getPopExitAnim();
                }
            } else if (z) {
                exitAnim = fragment.getEnterAnim();
            } else {
                exitAnim = fragment.getExitAnim();
            }
            fragment.setAnimations(0, 0, 0, 0);
            ViewGroup viewGroup = fragment.mContainer;
            FragmentAnim.AnimationOrAnimator animationOrAnimator2 = null;
            if (viewGroup != null && viewGroup.getTag(R.id.visible_removing_fragment_view_tag) != null) {
                fragment.mContainer.setTag(R.id.visible_removing_fragment_view_tag, null);
            }
            ViewGroup viewGroup2 = fragment.mContainer;
            if (viewGroup2 == null || viewGroup2.getLayoutTransition() == null) {
                Animation onCreateAnimation = fragment.onCreateAnimation(nextTransition, z, exitAnim);
                if (onCreateAnimation != null) {
                    animationOrAnimator2 = new FragmentAnim.AnimationOrAnimator(onCreateAnimation);
                } else {
                    Animator onCreateAnimator = fragment.onCreateAnimator(nextTransition, z, exitAnim);
                    if (onCreateAnimator != null) {
                        animationOrAnimator2 = new FragmentAnim.AnimationOrAnimator(onCreateAnimator);
                    } else {
                        if (exitAnim == 0 && nextTransition != 0) {
                            if (nextTransition != 4097) {
                                if (nextTransition != 8194) {
                                    if (nextTransition != 8197) {
                                        if (nextTransition != 4099) {
                                            if (nextTransition != 4100) {
                                                i = -1;
                                            } else if (z) {
                                                i = FragmentAnim.a(context, android.R.attr.activityOpenEnterAnimation);
                                            } else {
                                                i = FragmentAnim.a(context, android.R.attr.activityOpenExitAnimation);
                                            }
                                        } else if (z) {
                                            i = R.animator.fragment_fade_enter;
                                        } else {
                                            i = R.animator.fragment_fade_exit;
                                        }
                                    } else if (z) {
                                        i = FragmentAnim.a(context, android.R.attr.activityCloseEnterAnimation);
                                    } else {
                                        i = FragmentAnim.a(context, android.R.attr.activityCloseExitAnimation);
                                    }
                                } else if (z) {
                                    i = R.animator.fragment_close_enter;
                                } else {
                                    i = R.animator.fragment_close_exit;
                                }
                            } else if (z) {
                                i = R.animator.fragment_open_enter;
                            } else {
                                i = R.animator.fragment_open_exit;
                            }
                            exitAnim = i;
                        }
                        if (exitAnim != 0) {
                            boolean equals = "anim".equals(context.getResources().getResourceTypeName(exitAnim));
                            try {
                                if (equals) {
                                    try {
                                        loadAnimation = AnimationUtils.loadAnimation(context, exitAnim);
                                    } catch (Resources.NotFoundException e) {
                                        throw e;
                                    } catch (RuntimeException unused) {
                                    }
                                    if (loadAnimation != null) {
                                        animationOrAnimator = new FragmentAnim.AnimationOrAnimator(loadAnimation);
                                        animationOrAnimator2 = animationOrAnimator;
                                    }
                                }
                                Animator loadAnimator = AnimatorInflater.loadAnimator(context, exitAnim);
                                if (loadAnimator != null) {
                                    animationOrAnimator = new FragmentAnim.AnimationOrAnimator(loadAnimator);
                                    animationOrAnimator2 = animationOrAnimator;
                                }
                            } catch (RuntimeException e2) {
                                if (!equals) {
                                    Animation loadAnimation2 = AnimationUtils.loadAnimation(context, exitAnim);
                                    if (loadAnimation2 != null) {
                                        animationOrAnimator2 = new FragmentAnim.AnimationOrAnimator(loadAnimation2);
                                    }
                                } else {
                                    throw e2;
                                }
                            }
                        }
                    }
                }
            }
            this.e = animationOrAnimator2;
            this.d = true;
            return animationOrAnimator2;
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0012\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static class SpecialEffectsInfo {

        /* renamed from: a, reason: collision with root package name */
        public final SpecialEffectsController.Operation f1070a;
        public final CancellationSignal b;

        public SpecialEffectsInfo(SpecialEffectsController.Operation operation, CancellationSignal signal) {
            Intrinsics.checkNotNullParameter(operation, "operation");
            Intrinsics.checkNotNullParameter(signal, "signal");
            this.f1070a = operation;
            this.b = signal;
        }

        public final void a() {
            CancellationSignal signal = this.b;
            Intrinsics.checkNotNullParameter(signal, "signal");
            SpecialEffectsController.Operation operation = this.f1070a;
            LinkedHashSet linkedHashSet = operation.e;
            if (linkedHashSet.remove(signal) && linkedHashSet.isEmpty()) {
                operation.b();
            }
        }

        public final boolean b() {
            SpecialEffectsController.Operation operation = this.f1070a;
            View view = operation.f1147c.mView;
            Intrinsics.checkNotNullExpressionValue(view, "operation.fragment.mView");
            SpecialEffectsController.Operation.State a2 = SpecialEffectsController.Operation.State.Companion.a(view);
            SpecialEffectsController.Operation.State state = operation.f1146a;
            if (a2 != state) {
                SpecialEffectsController.Operation.State state2 = SpecialEffectsController.Operation.State.f;
                if (a2 == state2 || state == state2) {
                    return false;
                }
                return true;
            }
            return true;
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;", "Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class TransitionInfo extends SpecialEffectsInfo {

        /* renamed from: c, reason: collision with root package name */
        public final Object f1071c;
        public final boolean d;
        public final Object e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TransitionInfo(SpecialEffectsController.Operation operation, CancellationSignal signal, boolean z, boolean z2) {
            super(operation, signal);
            Object exitTransition;
            boolean z3;
            Object obj;
            Intrinsics.checkNotNullParameter(operation, "operation");
            Intrinsics.checkNotNullParameter(signal, "signal");
            Fragment fragment = operation.f1147c;
            SpecialEffectsController.Operation.State state = operation.f1146a;
            SpecialEffectsController.Operation.State state2 = SpecialEffectsController.Operation.State.f;
            if (state == state2) {
                if (z) {
                    exitTransition = fragment.getReenterTransition();
                } else {
                    exitTransition = fragment.getEnterTransition();
                }
            } else if (z) {
                exitTransition = fragment.getReturnTransition();
            } else {
                exitTransition = fragment.getExitTransition();
            }
            this.f1071c = exitTransition;
            if (operation.f1146a == state2) {
                if (z) {
                    z3 = fragment.getAllowReturnTransitionOverlap();
                } else {
                    z3 = fragment.getAllowEnterTransitionOverlap();
                }
            } else {
                z3 = true;
            }
            this.d = z3;
            if (z2) {
                if (z) {
                    obj = fragment.getSharedElementReturnTransition();
                } else {
                    obj = fragment.getSharedElementEnterTransition();
                }
            } else {
                obj = null;
            }
            this.e = obj;
        }

        public final FragmentTransitionImpl c() {
            Object obj = this.f1071c;
            FragmentTransitionImpl d = d(obj);
            Object obj2 = this.e;
            FragmentTransitionImpl d2 = d(obj2);
            if (d != null && d2 != null && d != d2) {
                throw new IllegalArgumentException(("Mixing framework transitions and AndroidX transitions is not allowed. Fragment " + this.f1070a.f1147c + " returned Transition " + obj + " which uses a different Transition  type than its shared element transition " + obj2).toString());
            }
            if (d == null) {
                return d2;
            }
            return d;
        }

        public final FragmentTransitionImpl d(Object obj) {
            if (obj == null) {
                return null;
            }
            FragmentTransitionImpl fragmentTransitionImpl = FragmentTransition.f1131a;
            if (obj instanceof Transition) {
                return fragmentTransitionImpl;
            }
            FragmentTransitionImpl fragmentTransitionImpl2 = FragmentTransition.b;
            if (fragmentTransitionImpl2 != null && fragmentTransitionImpl2.e(obj)) {
                return fragmentTransitionImpl2;
            }
            throw new IllegalArgumentException("Transition " + obj + " for fragment " + this.f1070a.f1147c + " is not a valid framework Transition or AndroidX Transition");
        }
    }

    public static void j(View view, ArrayList arrayList) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (viewGroup.isTransitionGroup()) {
                if (!arrayList.contains(view)) {
                    arrayList.add(view);
                    return;
                }
                return;
            }
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View child = viewGroup.getChildAt(i);
                if (child.getVisibility() == 0) {
                    Intrinsics.checkNotNullExpressionValue(child, "child");
                    j(child, arrayList);
                }
            }
            return;
        }
        if (!arrayList.contains(view)) {
            arrayList.add(view);
        }
    }

    public static void k(ArrayMap arrayMap, View view) {
        String o = ViewCompat.o(view);
        if (o != null) {
            arrayMap.put(o, view);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View child = viewGroup.getChildAt(i);
                if (child.getVisibility() == 0) {
                    Intrinsics.checkNotNullExpressionValue(child, "child");
                    k(arrayMap, child);
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:117:0x09a3  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0a68 A[LOOP:10: B:155:0x0a62->B:157:0x0a68, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:161:0x0a88  */
    /* JADX WARN: Removed duplicated region for block: B:163:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x08cc  */
    /* JADX WARN: Type inference failed for: r0v39, types: [androidx.core.os.CancellationSignal, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v32, types: [androidx.collection.SimpleArrayMap, androidx.collection.ArrayMap] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v78, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v28, types: [java.lang.Object, androidx.collection.SimpleArrayMap, androidx.collection.ArrayMap] */
    /* JADX WARN: Type inference failed for: r5v75, types: [androidx.core.os.CancellationSignal, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.Object, androidx.collection.SimpleArrayMap, androidx.collection.ArrayMap] */
    @Override // androidx.fragment.app.SpecialEffectsController
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c(java.util.List r42, final boolean r43) {
        /*
            Method dump skipped, instructions count: 2724
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.DefaultSpecialEffectsController.c(java.util.List, boolean):void");
    }
}
