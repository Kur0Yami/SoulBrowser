package io.opencensus.metrics;

import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes3.dex */
public final class Metrics {
    static {
        Logger logger = Logger.getLogger(Metrics.class.getName());
        ClassLoader classLoader = MetricsComponent.class.getClassLoader();
        try {
        } catch (ClassNotFoundException e) {
            logger.log(Level.FINE, "Couldn't load full implementation for MetricsComponent, now trying to load lite implementation.", (Throwable) e);
            try {
            } catch (ClassNotFoundException e2) {
                logger.log(Level.FINE, "Couldn't load lite implementation for MetricsComponent, now using default implementation for MetricsComponent.", (Throwable) e2);
            }
        }
    }
}
