package io.opencensus.internal;

import java.util.ServiceConfigurationError;

/* loaded from: classes3.dex */
public final class Provider {
    public static Object a(Class cls, Class cls2) {
        try {
            return cls.asSubclass(cls2).getConstructor(null).newInstance(null);
        } catch (Exception e) {
            throw new ServiceConfigurationError("Provider " + cls.getName() + " could not be instantiated.", e);
        }
    }
}
