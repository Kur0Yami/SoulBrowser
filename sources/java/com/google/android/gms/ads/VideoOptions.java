package com.google.android.gms.ads;

import androidx.annotation.NonNull;
import com.google.android.gms.ads.internal.client.zzga;

/* loaded from: classes.dex */
public final class VideoOptions {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f2954a;
    public final boolean b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f2955c;

    /* loaded from: classes.dex */
    public static final class Builder {

        /* renamed from: a, reason: collision with root package name */
        public boolean f2956a = true;
        public boolean b = false;

        /* renamed from: c, reason: collision with root package name */
        public boolean f2957c = false;

        @NonNull
        public VideoOptions build() {
            return new VideoOptions(this);
        }

        @NonNull
        public Builder setClickToExpandRequested(boolean z) {
            this.f2957c = z;
            return this;
        }

        @NonNull
        public Builder setCustomControlsRequested(boolean z) {
            this.b = z;
            return this;
        }

        @NonNull
        public Builder setStartMuted(boolean z) {
            this.f2956a = z;
            return this;
        }
    }

    public /* synthetic */ VideoOptions(Builder builder) {
        this.f2954a = builder.f2956a;
        this.b = builder.b;
        this.f2955c = builder.f2957c;
    }

    public boolean getClickToExpandRequested() {
        return this.f2955c;
    }

    public boolean getCustomControlsRequested() {
        return this.b;
    }

    public boolean getStartMuted() {
        return this.f2954a;
    }

    public VideoOptions(zzga zzgaVar) {
        this.f2954a = zzgaVar.zza;
        this.b = zzgaVar.zzb;
        this.f2955c = zzgaVar.zzc;
    }
}
