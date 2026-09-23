package com.google.common.primitives;

import com.google.common.primitives.UnsignedBytes;
import java.security.PrivilegedExceptionAction;

/* loaded from: classes3.dex */
public final /* synthetic */ class a implements PrivilegedExceptionAction {
    @Override // java.security.PrivilegedExceptionAction
    public final Object run() {
        return UnsignedBytes.LexicographicalComparatorHolder.UnsafeComparator.c();
    }
}
