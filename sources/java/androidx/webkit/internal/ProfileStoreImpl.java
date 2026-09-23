package androidx.webkit.internal;

import androidx.webkit.Profile;
import androidx.webkit.ProfileStore;
import androidx.webkit.internal.WebViewGlueCommunicator;
import java.lang.reflect.InvocationHandler;
import java.util.List;
import org.chromium.support_lib_boundary.ProfileBoundaryInterface;
import org.chromium.support_lib_boundary.ProfileStoreBoundaryInterface;
import org.chromium.support_lib_boundary.util.BoundaryInterfaceReflectionUtil;

/* loaded from: classes.dex */
public class ProfileStoreImpl implements ProfileStore {
    public static ProfileStoreImpl b;

    /* renamed from: a, reason: collision with root package name */
    public final ProfileStoreBoundaryInterface f1800a;

    public ProfileStoreImpl(ProfileStoreBoundaryInterface profileStoreBoundaryInterface) {
        this.f1800a = profileStoreBoundaryInterface;
    }

    public static ProfileStore a() {
        if (b == null) {
            b = new ProfileStoreImpl(WebViewGlueCommunicator.LAZY_FACTORY_HOLDER.f1814a.getProfileStore());
        }
        return b;
    }

    @Override // androidx.webkit.ProfileStore
    public final boolean deleteProfile(String str) {
        if (WebViewFeatureInternal.m.d()) {
            return this.f1800a.deleteProfile(str);
        }
        throw WebViewFeatureInternal.a();
    }

    @Override // androidx.webkit.ProfileStore
    public final List getAllProfileNames() {
        if (WebViewFeatureInternal.m.d()) {
            return this.f1800a.getAllProfileNames();
        }
        throw WebViewFeatureInternal.a();
    }

    @Override // androidx.webkit.ProfileStore
    public final Profile getOrCreateProfile(String str) {
        if (WebViewFeatureInternal.m.d()) {
            return new ProfileImpl((ProfileBoundaryInterface) BoundaryInterfaceReflectionUtil.a(ProfileBoundaryInterface.class, this.f1800a.getOrCreateProfile(str)));
        }
        throw WebViewFeatureInternal.a();
    }

    @Override // androidx.webkit.ProfileStore
    public final Profile getProfile(String str) {
        if (WebViewFeatureInternal.m.d()) {
            InvocationHandler profile = this.f1800a.getProfile(str);
            if (profile != null) {
                return new ProfileImpl((ProfileBoundaryInterface) BoundaryInterfaceReflectionUtil.a(ProfileBoundaryInterface.class, profile));
            }
            return null;
        }
        throw WebViewFeatureInternal.a();
    }
}
