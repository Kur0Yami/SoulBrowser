package com.android.billingclient.api;

import android.support.v4.media.a;
import android.text.TextUtils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import org.json.JSONObject;

@zzu
/* loaded from: classes.dex */
public final class UnfetchedProduct {

    /* renamed from: a, reason: collision with root package name */
    public final String f2020a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final String f2021c;
    public final int d;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface StatusCode {
    }

    public UnfetchedProduct(String str) {
        int i;
        this.f2020a = str;
        JSONObject jSONObject = new JSONObject(str);
        this.b = jSONObject.optString("productId");
        String optString = jSONObject.optString("type");
        this.f2021c = optString;
        if (jSONObject.has("statusCode")) {
            i = jSONObject.optInt("statusCode");
        } else {
            i = 0;
        }
        this.d = i;
        if (!TextUtils.isEmpty(optString)) {
            jSONObject.optString("serializedDocid");
            return;
        }
        throw new IllegalArgumentException("Product type cannot be empty.");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UnfetchedProduct)) {
            return false;
        }
        return TextUtils.equals(this.f2020a, ((UnfetchedProduct) obj).f2020a);
    }

    public final int hashCode() {
        return this.f2020a.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("UnfetchedProduct{productId='");
        sb.append(this.b);
        sb.append("', productType='");
        sb.append(this.f2021c);
        sb.append("', statusCode=");
        return a.g(this.d, "}", sb);
    }
}
