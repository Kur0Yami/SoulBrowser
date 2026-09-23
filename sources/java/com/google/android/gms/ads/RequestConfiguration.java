package com.google.android.gms.ads;

import androidx.annotation.NonNull;
import com.google.android.gms.ads.internal.util.client.zzo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.annotation.Nullable;

/* loaded from: classes.dex */
public class RequestConfiguration {

    @NonNull
    public static final String MAX_AD_CONTENT_RATING_UNSPECIFIED = "";
    public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_FALSE = 0;
    public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_TRUE = 1;
    public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_UNSPECIFIED = -1;
    public static final int TAG_FOR_UNDER_AGE_OF_CONSENT_FALSE = 0;
    public static final int TAG_FOR_UNDER_AGE_OF_CONSENT_TRUE = 1;
    public static final int TAG_FOR_UNDER_AGE_OF_CONSENT_UNSPECIFIED = -1;

    /* renamed from: a, reason: collision with root package name */
    public final int f2943a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final String f2944c;
    public final List d;
    public final PublisherPrivacyPersonalizationState e;

    @NonNull
    public static final String MAX_AD_CONTENT_RATING_MA = "MA";

    @NonNull
    public static final String MAX_AD_CONTENT_RATING_T = "T";

    @NonNull
    public static final String MAX_AD_CONTENT_RATING_PG = "PG";

    @NonNull
    public static final String MAX_AD_CONTENT_RATING_G = "G";

    @NonNull
    public static final List zza = Arrays.asList(MAX_AD_CONTENT_RATING_MA, MAX_AD_CONTENT_RATING_T, MAX_AD_CONTENT_RATING_PG, MAX_AD_CONTENT_RATING_G);

    /* loaded from: classes.dex */
    public static class Builder {

        /* renamed from: a, reason: collision with root package name */
        public int f2945a = -1;
        public int b = -1;

        /* renamed from: c, reason: collision with root package name */
        public String f2946c = null;
        public final ArrayList d = new ArrayList();
        public PublisherPrivacyPersonalizationState e = PublisherPrivacyPersonalizationState.DEFAULT;

        @NonNull
        public RequestConfiguration build() {
            return new RequestConfiguration(this.f2945a, this.b, this.f2946c, this.d, this.e);
        }

        @NonNull
        public Builder setMaxAdContentRating(@Nullable String str) {
            if (str != null && !RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED.equals(str)) {
                if (!RequestConfiguration.MAX_AD_CONTENT_RATING_G.equals(str) && !RequestConfiguration.MAX_AD_CONTENT_RATING_PG.equals(str) && !RequestConfiguration.MAX_AD_CONTENT_RATING_T.equals(str) && !RequestConfiguration.MAX_AD_CONTENT_RATING_MA.equals(str)) {
                    zzo.zzi("Invalid value passed to setMaxAdContentRating: ".concat(str));
                    return this;
                }
                this.f2946c = str;
                return this;
            }
            this.f2946c = null;
            return this;
        }

        @NonNull
        public Builder setPublisherPrivacyPersonalizationState(@NonNull PublisherPrivacyPersonalizationState publisherPrivacyPersonalizationState) {
            this.e = publisherPrivacyPersonalizationState;
            return this;
        }

        @NonNull
        public Builder setTagForChildDirectedTreatment(int i) {
            if (i != -1 && i != 0 && i != 1) {
                StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 57);
                sb.append("Invalid value passed to setTagForChildDirectedTreatment: ");
                sb.append(i);
                zzo.zzi(sb.toString());
                return this;
            }
            this.f2945a = i;
            return this;
        }

        @NonNull
        public Builder setTagForUnderAgeOfConsent(int i) {
            if (i != -1 && i != 0 && i != 1) {
                StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 52);
                sb.append("Invalid value passed to setTagForUnderAgeOfConsent: ");
                sb.append(i);
                zzo.zzi(sb.toString());
                return this;
            }
            this.b = i;
            return this;
        }

        @NonNull
        public Builder setTestDeviceIds(@Nullable List<String> list) {
            ArrayList arrayList = this.d;
            arrayList.clear();
            if (list != null) {
                arrayList.addAll(list);
            }
            return this;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface MaxAdContentRating {
    }

    /* loaded from: classes.dex */
    public enum PublisherPrivacyPersonalizationState {
        DEFAULT(0),
        ENABLED(1),
        DISABLED(2);


        /* renamed from: c, reason: collision with root package name */
        public final int f2947c;

        PublisherPrivacyPersonalizationState(int i) {
            this.f2947c = i;
        }

        public int getValue() {
            return this.f2947c;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface TagForChildDirectedTreatment {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface TagForUnderAgeOfConsent {
    }

    public /* synthetic */ RequestConfiguration(int i, int i2, String str, ArrayList arrayList, PublisherPrivacyPersonalizationState publisherPrivacyPersonalizationState) {
        this.f2943a = i;
        this.b = i2;
        this.f2944c = str;
        this.d = arrayList;
        this.e = publisherPrivacyPersonalizationState;
    }

    @NonNull
    public String getMaxAdContentRating() {
        String str = this.f2944c;
        return str == null ? MAX_AD_CONTENT_RATING_UNSPECIFIED : str;
    }

    @NonNull
    public PublisherPrivacyPersonalizationState getPublisherPrivacyPersonalizationState() {
        return this.e;
    }

    public int getTagForChildDirectedTreatment() {
        return this.f2943a;
    }

    public int getTagForUnderAgeOfConsent() {
        return this.b;
    }

    @NonNull
    public List<String> getTestDeviceIds() {
        return new ArrayList(this.d);
    }

    @NonNull
    public Builder toBuilder() {
        Builder builder = new Builder();
        builder.setTagForChildDirectedTreatment(this.f2943a);
        builder.setTagForUnderAgeOfConsent(this.b);
        builder.setMaxAdContentRating(this.f2944c);
        builder.setTestDeviceIds(this.d);
        return builder;
    }
}
