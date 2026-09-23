package com.google.android.gms.ads;

import androidx.annotation.NonNull;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public final class AdValue {

    /* renamed from: a, reason: collision with root package name */
    public final int f2938a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final long f2939c;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface PrecisionType {
        public static final int ESTIMATED = 1;
        public static final int PRECISE = 3;
        public static final int PUBLISHER_PROVIDED = 2;
        public static final int UNKNOWN = 0;
    }

    public AdValue(int i, String str, long j) {
        this.f2938a = i;
        this.b = str;
        this.f2939c = j;
    }

    @NonNull
    public static AdValue zza(int i, @NonNull String str, long j) {
        return new AdValue(i, str, j);
    }

    @NonNull
    public String getCurrencyCode() {
        return this.b;
    }

    public int getPrecisionType() {
        return this.f2938a;
    }

    public long getValueMicros() {
        return this.f2939c;
    }
}
