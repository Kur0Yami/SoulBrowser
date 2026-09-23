package androidx.webkit.internal;

import android.webkit.ServiceWorkerController;
import androidx.annotation.RequiresApi;

@RequiresApi
/* loaded from: classes.dex */
public class ApiHelperForN {
    public static ServiceWorkerController a() {
        return ServiceWorkerController.getInstance();
    }

    public static void b(ServiceWorkerController serviceWorkerController) {
        serviceWorkerController.getServiceWorkerWebSettings();
    }
}
