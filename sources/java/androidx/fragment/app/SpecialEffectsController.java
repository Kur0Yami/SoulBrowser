package androidx.fragment.app;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.core.os.CancellationSignal;
import androidx.core.view.ViewCompat;
import androidx.fragment.R;
import androidx.fragment.app.SpecialEffectsController;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;
import java.util.WeakHashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b \u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004¨\u0006\u0005"}, d2 = {"Landroidx/fragment/app/SpecialEffectsController;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Companion", "FragmentStateManagerOperation", "Operation", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSpecialEffectsController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SpecialEffectsController.kt\nandroidx/fragment/app/SpecialEffectsController\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,710:1\n288#2,2:711\n288#2,2:713\n533#2,6:715\n*S KotlinDebug\n*F\n+ 1 SpecialEffectsController.kt\nandroidx/fragment/app/SpecialEffectsController\n*L\n69#1:711,2\n75#1:713,2\n166#1:715,6\n*E\n"})
/* loaded from: classes.dex */
public abstract class SpecialEffectsController {

    /* renamed from: a, reason: collision with root package name */
    public final ViewGroup f1144a;
    public final ArrayList b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f1145c;
    public boolean d;
    public boolean e;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/fragment/app/SpecialEffectsController$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public static SpecialEffectsController a(ViewGroup container, SpecialEffectsControllerFactory factory) {
            Intrinsics.checkNotNullParameter(container, "container");
            Intrinsics.checkNotNullParameter(factory, "factory");
            Object tag = container.getTag(R.id.special_effects_controller_view_tag);
            if (tag instanceof SpecialEffectsController) {
                return (SpecialEffectsController) tag;
            }
            DefaultSpecialEffectsController a2 = factory.a(container);
            Intrinsics.checkNotNullExpressionValue(a2, "factory.createController(container)");
            container.setTag(R.id.special_effects_controller_view_tag, a2);
            return a2;
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;", "Landroidx/fragment/app/SpecialEffectsController$Operation;", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class FragmentStateManagerOperation extends Operation {
        public final FragmentStateManager h;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public FragmentStateManagerOperation(androidx.fragment.app.SpecialEffectsController.Operation.State r3, androidx.fragment.app.SpecialEffectsController.Operation.LifecycleImpact r4, androidx.fragment.app.FragmentStateManager r5, androidx.core.os.CancellationSignal r6) {
            /*
                r2 = this;
                java.lang.String r0 = "finalState"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
                java.lang.String r0 = "lifecycleImpact"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
                java.lang.String r0 = "fragmentStateManager"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
                java.lang.String r0 = "cancellationSignal"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
                androidx.fragment.app.Fragment r0 = r5.f1119c
                java.lang.String r1 = "fragmentStateManager.fragment"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
                r2.<init>(r3, r4, r0, r6)
                r2.h = r5
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.SpecialEffectsController.FragmentStateManagerOperation.<init>(androidx.fragment.app.SpecialEffectsController$Operation$State, androidx.fragment.app.SpecialEffectsController$Operation$LifecycleImpact, androidx.fragment.app.FragmentStateManager, androidx.core.os.CancellationSignal):void");
        }

        @Override // androidx.fragment.app.SpecialEffectsController.Operation
        public final void b() {
            super.b();
            this.h.k();
        }

        @Override // androidx.fragment.app.SpecialEffectsController.Operation
        public final void d() {
            Operation.LifecycleImpact lifecycleImpact = this.b;
            Operation.LifecycleImpact lifecycleImpact2 = Operation.LifecycleImpact.f;
            FragmentStateManager fragmentStateManager = this.h;
            if (lifecycleImpact == lifecycleImpact2) {
                Fragment fragment = fragmentStateManager.f1119c;
                Intrinsics.checkNotNullExpressionValue(fragment, "fragmentStateManager.fragment");
                View findFocus = fragment.mView.findFocus();
                if (findFocus != null) {
                    fragment.setFocusedView(findFocus);
                    if (FragmentManager.J(2)) {
                        Log.v("FragmentManager", "requestFocus: Saved focused view " + findFocus + " for Fragment " + fragment);
                    }
                }
                View requireView = this.f1147c.requireView();
                Intrinsics.checkNotNullExpressionValue(requireView, "this.fragment.requireView()");
                if (requireView.getParent() == null) {
                    fragmentStateManager.b();
                    requireView.setAlpha(0.0f);
                }
                if (requireView.getAlpha() == 0.0f && requireView.getVisibility() == 0) {
                    requireView.setVisibility(4);
                }
                requireView.setAlpha(fragment.getPostOnViewCreatedAlpha());
                return;
            }
            if (lifecycleImpact == Operation.LifecycleImpact.g) {
                Fragment fragment2 = fragmentStateManager.f1119c;
                Intrinsics.checkNotNullExpressionValue(fragment2, "fragmentStateManager.fragment");
                View requireView2 = fragment2.requireView();
                Intrinsics.checkNotNullExpressionValue(requireView2, "fragment.requireView()");
                if (FragmentManager.J(2)) {
                    Log.v("FragmentManager", "Clearing focus " + requireView2.findFocus() + " on view " + requireView2 + " for Fragment " + fragment2);
                }
                requireView2.clearFocus();
            }
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0010\u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004"}, d2 = {"Landroidx/fragment/app/SpecialEffectsController$Operation;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "LifecycleImpact", "State", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nSpecialEffectsController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SpecialEffectsController.kt\nandroidx/fragment/app/SpecialEffectsController$Operation\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,710:1\n1855#2,2:711\n*S KotlinDebug\n*F\n+ 1 SpecialEffectsController.kt\nandroidx/fragment/app/SpecialEffectsController$Operation\n*L\n607#1:711,2\n*E\n"})
    /* loaded from: classes.dex */
    public static class Operation {

        /* renamed from: a, reason: collision with root package name */
        public State f1146a;
        public LifecycleImpact b;

        /* renamed from: c, reason: collision with root package name */
        public final Fragment f1147c;
        public final ArrayList d;
        public final LinkedHashSet e;
        public boolean f;
        public boolean g;

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\b\u0080\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001¨\u0006\u0002"}, d2 = {"Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        /* loaded from: classes.dex */
        public static final class LifecycleImpact {

            /* renamed from: c, reason: collision with root package name */
            public static final LifecycleImpact f1148c;
            public static final LifecycleImpact f;
            public static final LifecycleImpact g;
            public static final /* synthetic */ LifecycleImpact[] h;

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.fragment.app.SpecialEffectsController$Operation$LifecycleImpact] */
            /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.fragment.app.SpecialEffectsController$Operation$LifecycleImpact] */
            /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, androidx.fragment.app.SpecialEffectsController$Operation$LifecycleImpact] */
            static {
                ?? r0 = new Enum("NONE", 0);
                f1148c = r0;
                ?? r1 = new Enum("ADDING", 1);
                f = r1;
                ?? r3 = new Enum("REMOVING", 2);
                g = r3;
                h = new LifecycleImpact[]{r0, r1, r3};
            }

            public static LifecycleImpact valueOf(String str) {
                return (LifecycleImpact) Enum.valueOf(LifecycleImpact.class, str);
            }

            public static LifecycleImpact[] values() {
                return (LifecycleImpact[]) h.clone();
            }
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\b\u0080\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Landroidx/fragment/app/SpecialEffectsController$Operation$State;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Companion", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        /* loaded from: classes.dex */
        public static final class State {

            /* renamed from: c, reason: collision with root package name */
            public static final State f1149c;
            public static final State f;
            public static final State g;
            public static final State h;
            public static final /* synthetic */ State[] i;

            @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/fragment/app/SpecialEffectsController$Operation$State$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
            /* loaded from: classes.dex */
            public static final class Companion {
                public static State a(View view) {
                    Intrinsics.checkNotNullParameter(view, "<this>");
                    if (view.getAlpha() == 0.0f && view.getVisibility() == 0) {
                        return State.h;
                    }
                    return b(view.getVisibility());
                }

                public static State b(int i) {
                    if (i != 0) {
                        if (i != 4) {
                            if (i == 8) {
                                return State.g;
                            }
                            throw new IllegalArgumentException(android.support.v4.media.a.e(i, "Unknown visibility "));
                        }
                        return State.h;
                    }
                    return State.f;
                }
            }

            @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
            /* loaded from: classes.dex */
            public /* synthetic */ class WhenMappings {
                public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                static {
                    int[] iArr = new int[State.values().length];
                    try {
                        iArr[0] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    try {
                        iArr[1] = 2;
                    } catch (NoSuchFieldError unused2) {
                    }
                    try {
                        iArr[2] = 3;
                    } catch (NoSuchFieldError unused3) {
                    }
                    try {
                        iArr[3] = 4;
                    } catch (NoSuchFieldError unused4) {
                    }
                    $EnumSwitchMapping$0 = iArr;
                }
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.fragment.app.SpecialEffectsController$Operation$State] */
            /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.fragment.app.SpecialEffectsController$Operation$State] */
            /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, androidx.fragment.app.SpecialEffectsController$Operation$State] */
            /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Enum, androidx.fragment.app.SpecialEffectsController$Operation$State] */
            static {
                ?? r0 = new Enum("REMOVED", 0);
                f1149c = r0;
                ?? r1 = new Enum("VISIBLE", 1);
                f = r1;
                ?? r3 = new Enum("GONE", 2);
                g = r3;
                ?? r5 = new Enum("INVISIBLE", 3);
                h = r5;
                i = new State[]{r0, r1, r3, r5};
            }

