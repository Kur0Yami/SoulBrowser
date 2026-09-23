package org.slf4j.helpers;

import java.util.HashMap;
import java.util.concurrent.LinkedBlockingQueue;
import org.slf4j.ILoggerFactory;
import org.slf4j.Logger;

/* loaded from: classes4.dex */
public class SubstituteLoggerFactory implements ILoggerFactory {

    /* renamed from: a, reason: collision with root package name */
    public boolean f22694a = false;
    public final HashMap b = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public final LinkedBlockingQueue f22695c = new LinkedBlockingQueue();

    @Override // org.slf4j.ILoggerFactory
    public final synchronized Logger a(String str) {
        SubstituteLogger substituteLogger;
        substituteLogger = (SubstituteLogger) this.b.get(str);
        if (substituteLogger == null) {
            substituteLogger = new SubstituteLogger(str, this.f22695c, this.f22694a);
            this.b.put(str, substituteLogger);
        }
        return substituteLogger;
    }
}
