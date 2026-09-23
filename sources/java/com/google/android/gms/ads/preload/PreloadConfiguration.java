package com.google.android.gms.ads.preload;

import androidx.annotation.NonNull;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.AdRequest;

/* loaded from: classes.dex */
public class PreloadConfiguration {

    /* renamed from: a, reason: collision with root package name */
    public final String f3309a;
    public final AdFormat b;

    /* renamed from: c, reason: collision with root package name */
    public final AdRequest f3310c;
    public final int d;

    /* loaded from: classes.dex */
    public static class Builder {

        /* renamed from: a, reason: collision with root package name */
        public final String f3311a;
        public final AdFormat b;

        /* renamed from: c, reason: collision with root package name */
        public AdRequest f3312c = new AdRequest.Builder().build();
        public int d;

        public Builder(@NonNull String str) {
            this.f3311a = str;
        }

        @NonNull
        public PreloadConfiguration build() {
            return new PreloadConfiguration(this);
        }

        @NonNull
        public Builder setAdRequest(@NonNull AdRequest adRequest) {
            this.f3312c = adRequest;
            return this;
        }

        @NonNull
        public Builder setBufferSize(int i) {
            this.d = i;
            return this;
        }

        @Deprecated
        public Builder(@NonNull String str, @NonNull AdFormat adFormat) {
            this.f3311a = str;
            this.b = adFormat;
        }
    }

    public /* synthetic */ PreloadConfiguration(Builder builder) {
        this.f3309a = builder.f3311a;
        this.b = builder.b;
        this.f3310c = builder.f3312c;
        this.d = builder.d;
    }

    @NonNull
    @Deprecated
    public AdFormat getAdFormat() {
        AdFormat adFormat = this.b;
        if (adFormat == null) {
            return AdFormat.INTERSTITIAL;
        }
        return adFormat;
    }

    @NonNull
    public AdRequest getAdRequest() {
        return this.f3310c;
    }

    @NonNull
    public String getAdUnitId() {
        return this.f3309a;
    }

    public int getBufferSize() {
        return this.d;
    }
}
