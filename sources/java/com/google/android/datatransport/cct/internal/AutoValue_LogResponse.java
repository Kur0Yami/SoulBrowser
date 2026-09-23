package com.google.android.datatransport.cct.internal;

import android.support.v4.media.a;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class AutoValue_LogResponse extends LogResponse {

    /* renamed from: a, reason: collision with root package name */
    public final long f2792a;

    public AutoValue_LogResponse(long j) {
        this.f2792a = j;
    }

    @Override // com.google.android.datatransport.cct.internal.LogResponse
    public final long b() {
        return this.f2792a;
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if ((obj instanceof LogResponse) && this.f2792a == ((LogResponse) obj).b()) {
                return true;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        long j = this.f2792a;
        return ((int) (j ^ (j >>> 32))) ^ 1000003;
    }

    public final String toString() {
        return a.o(new StringBuilder("LogResponse{nextRequestWaitMillis="), this.f2792a, "}");
    }
}
