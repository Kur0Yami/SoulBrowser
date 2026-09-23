package androidx.savedstate;

import android.os.Bundle;
import androidx.arch.core.internal.SafeIterableMap;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.savedstate.SavedStateRegistry;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Landroidx/savedstate/SavedStateRegistryController;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Companion", "savedstate_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SavedStateRegistryController {

    /* renamed from: a, reason: collision with root package name */
    public final SavedStateRegistryOwner f1650a;
    public final SavedStateRegistry b = new SavedStateRegistry();

    /* renamed from: c, reason: collision with root package name */
    public boolean f1651c;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/savedstate/SavedStateRegistryController$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "savedstate_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public static SavedStateRegistryController a(SavedStateRegistryOwner owner) {
            Intrinsics.checkNotNullParameter(owner, "owner");
            return new SavedStateRegistryController(owner);
        }
    }

    public SavedStateRegistryController(SavedStateRegistryOwner savedStateRegistryOwner) {
        this.f1650a = savedStateRegistryOwner;
    }

    public final void a() {
        SavedStateRegistryOwner savedStateRegistryOwner = this.f1650a;
        Lifecycle lifecycle = savedStateRegistryOwner.getLifecycle();
        if (lifecycle.getF1201c() == Lifecycle.State.f) {
            lifecycle.a(new Recreator(savedStateRegistryOwner));
            final SavedStateRegistry savedStateRegistry = this.b;
            savedStateRegistry.getClass();
            Intrinsics.checkNotNullParameter(lifecycle, "lifecycle");
            if (!savedStateRegistry.b) {
                lifecycle.a(new LifecycleEventObserver() { // from class: androidx.savedstate.a
                    @Override // androidx.lifecycle.LifecycleEventObserver
                    public final void b(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                        SavedStateRegistry this$0 = SavedStateRegistry.this;
                        Intrinsics.checkNotNullParameter(this$0, "this$0");
                        Intrinsics.checkNotNullParameter(lifecycleOwner, "<anonymous parameter 0>");
                        Intrinsics.checkNotNullParameter(event, "event");
                        if (event == Lifecycle.Event.ON_START) {
                            this$0.f = true;
                        } else if (event == Lifecycle.Event.ON_STOP) {
                            this$0.f = false;
                        }
                    }
                });
                savedStateRegistry.b = true;
                this.f1651c = true;
                return;
            }
            throw new IllegalStateException("SavedStateRegistry was already attached.");
        }
        throw new IllegalStateException("Restarter must be created only during owner's initialization stage");
    }

    public final void b(Bundle bundle) {
        Bundle bundle2;
        if (!this.f1651c) {
            a();
        }
        Lifecycle lifecycle = this.f1650a.getLifecycle();
        if (!lifecycle.getF1201c().a(Lifecycle.State.h)) {
            SavedStateRegistry savedStateRegistry = this.b;
            if (savedStateRegistry.b) {
                if (!savedStateRegistry.d) {
                    if (bundle != null) {
                        bundle2 = bundle.getBundle("androidx.lifecycle.BundlableSavedStateRegistry.key");
                    } else {
                        bundle2 = null;
                    }
                    savedStateRegistry.f1649c = bundle2;
                    savedStateRegistry.d = true;
                    return;
                }
                throw new IllegalStateException("SavedStateRegistry was already restored.");
            }
            throw new IllegalStateException("You must call performAttach() before calling performRestore(Bundle).");
        }
        throw new IllegalStateException(("performRestore cannot be called when owner is " + lifecycle.getF1201c()).toString());
    }

    public final void c(Bundle outBundle) {
        Intrinsics.checkNotNullParameter(outBundle, "outBundle");
        SavedStateRegistry savedStateRegistry = this.b;
        savedStateRegistry.getClass();
        Intrinsics.checkNotNullParameter(outBundle, "outBundle");
        Bundle bundle = new Bundle();
        Bundle bundle2 = savedStateRegistry.f1649c;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        SafeIterableMap safeIterableMap = savedStateRegistry.f1648a;
        safeIterableMap.getClass();
        SafeIterableMap.IteratorWithAdditions iteratorWithAdditions = new SafeIterableMap.IteratorWithAdditions();
        safeIterableMap.g.put(iteratorWithAdditions, Boolean.FALSE);
        Intrinsics.checkNotNullExpressionValue(iteratorWithAdditions, "this.components.iteratorWithAdditions()");
        while (iteratorWithAdditions.hasNext()) {
            Map.Entry entry = (Map.Entry) iteratorWithAdditions.next();
            bundle.putBundle((String) entry.getKey(), ((SavedStateRegistry.SavedStateProvider) entry.getValue()).a());
        }
        if (!bundle.isEmpty()) {
            outBundle.putBundle("androidx.lifecycle.BundlableSavedStateRegistry.key", bundle);
        }
    }
}
