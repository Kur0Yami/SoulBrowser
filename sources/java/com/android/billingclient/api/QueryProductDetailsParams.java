package com.android.billingclient.api;

import java.util.ArrayList;
import java.util.HashSet;

/* loaded from: classes.dex */
public final class QueryProductDetailsParams {

    /* renamed from: a, reason: collision with root package name */
    public final com.google.android.gms.internal.play_billing.zzbw f2013a;

    /* loaded from: classes.dex */
    public static class Builder {

        /* renamed from: a, reason: collision with root package name */
        public com.google.android.gms.internal.play_billing.zzbw f2014a;

        public final void a(ArrayList arrayList) {
            if (!arrayList.isEmpty()) {
                HashSet hashSet = new HashSet();
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    Product product = (Product) obj;
                    if (!"play_pass_subs".equals(product.b)) {
                        hashSet.add(product.b);
                    }
                }
                if (hashSet.size() <= 1) {
                    this.f2014a = com.google.android.gms.internal.play_billing.zzbw.s(arrayList);
                    return;
                }
                throw new IllegalArgumentException("All products should be of the same product type.");
            }
            throw new IllegalArgumentException("Product list cannot be empty.");
        }
    }

    /* loaded from: classes.dex */
    public static class Product {

        /* renamed from: a, reason: collision with root package name */
        public final String f2015a;
        public final String b;

        /* loaded from: classes.dex */
        public static class Builder {

            /* renamed from: a, reason: collision with root package name */
            public String f2016a;
            public String b;

            public final Product a() {
                String str = this.b;
                if (!"first_party".equals(str)) {
                    if (this.f2016a != null) {
                        if (str != null) {
                            return new Product(this);
                        }
                        throw new IllegalArgumentException("Product type must be provided.");
                    }
                    throw new IllegalArgumentException("Product id must be provided.");
                }
                throw new IllegalArgumentException("Serialized doc id must be provided for first party products.");
            }
        }

        public /* synthetic */ Product(Builder builder) {
            this.f2015a = builder.f2016a;
            this.b = builder.b;
        }
    }
}
