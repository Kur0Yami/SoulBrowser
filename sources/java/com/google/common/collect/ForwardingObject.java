package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;

@GwtCompatible
/* loaded from: classes3.dex */
public abstract class ForwardingObject {
    public abstract Object e0();

    public String toString() {
        return e0().toString();
    }
}
