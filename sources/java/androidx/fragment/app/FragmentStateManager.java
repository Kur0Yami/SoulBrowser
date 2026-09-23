package androidx.fragment.app;

import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.core.view.ViewCompat;
import androidx.fragment.R;
import androidx.fragment.app.SpecialEffectsController;
import androidx.fragment.app.strictmode.FragmentStrictMode;
import androidx.fragment.app.strictmode.Violation;
import androidx.fragment.app.strictmode.WrongFragmentContainerViolation;
import androidx.fragment.app.strictmode.WrongNestedHierarchyViolation;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.ViewModelStoreOwner;
import java.util.ArrayList;
import java.util.WeakHashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class FragmentStateManager {

    /* renamed from: a, reason: collision with root package name */
    public final FragmentLifecycleCallbacksDispatcher f1118a;
    public final FragmentStore b;

    /* renamed from: c, reason: collision with root package name */
    public final Fragment f1119c;
    public boolean d = false;
    public int e = -1;

    /* renamed from: androidx.fragment.app.FragmentStateManager$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass2 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f1121a;

        static {
            int[] iArr = new int[Lifecycle.State.values().length];
            f1121a = iArr;
            try {
                iArr[4] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1121a[3] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1121a[2] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1121a[1] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public FragmentStateManager(FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher, FragmentStore fragmentStore, Fragment fragment) {
        this.f1118a = fragmentLifecycleCallbacksDispatcher;
        this.b = fragmentStore;
        this.f1119c = fragment;
    }

    public final void a() {
        Bundle bundle;
        boolean J = FragmentManager.J(3);
        Fragment fragment = this.f1119c;
        if (J) {
            Log.d("FragmentManager", "moveto ACTIVITY_CREATED: " + fragment);
        }
        Bundle bundle2 = fragment.mSavedFragmentState;
        if (bundle2 != null) {
            bundle = bundle2.getBundle("savedInstanceState");
        } else {
            bundle = null;
        }
        fragment.performActivityCreated(bundle);
        this.f1118a.a(false);
    }

    public final void b() {
        Fragment expectedParentFragment;
        View view;
        View view2;
        Fragment fragment;
        Fragment fragment2 = this.f1119c;
        View view3 = fragment2.mContainer;
        while (true) {
            expectedParentFragment = null;
            if (view3 == null) {
                break;
            }
            Object tag = view3.getTag(R.id.fragment_container_view_tag);
            if (tag instanceof Fragment) {
                fragment = (Fragment) tag;
            } else {
                fragment = null;
            }
            if (fragment != null) {
                expectedParentFragment = fragment;
                break;
            }
            Object parent = view3.getParent();
            if (parent instanceof View) {
                view3 = (View) parent;
            } else {
                view3 = null;
            }
        }
        Fragment parentFragment = fragment2.getParentFragment();
        if (expectedParentFragment != null && !expectedParentFragment.equals(parentFragment)) {
            int i = fragment2.mContainerId;
            FragmentStrictMode.Policy policy = FragmentStrictMode.f1161a;
            Intrinsics.checkNotNullParameter(fragment2, "fragment");
            Intrinsics.checkNotNullParameter(expectedParentFragment, "expectedParentFragment");
            Intrinsics.checkNotNullParameter(fragment2, "fragment");
            Intrinsics.checkNotNullParameter(expectedParentFragment, "expectedParentFragment");
            StringBuilder sb = new StringBuilder("Attempting to nest fragment ");
            sb.append(fragment2);
            sb.append(" within the view of parent fragment ");
            sb.append(expectedParentFragment);
            sb.append(" via container with ID ");
            Violation violation = new Violation(fragment2, android.support.v4.media.a.g(i, " without using parent's childFragmentManager", sb));
            FragmentStrictMode.c(violation);
            FragmentStrictMode.Policy a2 = FragmentStrictMode.a(fragment2);
            if (a2.f1164a.contains(FragmentStrictMode.Flag.i) && FragmentStrictMode.e(a2, fragment2.getClass(), WrongNestedHierarchyViolation.class)) {
                FragmentStrictMode.b(a2, violation);
            }
        }
        ArrayList arrayList = this.b.f1123a;
        ViewGroup viewGroup = fragment2.mContainer;
        int i2 = -1;
        if (viewGroup != null) {
            int indexOf = arrayList.indexOf(fragment2);
            int i3 = indexOf - 1;
            while (true) {
                if (i3 < 0) {
                    while (true) {
                        indexOf++;
                        if (indexOf >= arrayList.size()) {
                            break;
                        }
                        Fragment fragment3 = (Fragment) arrayList.get(indexOf);
                        if (fragment3.mContainer == viewGroup && (view = fragment3.mView) != null) {
                            i2 = viewGroup.indexOfChild(view);
                            break;
                        }
                    }
                } else {
                    Fragment fragment4 = (Fragment) arrayList.get(i3);
                    if (fragment4.mContainer == viewGroup && (view2 = fragment4.mView) != null) {
                        i2 = viewGroup.indexOfChild(view2) + 1;
                        break;
                    }
                    i3--;
                }
            }
        }
        fragment2.mContainer.addView(fragment2.mView, i2);
    }

    public final void c() {
        boolean J = FragmentManager.J(3);
        Fragment fragment = this.f1119c;
        if (J) {
            Log.d("FragmentManager", "moveto ATTACHED: " + fragment);
        }
        Fragment fragment2 = fragment.mTarget;
        FragmentStateManager fragmentStateManager = null;
        FragmentStore fragmentStore = this.b;
        if (fragment2 != null) {
            FragmentStateManager fragmentStateManager2 = (FragmentStateManager) fragmentStore.b.get(fragment2.mWho);
            if (fragmentStateManager2 != null) {
                fragment.mTargetWho = fragment.mTarget.mWho;
                fragment.mTarget = null;
                fragmentStateManager = fragmentStateManager2;
            } else {
                throw new IllegalStateException("Fragment " + fragment + " declared target fragment " + fragment.mTarget + " that does not belong to this FragmentManager!");
            }
        } else {
            String str = fragment.mTargetWho;
            if (str != null && (fragmentStateManager = (FragmentStateManager) fragmentStore.b.get(str)) == null) {
                StringBuilder sb = new StringBuilder("Fragment ");
                sb.append(fragment);
                sb.append(" declared target fragment ");
                throw new IllegalStateException(android.support.v4.media.a.p(sb, fragment.mTargetWho, " that does not belong to this FragmentManager!"));
            }
        }
        if (fragmentStateManager != null) {
            fragmentStateManager.k();
        }
        FragmentManager fragmentManager = fragment.mFragmentManager;
        fragment.mHost = fragmentManager.u;
        fragment.mParentFragment = fragmentManager.w;
        FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher = this.f1118a;
        fragmentLifecycleCallbacksDispatcher.g(false);
        fragment.performAttach();
        fragmentLifecycleCallbacksDispatcher.b(false);
    }

    public final int d() {
        int i;
        SpecialEffectsController.Operation.LifecycleImpact lifecycleImpact;
        Object obj;
        int i2;
        Fragment fragment = this.f1119c;
        if (fragment.mFragmentManager == null) {
            return fragment.mState;
        }
        int i3 = this.e;
        int ordinal = fragment.mMaxState.ordinal();
        int i4 = 0;
        int i5 = 2;
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal != 3) {
                    if (ordinal != 4) {
                        i3 = Math.min(i3, -1);
                    }
                } else {
                    i3 = Math.min(i3, 5);
                }
            } else {
                i3 = Math.min(i3, 1);
            }
        } else {
            i3 = Math.min(i3, 0);
        }
        if (fragment.mFromLayout) {
            if (fragment.mInLayout) {
                i3 = Math.max(this.e, 2);
                View view = fragment.mView;
                if (view != null && view.getParent() == null) {
                    i3 = Math.min(i3, 2);
                }
            } else {
                i3 = this.e < 4 ? Math.min(i3, fragment.mState) : Math.min(i3, 1);
            }
        }
        if (!fragment.mAdded) {
            i3 = Math.min(i3, 1);
        }
        ViewGroup viewGroup = fragment.mContainer;
        SpecialEffectsController.Operation.LifecycleImpact lifecycleImpact2 = null;
        if (viewGroup != null) {
            SpecialEffectsController g = SpecialEffectsController.g(viewGroup, fragment.getParentFragmentManager());
            Intrinsics.checkNotNullParameter(this, "fragmentStateManager");
            Intrinsics.checkNotNullExpressionValue(fragment, "fragmentStateManager.fragment");
            SpecialEffectsController.Operation e = g.e(fragment);
            if (e != null) {
                lifecycleImpact = e.b;
            } else {
                lifecycleImpact = null;
            }
            ArrayList arrayList = g.f1145c;
            int size = arrayList.size();
            while (true) {
                if (i4 < size) {
                    obj = arrayList.get(i4);
                    i4++;
                    SpecialEffectsController.Operation operation = (SpecialEffectsController.Operation) obj;
                    i = i5;
                    if (Intrinsics.areEqual(operation.f1147c, fragment) && !operation.f) {
                        break;
                    }
                    i5 = i;
                } else {
                    i = i5;
                    obj = null;
                    break;
                }
            }
            SpecialEffectsController.Operation operation2 = (SpecialEffectsController.Operation) obj;
            if (operation2 != null) {
                lifecycleImpact2 = operation2.b;
            }
            if (lifecycleImpact == null) {
                i2 = -1;
            } else {
                i2 = SpecialEffectsController.WhenMappings.$EnumSwitchMapping$0[lifecycleImpact.ordinal()];
            }
            if (i2 != -1 && i2 != 1) {
                lifecycleImpact2 = lifecycleImpact;
            }
        } else {
            i = 2;
        }
        if (lifecycleImpact2 == SpecialEffectsController.Operation.LifecycleImpact.f) {
            i3 = Math.min(i3, 6);
        } else if (lifecycleImpact2 == SpecialEffectsController.Operation.LifecycleImpact.g) {
            i3 = Math.max(i3, 3);
        } else if (fragment.mRemoving) {
            if (fragment.isInBackStack()) {
                i3 = Math.min(i3, 1);
            } else {
                i3 = Math.min(i3, -1);
            }
        }
        if (fragment.mDeferStart && fragment.mState < 5) {
            i3 = Math.min(i3, 4);
        }
        if (FragmentManager.J(i)) {
            Log.v("FragmentManager", "computeExpectedState() of " + i3 + " for " + fragment);
        }
        return i3;
    }

    public final void e() {
        Bundle bundle;
        boolean J = FragmentManager.J(3);
        Fragment fragment = this.f1119c;
        if (J) {
            Log.d("FragmentManager", "moveto CREATED: " + fragment);
        }
        Bundle bundle2 = fragment.mSavedFragmentState;
        if (bundle2 != null) {
            bundle = bundle2.getBundle("savedInstanceState");
        } else {
            bundle = null;
        }
        if (!fragment.mIsCreated) {
            FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher = this.f1118a;
            fragmentLifecycleCallbacksDispatcher.h(false);
            fragment.performCreate(bundle);
            fragmentLifecycleCallbacksDispatcher.c(false);
            return;
        }
        fragment.mState = 1;
        fragment.restoreChildFragmentState();
    }

    public final void f() {
        Bundle bundle;
        String str;
        Fragment fragment = this.f1119c;
        if (fragment.mFromLayout) {
            return;
        }
        if (FragmentManager.J(3)) {
            Log.d("FragmentManager", "moveto CREATE_VIEW: " + fragment);
        }
        Bundle bundle2 = fragment.mSavedFragmentState;
        ViewGroup container = null;
        if (bundle2 != null) {
            bundle = bundle2.getBundle("savedInstanceState");
        } else {
            bundle = null;
        }
        LayoutInflater performGetLayoutInflater = fragment.performGetLayoutInflater(bundle);
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null) {
            container = viewGroup;
        } else {
            int i = fragment.mContainerId;
            if (i != 0) {
                if (i != -1) {
                    container = (ViewGroup) fragment.mFragmentManager.v.b(i);
                    if (container == null) {
                        if (!fragment.mRestored) {
                            try {
                                str = fragment.getResources().getResourceName(fragment.mContainerId);
                            } catch (Resources.NotFoundException unused) {
                                str = "unknown";
                            }
                            throw new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(fragment.mContainerId) + " (" + str + ") for fragment " + fragment);
                        }
                    } else if (!(container instanceof FragmentContainerView)) {
                        FragmentStrictMode.Policy policy = FragmentStrictMode.f1161a;
                        Intrinsics.checkNotNullParameter(fragment, "fragment");
                        Intrinsics.checkNotNullParameter(container, "container");
                        WrongFragmentContainerViolation wrongFragmentContainerViolation = new WrongFragmentContainerViolation(fragment, container);
                        FragmentStrictMode.c(wrongFragmentContainerViolation);
                        FragmentStrictMode.Policy a2 = FragmentStrictMode.a(fragment);
                        if (a2.f1164a.contains(FragmentStrictMode.Flag.m) && FragmentStrictMode.e(a2, fragment.getClass(), WrongFragmentContainerViolation.class)) {
                            FragmentStrictMode.b(a2, wrongFragmentContainerViolation);
                        }
                    }
                } else {
                    throw new IllegalArgumentException(android.support.v4.media.a.j("Cannot create fragment ", fragment, " for a container view with no id"));
                }
            }
        }
        fragment.mContainer = container;
        fragment.performCreateView(performGetLayoutInflater, container, bundle);
        if (fragment.mView != null) {
            if (FragmentManager.J(3)) {
                Log.d("FragmentManager", "moveto VIEW_CREATED: " + fragment);
            }
            fragment.mView.setSaveFromParentEnabled(false);
            fragment.mView.setTag(R.id.fragment_container_view_tag, fragment);
            if (container != null) {
                b();
            }
            if (fragment.mHidden) {
                fragment.mView.setVisibility(8);
            }
            View view = fragment.mView;
            WeakHashMap weakHashMap = ViewCompat.f792a;
            if (view.isAttachedToWindow()) {
                ViewCompat.x(fragment.mView);
            } else {
                final View view2 = fragment.mView;
                view2.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: androidx.fragment.app.FragmentStateManager.1
                    @Override // android.view.View.OnAttachStateChangeListener
                    public final void onViewAttachedToWindow(View view3) {
                        View view4 = view2;
                        view4.removeOnAttachStateChangeListener(this);
                        ViewCompat.x(view4);
                    }

                    @Override // android.view.View.OnAttachStateChangeListener
                    public final void onViewDetachedFromWindow(View view3) {
                    }
                });
            }
            fragment.performViewCreated();
            this.f1118a.m(fragment, fragment.mView, bundle, false);
            int visibility = fragment.mView.getVisibility();
            fragment.setPostOnViewCreatedAlpha(fragment.mView.getAlpha());
            if (fragment.mContainer != null && visibility == 0) {
                View findFocus = fragment.mView.findFocus();
                if (findFocus != null) {
                    fragment.setFocusedView(findFocus);
                    if (FragmentManager.J(2)) {
                        Log.v("FragmentManager", "requestFocus: Saved focused view " + findFocus + " for Fragment " + fragment);
                    }
                }
                fragment.mView.setAlpha(0.0f);
            }
        }
        fragment.mState = 2;
    }

    public final void g() {
        boolean z;
        boolean z2;
        Fragment b;
        boolean J = FragmentManager.J(3);
        Fragment fragment = this.f1119c;
        if (J) {
            Log.d("FragmentManager", "movefrom CREATED: " + fragment);
        }
        int i = 0;
        boolean z3 = true;
        if (fragment.mRemoving && !fragment.isInBackStack()) {
            z = true;
        } else {
            z = false;
        }
        FragmentStore fragmentStore = this.b;
        if (z && !fragment.mBeingSaved) {
            fragmentStore.i(fragment.mWho, null);
        }
        if (!z) {
            FragmentManagerViewModel fragmentManagerViewModel = fragmentStore.d;
            if (fragmentManagerViewModel.d.containsKey(fragment.mWho) && fragmentManagerViewModel.g) {
                z2 = fragmentManagerViewModel.h;
            } else {
                z2 = true;
            }
            if (!z2) {
                String str = fragment.mTargetWho;
                if (str != null && (b = fragmentStore.b(str)) != null && b.mRetainInstance) {
                    fragment.mTarget = b;
                }
                fragment.mState = 0;
                return;
            }
        }
        FragmentHostCallback<?> fragmentHostCallback = fragment.mHost;
        if (fragmentHostCallback instanceof ViewModelStoreOwner) {
            z3 = fragmentStore.d.h;
        } else {
            FragmentActivity fragmentActivity = fragmentHostCallback.f;
            if (android.support.v4.media.a.A(fragmentActivity)) {
                z3 = true ^ fragmentActivity.isChangingConfigurations();
            }
        }
        if ((z && !fragment.mBeingSaved) || z3) {
            fragmentStore.d.d(fragment);
        }
        fragment.performDestroy();
        this.f1118a.d(false);
        ArrayList d = fragmentStore.d();
        int size = d.size();
        while (i < size) {
            Object obj = d.get(i);
            i++;
            FragmentStateManager fragmentStateManager = (FragmentStateManager) obj;
            if (fragmentStateManager != null) {
                Fragment fragment2 = fragmentStateManager.f1119c;
                if (fragment.mWho.equals(fragment2.mTargetWho)) {
                    fragment2.mTarget = fragment;
                    fragment2.mTargetWho = null;
                }
            }
        }
        String str2 = fragment.mTargetWho;
        if (str2 != null) {
            fragment.mTarget = fragmentStore.b(str2);
        }
        fragmentStore.h(this);
    }

    public final void h() {
        View view;
        boolean J = FragmentManager.J(3);
        Fragment fragment = this.f1119c;
        if (J) {
            Log.d("FragmentManager", "movefrom CREATE_VIEW: " + fragment);
        }
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null && (view = fragment.mView) != null) {
            viewGroup.removeView(view);
        }
        fragment.performDestroyView();
        this.f1118a.n(false);
        fragment.mContainer = null;
        fragment.mView = null;
        fragment.mViewLifecycleOwner = null;
        fragment.mViewLifecycleOwnerLiveData.i(null);
        fragment.mInLayout = false;
    }

    public final void i() {
        boolean z;
        boolean J = FragmentManager.J(3);
        Fragment fragment = this.f1119c;
        if (J) {
            Log.d("FragmentManager", "movefrom ATTACHED: " + fragment);
        }
        fragment.performDetach();
        this.f1118a.e(false);
        fragment.mState = -1;
        fragment.mHost = null;
        fragment.mParentFragment = null;
        fragment.mFragmentManager = null;
        if (!fragment.mRemoving || fragment.isInBackStack()) {
            FragmentManagerViewModel fragmentManagerViewModel = this.b.d;
            if (fragmentManagerViewModel.d.containsKey(fragment.mWho) && fragmentManagerViewModel.g) {
                z = fragmentManagerViewModel.h;
            } else {
                z = true;
            }
            if (!z) {
                return;
            }
        }
        if (FragmentManager.J(3)) {
            Log.d("FragmentManager", "initState called for fragment: " + fragment);
        }
        fragment.initState();
    }

    public final void j() {
        Bundle bundle;
        Fragment fragment = this.f1119c;
        if (fragment.mFromLayout && fragment.mInLayout && !fragment.mPerformedCreateView) {
            if (FragmentManager.J(3)) {
                Log.d("FragmentManager", "moveto CREATE_VIEW: " + fragment);
            }
            Bundle bundle2 = fragment.mSavedFragmentState;
            if (bundle2 != null) {
                bundle = bundle2.getBundle("savedInstanceState");
            } else {
                bundle = null;
            }
            fragment.performCreateView(fragment.performGetLayoutInflater(bundle), null, bundle);
            View view = fragment.mView;
            if (view != null) {
                view.setSaveFromParentEnabled(false);
                fragment.mView.setTag(R.id.fragment_container_view_tag, fragment);
                if (fragment.mHidden) {
                    fragment.mView.setVisibility(8);
                }
                fragment.performViewCreated();
                this.f1118a.m(fragment, fragment.mView, bundle, false);
                fragment.mState = 2;
            }
        }
    }

    public final void k() {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        ViewGroup viewGroup3;
        boolean z = this.d;
        Fragment fragment = this.f1119c;
        if (z) {
            if (FragmentManager.J(2)) {
                Log.v("FragmentManager", "Ignoring re-entrant call to moveToExpectedState() for " + fragment);
                return;
            }
            return;
        }
        try {
            this.d = true;
            boolean z2 = false;
            while (true) {
                int d = d();
                int i = fragment.mState;
                FragmentStore fragmentStore = this.b;
                if (d != i) {
                    FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher = this.f1118a;
                    if (d > i) {
                        switch (i + 1) {
                            case 0:
                                c();
                                break;
                            case 1:
                                e();
                                break;
                            case 2:
                                j();
                                f();
                                break;
                            case 3:
                                a();
                                break;
                            case 4:
                                if (fragment.mView != null && (viewGroup3 = fragment.mContainer) != null) {
                                    SpecialEffectsController.g(viewGroup3, fragment.getParentFragmentManager()).b(SpecialEffectsController.Operation.State.Companion.b(fragment.mView.getVisibility()), this);
                                }
                                fragment.mState = 4;
                                break;
                            case 5:
                                if (FragmentManager.J(3)) {
                                    Log.d("FragmentManager", "moveto STARTED: " + fragment);
                                }
                                fragment.performStart();
                                fragmentLifecycleCallbacksDispatcher.k(false);
                                break;
                            case 6:
                                fragment.mState = 6;
                                break;
                            case 7:
                                m();
                                break;
                        }
                    } else {
                        switch (i - 1) {
                            case -1:
                                i();
                                break;
                            case 0:
                                if (fragment.mBeingSaved) {
                                    if (((Bundle) fragmentStore.f1124c.get(fragment.mWho)) == null) {
                                        fragmentStore.i(fragment.mWho, n());
                                    }
                                }
                                g();
                                break;
                            case 1:
                                h();
                                fragment.mState = 1;
                                break;
                            case 2:
                                fragment.mInLayout = false;
                                fragment.mState = 2;
                                break;
                            case 3:
                                if (FragmentManager.J(3)) {
                                    Log.d("FragmentManager", "movefrom ACTIVITY_CREATED: " + fragment);
                                }
                                if (fragment.mBeingSaved) {
                                    fragmentStore.i(fragment.mWho, n());
                                } else if (fragment.mView != null && fragment.mSavedViewState == null) {
                                    o();
                                }
                                if (fragment.mView != null && (viewGroup2 = fragment.mContainer) != null) {
                                    SpecialEffectsController g = SpecialEffectsController.g(viewGroup2, fragment.getParentFragmentManager());
                                    Intrinsics.checkNotNullParameter(this, "fragmentStateManager");
                                    if (FragmentManager.J(2)) {
                                        Log.v("FragmentManager", "SpecialEffectsController: Enqueuing remove operation for fragment " + fragment);
                                    }
                                    g.a(SpecialEffectsController.Operation.State.f1149c, SpecialEffectsController.Operation.LifecycleImpact.g, this);
                                }
                                fragment.mState = 3;
                                break;
                            case 4:
                                if (FragmentManager.J(3)) {
                                    Log.d("FragmentManager", "movefrom STARTED: " + fragment);
                                }
                                fragment.performStop();
                                fragmentLifecycleCallbacksDispatcher.l(false);
                                break;
                            case 5:
                                fragment.mState = 5;
                                break;
                            case 6:
                                if (FragmentManager.J(3)) {
                                    Log.d("FragmentManager", "movefrom RESUMED: " + fragment);
                                }
                                fragment.performPause();
                                fragmentLifecycleCallbacksDispatcher.f(false);
                                break;
                        }
                    }
                    z2 = true;
                } else {
                    if (!z2 && i == -1 && fragment.mRemoving && !fragment.isInBackStack() && !fragment.mBeingSaved) {
                        if (FragmentManager.J(3)) {
                            Log.d("FragmentManager", "Cleaning up state of never attached fragment: " + fragment);
                        }
                        fragmentStore.d.d(fragment);
                        fragmentStore.h(this);
                        if (FragmentManager.J(3)) {
                            Log.d("FragmentManager", "initState called for fragment: " + fragment);
                        }
                        fragment.initState();
                    }
                    if (fragment.mHiddenChanged) {
                        if (fragment.mView != null && (viewGroup = fragment.mContainer) != null) {
                            SpecialEffectsController g2 = SpecialEffectsController.g(viewGroup, fragment.getParentFragmentManager());
                            boolean z3 = fragment.mHidden;
                            SpecialEffectsController.Operation.LifecycleImpact lifecycleImpact = SpecialEffectsController.Operation.LifecycleImpact.f1148c;
                            if (z3) {
                                Intrinsics.checkNotNullParameter(this, "fragmentStateManager");
                                if (FragmentManager.J(2)) {
                                    Log.v("FragmentManager", "SpecialEffectsController: Enqueuing hide operation for fragment " + fragment);
                                }
                                g2.a(SpecialEffectsController.Operation.State.g, lifecycleImpact, this);
                            } else {
                                Intrinsics.checkNotNullParameter(this, "fragmentStateManager");
                                if (FragmentManager.J(2)) {
                                    Log.v("FragmentManager", "SpecialEffectsController: Enqueuing show operation for fragment " + fragment);
                                }
                                g2.a(SpecialEffectsController.Operation.State.f, lifecycleImpact, this);
                            }
                        }
                        FragmentManager fragmentManager = fragment.mFragmentManager;
                        if (fragmentManager != null && fragment.mAdded && FragmentManager.K(fragment)) {
                            fragmentManager.E = true;
                        }
                        fragment.mHiddenChanged = false;
                        fragment.onHiddenChanged(fragment.mHidden);
                        fragment.mChildFragmentManager.o();
                    }
                    this.d = false;
                    return;
                }
            }
        } catch (Throwable th) {
            this.d = false;
            throw th;
        }
    }

    public final void l(ClassLoader classLoader) {
        Fragment fragment = this.f1119c;
        Bundle bundle = fragment.mSavedFragmentState;
        if (bundle != null) {
            bundle.setClassLoader(classLoader);
            if (fragment.mSavedFragmentState.getBundle("savedInstanceState") == null) {
                fragment.mSavedFragmentState.putBundle("savedInstanceState", new Bundle());
            }
            fragment.mSavedViewState = fragment.mSavedFragmentState.getSparseParcelableArray("viewState");
            fragment.mSavedViewRegistryState = fragment.mSavedFragmentState.getBundle("viewRegistryState");
            FragmentState fragmentState = (FragmentState) fragment.mSavedFragmentState.getParcelable("state");
            if (fragmentState != null) {
                fragment.mTargetWho = fragmentState.p;
                fragment.mTargetRequestCode = fragmentState.q;
                Boolean bool = fragment.mSavedUserVisibleHint;
                if (bool != null) {
                    fragment.mUserVisibleHint = bool.booleanValue();
                    fragment.mSavedUserVisibleHint = null;
                } else {
                    fragment.mUserVisibleHint = fragmentState.r;
                }
            }
            if (!fragment.mUserVisibleHint) {
                fragment.mDeferStart = true;
            }
        }
    }

    public final void m() {
        String str;
        boolean J = FragmentManager.J(3);
        Fragment fragment = this.f1119c;
        if (J) {
            Log.d("FragmentManager", "moveto RESUMED: " + fragment);
        }
        View focusedView = fragment.getFocusedView();
        if (focusedView != null) {
            if (focusedView != fragment.mView) {
                for (ViewParent parent = focusedView.getParent(); parent != null; parent = parent.getParent()) {
                    if (parent != fragment.mView) {
                    }
                }
            }
            boolean requestFocus = focusedView.requestFocus();
            if (FragmentManager.J(2)) {
                StringBuilder sb = new StringBuilder("requestFocus: Restoring focused view ");
                sb.append(focusedView);
                sb.append(" ");
                if (requestFocus) {
                    str = "succeeded";
                } else {
                    str = "failed";
                }
                sb.append(str);
                sb.append(" on Fragment ");
                sb.append(fragment);
                sb.append(" resulting in focused view ");
                sb.append(fragment.mView.findFocus());
                Log.v("FragmentManager", sb.toString());
            }
        }
        fragment.setFocusedView(null);
        fragment.performResume();
        this.f1118a.i(false);
        this.b.i(fragment.mWho, null);
        fragment.mSavedFragmentState = null;
        fragment.mSavedViewState = null;
        fragment.mSavedViewRegistryState = null;
    }

    public final Bundle n() {
        Bundle bundle;
        Bundle bundle2 = new Bundle();
        Fragment fragment = this.f1119c;
        if (fragment.mState == -1 && (bundle = fragment.mSavedFragmentState) != null) {
            bundle2.putAll(bundle);
        }
        bundle2.putParcelable("state", new FragmentState(fragment));
        if (fragment.mState > -1) {
            Bundle bundle3 = new Bundle();
            fragment.performSaveInstanceState(bundle3);
            if (!bundle3.isEmpty()) {
                bundle2.putBundle("savedInstanceState", bundle3);
            }
            this.f1118a.j(false);
            Bundle bundle4 = new Bundle();
            fragment.mSavedStateRegistryController.c(bundle4);
            if (!bundle4.isEmpty()) {
                bundle2.putBundle("registryState", bundle4);
            }
            Bundle W = fragment.mChildFragmentManager.W();
            if (!W.isEmpty()) {
                bundle2.putBundle("childFragmentManager", W);
            }
            if (fragment.mView != null) {
                o();
            }
            SparseArray<Parcelable> sparseArray = fragment.mSavedViewState;
            if (sparseArray != null) {
                bundle2.putSparseParcelableArray("viewState", sparseArray);
            }
            Bundle bundle5 = fragment.mSavedViewRegistryState;
            if (bundle5 != null) {
                bundle2.putBundle("viewRegistryState", bundle5);
            }
        }
        Bundle bundle6 = fragment.mArguments;
        if (bundle6 != null) {
            bundle2.putBundle("arguments", bundle6);
        }
        return bundle2;
    }

    public final void o() {
        Fragment fragment = this.f1119c;
        if (fragment.mView != null) {
            if (FragmentManager.J(2)) {
                Log.v("FragmentManager", "Saving view state for fragment " + fragment + " with view " + fragment.mView);
            }
            SparseArray<Parcelable> sparseArray = new SparseArray<>();
            fragment.mView.saveHierarchyState(sparseArray);
            if (sparseArray.size() > 0) {
                fragment.mSavedViewState = sparseArray;
            }
            Bundle bundle = new Bundle();
            fragment.mViewLifecycleOwner.j.c(bundle);
            if (!bundle.isEmpty()) {
                fragment.mSavedViewRegistryState = bundle;
            }
        }
    }

    public FragmentStateManager(FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher, FragmentStore fragmentStore, ClassLoader classLoader, FragmentFactory fragmentFactory, Bundle bundle) {
        this.f1118a = fragmentLifecycleCallbacksDispatcher;
        this.b = fragmentStore;
        FragmentState fragmentState = (FragmentState) bundle.getParcelable("state");
        Fragment a2 = fragmentFactory.a(classLoader, fragmentState.f1117c);
        a2.mWho = fragmentState.f;
        a2.mFromLayout = fragmentState.g;
        a2.mRestored = true;
        a2.mFragmentId = fragmentState.h;
        a2.mContainerId = fragmentState.i;
        a2.mTag = fragmentState.j;
        a2.mRetainInstance = fragmentState.k;
        a2.mRemoving = fragmentState.l;
        a2.mDetached = fragmentState.m;
        a2.mHidden = fragmentState.n;
        a2.mMaxState = Lifecycle.State.values()[fragmentState.o];
        a2.mTargetWho = fragmentState.p;
        a2.mTargetRequestCode = fragmentState.q;
        a2.mUserVisibleHint = fragmentState.r;
        this.f1119c = a2;
        a2.mSavedFragmentState = bundle;
        Bundle bundle2 = bundle.getBundle("arguments");
        if (bundle2 != null) {
            bundle2.setClassLoader(classLoader);
        }
        a2.setArguments(bundle2);
        if (FragmentManager.J(2)) {
            Log.v("FragmentManager", "Instantiated fragment " + a2);
        }
    }

    public FragmentStateManager(FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher, FragmentStore fragmentStore, Fragment fragment, Bundle bundle) {
        this.f1118a = fragmentLifecycleCallbacksDispatcher;
        this.b = fragmentStore;
        this.f1119c = fragment;
        fragment.mSavedViewState = null;
        fragment.mSavedViewRegistryState = null;
        fragment.mBackStackNesting = 0;
        fragment.mInLayout = false;
        fragment.mAdded = false;
        Fragment fragment2 = fragment.mTarget;
        fragment.mTargetWho = fragment2 != null ? fragment2.mWho : null;
        fragment.mTarget = null;
        fragment.mSavedFragmentState = bundle;
        fragment.mArguments = bundle.getBundle("arguments");
    }
}
