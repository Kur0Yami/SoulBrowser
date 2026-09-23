package com.google.common.io;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.annotations.VisibleForTesting;
import java.io.Closeable;

@J2ktIncompatible
@GwtIncompatible
/* loaded from: classes3.dex */
public final class Closer implements Closeable {

    @VisibleForTesting
    /* loaded from: classes3.dex */
    public interface Suppressor {
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw null;
    }
}
