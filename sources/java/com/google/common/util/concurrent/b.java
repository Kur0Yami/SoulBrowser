package com.google.common.util.concurrent;

import com.google.common.util.concurrent.AbstractFutureState;
import java.security.PrivilegedExceptionAction;

/* loaded from: classes3.dex */
public final /* synthetic */ class b implements PrivilegedExceptionAction {
    @Override // java.security.PrivilegedExceptionAction
    public final Object run() {
        return AbstractFutureState.UnsafeAtomicHelper.h();
    }
}
