package androidx.privacysandbox.ads.adservices.internal;

import android.os.Build;
import android.os.ext.SdkExtensions;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.time.DurationKt;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\bÀ\u0002\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Extensions30Impl", "ads-adservices_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AdServicesInfo {

    @RequiresApi
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\bÃ\u0002\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo$Extensions30Impl;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "a", "()I", "ads-adservices_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Extensions30Impl {

        /* renamed from: a, reason: collision with root package name */
        public static final Extensions30Impl f1447a = new Object();

        @DoNotInline
        public final int a() {
            return SdkExtensions.getExtensionVersion(DurationKt.NANOS_IN_MILLIS);
        }
    }

    public static int a() {
        if (Build.VERSION.SDK_INT >= 30) {
            return Extensions30Impl.f1447a.a();
        }
        return 0;
    }
}
