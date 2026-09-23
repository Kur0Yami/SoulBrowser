package com.android.billingclient.api;

import android.text.TextUtils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class Purchase {

    /* renamed from: a, reason: collision with root package name */
    public final String f2011a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final JSONObject f2012c;

    @zzt
    /* loaded from: classes.dex */
    public static final class PendingPurchaseUpdate {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface PurchaseState {
    }

    public Purchase(String str, String str2) {
        this.f2011a = str;
        this.b = str2;
        this.f2012c = new JSONObject(str);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Purchase)) {
            return false;
        }
        Purchase purchase = (Purchase) obj;
        if (TextUtils.equals(this.f2011a, purchase.f2011a) && TextUtils.equals(this.b, purchase.b)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.f2011a.hashCode();
    }

    public final String toString() {
        return "Purchase. Json: ".concat(String.valueOf(this.f2011a));
    }
}
