package com.android.billingclient.api;

import android.text.TextUtils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class BillingFlowParams {

    /* renamed from: a, reason: collision with root package name */
    public boolean f1995a;
    public SubscriptionUpdateParams b;

    /* renamed from: c, reason: collision with root package name */
    public com.google.android.gms.internal.play_billing.zzbw f1996c;
    public ArrayList d;

    /* loaded from: classes.dex */
    public static class Builder {

        /* renamed from: a, reason: collision with root package name */
        public ArrayList f1997a;
        public SubscriptionUpdateParams.Builder b;

        /* JADX WARN: Type inference failed for: r0v8, types: [com.android.billingclient.api.BillingFlowParams$SubscriptionUpdateParams, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Object, com.android.billingclient.api.BillingFlowParams] */
        public final BillingFlowParams a() {
            boolean z;
            boolean z2;
            com.google.android.gms.internal.play_billing.zzbw t;
            ArrayList arrayList = this.f1997a;
            boolean z3 = true;
            if (arrayList != null && !arrayList.isEmpty()) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                ArrayList arrayList2 = this.f1997a;
                if (arrayList2 != null) {
                    int size = arrayList2.size();
                    int i = 0;
                    while (i < size) {
                        Object obj = arrayList2.get(i);
                        i++;
                        if (((ProductDetailsParams) obj) == null) {
                            throw new IllegalArgumentException("ProductDetailsParams cannot be null.");
                        }
                    }
                }
                ?? obj2 = new Object();
                if (z && !((ProductDetailsParams) this.f1997a.get(0)).f1998a.b.optString("packageName").isEmpty()) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                obj2.f1995a = z2;
                SubscriptionUpdateParams.Builder builder = this.b;
                builder.getClass();
                if (TextUtils.isEmpty(null) && TextUtils.isEmpty(null)) {
                    z3 = false;
                }
                boolean isEmpty = TextUtils.isEmpty(null);
                if (z3 && !isEmpty) {
                    throw new IllegalArgumentException("Please provide Old SKU purchase information(token/id) or original external transaction id, not both.");
                }
                if (!builder.f2000a && !z3 && isEmpty) {
                    throw new IllegalArgumentException("Old SKU purchase information(token/id) or original external transaction id must be provided.");
                }
                obj2.b = new Object();
                obj2.d = new ArrayList();
                ArrayList arrayList3 = this.f1997a;
                if (arrayList3 != null) {
                    t = com.google.android.gms.internal.play_billing.zzbw.s(arrayList3);
                } else {
                    t = com.google.android.gms.internal.play_billing.zzbw.t();
                }
                obj2.f1996c = t;
                return obj2;
            }
            throw new IllegalArgumentException("Details of the products must be provided.");
        }
    }

    /* loaded from: classes.dex */
    public static final class ProductDetailsParams {

        /* renamed from: a, reason: collision with root package name */
        public final ProductDetails f1998a;
        public final String b;

        /* loaded from: classes.dex */
        public static class Builder {

            /* renamed from: a, reason: collision with root package name */
            public ProductDetails f1999a;
            public String b;
        }

        @zzx
        /* loaded from: classes.dex */
        public static class SubscriptionProductReplacementParams {

            @zzx
            /* loaded from: classes.dex */
            public static class Builder {
            }

            @Retention(RetentionPolicy.SOURCE)
            /* loaded from: classes.dex */
            public @interface ReplacementMode {
            }
        }

        public /* synthetic */ ProductDetailsParams(Builder builder) {
            this.f1998a = builder.f1999a;
            this.b = builder.b;
        }
    }

    /* loaded from: classes.dex */
    public static class SubscriptionUpdateParams {

        /* loaded from: classes.dex */
        public static class Builder {

            /* renamed from: a, reason: collision with root package name */
            public boolean f2000a;
        }

        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: classes.dex */
        public @interface ReplacementMode {
        }
    }
}
