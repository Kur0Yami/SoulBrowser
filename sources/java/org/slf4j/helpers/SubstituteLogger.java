package org.slf4j.helpers;

import java.lang.reflect.Method;
import java.util.Queue;
import java.util.concurrent.LinkedBlockingQueue;
import org.slf4j.Logger;
import org.slf4j.event.EventRecodingLogger;
import org.slf4j.event.LoggingEvent;

/* loaded from: classes4.dex */
public class SubstituteLogger implements Logger {

    /* renamed from: c, reason: collision with root package name */
    public final String f22693c;
    public volatile Logger f;
    public Boolean g;
    public Method h;
    public EventRecodingLogger i;
    public final Queue j;
    public final boolean k;

    public SubstituteLogger(String str, LinkedBlockingQueue linkedBlockingQueue, boolean z) {
        this.f22693c = str;
        this.j = linkedBlockingQueue;
        this.k = z;
    }

    @Override // org.slf4j.Logger
    public final boolean a() {
        return k().a();
    }

    @Override // org.slf4j.Logger
    public final void b(String str) {
        k().b(str);
    }

    @Override // org.slf4j.Logger
    public final boolean c() {
        return k().c();
    }

    @Override // org.slf4j.Logger
    public final void d(Exception exc, String str) {
        k().d(exc, str);
    }

    @Override // org.slf4j.Logger
    public final void e(String str) {
        k().e(str);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass() && this.f22693c.equals(((SubstituteLogger) obj).f22693c)) {
            return true;
        }
        return false;
    }

    @Override // org.slf4j.Logger
    public final void f(Object obj, Object obj2, String str) {
        k().f(obj, obj2, str);
    }

    @Override // org.slf4j.Logger
    public final void g(String str) {
        k().g(str);
    }

    @Override // org.slf4j.Logger
    public final String getName() {
        return this.f22693c;
    }

    @Override // org.slf4j.Logger
    public final void h(String str) {
        k().h(str);
    }

    public final int hashCode() {
        return this.f22693c.hashCode();
    }

    @Override // org.slf4j.Logger
    public final void i(String str) {
        k().i(str);
    }

    @Override // org.slf4j.Logger
    public final void j(Object obj, String str) {
        k().j(obj, str);
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [org.slf4j.event.EventRecodingLogger, java.lang.Object] */
    public final Logger k() {
        if (this.f != null) {
            return this.f;
        }
        if (this.k) {
            return NOPLogger.f22692c;
        }
        if (this.i == null) {
            Queue queue = this.j;
            ?? obj = new Object();
            obj.f = this;
            obj.f22689c = this.f22693c;
            obj.g = queue;
            this.i = obj;
        }
        return this.i;
    }

    public final boolean l() {
        Boolean bool = this.g;
        if (bool != null) {
            return bool.booleanValue();
        }
        try {
            this.h = this.f.getClass().getMethod("log", LoggingEvent.class);
            this.g = Boolean.TRUE;
        } catch (NoSuchMethodException unused) {
            this.g = Boolean.FALSE;
        }
        return this.g.booleanValue();
    }
}
