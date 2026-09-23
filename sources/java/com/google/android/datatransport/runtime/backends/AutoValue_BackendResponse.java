package com.google.android.datatransport.runtime.backends;

import android.support.v4.media.a;
import com.google.android.datatransport.runtime.backends.BackendResponse;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class AutoValue_BackendResponse extends BackendResponse {

    /* renamed from: a, reason: collision with root package name */
    public final BackendResponse.Status f2838a;
    public final long b;

    public AutoValue_BackendResponse(BackendResponse.Status status, long j) {
        this.f2838a = status;
        this.b = j;
    }

    @Override // com.google.android.datatransport.runtime.backends.BackendResponse
    public final long b() {
        return this.b;
    }

    @Override // com.google.android.datatransport.runtime.backends.BackendResponse
    public final BackendResponse.Status c() {
        return this.f2838a;
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof BackendResponse) {
                BackendResponse backendResponse = (BackendResponse) obj;
                if (this.f2838a.equals(backendResponse.c()) && this.b == backendResponse.b()) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int hashCode = (this.f2838a.hashCode() ^ 1000003) * 1000003;
        long j = this.b;
        return hashCode ^ ((int) (j ^ (j >>> 32)));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BackendResponse{status=");
        sb.append(this.f2838a);
        sb.append(", nextRequestWaitMillis=");
        return a.o(sb, this.b, "}");
    }
}
