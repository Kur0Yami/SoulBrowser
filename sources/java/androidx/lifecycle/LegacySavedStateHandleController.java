package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryOwner;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\bÀ\u0002\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Landroidx/lifecycle/LegacySavedStateHandleController;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "OnRecreation", "lifecycle-viewmodel-savedstate_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LegacySavedStateHandleController {

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/lifecycle/LegacySavedStateHandleController$OnRecreation;", "Landroidx/savedstate/SavedStateRegistry$AutoRecreated;", "<init>", "()V", "lifecycle-viewmodel-savedstate_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class OnRecreation implements SavedStateRegistry.AutoRecreated {
        @Override // androidx.savedstate.SavedStateRegistry.AutoRecreated
        public final void a(SavedStateRegistryOwner owner) {
            Intrinsics.checkNotNullParameter(owner, "owner");
            if (owner instanceof ViewModelStoreOwner) {
                ViewModelStore viewModelStore = ((ViewModelStoreOwner) owner).getViewModelStore();
                SavedStateRegistry savedStateRegistry = owner.getSavedStateRegistry();
                viewModelStore.getClass();
                LinkedHashMap linkedHashMap = viewModelStore.f1238a;
                Iterator it = new HashSet(linkedHashMap.keySet()).iterator();
                while (it.hasNext()) {
                    String key = (String) it.next();
                    Intrinsics.checkNotNullParameter(key, "key");
                    ViewModel viewModel = (ViewModel) linkedHashMap.get(key);
                    Intrinsics.checkNotNull(viewModel);
                    LegacySavedStateHandleController.a(viewModel, savedStateRegistry, owner.getLifecycle());
                }
                if (!new HashSet(linkedHashMap.keySet()).isEmpty()) {
                    savedStateRegistry.d();
                    return;
                }
                return;
            }
            throw new IllegalStateException("Internal error: OnRecreation should be registered only on components that implement ViewModelStoreOwner");
        }
    }

    public static final void a(ViewModel viewModel, SavedStateRegistry registry, Lifecycle lifecycle) {
        Object obj;
        Intrinsics.checkNotNullParameter(viewModel, "viewModel");
        Intrinsics.checkNotNullParameter(registry, "registry");
        Intrinsics.checkNotNullParameter(lifecycle, "lifecycle");
        HashMap hashMap = viewModel.f1230a;
        if (hashMap == null) {
            obj = null;
        } else {
            synchronized (hashMap) {
                obj = viewModel.f1230a.get("androidx.lifecycle.savedstate.vm.tag");
            }
        }
        SavedStateHandleController savedStateHandleController = (SavedStateHandleController) obj;
        if (savedStateHandleController != null && !savedStateHandleController.g) {
            savedStateHandleController.c(lifecycle, registry);
            b(lifecycle, registry);
        }
    }

    public static void b(final Lifecycle lifecycle, final SavedStateRegistry savedStateRegistry) {
        Lifecycle.State f1201c = lifecycle.getF1201c();
        if (f1201c != Lifecycle.State.f && !f1201c.a(Lifecycle.State.h)) {
            lifecycle.a(new LifecycleEventObserver() { // from class: androidx.lifecycle.LegacySavedStateHandleController$tryToAddRecreator$1
                @Override // androidx.lifecycle.LifecycleEventObserver
                public final void b(LifecycleOwner source, Lifecycle.Event event) {
                    Intrinsics.checkNotNullParameter(source, "source");
                    Intrinsics.checkNotNullParameter(event, "event");
                    if (event == Lifecycle.Event.ON_START) {
                        Lifecycle.this.c(this);
                        savedStateRegistry.d();
                    }
                }
            });
        } else {
            savedStateRegistry.d();
        }
    }
}
