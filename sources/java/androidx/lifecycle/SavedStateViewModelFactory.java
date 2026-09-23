package androidx.lifecycle;

import android.app.Application;
import android.os.Bundle;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.viewmodel.MutableCreationExtras;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryOwner;
import java.lang.reflect.Constructor;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002¨\u0006\u0003"}, d2 = {"Landroidx/lifecycle/SavedStateViewModelFactory;", "Landroidx/lifecycle/ViewModelProvider$OnRequeryFactory;", "Landroidx/lifecycle/ViewModelProvider$Factory;", "lifecycle-viewmodel-savedstate_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SavedStateViewModelFactory extends ViewModelProvider.OnRequeryFactory implements ViewModelProvider.Factory {

    /* renamed from: a, reason: collision with root package name */
    public final Application f1223a;
    public final ViewModelProvider.AndroidViewModelFactory b;

    /* renamed from: c, reason: collision with root package name */
    public final Bundle f1224c;
    public final Lifecycle d;
    public final SavedStateRegistry e;

    public SavedStateViewModelFactory(Application application, SavedStateRegistryOwner owner, Bundle bundle) {
        ViewModelProvider.AndroidViewModelFactory androidViewModelFactory;
        Intrinsics.checkNotNullParameter(owner, "owner");
        this.e = owner.getSavedStateRegistry();
        this.d = owner.getLifecycle();
        this.f1224c = bundle;
        this.f1223a = application;
        if (application != null) {
            ViewModelProvider.AndroidViewModelFactory androidViewModelFactory2 = ViewModelProvider.AndroidViewModelFactory.d;
            Intrinsics.checkNotNullParameter(application, "application");
            if (ViewModelProvider.AndroidViewModelFactory.d == null) {
                Intrinsics.checkNotNullParameter(application, "application");
                ViewModelProvider.AndroidViewModelFactory.d = new ViewModelProvider.AndroidViewModelFactory(application);
            }
            androidViewModelFactory = ViewModelProvider.AndroidViewModelFactory.d;
            Intrinsics.checkNotNull(androidViewModelFactory);
        } else {
            androidViewModelFactory = new ViewModelProvider.AndroidViewModelFactory(null);
        }
        this.b = androidViewModelFactory;
    }

    @Override // androidx.lifecycle.ViewModelProvider.Factory
    public final ViewModel a(Class modelClass) {
        Intrinsics.checkNotNullParameter(modelClass, "modelClass");
        String canonicalName = modelClass.getCanonicalName();
        if (canonicalName != null) {
            return d(modelClass, canonicalName);
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }

    @Override // androidx.lifecycle.ViewModelProvider.Factory
    public final ViewModel b(Class modelClass, MutableCreationExtras extras) {
        Constructor a2;
        Intrinsics.checkNotNullParameter(modelClass, "modelClass");
        Intrinsics.checkNotNullParameter(extras, "extras");
        ViewModelProvider.NewInstanceFactory newInstanceFactory = ViewModelProvider.NewInstanceFactory.f1236a;
        String str = (String) extras.a(ViewModelProvider.NewInstanceFactory.Companion.ViewModelKeyImpl.f1237a);
        if (str != null) {
            if (extras.a(SavedStateHandleSupport.f1217a) != null && extras.a(SavedStateHandleSupport.b) != null) {
                ViewModelProvider.AndroidViewModelFactory androidViewModelFactory = ViewModelProvider.AndroidViewModelFactory.d;
                Application application = (Application) extras.a(ViewModelProvider.AndroidViewModelFactory.Companion.ApplicationKeyImpl.f1235a);
                boolean isAssignableFrom = AndroidViewModel.class.isAssignableFrom(modelClass);
                if (isAssignableFrom && application != null) {
                    a2 = SavedStateViewModelFactoryKt.a(modelClass, SavedStateViewModelFactoryKt.f1225a);
                } else {
                    a2 = SavedStateViewModelFactoryKt.a(modelClass, SavedStateViewModelFactoryKt.b);
                }
                if (a2 == null) {
                    return this.b.b(modelClass, extras);
                }
                if (isAssignableFrom && application != null) {
                    return SavedStateViewModelFactoryKt.b(modelClass, a2, application, SavedStateHandleSupport.a(extras));
                }
                return SavedStateViewModelFactoryKt.b(modelClass, a2, SavedStateHandleSupport.a(extras));
            }
            if (this.d != null) {
                return d(modelClass, str);
            }
            throw new IllegalStateException("SAVED_STATE_REGISTRY_OWNER_KEY andVIEW_MODEL_STORE_OWNER_KEY must be provided in the creation extras tosuccessfully create a ViewModel.");
        }
        throw new IllegalStateException("VIEW_MODEL_KEY must always be provided by ViewModelProvider");
    }

    @Override // androidx.lifecycle.ViewModelProvider.OnRequeryFactory
    public final void c(ViewModel viewModel) {
        Intrinsics.checkNotNullParameter(viewModel, "viewModel");
        Lifecycle lifecycle = this.d;
        if (lifecycle != null) {
            SavedStateRegistry savedStateRegistry = this.e;
            Intrinsics.checkNotNull(savedStateRegistry);
            Intrinsics.checkNotNull(lifecycle);
            LegacySavedStateHandleController.a(viewModel, savedStateRegistry, lifecycle);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v8, types: [java.lang.Object, androidx.lifecycle.ViewModelProvider$NewInstanceFactory] */
    public final ViewModel d(Class modelClass, String key) {
        Constructor a2;
        ViewModel b;
        Object obj;
        Application application = this.f1223a;
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(modelClass, "modelClass");
        Lifecycle lifecycle = this.d;
        if (lifecycle != null) {
            boolean isAssignableFrom = AndroidViewModel.class.isAssignableFrom(modelClass);
            if (isAssignableFrom && application != null) {
                a2 = SavedStateViewModelFactoryKt.a(modelClass, SavedStateViewModelFactoryKt.f1225a);
            } else {
                a2 = SavedStateViewModelFactoryKt.a(modelClass, SavedStateViewModelFactoryKt.b);
            }
            if (a2 == null) {
                if (application != null) {
                    return this.b.a(modelClass);
                }
                if (ViewModelProvider.NewInstanceFactory.f1236a == null) {
                    ViewModelProvider.NewInstanceFactory.f1236a = new Object();
                }
                ViewModelProvider.NewInstanceFactory newInstanceFactory = ViewModelProvider.NewInstanceFactory.f1236a;
                Intrinsics.checkNotNull(newInstanceFactory);
                return newInstanceFactory.a(modelClass);
            }
            SavedStateRegistry registry = this.e;
            Intrinsics.checkNotNull(registry);
            Bundle bundle = this.f1224c;
            Intrinsics.checkNotNullParameter(registry, "registry");
            Intrinsics.checkNotNullParameter(lifecycle, "lifecycle");
            Intrinsics.checkNotNull(key);
            Bundle a3 = registry.a(key);
            Class[] clsArr = SavedStateHandle.f;
            SavedStateHandle a4 = SavedStateHandle.Companion.a(a3, bundle);
            SavedStateHandleController savedStateHandleController = new SavedStateHandleController(key, a4);
            savedStateHandleController.c(lifecycle, registry);
            LegacySavedStateHandleController.b(lifecycle, registry);
            if (isAssignableFrom && application != null) {
                Intrinsics.checkNotNull(application);
                b = SavedStateViewModelFactoryKt.b(modelClass, a2, application, a4);
            } else {
                b = SavedStateViewModelFactoryKt.b(modelClass, a2, a4);
            }
            synchronized (b.f1230a) {
                try {
                    obj = b.f1230a.get("androidx.lifecycle.savedstate.vm.tag");
                    if (obj == 0) {
                        b.f1230a.put("androidx.lifecycle.savedstate.vm.tag", savedStateHandleController);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (obj != 0) {
                savedStateHandleController = obj;
            }
            if (b.f1231c) {
                ViewModel.a(savedStateHandleController);
            }
            return b;
        }
        throw new UnsupportedOperationException("SavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras).");
    }
}
