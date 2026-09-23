package androidx.webkit.internal;

import java.util.concurrent.Callable;
import org.chromium.support_lib_boundary.IsomorphicObjectBoundaryInterface;
import org.chromium.support_lib_boundary.JsReplyProxyBoundaryInterface;
import org.chromium.support_lib_boundary.WebViewRendererBoundaryInterface;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1821a;
    public final /* synthetic */ IsomorphicObjectBoundaryInterface b;

    public /* synthetic */ a(IsomorphicObjectBoundaryInterface isomorphicObjectBoundaryInterface, int i) {
        this.f1821a = i;
        this.b = isomorphicObjectBoundaryInterface;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [androidx.webkit.internal.WebViewRenderProcessImpl, java.lang.Object] */
    @Override // java.util.concurrent.Callable
    public final Object call() {
        switch (this.f1821a) {
            case 0:
                return new JavaScriptReplyProxyImpl((JsReplyProxyBoundaryInterface) this.b);
            default:
                WebViewRendererBoundaryInterface webViewRendererBoundaryInterface = (WebViewRendererBoundaryInterface) this.b;
                ?? obj = new Object();
                obj.f1818a = webViewRendererBoundaryInterface;
                return obj;
        }
    }
}
