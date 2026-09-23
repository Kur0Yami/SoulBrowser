package com.google.android.gms.ads;

import android.content.Context;
import android.os.Parcelable;
import android.util.DisplayMetrics;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.work.impl.workers.a;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.client.zzr;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.api.client.http.HttpStatusCodes;

/* loaded from: classes.dex */
public final class AdSize {
    public static final int AUTO_HEIGHT = -2;
    public static final int FULL_WIDTH = -1;

    /* renamed from: a, reason: collision with root package name */
    public final int f2936a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final String f2937c;
    public boolean d;
    public boolean e;
    public int f;
    public boolean g;
    public int h;

    @NonNull
    public static final AdSize BANNER = new AdSize(320, 50, "320x50_mb");

    @NonNull
    public static final AdSize FULL_BANNER = new AdSize(468, 60, "468x60_as");

    @NonNull
    public static final AdSize LARGE_BANNER = new AdSize(320, 100, "320x100_as");

    @NonNull
    public static final AdSize LEADERBOARD = new AdSize(728, 90, "728x90_as");

    @NonNull
    public static final AdSize MEDIUM_RECTANGLE = new AdSize(HttpStatusCodes.STATUS_CODE_MULTIPLE_CHOICES, 250, "300x250_as");

    @NonNull
    public static final AdSize WIDE_SKYSCRAPER = new AdSize(160, 600, "160x600_as");

    @NonNull
    @Deprecated
    public static final AdSize SMART_BANNER = new AdSize(-1, -2, "smart_banner");

    @NonNull
    public static final AdSize FLUID = new AdSize(-3, -4, "fluid");

    @NonNull
    public static final AdSize INVALID = new AdSize(0, 0, "invalid");

    @NonNull
    public static final AdSize zza = new AdSize(50, 50, "50x50_mb");

