package androidx.webkit.internal;

import android.webkit.SafeBrowsingResponse;
import java.lang.reflect.InvocationHandler;
import org.chromium.support_lib_boundary.WebkitToCompatConverterBoundaryInterface;

/* loaded from: classes.dex */
public class WebkitToCompatConverter {

    /* renamed from: a, reason: collision with root package name */
    public final WebkitToCompatConverterBoundaryInterface f1820a;

    public WebkitToCompatConverter(WebkitToCompatConverterBoundaryInterface webkitToCompatConverterBoundaryInterface) {
        this.f1820a = webkitToCompatConverterBoundaryInterface;
    }

    public final SafeBrowsingResponse a(InvocationHandler invocationHandler) {
        return (SafeBrowsingResponse) this.f1820a.convertSafeBrowsingResponse(invocationHandler);
    }
}
