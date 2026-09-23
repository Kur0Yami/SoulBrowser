package androidx.privacysandbox.ads.adservices.adid;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/privacysandbox/ads/adservices/adid/AdId;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "ads-adservices_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AdId {

    /* renamed from: a, reason: collision with root package name */
    public final String f1442a;
    public final boolean b;

    public AdId(String adId, boolean z) {
        Intrinsics.checkNotNullParameter(adId, "adId");
        this.f1442a = adId;
        this.b = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdId)) {
            return false;
        }
        AdId adId = (AdId) obj;
        if (Intrinsics.areEqual(this.f1442a, adId.f1442a) && this.b == adId.b) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int hashCode = this.f1442a.hashCode() * 31;
        if (this.b) {
            i = 1231;
        } else {
            i = 1237;
        }
        return hashCode + i;
    }

    public final String toString() {
        return "AdId: adId=" + this.f1442a + ", isLimitAdTrackingEnabled=" + this.b;
    }
}
