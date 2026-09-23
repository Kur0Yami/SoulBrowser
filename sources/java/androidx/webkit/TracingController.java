package androidx.webkit;

import androidx.annotation.AnyThread;
import androidx.webkit.internal.TracingControllerImpl;

@AnyThread
/* loaded from: classes.dex */
public abstract class TracingController {

    /* loaded from: classes.dex */
    public static class LAZY_HOLDER {
        static {
            new TracingControllerImpl();
        }
    }
}
