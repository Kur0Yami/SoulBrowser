package com.google.android.datatransport.cct.internal;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
final class AutoValue_BatchedLogRequest extends BatchedLogRequest {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f2781a;

    public AutoValue_BatchedLogRequest(ArrayList arrayList) {
        this.f2781a = arrayList;
    }

    @Override // com.google.android.datatransport.cct.internal.BatchedLogRequest
    public final List b() {
        return this.f2781a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof BatchedLogRequest) {
            return this.f2781a.equals(((BatchedLogRequest) obj).b());
        }
        return false;
    }

    public final int hashCode() {
        return this.f2781a.hashCode() ^ 1000003;
    }

    public final String toString() {
        return "BatchedLogRequest{logRequests=" + this.f2781a + "}";
    }
}
