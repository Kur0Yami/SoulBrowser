package com.google.api.client.testing.util;

import com.google.api.client.util.BackOff;
import com.google.api.client.util.Beta;

@Beta
/* loaded from: classes3.dex */
public class MockBackOff implements BackOff {

    /* renamed from: a, reason: collision with root package name */
    public int f12093a;

    @Override // com.google.api.client.util.BackOff
    public final long nextBackOffMillis() {
        int i = this.f12093a;
        if (i < 0) {
            this.f12093a = i + 1;
            return 0L;
        }
        return -1L;
    }

    @Override // com.google.api.client.util.BackOff
    public final void reset() {
        this.f12093a = 0;
    }
}
