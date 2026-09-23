package org.apache.commons.lang3.concurrent;

import org.apache.commons.lang3.ArrayUtils;

/* loaded from: classes4.dex */
public class ConcurrentException extends Exception {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConcurrentException(Throwable th) {
        super(th);
        boolean z;
        if (!(th instanceof Error) && !(th instanceof RuntimeException)) {
            z = true;
        } else {
            z = false;
        }
        Object[] objArr = {th};
        if (z) {
            return;
        }
        throw new IllegalArgumentException(ArrayUtils.b(objArr) ? "Not a checked exception: %s" : String.format("Not a checked exception: %s", objArr));
    }
}
