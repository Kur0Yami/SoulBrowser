package com.google.common.util.concurrent;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.base.Supplier;

@J2ktIncompatible
@GwtIncompatible
/* loaded from: classes3.dex */
public abstract class AbstractIdleService implements Service {

    /* loaded from: classes3.dex */
    public final class DelegateService extends AbstractService {
        @Override // com.google.common.util.concurrent.AbstractService
        public final String toString() {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public final class ThreadNameSupplier implements Supplier<String> {
        @Override // com.google.common.base.Supplier
        public final Object get() {
            throw null;
        }
    }

    public final String toString() {
        throw null;
    }
}
