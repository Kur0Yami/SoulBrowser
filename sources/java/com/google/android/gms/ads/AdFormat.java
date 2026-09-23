package com.google.android.gms.ads;

import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public enum AdFormat {
    BANNER(0),
    INTERSTITIAL(1),
    REWARDED(2),
    REWARDED_INTERSTITIAL(3),
    NATIVE(4),
    APP_OPEN_AD(6);


    /* renamed from: c, reason: collision with root package name */
    public final int f2931c;

    AdFormat(int i) {
        this.f2931c = i;
    }

    @Nullable
    public static AdFormat getAdFormat(int i) {
        for (AdFormat adFormat : values()) {
            if (adFormat.getValue() == i) {
                return adFormat;
            }
        }
        return null;
    }

    public int getValue() {
        return this.f2931c;
    }
}
