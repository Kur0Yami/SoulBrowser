package com.google.android.gms.cast;

import android.os.Bundle;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import java.util.UUID;

/* loaded from: classes.dex */
public final class Cast {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f3428a = 0;

    /* loaded from: classes.dex */
    public interface ApplicationConnectionResult extends Result {
        String B();

        boolean a();

        String k();

        ApplicationMetadata m();
    }

    @Deprecated
    /* loaded from: classes.dex */
    public interface CastApi {
    }

    /* loaded from: classes.dex */
    public static final class CastOptions implements Api.ApiOptions.HasOptions {

        /* renamed from: c, reason: collision with root package name */
        public final CastDevice f3429c;
        public final Listener f;
        public final Bundle g;
        public final String h = UUID.randomUUID().toString();

        /* loaded from: classes.dex */
        public static final class Builder {

            /* renamed from: a, reason: collision with root package name */
            public final CastDevice f3430a;
            public final Listener b;

            /* renamed from: c, reason: collision with root package name */
            public Bundle f3431c;

            public Builder(CastDevice castDevice, Listener listener) {
                Preconditions.checkNotNull(castDevice, "CastDevice parameter cannot be null");
                Preconditions.checkNotNull(listener, "CastListener parameter cannot be null");
                this.f3430a = castDevice;
                this.b = listener;
            }
        }

        public /* synthetic */ CastOptions(Builder builder) {
            this.f3429c = builder.f3430a;
            this.f = builder.b;
            this.g = builder.f3431c;
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CastOptions)) {
                return false;
            }
            CastOptions castOptions = (CastOptions) obj;
            if (Objects.equal(this.f3429c, castOptions.f3429c) && Objects.checkBundlesEquality(this.g, castOptions.g) && Objects.equal(this.h, castOptions.h)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Objects.hashCode(this.f3429c, this.g, 0, this.h);
        }
    }

    /* loaded from: classes.dex */
    public static class Listener {
        public void a(int i) {
        }

        public void b(int i) {
        }

        public void c(ApplicationMetadata applicationMetadata) {
        }

        public void d() {
        }

        public void e() {
        }

        public void f(int i) {
        }

        public void g() {
        }
    }

    /* loaded from: classes.dex */
    public interface MessageReceivedCallback {
        void a(String str);
    }

    static {
        new Api("Cast.API", new Api.AbstractClientBuilder(), com.google.android.gms.cast.internal.zzal.f3611a);
    }
}
