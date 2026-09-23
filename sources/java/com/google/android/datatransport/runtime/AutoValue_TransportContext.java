package com.google.android.datatransport.runtime;

import com.google.android.datatransport.Priority;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.Arrays;

/* loaded from: classes.dex */
final class AutoValue_TransportContext extends TransportContext {

    /* renamed from: a, reason: collision with root package name */
    public final String f2817a;
    public final byte[] b;

    /* renamed from: c, reason: collision with root package name */
    public final Priority f2818c;

    /* loaded from: classes.dex */
    public static final class Builder extends TransportContext.Builder {

        /* renamed from: a, reason: collision with root package name */
        public String f2819a;
        public byte[] b;

        /* renamed from: c, reason: collision with root package name */
        public Priority f2820c;

        @Override // com.google.android.datatransport.runtime.TransportContext.Builder
        public final TransportContext a() {
            String str;
            if (this.f2819a == null) {
                str = " backendName";
            } else {
                str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            if (this.f2820c == null) {
                str = str.concat(" priority");
            }
            if (str.isEmpty()) {
                return new AutoValue_TransportContext(this.f2819a, this.b, this.f2820c);
            }
            throw new IllegalStateException("Missing required properties:".concat(str));
        }

        @Override // com.google.android.datatransport.runtime.TransportContext.Builder
        public final TransportContext.Builder b(String str) {
            if (str != null) {
                this.f2819a = str;
                return this;
            }
            throw new NullPointerException("Null backendName");
        }

        @Override // com.google.android.datatransport.runtime.TransportContext.Builder
        public final TransportContext.Builder c(byte[] bArr) {
            this.b = bArr;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.TransportContext.Builder
        public final TransportContext.Builder d(Priority priority) {
            if (priority != null) {
                this.f2820c = priority;
                return this;
            }
            throw new NullPointerException("Null priority");
        }
    }

    public AutoValue_TransportContext(String str, byte[] bArr, Priority priority) {
        this.f2817a = str;
        this.b = bArr;
        this.f2818c = priority;
    }

    @Override // com.google.android.datatransport.runtime.TransportContext
    public final String b() {
        return this.f2817a;
    }

    @Override // com.google.android.datatransport.runtime.TransportContext
    public final byte[] c() {
        return this.b;
    }

    @Override // com.google.android.datatransport.runtime.TransportContext
    public final Priority d() {
        return this.f2818c;
    }

    public final boolean equals(Object obj) {
        byte[] c2;
        if (obj != this) {
            if (obj instanceof TransportContext) {
                TransportContext transportContext = (TransportContext) obj;
                if (this.f2817a.equals(transportContext.b())) {
                    if (transportContext instanceof AutoValue_TransportContext) {
                        c2 = ((AutoValue_TransportContext) transportContext).b;
                    } else {
                        c2 = transportContext.c();
                    }
                    if (Arrays.equals(this.b, c2) && this.f2818c.equals(transportContext.d())) {
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
        return ((((this.f2817a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.b)) * 1000003) ^ this.f2818c.hashCode();
    }
}
