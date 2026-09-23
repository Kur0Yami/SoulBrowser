package com.google.common.eventbus;

import com.google.common.base.MoreObjects;
import java.util.logging.Logger;

/* loaded from: classes3.dex */
public class EventBus {

    /* loaded from: classes3.dex */
    public static final class LoggingHandler implements SubscriberExceptionHandler {
    }

    static {
        Logger.getLogger(EventBus.class.getName());
    }

    public final String toString() {
        MoreObjects.ToStringHelper b = MoreObjects.b(this);
        b.f(null);
        return b.toString();
    }
}
