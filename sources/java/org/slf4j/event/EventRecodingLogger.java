package org.slf4j.event;

import java.util.Queue;
import org.slf4j.Logger;
import org.slf4j.helpers.SubstituteLogger;

/* loaded from: classes4.dex */
public class EventRecodingLogger implements Logger {

    /* renamed from: c, reason: collision with root package name */
    public String f22689c;
    public SubstituteLogger f;
    public Queue g;

    @Override // org.slf4j.Logger
    public final boolean a() {
        return true;
    }

    @Override // org.slf4j.Logger
    public final void b(String str) {
        k(null);
    }

    @Override // org.slf4j.Logger
    public final boolean c() {
        return true;
    }

    @Override // org.slf4j.Logger
    public final void d(Exception exc, String str) {
        k(null);
    }

    @Override // org.slf4j.Logger
    public final void e(String str) {
        k(null);
    }

    @Override // org.slf4j.Logger
    public final void f(Object obj, Object obj2, String str) {
        k(new Object[]{obj, obj2});
    }

    @Override // org.slf4j.Logger
    public final void g(String str) {
        k(null);
    }

    @Override // org.slf4j.Logger
    public final String getName() {
        return this.f22689c;
    }

    @Override // org.slf4j.Logger
    public final void h(String str) {
        k(null);
    }

    @Override // org.slf4j.Logger
    public final void i(String str) {
        k(null);
    }

    @Override // org.slf4j.Logger
    public final void j(Object obj, String str) {
        k(new Object[]{obj});
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [org.slf4j.event.SubstituteLoggingEvent, java.lang.Object] */
    public final void k(Object[] objArr) {
        ?? obj = new Object();
        System.currentTimeMillis();
        obj.f22691a = this.f;
        obj.b = objArr;
        Thread.currentThread().getName();
        this.g.add(obj);
    }
}
