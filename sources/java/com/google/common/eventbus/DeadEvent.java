package com.google.common.eventbus;

import com.google.common.base.MoreObjects;

/* loaded from: classes3.dex */
public class DeadEvent {
    public final String toString() {
        MoreObjects.ToStringHelper b = MoreObjects.b(this);
        b.b(null, "source");
        b.b(null, "event");
        return b.toString();
    }
}
