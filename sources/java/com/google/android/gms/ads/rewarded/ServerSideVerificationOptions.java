package com.google.android.gms.ads.rewarded;

import androidx.annotation.NonNull;
import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public class ServerSideVerificationOptions {

    /* renamed from: a, reason: collision with root package name */
    public final String f3318a;
    public final String b;

    /* loaded from: classes.dex */
    public static final class Builder {

        /* renamed from: a, reason: collision with root package name */
        public String f3319a = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        public String b = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

        @NonNull
        public ServerSideVerificationOptions build() {
            return new ServerSideVerificationOptions(this);
        }

        @NonNull
        public Builder setCustomData(@NonNull String str) {
            this.b = str;
            return this;
        }

        @NonNull
        public Builder setUserId(@NonNull String str) {
            this.f3319a = str;
            return this;
        }
    }

    public /* synthetic */ ServerSideVerificationOptions(Builder builder) {
        this.f3318a = builder.f3319a;
        this.b = builder.b;
    }

    @NonNull
    public String getCustomData() {
        return this.b;
    }

    @NonNull
    public String getUserId() {
        return this.f3318a;
    }
}
