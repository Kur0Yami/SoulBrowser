package androidx.webkit.internal;

import java.util.concurrent.Executor;
import org.chromium.support_lib_boundary.WebStorageBoundaryInterface;

/* loaded from: classes.dex */
public class WebStorageAdapter implements WebStorageBoundaryInterface {

    /* renamed from: a, reason: collision with root package name */
    public final WebStorageBoundaryInterface f1810a;

    public WebStorageAdapter(WebStorageBoundaryInterface webStorageBoundaryInterface) {
        this.f1810a = webStorageBoundaryInterface;
    }

    @Override // org.chromium.support_lib_boundary.WebStorageBoundaryInterface
    public final void deleteBrowsingData(Executor executor, Runnable runnable) {
        this.f1810a.deleteBrowsingData(executor, runnable);
    }

    @Override // org.chromium.support_lib_boundary.WebStorageBoundaryInterface
    public final String deleteBrowsingDataForSite(String str, Executor executor, Runnable runnable) {
        return this.f1810a.deleteBrowsingDataForSite(str, executor, runnable);
    }
}
