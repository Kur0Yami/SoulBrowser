package androidx.savedstate;

import android.annotation.SuppressLint;
import android.os.Bundle;
import androidx.arch.core.internal.SafeIterableMap;
import androidx.lifecycle.LegacySavedStateHandleController;
import androidx.savedstate.Recreator;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004¨\u0006\u0005"}, d2 = {"Landroidx/savedstate/SavedStateRegistry;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "AutoRecreated", "Companion", "SavedStateProvider", "savedstate_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SuppressLint({"RestrictedApi"})
@SourceDebugExtension({"SMAP\nSavedStateRegistry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SavedStateRegistry.kt\nandroidx/savedstate/SavedStateRegistry\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,272:1\n1#2:273\n*E\n"})
/* loaded from: classes.dex */
public final class SavedStateRegistry {
    public boolean b;

    /* renamed from: c, reason: collision with root package name */
    public Bundle f1649c;
    public boolean d;
    public Recreator.SavedStateProvider e;

    /* renamed from: a, reason: collision with root package name */
    public final SafeIterableMap f1648a = new SafeIterableMap();
    public boolean f = true;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Landroidx/savedstate/SavedStateRegistry$AutoRecreated;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "savedstate_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public interface AutoRecreated {
        void a(SavedStateRegistryOwner savedStateRegistryOwner);
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/savedstate/SavedStateRegistry$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "SAVED_COMPONENTS_KEY", "Ljava/lang/String;", "savedstate_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "savedstate_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public interface SavedStateProvider {
        Bundle a();
    }

    public final Bundle a(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        if (this.d) {
            Bundle bundle = this.f1649c;
            if (bundle == null) {
                return null;
            }
            Bundle bundle2 = bundle.getBundle(key);
            Bundle bundle3 = this.f1649c;
            if (bundle3 != null) {
                bundle3.remove(key);
            }
            Bundle bundle4 = this.f1649c;
            if (bundle4 != null && !bundle4.isEmpty()) {
                return bundle2;
            }
            this.f1649c = null;
            return bundle2;
        }
        throw new IllegalStateException("You can consumeRestoredStateForKey only after super.onCreate of corresponding component");
    }

    public final SavedStateProvider b() {
        Intrinsics.checkNotNullParameter("androidx.lifecycle.internal.SavedStateHandlesProvider", "key");
        Iterator it = this.f1648a.iterator();
        while (it.hasNext()) {
            Map.Entry components = (Map.Entry) it.next();
            Intrinsics.checkNotNullExpressionValue(components, "components");
            String str = (String) components.getKey();
            SavedStateProvider savedStateProvider = (SavedStateProvider) components.getValue();
            if (Intrinsics.areEqual(str, "androidx.lifecycle.internal.SavedStateHandlesProvider")) {
                return savedStateProvider;
            }
        }
        return null;
    }

    public final void c(String key, SavedStateProvider provider) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(provider, "provider");
        if (((SavedStateProvider) this.f1648a.c(key, provider)) == null) {
        } else {
            throw new IllegalArgumentException("SavedStateProvider with the given key is already registered");
        }
    }

    public final void d() {
        Intrinsics.checkNotNullParameter(LegacySavedStateHandleController.OnRecreation.class, "clazz");
        if (this.f) {
            Recreator.SavedStateProvider savedStateProvider = this.e;
            if (savedStateProvider == null) {
                savedStateProvider = new Recreator.SavedStateProvider(this);
            }
            this.e = savedStateProvider;
            try {
                LegacySavedStateHandleController.OnRecreation.class.getDeclaredConstructor(null);
                Recreator.SavedStateProvider savedStateProvider2 = this.e;
                if (savedStateProvider2 != null) {
                    String className = LegacySavedStateHandleController.OnRecreation.class.getName();
                    Intrinsics.checkNotNullExpressionValue(className, "clazz.name");
                    Intrinsics.checkNotNullParameter(className, "className");
                    savedStateProvider2.f1647a.add(className);
                    return;
                }
                return;
            } catch (NoSuchMethodException e) {
                throw new IllegalArgumentException("Class " + LegacySavedStateHandleController.OnRecreation.class.getSimpleName() + " must have default constructor in order to be automatically recreated", e);
            }
        }
        throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
    }
}
