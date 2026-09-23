package com.google.android.datatransport.runtime.backends;

import com.google.android.datatransport.runtime.backends.BackendRequest;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: classes.dex */
final class AutoValue_BackendRequest extends BackendRequest {

    /* renamed from: a, reason: collision with root package name */
    public final Iterable f2836a;
    public final byte[] b;

    /* loaded from: classes.dex */
    public static final class Builder extends BackendRequest.Builder {

        /* renamed from: a, reason: collision with root package name */
        public ArrayList f2837a;
        public byte[] b;

        @Override // com.google.android.datatransport.runtime.backends.BackendRequest.Builder
        public final BackendRequest a() {
            String str;
            if (this.f2837a == null) {
                str = " events";
            } else {
                str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            if (str.isEmpty()) {
                return new AutoValue_BackendRequest(this.f2837a, this.b);
            }
            throw new IllegalStateException("Missing required properties:".concat(str));
        }

        @Override // com.google.android.datatransport.runtime.backends.BackendRequest.Builder
        public final BackendRequest.Builder b(ArrayList arrayList) {
            this.f2837a = arrayList;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.backends.BackendRequest.Builder
        public final BackendRequest.Builder c(byte[] bArr) {
            this.b = bArr;
            return this;
        }
    }

    public AutoValue_BackendRequest(ArrayList arrayList, byte[] bArr) {
        this.f2836a = arrayList;
        this.b = bArr;
    }

    @Override // com.google.android.datatransport.runtime.backends.BackendRequest
    public final Iterable b() {
        return this.f2836a;
    }

    @Override // com.google.android.datatransport.runtime.backends.BackendRequest
    public final byte[] c() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        byte[] c2;
        if (obj != this) {
            if (obj instanceof BackendRequest) {
                BackendRequest backendRequest = (BackendRequest) obj;
                if (this.f2836a.equals(backendRequest.b())) {
                    if (backendRequest instanceof AutoValue_BackendRequest) {
                        c2 = ((AutoValue_BackendRequest) backendRequest).b;
                    } else {
                        c2 = backendRequest.c();
                    }
                    if (Arrays.equals(this.b, c2)) {
                        return true;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return ((this.f2836a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.b);
    }

    public final String toString() {
        return "BackendRequest{events=" + this.f2836a + ", extras=" + Arrays.toString(this.b) + "}";
    }
}
