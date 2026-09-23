package io.opencensus.trace;

import io.opencensus.internal.Provider;
import io.opencensus.trace.TraceComponent;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes3.dex */
public final class Tracing {

    /* renamed from: a, reason: collision with root package name */
    public static final TraceComponent f21118a;

    static {
        TraceComponent noopTraceComponent;
        Logger logger = Logger.getLogger(Tracing.class.getName());
        ClassLoader classLoader = TraceComponent.class.getClassLoader();
        try {
            noopTraceComponent = (TraceComponent) Provider.a(Class.forName("io.opentelemetry.opencensusshim.OpenTelemetryTraceComponentImpl", true, classLoader), TraceComponent.class);
        } catch (ClassNotFoundException e) {
            logger.log(Level.FINE, "Couldn't load full implementation for OpenTelemetry TraceComponent, now trying to load original implementation.", (Throwable) e);
            try {
                noopTraceComponent = (TraceComponent) Provider.a(Class.forName("io.opencensus.impl.trace.TraceComponentImpl", true, classLoader), TraceComponent.class);
            } catch (ClassNotFoundException e2) {
                logger.log(Level.FINE, "Couldn't load full implementation for TraceComponent, now trying to load lite implementation.", (Throwable) e2);
                try {
                    noopTraceComponent = (TraceComponent) Provider.a(Class.forName("io.opencensus.impllite.trace.TraceComponentImplLite", true, classLoader), TraceComponent.class);
                } catch (ClassNotFoundException e3) {
                    logger.log(Level.FINE, "Couldn't load lite implementation for TraceComponent, now using default implementation for TraceComponent.", (Throwable) e3);
                    noopTraceComponent = new TraceComponent.NoopTraceComponent();
                }
            }
        }
        f21118a = noopTraceComponent;
    }
}
