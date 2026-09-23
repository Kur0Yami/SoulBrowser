package io.opencensus.tags;

import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes3.dex */
public final class Tags {
    static {
        Logger logger = Logger.getLogger(Tags.class.getName());
        ClassLoader classLoader = TagsComponent.class.getClassLoader();
        try {
        } catch (ClassNotFoundException e) {
            logger.log(Level.FINE, "Couldn't load full implementation for TagsComponent, now trying to load lite implementation.", (Throwable) e);
            try {
            } catch (ClassNotFoundException e2) {
                logger.log(Level.FINE, "Couldn't load lite implementation for TagsComponent, now using default implementation for TagsComponent.", (Throwable) e2);
            }
        }
    }
}
