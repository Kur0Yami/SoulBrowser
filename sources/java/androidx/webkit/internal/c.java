package androidx.webkit.internal;

import java.util.concurrent.Callable;
import org.chromium.support_lib_boundary.WebViewNavigationBoundaryInterface;

/* loaded from: classes.dex */
public final /* synthetic */ class c implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1823a;
    public final /* synthetic */ WebViewNavigationBoundaryInterface b;

    public /* synthetic */ c(WebViewNavigationBoundaryInterface webViewNavigationBoundaryInterface, int i) {
        this.f1823a = i;
        this.b = webViewNavigationBoundaryInterface;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        switch (this.f1823a) {
            case 0:
                return new NavigationAdapter(this.b);
            case 1:
                return new NavigationAdapter(this.b);
            default:
                return new NavigationAdapter(this.b);
        }
    }
}
