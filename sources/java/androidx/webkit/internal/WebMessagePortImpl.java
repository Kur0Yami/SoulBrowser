package androidx.webkit.internal;

import android.webkit.WebMessage;
import android.webkit.WebMessagePort;
import androidx.webkit.WebMessagePortCompat;
import java.lang.reflect.InvocationHandler;
import org.chromium.support_lib_boundary.WebMessagePortBoundaryInterface;
import org.chromium.support_lib_boundary.util.BoundaryInterfaceReflectionUtil;

/* loaded from: classes.dex */
public class WebMessagePortImpl extends WebMessagePortCompat {

    /* renamed from: a, reason: collision with root package name */
    public final WebMessagePortBoundaryInterface f1807a;

    public WebMessagePortImpl(InvocationHandler invocationHandler) {
        this.f1807a = (WebMessagePortBoundaryInterface) BoundaryInterfaceReflectionUtil.a(WebMessagePortBoundaryInterface.class, invocationHandler);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void a(WebMessage webMessage) {
        webMessage.getData();
        WebMessagePort[] ports = webMessage.getPorts();
        if (ports != null) {
            WebMessagePortCompat[] webMessagePortCompatArr = new WebMessagePortCompat[ports.length];
            for (int i = 0; i < ports.length; i++) {
                WebMessagePort webMessagePort = ports[i];
                webMessagePortCompatArr[i] = new Object();
            }
        }
    }
}