    static {
        new AdSize(-3, 0, "search_v2");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AdSize(int r6, int r7) {
        /*
            r5 = this;
            r0 = -1
            if (r6 != r0) goto L6
            java.lang.String r0 = "FULL"
            goto La
        L6:
            java.lang.String r0 = java.lang.String.valueOf(r6)
        La:
            r1 = -2
            if (r7 != r1) goto L10
            java.lang.String r1 = "AUTO"
            goto L14
        L10:
            java.lang.String r1 = java.lang.String.valueOf(r7)
        L14:
            java.lang.String r2 = java.lang.String.valueOf(r0)
            int r2 = r2.length()
            java.lang.String r3 = java.lang.String.valueOf(r1)
            int r2 = r2 + 1
            int r3 = r3.length()
            int r3 = r3 + r2
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            int r3 = r3 + 3
            r2.<init>(r3)
            java.lang.String r3 = "x"
            java.lang.String r4 = "_as"
            java.lang.String r0 = android.support.v4.media.a.r(r2, r0, r3, r1, r4)
            r5.<init>(r6, r7, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.AdSize.<init>(int, int):void");
    }

    @NonNull
    public static AdSize getCurrentOrientationAnchoredAdaptiveBannerAdSize(@NonNull Context context, int i) {
        AdSize zzj = com.google.android.gms.ads.internal.util.client.zzf.zzj(context, i, 50, 0);
        zzj.d = true;
        return zzj;
    }

    @NonNull
    public static AdSize getCurrentOrientationInlineAdaptiveBannerAdSize(@NonNull Context context, int i) {
        int zzp = com.google.android.gms.ads.internal.util.client.zzf.zzp(context, 0);
        if (zzp == -1) {
            return INVALID;
        }
        AdSize adSize = new AdSize(i, 0);
        adSize.f = zzp;
        adSize.e = true;
        return adSize;
    }

    @NonNull
    public static AdSize getInlineAdaptiveBannerAdSize(int i, int i2) {
        AdSize adSize = new AdSize(i, 0);
        adSize.f = i2;
        adSize.e = true;
        if (i2 < 32) {
            StringBuilder sb = new StringBuilder(String.valueOf(i2).length() + 118);
            sb.append("The maximum height set for the inline adaptive ad size was ");
            sb.append(i2);
            sb.append(" dp, which is below the minimum recommended value of 32 dp.");
            zzo.zzi(sb.toString());
        }
        return adSize;
    }

    @NonNull
    public static AdSize getLandscapeAnchoredAdaptiveBannerAdSize(@NonNull Context context, int i) {
        AdSize zzj = com.google.android.gms.ads.internal.util.client.zzf.zzj(context, i, 50, 2);
        zzj.d = true;
        return zzj;
    }

    @NonNull
    public static AdSize getLandscapeInlineAdaptiveBannerAdSize(@NonNull Context context, int i) {
        int zzp = com.google.android.gms.ads.internal.util.client.zzf.zzp(context, 2);
        AdSize adSize = new AdSize(i, 0);
        if (zzp == -1) {
            return INVALID;
        }
        adSize.f = zzp;
        adSize.e = true;
        return adSize;
    }

    @NonNull
    public static AdSize getPortraitAnchoredAdaptiveBannerAdSize(@NonNull Context context, int i) {
        AdSize zzj = com.google.android.gms.ads.internal.util.client.zzf.zzj(context, i, 50, 1);
        zzj.d = true;
        return zzj;
    }

    @NonNull
    public static AdSize getPortraitInlineAdaptiveBannerAdSize(@NonNull Context context, int i) {
        int zzp = com.google.android.gms.ads.internal.util.client.zzf.zzp(context, 1);
        AdSize adSize = new AdSize(i, 0);
        if (zzp == -1) {
            return INVALID;
        }
        adSize.f = zzp;
        adSize.e = true;
        return adSize;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AdSize)) {
            return false;
        }
        AdSize adSize = (AdSize) obj;
        if (this.f2936a != adSize.f2936a || this.b != adSize.b || !this.f2937c.equals(adSize.f2937c)) {
            return false;
        }
        return true;
    }

    public int getHeight() {
        return this.b;
    }

    public int getHeightInPixels(@NonNull Context context) {
        int i = this.b;
        if (i != -4 && i != -3) {
            if (i != -2) {
                zzbb.zza();
                return com.google.android.gms.ads.internal.util.client.zzf.zzC(context, i);
            }
            return zzr.zza(context.getResources().getDisplayMetrics());
        }
        return -1;
    }

    public int getWidth() {
        return this.f2936a;
    }

    public int getWidthInPixels(@NonNull Context context) {
        int i = this.f2936a;
        if (i == -3) {
            return -1;
        }
        if (i != -1) {
            zzbb.zza();
            return com.google.android.gms.ads.internal.util.client.zzf.zzC(context, i);
        }
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        Parcelable.Creator<zzr> creator = zzr.CREATOR;
        return displayMetrics.widthPixels;
    }

    public int hashCode() {
        return this.f2937c.hashCode();
    }

    public boolean isAutoHeight() {
        return this.b == -2;
    }

    public boolean isFluid() {
        return this.f2936a == -3 && this.b == -4;
    }

    public boolean isFullWidth() {
        return this.f2936a == -1;
    }

    @NonNull
    public String toString() {
        return this.f2937c;
    }

    public AdSize(int i, int i2, String str) {
        if (i < 0 && i != -1 && i != -3) {
            throw new IllegalArgumentException(a.r(i, "Invalid width for AdSize: ", new StringBuilder(String.valueOf(i).length() + 26)));
        }
        if (i2 < 0 && i2 != -2 && i2 != -4) {
            throw new IllegalArgumentException(a.r(i2, "Invalid height for AdSize: ", new StringBuilder(String.valueOf(i2).length() + 27)));
        }
        this.f2936a = i;
        this.b = i2;
        this.f2937c = str;
    }
}
