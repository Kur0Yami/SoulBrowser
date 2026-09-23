package androidx.fragment.app;

import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.SavedStateHandleSupport;
import androidx.lifecycle.SavedStateViewModelFactory;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.MutableCreationExtras;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryController;
import androidx.savedstate.SavedStateRegistryOwner;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class FragmentViewLifecycleOwner implements HasDefaultViewModelProviderFactory, SavedStateRegistryOwner, ViewModelStoreOwner {

    /* renamed from: c, reason: collision with root package name */
    public final Fragment f1139c;
    public final ViewModelStore f;
    public final e g;
    public ViewModelProvider.Factory h;
    public LifecycleRegistry i = null;
    public SavedStateRegistryController j = null;

    public FragmentViewLifecycleOwner(Fragment fragment, ViewModelStore viewModelStore, e eVar) {
        this.f1139c = fragment;
        this.f = viewModelStore;
        this.g = eVar;
    }

    public final void a(Lifecycle.Event event) {
        this.i.f(event);
    }

    public final void b() {
        if (this.i == null) {
            this.i = new LifecycleRegistry(this);
            SavedStateRegistryController a2 = SavedStateRegistryController.Companion.a(this);
            this.j = a2;
            a2.a();
            this.g.run();
        }
    }

    @Override // androidx.lifecycle.HasDefaultViewModelProviderFactory
    public final CreationExtras getDefaultViewModelCreationExtras() {
        Application application;
        Fragment fragment = this.f1139c;
        Context applicationContext = fragment.requireContext().getApplicationContext();
        while (true) {
            if (applicationContext instanceof ContextWrapper) {
                if (applicationContext instanceof Application) {
                    application = (Application) applicationContext;
                    break;
                }
                applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
            } else {
                application = null;
                break;
            }
        }
        MutableCreationExtras mutableCreationExtras = new MutableCreationExtras(0);
        if (application != null) {
            mutableCreationExtras.b(ViewModelProvider.AndroidViewModelFactory.e, application);
        }
        mutableCreationExtras.b(SavedStateHandleSupport.f1217a, fragment);
        mutableCreationExtras.b(SavedStateHandleSupport.b, this);
        if (fragment.getArguments() != null) {
            mutableCreationExtras.b(SavedStateHandleSupport.f1218c, fragment.getArguments());
        }
        return mutableCreationExtras;
    }

    @Override // androidx.lifecycle.HasDefaultViewModelProviderFactory
    public final ViewModelProvider.Factory getDefaultViewModelProviderFactory() {
        Application application;
        Fragment fragment = this.f1139c;
        ViewModelProvider.Factory defaultViewModelProviderFactory = fragment.getDefaultViewModelProviderFactory();
        if (!defaultViewModelProviderFactory.equals(fragment.mDefaultFactory)) {
            this.h = defaultViewModelProviderFactory;
            return defaultViewModelProviderFactory;
        }
        if (this.h == null) {
            Context applicationContext = fragment.requireContext().getApplicationContext();
            while (true) {
                if (applicationContext instanceof ContextWrapper) {
                    if (applicationContext instanceof Application) {
                        application = (Application) applicationContext;
                        break;
                    }
                    applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
                } else {
                    application = null;
                    break;
                }
            }
            this.h = new SavedStateViewModelFactory(application, fragment, fragment.getArguments());
        }
        return this.h;
    }

    @Override // androidx.lifecycle.LifecycleOwner
    public final Lifecycle getLifecycle() {
        b();
        return this.i;
    }

    @Override // androidx.savedstate.SavedStateRegistryOwner
    public final SavedStateRegistry getSavedStateRegistry() {
        b();
        return this.j.b;
    }

    @Override // androidx.lifecycle.ViewModelStoreOwner
    public final ViewModelStore getViewModelStore() {
        b();
        return this.f;
    }
}
