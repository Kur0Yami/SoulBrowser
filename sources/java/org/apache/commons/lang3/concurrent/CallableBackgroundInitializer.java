package org.apache.commons.lang3.concurrent;

/* loaded from: classes4.dex */
public class CallableBackgroundInitializer<T> extends BackgroundInitializer<T> {
    @Override // org.apache.commons.lang3.concurrent.BackgroundInitializer, org.apache.commons.lang3.concurrent.AbstractConcurrentInitializer
    public final Exception a(Exception exc) {
        return new Exception(exc);
    }

    @Override // org.apache.commons.lang3.concurrent.AbstractConcurrentInitializer
    public final Object b() {
        throw null;
    }
}
