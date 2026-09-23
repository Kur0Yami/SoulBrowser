package com.google.android.gms.ads.admanager;

import android.os.Bundle;
import androidx.annotation.NonNull;
import com.google.android.gms.ads.AbstractAdRequestBuilder;
import com.google.android.gms.ads.AdRequest;

/* loaded from: classes.dex */
public final class AdManagerAdRequest extends AdRequest {

    /* loaded from: classes.dex */
    public static final class Builder extends AbstractAdRequestBuilder<Builder> {
        @NonNull
        public Builder addCategoryExclusion(@NonNull String str) {
            this.f2927a.zzm(str);
            return this;
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.ads.AdRequest, com.google.android.gms.ads.admanager.AdManagerAdRequest] */
        @NonNull
        public AdManagerAdRequest build() {
            return new AdRequest(this);
        }

        @Override // com.google.android.gms.ads.AbstractAdRequestBuilder
        @NonNull
        public final /* bridge */ /* synthetic */ AbstractAdRequestBuilder self() {
            return this;
        }

        @NonNull
        public Builder setPublisherProvidedId(@NonNull String str) {
            this.f2927a.zzi(str);
            return this;
        }

        @Override // com.google.android.gms.ads.AbstractAdRequestBuilder
        @NonNull
        public Builder self() {
            return this;
        }
    }

    @Override // com.google.android.gms.ads.AdRequest
    @NonNull
    public Bundle getCustomTargeting() {
        return this.f2935a.zzk();
    }

    @NonNull
    public String getPublisherProvidedId() {
        return this.f2935a.zzf();
    }
}
