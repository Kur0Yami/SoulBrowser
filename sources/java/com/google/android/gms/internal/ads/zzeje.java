package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.privacysandbox.ads.adservices.java.topics.TopicsManagerFutures;
import androidx.privacysandbox.ads.adservices.topics.GetTopicsRequest;
import com.google.android.gms.ads.MobileAds;
import com.google.common.util.concurrent.ListenableFuture;
import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes.dex */
public final class zzeje {

    /* renamed from: a, reason: collision with root package name */
    public final Context f6556a;

    public zzeje(Context context) {
        this.f6556a = context;
    }

    public final ListenableFuture a(boolean z) {
        try {
            Intrinsics.checkNotNullParameter(MobileAds.ERROR_DOMAIN, "adsSdkName");
            GetTopicsRequest getTopicsRequest = new GetTopicsRequest(MobileAds.ERROR_DOMAIN, z);
            TopicsManagerFutures a2 = TopicsManagerFutures.a(this.f6556a);
            if (a2 != null) {
                return a2.b(getTopicsRequest);
            }
            return zzgym.b(new IllegalStateException());
        } catch (Exception e) {
            return zzgym.b(e);
        }
    }
}
