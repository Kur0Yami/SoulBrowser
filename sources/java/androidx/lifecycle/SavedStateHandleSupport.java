package androidx.lifecycle;

import android.os.Bundle;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.InitializerViewModelFactory;
import androidx.lifecycle.viewmodel.InitializerViewModelFactoryBuilder;
import androidx.lifecycle.viewmodel.MutableCreationExtras;
import androidx.lifecycle.viewmodel.ViewModelInitializer;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryOwner;
import java.util.ArrayList;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;

@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"lifecycle-viewmodel-savedstate_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
@JvmName(name = "SavedStateHandleSupport")
@SourceDebugExtension({"SMAP\nSavedStateHandleSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SavedStateHandleSupport.kt\nandroidx/lifecycle/SavedStateHandleSupport\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 InitializerViewModelFactory.kt\nandroidx/lifecycle/viewmodel/InitializerViewModelFactoryKt\n*L\n1#1,225:1\n1#2:226\n31#3:227\n63#3,2:228\n*S KotlinDebug\n*F\n+ 1 SavedStateHandleSupport.kt\nandroidx/lifecycle/SavedStateHandleSupport\n*L\n109#1:227\n110#1:228,2\n*E\n"})
/* loaded from: classes.dex */
public final class SavedStateHandleSupport {

    /* renamed from: a, reason: collision with root package name */
    public static final SavedStateHandleSupport$SAVED_STATE_REGISTRY_OWNER_KEY$1 f1217a = new Object();
    public static final SavedStateHandleSupport$VIEW_MODEL_STORE_OWNER_KEY$1 b = new Object();

    /* renamed from: c, reason: collision with root package name */
    public static final SavedStateHandleSupport$DEFAULT_ARGS_KEY$1 f1218c = new Object();

    public static final SavedStateHandle a(MutableCreationExtras mutableCreationExtras) {
        SavedStateHandlesProvider savedStateHandlesProvider;
        Bundle bundle;
        Intrinsics.checkNotNullParameter(mutableCreationExtras, "<this>");
        SavedStateRegistryOwner savedStateRegistryOwner = (SavedStateRegistryOwner) mutableCreationExtras.a(f1217a);
        if (savedStateRegistryOwner != null) {
            ViewModelStoreOwner viewModelStoreOwner = (ViewModelStoreOwner) mutableCreationExtras.a(b);
            if (viewModelStoreOwner != null) {
                Bundle bundle2 = (Bundle) mutableCreationExtras.a(f1218c);
                ViewModelProvider.NewInstanceFactory newInstanceFactory = ViewModelProvider.NewInstanceFactory.f1236a;
                String key = (String) mutableCreationExtras.a(ViewModelProvider.NewInstanceFactory.Companion.ViewModelKeyImpl.f1237a);
                if (key != null) {
                    Intrinsics.checkNotNullParameter(savedStateRegistryOwner, "<this>");
                    SavedStateRegistry.SavedStateProvider b2 = savedStateRegistryOwner.getSavedStateRegistry().b();
                    if (b2 instanceof SavedStateHandlesProvider) {
                        savedStateHandlesProvider = (SavedStateHandlesProvider) b2;
                    } else {
                        savedStateHandlesProvider = null;
                    }
                    if (savedStateHandlesProvider != null) {
                        SavedStateHandlesVM c2 = c(viewModelStoreOwner);
                        SavedStateHandle savedStateHandle = (SavedStateHandle) c2.d.get(key);
                        if (savedStateHandle == null) {
                            Class[] clsArr = SavedStateHandle.f;
                            Intrinsics.checkNotNullParameter(key, "key");
                            savedStateHandlesProvider.b();
                            Bundle bundle3 = savedStateHandlesProvider.f1221c;
                            if (bundle3 != null) {
                                bundle = bundle3.getBundle(key);
                            } else {
                                bundle = null;
                            }
                            Bundle bundle4 = savedStateHandlesProvider.f1221c;
                            if (bundle4 != null) {
                                bundle4.remove(key);
                            }
                            Bundle bundle5 = savedStateHandlesProvider.f1221c;
                            if (bundle5 != null && bundle5.isEmpty()) {
                                savedStateHandlesProvider.f1221c = null;
                            }
                            SavedStateHandle a2 = SavedStateHandle.Companion.a(bundle, bundle2);
                            c2.d.put(key, a2);
                            return a2;
                        }
                        return savedStateHandle;
                    }
                    throw new IllegalStateException("enableSavedStateHandles() wasn't called prior to createSavedStateHandle() call");
                }
                throw new IllegalArgumentException("CreationExtras must have a value by `VIEW_MODEL_KEY`");
            }
            throw new IllegalArgumentException("CreationExtras must have a value by `VIEW_MODEL_STORE_OWNER_KEY`");
        }
        throw new IllegalArgumentException("CreationExtras must have a value by `SAVED_STATE_REGISTRY_OWNER_KEY`");
    }

