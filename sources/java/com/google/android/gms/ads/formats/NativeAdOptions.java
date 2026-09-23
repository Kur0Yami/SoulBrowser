package com.google.android.gms.ads.formats;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.VideoOptions;

@Deprecated
/* loaded from: classes.dex */
public final class NativeAdOptions {
    public static final int ADCHOICES_BOTTOM_LEFT = 3;
    public static final int ADCHOICES_BOTTOM_RIGHT = 2;
    public static final int ADCHOICES_TOP_LEFT = 0;
    public static final int ADCHOICES_TOP_RIGHT = 1;
    public static final int NATIVE_MEDIA_ASPECT_RATIO_ANY = 1;
    public static final int NATIVE_MEDIA_ASPECT_RATIO_LANDSCAPE = 2;
    public static final int NATIVE_MEDIA_ASPECT_RATIO_PORTRAIT = 3;
    public static final int NATIVE_MEDIA_ASPECT_RATIO_SQUARE = 4;
    public static final int NATIVE_MEDIA_ASPECT_RATIO_UNKNOWN = 0;
    public static final int ORIENTATION_ANY = 0;
    public static final int ORIENTATION_LANDSCAPE = 2;
    public static final int ORIENTATION_PORTRAIT = 1;

    /* renamed from: a, reason: collision with root package name */
    public final boolean f2963a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final int f2964c;
    public final boolean d;
    public final int e;
    public final VideoOptions f;
    public final boolean g;

    /* loaded from: classes.dex */
    public @interface AdChoicesPlacement {
    }

    /* loaded from: classes.dex */
    public static final class Builder {
        public VideoOptions e;

        /* renamed from: a, reason: collision with root package name */
        public boolean f2965a = false;
        public int b = -1;

        /* renamed from: c, reason: collision with root package name */
        public int f2966c = 0;
        public boolean d = false;
        public int f = 1;
        public boolean g = false;

        @NonNull
        public NativeAdOptions build() {
            return new NativeAdOptions(this);
        }

        @NonNull
        public Builder setAdChoicesPlacement(@AdChoicesPlacement int i) {
            this.f = i;
            return this;
        }

        @NonNull
        @Deprecated
        public Builder setImageOrientation(int i) {
            this.b = i;
            return this;
        }

        @NonNull
        public Builder setMediaAspectRatio(@NativeMediaAspectRatio int i) {
            this.f2966c = i;
            return this;
        }

        @NonNull
        public Builder setRequestCustomMuteThisAd(boolean z) {
            this.g = z;
            return this;
        }

        @NonNull
        public Builder setRequestMultipleImages(boolean z) {
            this.d = z;
            return this;
        }

        @NonNull
        public Builder setReturnUrlsForImageAssets(boolean z) {
            this.f2965a = z;
            return this;
        }

        @NonNull
        public Builder setVideoOptions(@NonNull VideoOptions videoOptions) {
            this.e = videoOptions;
            return this;
        }
    }

    /* loaded from: classes.dex */
    public @interface NativeMediaAspectRatio {
    }

    public /* synthetic */ NativeAdOptions(Builder builder) {
        this.f2963a = builder.f2965a;
        this.b = builder.b;
        this.f2964c = builder.f2966c;
        this.d = builder.d;
        this.e = builder.f;
        this.f = builder.e;
        this.g = builder.g;
    }

    public int getAdChoicesPlacement() {
        return this.e;
    }

    @Deprecated
    public int getImageOrientation() {
        return this.b;
    }

    public int getMediaAspectRatio() {
        return this.f2964c;
    }

    @Nullable
    public VideoOptions getVideoOptions() {
        return this.f;
    }

    public boolean shouldRequestMultipleImages() {
        return this.d;
    }

    public boolean shouldReturnUrlsForImageAssets() {
        return this.f2963a;
    }

    public final boolean zza() {
        return this.g;
    }
}
