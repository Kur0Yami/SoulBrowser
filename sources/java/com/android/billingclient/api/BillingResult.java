package com.android.billingclient.api;

import android.support.v4.media.a;
import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class BillingResult {

    /* renamed from: a, reason: collision with root package name */
    public int f2001a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public String f2002c;

    /* loaded from: classes.dex */
    public static class Builder {

        /* renamed from: a, reason: collision with root package name */
        public int f2003a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public String f2004c;

        /* JADX WARN: Type inference failed for: r0v0, types: [com.android.billingclient.api.BillingResult, java.lang.Object] */
        public final BillingResult a() {
            ?? obj = new Object();
            obj.f2001a = this.f2003a;
            obj.b = this.b;
            obj.f2002c = this.f2004c;
            return obj;
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.android.billingclient.api.BillingResult$Builder] */
    public static Builder a() {
        ?? obj = new Object();
        obj.b = 0;
        obj.f2004c = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        return obj;
    }

    public final String toString() {
        return a.m("Response Code: ", com.google.android.gms.internal.play_billing.zzc.g(this.f2001a), ", Debug Message: ", this.f2002c);
    }
}
