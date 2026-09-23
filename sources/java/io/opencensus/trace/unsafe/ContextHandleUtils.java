package io.opencensus.trace.unsafe;

import io.opencensus.internal.Provider;
import io.opencensus.trace.ContextManager;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes3.dex */
public class ContextHandleUtils {

    /* renamed from: a, reason: collision with root package name */
    public static final Logger f21128a = Logger.getLogger(ContextHandleUtils.class.getName());
    public static final ContextManager b;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v6, types: [io.opencensus.trace.ContextManager] */
    /* JADX WARN: Type inference failed for: r0v9 */
    static {
        ?? r0;
        try {
            r0 = (ContextManager) Provider.a(Class.forName("io.opentelemetry.opencensusshim.OpenTelemetryContextManager", true, ContextManager.class.getClassLoader()), ContextManager.class);
        } catch (ClassNotFoundException e) {
            f21128a.log(Level.FINE, "Couldn't load full implementation for OpenTelemetry context manager, now loading original implementation.", (Throwable) e);
            r0 = new Object();
        }
        b = r0;
    }
}
