package androidx.webkit.internal;

import androidx.webkit.BlockingStartUpLocation;
import androidx.webkit.WebViewStartUpResult;
import j$.util.Objects;
import java.lang.reflect.InvocationHandler;
import java.util.ArrayList;
import java.util.List;
import org.chromium.support_lib_boundary.WebViewStartUpCallbackBoundaryInterface;
import org.chromium.support_lib_boundary.WebViewStartUpResultBoundaryInterface;
import org.chromium.support_lib_boundary.util.BoundaryInterfaceReflectionUtil;

/* loaded from: classes.dex */
public class WebViewStartUpCallbackAdapter implements WebViewStartUpCallbackBoundaryInterface {

    /* loaded from: classes.dex */
    public static class BlockingStartUpLocationImpl implements BlockingStartUpLocation {
    }

    @Override // org.chromium.support_lib_boundary.WebViewStartUpCallbackBoundaryInterface
    public final void onSuccess(InvocationHandler invocationHandler) {
        WebViewStartUpResultBoundaryInterface webViewStartUpResultBoundaryInterface = (WebViewStartUpResultBoundaryInterface) BoundaryInterfaceReflectionUtil.a(WebViewStartUpResultBoundaryInterface.class, invocationHandler);
        Objects.requireNonNull(webViewStartUpResultBoundaryInterface);
        new WebViewStartUpResult() { // from class: androidx.webkit.internal.WebViewStartUpCallbackAdapter.1
            {
                List<Throwable> blockingStartUpLocations = WebViewStartUpResultBoundaryInterface.this.getBlockingStartUpLocations();
                ArrayList arrayList = new ArrayList();
                for (Throwable th : blockingStartUpLocations) {
                    arrayList.add(new Object());
                }
            }
        };
        throw null;
    }
}
