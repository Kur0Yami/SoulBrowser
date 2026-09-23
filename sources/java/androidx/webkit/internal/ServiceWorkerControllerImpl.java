package androidx.webkit.internal;

import android.webkit.ServiceWorkerController;
import androidx.webkit.ServiceWorkerControllerCompat;
import androidx.webkit.internal.ApiFeature;
import androidx.webkit.internal.WebViewGlueCommunicator;
import org.chromium.support_lib_boundary.ServiceWorkerControllerBoundaryInterface;

/* loaded from: classes.dex */
public class ServiceWorkerControllerImpl extends ServiceWorkerControllerCompat {

    /* renamed from: a, reason: collision with root package name */
    public final ServiceWorkerController f1802a;
    public final ServiceWorkerControllerBoundaryInterface b;

    public ServiceWorkerControllerImpl() {
        ApiFeature.N n = WebViewFeatureInternal.f1811a;
        if (n.c()) {
            ServiceWorkerController a2 = ApiHelperForN.a();
            this.f1802a = a2;
            this.b = null;
            if (a2 == null) {
                this.f1802a = ApiHelperForN.a();
            }
            ApiHelperForN.b(this.f1802a);
            return;
        }
        if (n.d()) {
            this.f1802a = null;
            ServiceWorkerControllerBoundaryInterface serviceWorkerController = WebViewGlueCommunicator.LAZY_FACTORY_HOLDER.f1814a.getServiceWorkerController();
            this.b = serviceWorkerController;
            return;
        }
        throw WebViewFeatureInternal.a();
    }
}
