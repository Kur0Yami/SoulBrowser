package androidx.webkit;

import androidx.annotation.AnyThread;
import androidx.webkit.internal.ServiceWorkerControllerImpl;

@AnyThread
/* loaded from: classes.dex */
public abstract class ServiceWorkerControllerCompat {

    /* loaded from: classes.dex */
    public static class LAZY_HOLDER {
        static {
            new ServiceWorkerControllerImpl();
        }
    }
}
