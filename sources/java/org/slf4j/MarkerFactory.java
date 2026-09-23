package org.slf4j;

import j$.util.concurrent.ConcurrentHashMap;
import org.slf4j.helpers.Util;
import org.slf4j.impl.StaticMarkerBinder;

/* loaded from: classes4.dex */
public class MarkerFactory {

    /* renamed from: a, reason: collision with root package name */
    public static final IMarkerFactory f22688a;

    static {
        try {
            f22688a = a();
        } catch (Exception e) {
            Util.c("Unexpected failure while binding MarkerFactory", e);
        } catch (NoClassDefFoundError unused) {
            new ConcurrentHashMap();
        }
    }

    public static IMarkerFactory a() {
        try {
            return StaticMarkerBinder.getSingleton().getMarkerFactory();
        } catch (NoSuchMethodError unused) {
            return StaticMarkerBinder.SINGLETON.getMarkerFactory();
        }
    }
}