    public static final void b(SavedStateRegistryOwner savedStateRegistryOwner) {
        Intrinsics.checkNotNullParameter(savedStateRegistryOwner, "<this>");
        Lifecycle.State f1201c = savedStateRegistryOwner.getLifecycle().getF1201c();
        if (f1201c != Lifecycle.State.f && f1201c != Lifecycle.State.g) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        if (savedStateRegistryOwner.getSavedStateRegistry().b() == null) {
            SavedStateHandlesProvider savedStateHandlesProvider = new SavedStateHandlesProvider(savedStateRegistryOwner.getSavedStateRegistry(), (ViewModelStoreOwner) savedStateRegistryOwner);
            savedStateRegistryOwner.getSavedStateRegistry().c("androidx.lifecycle.internal.SavedStateHandlesProvider", savedStateHandlesProvider);
            savedStateRegistryOwner.getLifecycle().a(new SavedStateHandleAttacher(savedStateHandlesProvider));
        }
    }

    public static final SavedStateHandlesVM c(ViewModelStoreOwner owner) {
        CreationExtras creationExtras;
        Intrinsics.checkNotNullParameter(owner, "<this>");
        InitializerViewModelFactoryBuilder initializerViewModelFactoryBuilder = new InitializerViewModelFactoryBuilder();
        SavedStateHandleSupport$savedStateHandlesVM$1$1 initializer = SavedStateHandleSupport$savedStateHandlesVM$1$1.f1219c;
        KClass clazz = Reflection.getOrCreateKotlinClass(SavedStateHandlesVM.class);
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Intrinsics.checkNotNullParameter(initializer, "initializer");
        ViewModelInitializer viewModelInitializer = new ViewModelInitializer(JvmClassMappingKt.getJavaClass(clazz), initializer);
        ArrayList arrayList = initializerViewModelFactoryBuilder.f1242a;
        arrayList.add(viewModelInitializer);
        ViewModelInitializer[] viewModelInitializerArr = (ViewModelInitializer[]) arrayList.toArray(new ViewModelInitializer[0]);
        InitializerViewModelFactory factory = new InitializerViewModelFactory((ViewModelInitializer[]) Arrays.copyOf(viewModelInitializerArr, viewModelInitializerArr.length));
        Intrinsics.checkNotNullParameter(owner, "owner");
        Intrinsics.checkNotNullParameter(factory, "factory");
        ViewModelStore viewModelStore = owner.getViewModelStore();
        Intrinsics.checkNotNullParameter(owner, "owner");
        if (owner instanceof HasDefaultViewModelProviderFactory) {
            creationExtras = ((HasDefaultViewModelProviderFactory) owner).getDefaultViewModelCreationExtras();
        } else {
            creationExtras = CreationExtras.Empty.b;
        }
        return (SavedStateHandlesVM) new ViewModelProvider(viewModelStore, factory, creationExtras).b(SavedStateHandlesVM.class, "androidx.lifecycle.internal.SavedStateHandlesVM");
    }
}
