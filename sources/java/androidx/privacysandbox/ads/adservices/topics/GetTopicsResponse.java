package androidx.privacysandbox.ads.adservices.topics;

import com.google.android.gms.ads.RequestConfiguration;
import j$.util.Objects;
import java.util.HashSet;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponse;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "ads-adservices_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class GetTopicsResponse {

    /* renamed from: a, reason: collision with root package name */
    public final List f1467a;

    public GetTopicsResponse(List topics) {
        Intrinsics.checkNotNullParameter(topics, "topics");
        this.f1467a = topics;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GetTopicsResponse)) {
            return false;
        }
        List list = this.f1467a;
        int size = list.size();
        List list2 = ((GetTopicsResponse) obj).f1467a;
        if (size != list2.size()) {
            return false;
        }
        return Intrinsics.areEqual(new HashSet(list), new HashSet(list2));
    }

    public final int hashCode() {
        return Objects.hash(this.f1467a);
    }

    public final String toString() {
        return "Topics=" + this.f1467a;
    }
}
