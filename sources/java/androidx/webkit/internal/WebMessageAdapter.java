package androidx.webkit.internal;

import androidx.webkit.WebMessageCompat;
import androidx.webkit.WebMessagePortCompat;
import java.lang.reflect.InvocationHandler;
import org.chromium.support_lib_boundary.WebMessageBoundaryInterface;
import org.chromium.support_lib_boundary.WebMessagePayloadBoundaryInterface;
import org.chromium.support_lib_boundary.util.BoundaryInterfaceReflectionUtil;

/* loaded from: classes.dex */
public class WebMessageAdapter implements WebMessageBoundaryInterface {

    /* renamed from: c, reason: collision with root package name */
    public static final String[] f1805c = {"WEB_MESSAGE_ARRAY_BUFFER"};

    public static WebMessageCompat a(WebMessageBoundaryInterface webMessageBoundaryInterface) {
        InvocationHandler[] ports = webMessageBoundaryInterface.getPorts();
        WebMessagePortCompat[] webMessagePortCompatArr = new WebMessagePortCompat[ports.length];
        for (int i = 0; i < ports.length; i++) {
            webMessagePortCompatArr[i] = new WebMessagePortImpl(ports[i]);
        }
        if (WebViewFeatureInternal.e.d()) {
            WebMessagePayloadBoundaryInterface webMessagePayloadBoundaryInterface = (WebMessagePayloadBoundaryInterface) BoundaryInterfaceReflectionUtil.a(WebMessagePayloadBoundaryInterface.class, webMessageBoundaryInterface.getMessagePayload());
            int type = webMessagePayloadBoundaryInterface.getType();
            if (type != 0) {
                if (type != 1) {
                    return null;
                }
                return new WebMessageCompat(webMessagePayloadBoundaryInterface.getAsArrayBuffer(), webMessagePortCompatArr);
            }
            return new WebMessageCompat(webMessagePayloadBoundaryInterface.getAsString(), webMessagePortCompatArr);
        }
        return new WebMessageCompat(webMessageBoundaryInterface.getData(), webMessagePortCompatArr);
    }

    @Override // org.chromium.support_lib_boundary.WebMessageBoundaryInterface
    public final String getData() {
        throw null;
    }

    @Override // org.chromium.support_lib_boundary.WebMessageBoundaryInterface
    public final InvocationHandler getMessagePayload() {
        throw null;
    }

    @Override // org.chromium.support_lib_boundary.WebMessageBoundaryInterface
    public final InvocationHandler[] getPorts() {
        throw null;
    }

    @Override // org.chromium.support_lib_boundary.FeatureFlagHolderBoundaryInterface
    public final String[] getSupportedFeatures() {
        return f1805c;
    }
}
