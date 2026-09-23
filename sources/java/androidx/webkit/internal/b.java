package androidx.webkit.internal;

import java.util.concurrent.Callable;
import org.chromium.support_lib_boundary.WebViewPageBoundaryInterface;

/* loaded from: classes.dex */
public final /* synthetic */ class b implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1822a;
    public final /* synthetic */ WebViewPageBoundaryInterface b;

    public /* synthetic */ b(WebViewPageBoundaryInterface webViewPageBoundaryInterface, int i) {
        this.f1822a = i;
        this.b = webViewPageBoundaryInterface;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        switch (this.f1822a) {
            case 0:
                return new PageImpl(this.b);
            case 1:
                return new PageImpl(this.b);
            case 2:
                return new PageImpl(this.b);
            default:
                return new PageImpl(this.b);
        }
    }
}
