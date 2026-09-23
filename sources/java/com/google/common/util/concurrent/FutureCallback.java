package com.google.common.util.concurrent;

import com.google.common.annotations.GwtCompatible;

@GwtCompatible
/* loaded from: classes3.dex */
public interface FutureCallback<V> {
    void a(Throwable th);

    void onSuccess(Object obj);
}