            public static State valueOf(String str) {
                return (State) Enum.valueOf(State.class, str);
            }

            public static State[] values() {
                return (State[]) i.clone();
            }

            public final void a(View view) {
                ViewGroup viewGroup;
                Intrinsics.checkNotNullParameter(view, "view");
                int i2 = WhenMappings.$EnumSwitchMapping$0[ordinal()];
                if (i2 != 1) {
                    if (i2 != 2) {
                        if (i2 != 3) {
                            if (i2 == 4) {
                                if (FragmentManager.J(2)) {
                                    Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to INVISIBLE");
                                }
                                view.setVisibility(4);
                                return;
                            }
                            return;
                        }
                        if (FragmentManager.J(2)) {
                            Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to GONE");
                        }
                        view.setVisibility(8);
                        return;
                    }
                    if (FragmentManager.J(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to VISIBLE");
                    }
                    view.setVisibility(0);
                    return;
                }
                ViewParent parent = view.getParent();
                if (parent instanceof ViewGroup) {
                    viewGroup = (ViewGroup) parent;
                } else {
                    viewGroup = null;
                }
                if (viewGroup != null) {
                    if (FragmentManager.J(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Removing view " + view + " from container " + viewGroup);
                    }
                    viewGroup.removeView(view);
                }
            }
        }

        @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
        /* loaded from: classes.dex */
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[LifecycleImpact.values().length];
                try {
                    iArr[1] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[2] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[0] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public Operation(State finalState, LifecycleImpact lifecycleImpact, Fragment fragment, CancellationSignal cancellationSignal) {
            Intrinsics.checkNotNullParameter(finalState, "finalState");
            Intrinsics.checkNotNullParameter(lifecycleImpact, "lifecycleImpact");
            Intrinsics.checkNotNullParameter(fragment, "fragment");
            Intrinsics.checkNotNullParameter(cancellationSignal, "cancellationSignal");
            this.f1146a = finalState;
            this.b = lifecycleImpact;
            this.f1147c = fragment;
            this.d = new ArrayList();
            this.e = new LinkedHashSet();
            cancellationSignal.c(new CancellationSignal.OnCancelListener() { // from class: androidx.fragment.app.k
                @Override // androidx.core.os.CancellationSignal.OnCancelListener
                public final void onCancel() {
                    SpecialEffectsController.Operation this$0 = SpecialEffectsController.Operation.this;
                    Intrinsics.checkNotNullParameter(this$0, "this$0");
                    this$0.a();
                }
            });
        }

        public final void a() {
            Set mutableSet;
            if (!this.f) {
                this.f = true;
                LinkedHashSet linkedHashSet = this.e;
                if (!linkedHashSet.isEmpty()) {
                    mutableSet = CollectionsKt___CollectionsKt.toMutableSet(linkedHashSet);
                    Iterator it = mutableSet.iterator();
                    while (it.hasNext()) {
                        ((CancellationSignal) it.next()).a();
                    }
                    return;
                }
                b();
            }
        }

        public void b() {
            if (!this.g) {
                if (FragmentManager.J(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: " + this + " has called complete.");
                }
                this.g = true;
                ArrayList arrayList = this.d;
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    ((Runnable) obj).run();
                }
            }
        }

        public final void c(State finalState, LifecycleImpact lifecycleImpact) {
            Intrinsics.checkNotNullParameter(finalState, "finalState");
            Intrinsics.checkNotNullParameter(lifecycleImpact, "lifecycleImpact");
            int ordinal = lifecycleImpact.ordinal();
            Fragment fragment = this.f1147c;
            State state = State.f1149c;
            if (ordinal != 0) {
                if (ordinal != 1) {
                    if (ordinal == 2) {
                        if (FragmentManager.J(2)) {
                            Log.v("FragmentManager", "SpecialEffectsController: For fragment " + fragment + " mFinalState = " + this.f1146a + " -> REMOVED. mLifecycleImpact  = " + this.b + " to REMOVING.");
                        }
                        this.f1146a = state;
                        this.b = LifecycleImpact.g;
                        return;
                    }
                    return;
                }
                if (this.f1146a == state) {
                    if (FragmentManager.J(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: For fragment " + fragment + " mFinalState = REMOVED -> VISIBLE. mLifecycleImpact = " + this.b + " to ADDING.");
                    }
                    this.f1146a = State.f;
                    this.b = LifecycleImpact.f;
                    return;
                }
                return;
            }
            if (this.f1146a != state) {
                if (FragmentManager.J(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: For fragment " + fragment + " mFinalState = " + this.f1146a + " -> " + finalState + '.');
                }
                this.f1146a = finalState;
            }
        }

        public void d() {
        }

        public final String toString() {
            StringBuilder w = android.support.v4.media.a.w("Operation {", Integer.toHexString(System.identityHashCode(this)), "} {finalState = ");
            w.append(this.f1146a);
            w.append(" lifecycleImpact = ");
            w.append(this.b);
            w.append(" fragment = ");
            w.append(this.f1147c);
            w.append('}');
            return w.toString();
        }
    }

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Operation.LifecycleImpact.values().length];
            try {
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public SpecialEffectsController(ViewGroup container) {
        Intrinsics.checkNotNullParameter(container, "container");
        this.f1144a = container;
        this.b = new ArrayList();
        this.f1145c = new ArrayList();
    }

    public static final SpecialEffectsController g(ViewGroup container, FragmentManager fragmentManager) {
        Intrinsics.checkNotNullParameter(container, "container");
        Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
        SpecialEffectsControllerFactory H = fragmentManager.H();
        Intrinsics.checkNotNullExpressionValue(H, "fragmentManager.specialEffectsControllerFactory");
        return Companion.a(container, H);
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [androidx.core.os.CancellationSignal, java.lang.Object] */
    public final void a(Operation.State state, Operation.LifecycleImpact lifecycleImpact, FragmentStateManager fragmentStateManager) {
        synchronized (this.b) {
            ?? obj = new Object();
            Fragment fragment = fragmentStateManager.f1119c;
            Intrinsics.checkNotNullExpressionValue(fragment, "fragmentStateManager.fragment");
            Operation e = e(fragment);
            if (e != null) {
                e.c(state, lifecycleImpact);
                return;
            }
            FragmentStateManagerOperation fragmentStateManagerOperation = new FragmentStateManagerOperation(state, lifecycleImpact, fragmentStateManager, obj);
            this.b.add(fragmentStateManagerOperation);
            j listener = new j(this, fragmentStateManagerOperation, 0);
            Intrinsics.checkNotNullParameter(listener, "listener");
            fragmentStateManagerOperation.d.add(listener);
            j listener2 = new j(this, fragmentStateManagerOperation, 1);
            Intrinsics.checkNotNullParameter(listener2, "listener");
            fragmentStateManagerOperation.d.add(listener2);
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void b(Operation.State finalState, FragmentStateManager fragmentStateManager) {
        Intrinsics.checkNotNullParameter(finalState, "finalState");
        Intrinsics.checkNotNullParameter(fragmentStateManager, "fragmentStateManager");
        if (FragmentManager.J(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Enqueuing add operation for fragment " + fragmentStateManager.f1119c);
        }
        a(finalState, Operation.LifecycleImpact.f, fragmentStateManager);
    }

    public abstract void c(List list, boolean z);

    public final void d() {
        if (this.e) {
            return;
        }
        ViewGroup viewGroup = this.f1144a;
        WeakHashMap weakHashMap = ViewCompat.f792a;
        if (!viewGroup.isAttachedToWindow()) {
            f();
            this.d = false;
            return;
        }
        synchronized (this.b) {
            try {
                if (!this.b.isEmpty()) {
                    List<Operation> mutableList = CollectionsKt.toMutableList((Collection) this.f1145c);
                    this.f1145c.clear();
                    for (Operation operation : mutableList) {
                        if (FragmentManager.J(2)) {
                            Log.v("FragmentManager", "SpecialEffectsController: Cancelling operation " + operation);
                        }
                        operation.a();
                        if (!operation.g) {
                            this.f1145c.add(operation);
                        }
                    }
                    i();
                    List mutableList2 = CollectionsKt.toMutableList((Collection) this.b);
                    this.b.clear();
                    this.f1145c.addAll(mutableList2);
                    if (FragmentManager.J(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Executing pending operations");
                    }
                    Iterator it = mutableList2.iterator();
                    while (it.hasNext()) {
                        ((Operation) it.next()).d();
                    }
                    c(mutableList2, this.d);
                    this.d = false;
                    if (FragmentManager.J(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Finished executing pending operations");
                    }
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final Operation e(Fragment fragment) {
        Object obj;
        ArrayList arrayList = this.b;
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i < size) {
                obj = arrayList.get(i);
                i++;
                Operation operation = (Operation) obj;
                if (Intrinsics.areEqual(operation.f1147c, fragment) && !operation.f) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        return (Operation) obj;
    }

    public final void f() {
        String str;
        String str2;
        if (FragmentManager.J(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Forcing all operations to complete");
        }
        ViewGroup viewGroup = this.f1144a;
        WeakHashMap weakHashMap = ViewCompat.f792a;
        boolean isAttachedToWindow = viewGroup.isAttachedToWindow();
        synchronized (this.b) {
            try {
                i();
                ArrayList arrayList = this.b;
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    ((Operation) obj).d();
                }
                for (Operation operation : CollectionsKt.toMutableList((Collection) this.f1145c)) {
                    if (FragmentManager.J(2)) {
                        if (isAttachedToWindow) {
                            str2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                        } else {
                            str2 = "Container " + this.f1144a + " is not attached to window. ";
                        }
                        Log.v("FragmentManager", "SpecialEffectsController: " + str2 + "Cancelling running operation " + operation);
                    }
                    operation.a();
                }
                for (Operation operation2 : CollectionsKt.toMutableList((Collection) this.b)) {
                    if (FragmentManager.J(2)) {
                        if (isAttachedToWindow) {
                            str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                        } else {
                            str = "Container " + this.f1144a + " is not attached to window. ";
                        }
                        Log.v("FragmentManager", "SpecialEffectsController: " + str + "Cancelling pending operation " + operation2);
                    }
                    operation2.a();
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void h() {
        Fragment fragment;
        Object obj;
        boolean z;
        synchronized (this.b) {
            try {
                i();
                ArrayList arrayList = this.b;
                ListIterator listIterator = arrayList.listIterator(arrayList.size());
                while (true) {
                    fragment = null;
                    if (listIterator.hasPrevious()) {
                        obj = listIterator.previous();
                        Operation operation = (Operation) obj;
                        View view = operation.f1147c.mView;
                        Intrinsics.checkNotNullExpressionValue(view, "operation.fragment.mView");
                        Operation.State a2 = Operation.State.Companion.a(view);
                        Operation.State state = operation.f1146a;
                        Operation.State state2 = Operation.State.f;
                        if (state == state2 && a2 != state2) {
                            break;
                        }
                    } else {
                        obj = null;
                        break;
                    }
                }
                Operation operation2 = (Operation) obj;
                if (operation2 != null) {
                    fragment = operation2.f1147c;
                }
                if (fragment != null) {
                    z = fragment.isPostponed();
                } else {
                    z = false;
                }
                this.e = z;
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void i() {
        ArrayList arrayList = this.b;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            Operation operation = (Operation) obj;
            if (operation.b == Operation.LifecycleImpact.f) {
                View requireView = operation.f1147c.requireView();
                Intrinsics.checkNotNullExpressionValue(requireView, "fragment.requireView()");
                operation.c(Operation.State.Companion.b(requireView.getVisibility()), Operation.LifecycleImpact.f1148c);
            }
        }
    }
}
