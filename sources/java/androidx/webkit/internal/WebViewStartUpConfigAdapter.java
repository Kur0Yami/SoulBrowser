package androidx.webkit.internal;

import java.util.concurrent.Executor;
import org.chromium.support_lib_boundary.WebViewStartUpConfigBoundaryInterface;

/* loaded from: classes.dex */
public class WebViewStartUpConfigAdapter implements WebViewStartUpConfigBoundaryInterface {
    @Override // org.chromium.support_lib_boundary.WebViewStartUpConfigBoundaryInterface
    public final Executor getBackgroundExecutor() {
        throw null;
    }

    @Override // org.chromium.support_lib_boundary.WebViewStartUpConfigBoundaryInterface
    public final boolean shouldRunUiThreadStartUpTasks() {
        throw null;
    }
}
