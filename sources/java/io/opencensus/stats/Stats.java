package io.opencensus.stats;

import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes3.dex */
public final class Stats {
    static {
        Logger logger = Logger.getLogger(Stats.class.getName());
        ClassLoader classLoader = StatsComponent.class.getClassLoader();
        try {
        } catch (ClassNotFoundException e) {
            logger.log(Level.FINE, "Couldn't load full implementation for StatsComponent, now trying to load lite implementation.", (Throwable) e);
            try {
            } catch (ClassNotFoundException e2) {
                logger.log(Level.FINE, "Couldn't load lite implementation for StatsComponent, now using default implementation for StatsComponent.", (Throwable) e2);
                new HashMap();
            }
        }
    }
}
