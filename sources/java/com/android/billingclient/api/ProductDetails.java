package com.android.billingclient.api;

import android.support.v4.media.a;
import android.text.TextUtils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class ProductDetails {

    /* renamed from: a, reason: collision with root package name */
    public final String f2006a;
    public final JSONObject b;

    /* renamed from: c, reason: collision with root package name */
    public final String f2007c;
    public final String d;
    public final String e;
    public final String f;
    public final String g;
    public final ArrayList h;
    public final ArrayList i;

    @zzm
    /* loaded from: classes.dex */
    public static final class InstallmentPlanDetails {
    }

    /* loaded from: classes.dex */
    public static final class OneTimePurchaseOfferDetails {

        /* renamed from: a, reason: collision with root package name */
        public final String f2008a;
        public final String b;

        /* renamed from: c, reason: collision with root package name */
        public final ArrayList f2009c;
        public final String d;
        public final zzdp e;

        @zzq
        /* loaded from: classes.dex */
        public static final class DiscountDisplayInfo {

            @zzq
            /* loaded from: classes.dex */
            public static final class DiscountAmount {
            }
        }

        @zzq
        /* loaded from: classes.dex */
        public static final class LimitedQuantityInfo {
        }

        @zzr
        /* loaded from: classes.dex */
        public static final class PreorderDetails {
        }

        @zzs
        /* loaded from: classes.dex */
        public static final class RentalDetails {
        }

        @zzq
        /* loaded from: classes.dex */
        public static final class ValidTimeWindow {
        }

        /* JADX WARN: Multi-variable type inference failed */
        public OneTimePurchaseOfferDetails(JSONObject jSONObject) {
            this.f2008a = jSONObject.optString("formattedPrice");
            jSONObject.optLong("priceAmountMicros");
            jSONObject.optString("priceCurrencyCode");
            String optString = jSONObject.optString("offerIdToken");
            zzdp zzdpVar = null;
            this.b = true == optString.isEmpty() ? null : optString;
            jSONObject.optString("offerId").getClass();
            jSONObject.optString("purchaseOptionId").getClass();
            jSONObject.optInt("offerType");
            JSONArray optJSONArray = jSONObject.optJSONArray("offerTags");
            this.f2009c = new ArrayList();
            if (optJSONArray != null) {
                for (int i = 0; i < optJSONArray.length(); i++) {
                    this.f2009c.add(optJSONArray.getString(i));
                }
            }
            if (jSONObject.has("fullPriceMicros")) {
                jSONObject.optLong("fullPriceMicros");
            }
            JSONObject optJSONObject = jSONObject.optJSONObject("discountDisplayInfo");
            if (optJSONObject != null) {
                if (optJSONObject.has("percentageDiscount")) {
                    optJSONObject.optInt("percentageDiscount");
                }
                JSONObject optJSONObject2 = optJSONObject.optJSONObject("discountAmount");
                if (optJSONObject2 != null) {
                    optJSONObject2.optString("formattedDiscountAmount");
                    optJSONObject2.optLong("discountAmountMicros");
                    optJSONObject2.optString("discountAmountCurrencyCode");
                }
            }
            JSONObject optJSONObject3 = jSONObject.optJSONObject("validTimeWindow");
            if (optJSONObject3 != null) {
                if (optJSONObject3.has("startTimeMillis")) {
                    optJSONObject3.optLong("startTimeMillis");
                }
                if (optJSONObject3.has("endTimeMillis")) {
                    optJSONObject3.optLong("endTimeMillis");
                }
            }
            JSONObject optJSONObject4 = jSONObject.optJSONObject("limitedQuantityInfo");
            if (optJSONObject4 != null) {
                optJSONObject4.getInt("maximumQuantity");
                optJSONObject4.getInt("remainingQuantity");
            }
            this.d = jSONObject.optString("serializedDocid");
            JSONObject optJSONObject5 = jSONObject.optJSONObject("preorderDetails");
            if (optJSONObject5 != null) {
                optJSONObject5.getLong("preorderReleaseTimeMillis");
                optJSONObject5.getLong("preorderPresaleEndTimeMillis");
            }
            JSONObject optJSONObject6 = jSONObject.optJSONObject("rentalDetails");
            if (optJSONObject6 != null) {
                optJSONObject6.getString("rentalPeriod");
                optJSONObject6.optString("rentalExpirationPeriod").getClass();
            }
            JSONObject optJSONObject7 = jSONObject.optJSONObject("autoPayDetails");
            if (optJSONObject7 != null) {
                Object obj = new Object();
                optJSONObject7.getString("type");
                zzdpVar = obj;
            }
            this.e = zzdpVar;
            JSONArray optJSONArray2 = jSONObject.optJSONArray("pricingPhases");
            if (optJSONArray2 == null) {
                return;
            }
            new PricingPhases(optJSONArray2);
        }
    }

    /* loaded from: classes.dex */
    public static final class PricingPhase {
        public PricingPhase(JSONObject jSONObject) {
            jSONObject.optString("billingPeriod");
            jSONObject.optString("priceCurrencyCode");
            jSONObject.optString("formattedPrice");
            jSONObject.optLong("priceAmountMicros");
            jSONObject.optInt("recurrenceMode");
            jSONObject.optInt("billingCycleCount");
        }
    }

    /* loaded from: classes.dex */
    public static class PricingPhases {
        public PricingPhases(JSONArray jSONArray) {
            ArrayList arrayList = new ArrayList();
            if (jSONArray != null) {
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject optJSONObject = jSONArray.optJSONObject(i);
                    if (optJSONObject != null) {
                        arrayList.add(new PricingPhase(optJSONObject));
                    }
                }
            }
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface RecurrenceMode {
    }

    /* loaded from: classes.dex */
    public static final class SubscriptionOfferDetails {
    }

    public ProductDetails(String str) {
        ArrayList arrayList;
        this.f2006a = str;
        JSONObject jSONObject = new JSONObject(str);
        this.b = jSONObject;
        String optString = jSONObject.optString("productId");
        this.f2007c = optString;
        String optString2 = jSONObject.optString("type");
        this.d = optString2;
        if (!TextUtils.isEmpty(optString)) {
            if (!TextUtils.isEmpty(optString2)) {
                this.e = jSONObject.optString("title");
                jSONObject.optString("name");
                jSONObject.optString("description");
                jSONObject.optString("packageDisplayName");
                jSONObject.optString("iconUrl");
                this.f = jSONObject.optString("skuDetailsToken");
                this.g = jSONObject.optString("serializedDocid");
                JSONArray optJSONArray = jSONObject.optJSONArray("subscriptionOfferDetails");
                if (optJSONArray != null) {
                    ArrayList arrayList2 = new ArrayList();
                    for (int i = 0; i < optJSONArray.length(); i++) {
                        JSONObject jSONObject2 = optJSONArray.getJSONObject(i);
                        Object obj = new Object();
                        jSONObject2.optString("basePlanId");
                        jSONObject2.optString("offerId").getClass();
                        jSONObject2.getString("offerIdToken");
                        new PricingPhases(jSONObject2.getJSONArray("pricingPhases"));
                        JSONObject optJSONObject = jSONObject2.optJSONObject("installmentPlanDetails");
                        if (optJSONObject != null) {
                            optJSONObject.getInt("commitmentPaymentsCount");
                            optJSONObject.optInt("subsequentCommitmentPaymentsCount");
                        }
                        JSONObject optJSONObject2 = jSONObject2.optJSONObject("transitionPlanDetails");
                        if (optJSONObject2 != null) {
                            optJSONObject2.getString("productId");
                            optJSONObject2.optString("title");
                            optJSONObject2.optString("name");
                            optJSONObject2.optString("description");
                            optJSONObject2.optString("basePlanId");
                            JSONObject optJSONObject3 = optJSONObject2.optJSONObject("pricingPhase");
                            if (optJSONObject3 != null) {
                                new PricingPhase(optJSONObject3);
                            }
                        }
                        ArrayList arrayList3 = new ArrayList();
                        JSONArray optJSONArray2 = jSONObject2.optJSONArray("offerTags");
                        if (optJSONArray2 != null) {
                            for (int i2 = 0; i2 < optJSONArray2.length(); i2++) {
                                arrayList3.add(optJSONArray2.getString(i2));
                            }
                        }
                        arrayList2.add(obj);
                    }
                    this.h = arrayList2;
                } else {
                    if (!optString2.equals("subs") && !optString2.equals("play_pass_subs")) {
                        arrayList = null;
                    } else {
                        arrayList = new ArrayList();
                    }
                    this.h = arrayList;
                }
                JSONObject optJSONObject4 = this.b.optJSONObject("oneTimePurchaseOfferDetails");
                JSONArray optJSONArray3 = this.b.optJSONArray("oneTimePurchaseOfferDetailsList");
                ArrayList arrayList4 = new ArrayList();
                if (optJSONArray3 != null) {
                    for (int i3 = 0; i3 < optJSONArray3.length(); i3++) {
                        arrayList4.add(new OneTimePurchaseOfferDetails(optJSONArray3.getJSONObject(i3)));
                    }
                    this.i = arrayList4;
                    return;
                }
                if (optJSONObject4 != null) {
                    arrayList4.add(new OneTimePurchaseOfferDetails(optJSONObject4));
                    this.i = arrayList4;
                    return;
                } else {
                    this.i = null;
                    return;
                }
            }
            throw new IllegalArgumentException("Product type cannot be empty.");
        }
        throw new IllegalArgumentException("Product id cannot be empty.");
    }

    public final OneTimePurchaseOfferDetails a() {
        ArrayList arrayList = this.i;
        if (arrayList != null && !arrayList.isEmpty()) {
            return (OneTimePurchaseOfferDetails) arrayList.get(0);
        }
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductDetails)) {
            return false;
        }
        return TextUtils.equals(this.f2006a, ((ProductDetails) obj).f2006a);
    }

    public final int hashCode() {
        return this.f2006a.hashCode();
    }

    public final String toString() {
        String obj = this.b.toString();
        String valueOf = String.valueOf(this.h);
        StringBuilder sb = new StringBuilder("ProductDetails{jsonString='");
        a.z(sb, this.f2006a, "', parsedJson=", obj, ", productId='");
        sb.append(this.f2007c);
        sb.append("', productType='");
        sb.append(this.d);
        sb.append("', title='");
        sb.append(this.e);
        sb.append("', productDetailsToken='");
        return a.r(sb, this.f, "', subscriptionOfferDetails=", valueOf, "}");
    }
}
