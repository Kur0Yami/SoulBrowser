package androidx.webkit.internal;

import android.webkit.WebResourceError;
import androidx.webkit.WebResourceErrorCompat;
import androidx.webkit.internal.WebViewGlueCommunicator;
import java.lang.reflect.Proxy;
import org.chromium.support_lib_boundary.WebResourceErrorBoundaryInterface;

/* loaded from: classes.dex */
public class WebResourceErrorImpl extends WebResourceErrorCompat {

    /* renamed from: a, reason: collision with root package name */
    public WebResourceError f1808a;
    public WebResourceErrorBoundaryInterface b;

    public final CharSequence a() {
        WebViewFeatureInternal.b.getClass();
        if (this.f1808a == null) {
            WebkitToCompatConverter webkitToCompatConverter = WebViewGlueCommunicator.LAZY_COMPAT_CONVERTER_HOLDER.f1813a;
            this.f1808a = (WebResourceError) webkitToCompatConverter.f1820a.convertWebResourceError(Proxy.getInvocationHandler(this.b));
        }
        return this.f1808a.getDescription();
    }

    public final int b() {
        WebViewFeatureInternal.f1812c.getClass();
        if (this.f1808a == null) {
            WebkitToCompatConverter webkitToCompatConverter = WebViewGlueCommunicator.LAZY_COMPAT_CONVERTER_HOLDER.f1813a;
            this.f1808a = (WebResourceError) webkitToCompatConverter.f1820a.convertWebResourceError(Proxy.getInvocationHandler(this.b));
        }
        return this.f1808a.getErrorCode();
    }
}
