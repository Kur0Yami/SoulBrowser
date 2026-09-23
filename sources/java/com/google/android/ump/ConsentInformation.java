package com.google.android.ump;

import androidx.annotation.RecentlyNonNull;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes3.dex */
public interface ConsentInformation {

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    public @interface ConsentStatus {
    }

    /* loaded from: classes3.dex */
    public interface OnConsentInfoUpdateFailureListener {
        void a();
    }

    /* loaded from: classes3.dex */
    public interface OnConsentInfoUpdateSuccessListener {
        void a();
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class PrivacyOptionsRequirementStatus {

        /* renamed from: c, reason: collision with root package name */
        public static final PrivacyOptionsRequirementStatus f12066c;
        public static final PrivacyOptionsRequirementStatus f;
        public static final PrivacyOptionsRequirementStatus g;
        public static final /* synthetic */ PrivacyOptionsRequirementStatus[] h;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.google.android.ump.ConsentInformation$PrivacyOptionsRequirementStatus] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, com.google.android.ump.ConsentInformation$PrivacyOptionsRequirementStatus] */
        /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, com.google.android.ump.ConsentInformation$PrivacyOptionsRequirementStatus] */
        static {
            ?? r0 = new Enum("UNKNOWN", 0);
            f12066c = r0;
            ?? r1 = new Enum("NOT_REQUIRED", 1);
            f = r1;
            ?? r3 = new Enum("REQUIRED", 2);
            g = r3;
            h = new PrivacyOptionsRequirementStatus[]{r0, r1, r3};
        }

        @RecentlyNonNull
        public static PrivacyOptionsRequirementStatus valueOf(@RecentlyNonNull String str) {
            return (PrivacyOptionsRequirementStatus) Enum.valueOf(PrivacyOptionsRequirementStatus.class, str);
        }

        @RecentlyNonNull
        public static PrivacyOptionsRequirementStatus[] values() {
            return (PrivacyOptionsRequirementStatus[]) h.clone();
        }
    }
}
