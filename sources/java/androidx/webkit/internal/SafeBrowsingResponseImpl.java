package androidx.webkit.internal;

import android.webkit.SafeBrowsingResponse;
import androidx.webkit.SafeBrowsingResponseCompat;
import androidx.webkit.internal.ApiFeature;
import androidx.webkit.internal.WebViewGlueCommunicator;
import java.lang.reflect.Proxy;
import org.chromium.support_lib_boundary.SafeBrowsingResponseBoundaryInterface;
import org.chromium.support_lib_boundary.util.BoundaryInterfaceReflectionUtil;

/* loaded from: classes.dex */
public class SafeBrowsingResponseImpl extends SafeBrowsingResponseCompat {

    /* renamed from: a, reason: collision with root package name */
    public SafeBrowsingResponse f1801a;
    public SafeBrowsingResponseBoundaryInterface b;

    public final void a() {
        ApiFeature.O_MR1 o_mr1 = WebViewFeatureInternal.d;
        if (o_mr1.c()) {
            if (this.f1801a == null) {
                this.f1801a = WebViewGlueCommunicator.LAZY_COMPAT_CONVERTER_HOLDER.f1813a.a(Proxy.getInvocationHandler(this.b));
            }
            ApiHelperForOMR1.a(this.f1801a);
        } else {
            if (o_mr1.d()) {
                if (this.b == null) {
                    WebkitToCompatConverter webkitToCompatConverter = WebViewGlueCommunicator.LAZY_COMPAT_CONVERTER_HOLDER.f1813a;
                    this.b = (SafeBrowsingResponseBoundaryInterface) BoundaryInterfaceReflectionUtil.a(SafeBrowsingResponseBoundaryInterface.class, webkitToCompatConverter.f1820a.convertSafeBrowsingResponse(this.f1801a));
                }
                this.b.showInterstitial(true);
                return;
            }
            throw WebViewFeatureInternal.a();
        }
    }
}
