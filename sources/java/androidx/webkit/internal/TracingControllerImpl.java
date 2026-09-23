package androidx.webkit.internal;

import androidx.webkit.TracingController;
import androidx.webkit.internal.ApiFeature;
import androidx.webkit.internal.WebViewGlueCommunicator;
import org.chromium.support_lib_boundary.TracingControllerBoundaryInterface;

/* loaded from: classes.dex */
public class TracingControllerImpl extends TracingController {

    /* renamed from: a, reason: collision with root package name */
    public final TracingControllerBoundaryInterface f1804a;

    public TracingControllerImpl() {
        ApiFeature.P p = WebViewFeatureInternal.g;
        if (p.c()) {
            ApiHelperForP.a();
        } else {
            if (p.d()) {
                this.f1804a = WebViewGlueCommunicator.LAZY_FACTORY_HOLDER.f1814a.getTracingController();
                return;
            }
            throw WebViewFeatureInternal.a();
        }
    }
}
