package androidx.lifecycle;

import android.app.Application;
import androidx.annotation.RestrictTo;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.MutableCreationExtras;
import com.google.android.gms.ads.RequestConfiguration;
import java.lang.reflect.InvocationTargetException;
import java.util.LinkedHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\b\u0016\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005¨\u0006\u0006"}, d2 = {"Landroidx/lifecycle/ViewModelProvider;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "AndroidViewModelFactory", "Factory", "NewInstanceFactory", "OnRequeryFactory", "lifecycle-viewmodel_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nViewModelProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewModelProvider.kt\nandroidx/lifecycle/ViewModelProvider\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,375:1\n1#2:376\n*E\n"})
/* loaded from: classes.dex */
public class ViewModelProvider {

    /* renamed from: a, reason: collision with root package name */
    public final ViewModelStore f1232a;
    public final Factory b;

    /* renamed from: c, reason: collision with root package name */
    public final CreationExtras f1233c;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0016\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;", "Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;", "Companion", "lifecycle-viewmodel_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static class AndroidViewModelFactory extends NewInstanceFactory {
        public static AndroidViewModelFactory d;
        public static final CreationExtras.Key e = Companion.ApplicationKeyImpl.f1235a;

        /* renamed from: c, reason: collision with root package name */
        public final Application f1234c;

        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001:\u0001\fR\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0007\u001a\u00020\u00068\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0018\u0010\n\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Landroidx/lifecycle/viewmodel/CreationExtras$Key;", "Landroid/app/Application;", "APPLICATION_KEY", "Landroidx/lifecycle/viewmodel/CreationExtras$Key;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "DEFAULT_KEY", "Ljava/lang/String;", "Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;", "sInstance", "Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;", "ApplicationKeyImpl", "lifecycle-viewmodel_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        /* loaded from: classes.dex */
        public static final class Companion {

            @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÂ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory$Companion$ApplicationKeyImpl;", "Landroidx/lifecycle/viewmodel/CreationExtras$Key;", "Landroid/app/Application;", "lifecycle-viewmodel_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
            /* loaded from: classes.dex */
            public static final class ApplicationKeyImpl implements CreationExtras.Key<Application> {

                /* renamed from: a, reason: collision with root package name */
                public static final ApplicationKeyImpl f1235a = new Object();
            }
        }

        public AndroidViewModelFactory(Application application) {
            this.f1234c = application;
        }

        @Override // androidx.lifecycle.ViewModelProvider.NewInstanceFactory, androidx.lifecycle.ViewModelProvider.Factory
        public final ViewModel a(Class modelClass) {
            Intrinsics.checkNotNullParameter(modelClass, "modelClass");
            Application application = this.f1234c;
            if (application != null) {
                return c(modelClass, application);
            }
            throw new UnsupportedOperationException("AndroidViewModelFactory constructed with empty constructor works only with create(modelClass: Class<T>, extras: CreationExtras).");
        }

        @Override // androidx.lifecycle.ViewModelProvider.NewInstanceFactory, androidx.lifecycle.ViewModelProvider.Factory
        public final ViewModel b(Class modelClass, MutableCreationExtras extras) {
            Intrinsics.checkNotNullParameter(modelClass, "modelClass");
            Intrinsics.checkNotNullParameter(extras, "extras");
            if (this.f1234c != null) {
                return a(modelClass);
            }
            Application application = (Application) extras.a(Companion.ApplicationKeyImpl.f1235a);
            if (application != null) {
                return c(modelClass, application);
            }
            if (!AndroidViewModel.class.isAssignableFrom(modelClass)) {
                return super.a(modelClass);
            }
            throw new IllegalArgumentException("CreationExtras must have an application by `APPLICATION_KEY`");
        }

        public final ViewModel c(Class cls, Application application) {
            if (AndroidViewModel.class.isAssignableFrom(cls)) {
                try {
                    ViewModel viewModel = (ViewModel) cls.getConstructor(Application.class).newInstance(application);
                    Intrinsics.checkNotNullExpressionValue(viewModel, "{\n                try {\n…          }\n            }");
                    return viewModel;
                } catch (IllegalAccessException e2) {
                    throw new RuntimeException("Cannot create an instance of " + cls, e2);
                } catch (InstantiationException e3) {
                    throw new RuntimeException("Cannot create an instance of " + cls, e3);
                } catch (NoSuchMethodException e4) {
                    throw new RuntimeException("Cannot create an instance of " + cls, e4);
                } catch (InvocationTargetException e5) {
                    throw new RuntimeException("Cannot create an instance of " + cls, e5);
                }
            }
            return super.a(cls);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001:\u0001\u0002ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0003À\u0006\u0001"}, d2 = {"Landroidx/lifecycle/ViewModelProvider$Factory;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Companion", "lifecycle-viewmodel_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public interface Factory {

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/lifecycle/ViewModelProvider$Factory$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "lifecycle-viewmodel_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        /* loaded from: classes.dex */
        public static final class Companion {
        }

        ViewModel a(Class cls);

        ViewModel b(Class cls, MutableCreationExtras mutableCreationExtras);
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0016\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;", "Landroidx/lifecycle/ViewModelProvider$Factory;", "Companion", "lifecycle-viewmodel_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static class NewInstanceFactory implements Factory {

        /* renamed from: a, reason: collision with root package name */
        public static NewInstanceFactory f1236a;
        public static final CreationExtras.Key b = null;

        @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001:\u0001\tR\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Landroidx/lifecycle/viewmodel/CreationExtras$Key;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "VIEW_MODEL_KEY", "Landroidx/lifecycle/viewmodel/CreationExtras$Key;", "Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;", "sInstance", "Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;", "ViewModelKeyImpl", "lifecycle-viewmodel_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        /* loaded from: classes.dex */
        public static final class Companion {

            @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\bÂ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory$Companion$ViewModelKeyImpl;", "Landroidx/lifecycle/viewmodel/CreationExtras$Key;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "lifecycle-viewmodel_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
            /* loaded from: classes.dex */
            public static final class ViewModelKeyImpl implements CreationExtras.Key<String> {

                /* renamed from: a, reason: collision with root package name */
                public static final ViewModelKeyImpl f1237a = new Object();
            }
        }

        @Override // androidx.lifecycle.ViewModelProvider.Factory
        public ViewModel a(Class modelClass) {
            Intrinsics.checkNotNullParameter(modelClass, "modelClass");
            try {
                Object newInstance = modelClass.getDeclaredConstructor(null).newInstance(null);
                Intrinsics.checkNotNullExpressionValue(newInstance, "{\n                modelC…wInstance()\n            }");
                return (ViewModel) newInstance;
            } catch (IllegalAccessException e) {
                throw new RuntimeException("Cannot create an instance of " + modelClass, e);
            } catch (InstantiationException e2) {
                throw new RuntimeException("Cannot create an instance of " + modelClass, e2);
            } catch (NoSuchMethodException e3) {
                throw new RuntimeException("Cannot create an instance of " + modelClass, e3);
            }
        }

        @Override // androidx.lifecycle.ViewModelProvider.Factory
        public ViewModel b(Class modelClass, MutableCreationExtras extras) {
            Intrinsics.checkNotNullParameter(modelClass, "modelClass");
            Intrinsics.checkNotNullParameter(extras, "extras");
            return a(modelClass);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0017\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/lifecycle/ViewModelProvider$OnRequeryFactory;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "lifecycle-viewmodel_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @RestrictTo
    /* loaded from: classes.dex */
    public static class OnRequeryFactory {
        public void c(ViewModel viewModel) {
            Intrinsics.checkNotNullParameter(viewModel, "viewModel");
        }
    }

    public ViewModelProvider(ViewModelStore store, Factory factory, CreationExtras defaultCreationExtras) {
        Intrinsics.checkNotNullParameter(store, "store");
        Intrinsics.checkNotNullParameter(factory, "factory");
        Intrinsics.checkNotNullParameter(defaultCreationExtras, "defaultCreationExtras");
        this.f1232a = store;
        this.b = factory;
        this.f1233c = defaultCreationExtras;
    }

    public final ViewModel a(Class modelClass) {
        Intrinsics.checkNotNullParameter(modelClass, "modelClass");
        String canonicalName = modelClass.getCanonicalName();
        if (canonicalName != null) {
            return b(modelClass, "androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(canonicalName));
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final ViewModel b(Class modelClass, String key) {
        ViewModel viewModel;
        OnRequeryFactory onRequeryFactory;
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(modelClass, "modelClass");
        ViewModelStore viewModelStore = this.f1232a;
        viewModelStore.getClass();
        Intrinsics.checkNotNullParameter(key, "key");
        LinkedHashMap linkedHashMap = viewModelStore.f1238a;
        ViewModel viewModel2 = (ViewModel) linkedHashMap.get(key);
        boolean isInstance = modelClass.isInstance(viewModel2);
        Factory factory = this.b;
        if (isInstance) {
            if (factory instanceof OnRequeryFactory) {
                onRequeryFactory = (OnRequeryFactory) factory;
            } else {
                onRequeryFactory = null;
            }
            if (onRequeryFactory != null) {
                Intrinsics.checkNotNull(viewModel2);
                onRequeryFactory.c(viewModel2);
            }
            Intrinsics.checkNotNull(viewModel2, "null cannot be cast to non-null type T of androidx.lifecycle.ViewModelProvider.get");
            return viewModel2;
        }
        MutableCreationExtras mutableCreationExtras = new MutableCreationExtras(this.f1233c);
        NewInstanceFactory newInstanceFactory = NewInstanceFactory.f1236a;
        mutableCreationExtras.b(NewInstanceFactory.Companion.ViewModelKeyImpl.f1237a, key);
        try {
            viewModel = factory.b(modelClass, mutableCreationExtras);
        } catch (AbstractMethodError unused) {
            viewModel = factory.a(modelClass);
        }
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(viewModel, "viewModel");
        ViewModel viewModel3 = (ViewModel) linkedHashMap.put(key, viewModel);
        if (viewModel3 != null) {
            viewModel3.b();
        }
        return viewModel;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ViewModelProvider(ViewModelStore store, Factory factory) {
        this(store, factory, CreationExtras.Empty.b);
        Intrinsics.checkNotNullParameter(store, "store");
        Intrinsics.checkNotNullParameter(factory, "factory");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ViewModelProvider(androidx.fragment.app.FragmentActivity r4) {
        /*
            r3 = this;
            java.lang.String r0 = "owner"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            androidx.lifecycle.ViewModelStore r1 = r4.getViewModelStore()
            androidx.lifecycle.ViewModelProvider$AndroidViewModelFactory r2 = androidx.lifecycle.ViewModelProvider.AndroidViewModelFactory.d
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            androidx.lifecycle.ViewModelProvider$Factory r2 = r4.getDefaultViewModelProviderFactory()
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            androidx.lifecycle.viewmodel.CreationExtras r4 = r4.getDefaultViewModelCreationExtras()
            r3.<init>(r1, r2, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.lifecycle.ViewModelProvider.<init>(androidx.fragment.app.FragmentActivity):void");
    }
}
