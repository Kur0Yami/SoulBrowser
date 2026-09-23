package androidx.privacysandbox.ads.adservices.topics;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/privacysandbox/ads/adservices/topics/Topic;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "ads-adservices_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class Topic {

    /* renamed from: a, reason: collision with root package name */
    public final long f1468a;
    public final long b;

    /* renamed from: c, reason: collision with root package name */
    public final int f1469c;

    public Topic(long j, long j2, int i) {
        this.f1468a = j;
        this.b = j2;
        this.f1469c = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Topic)) {
            return false;
        }
        Topic topic = (Topic) obj;
        if (this.f1468a == topic.f1468a && this.b == topic.b && this.f1469c == topic.f1469c) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        long j = this.f1468a;
        int i = ((int) (j ^ (j >>> 32))) * 31;
        long j2 = this.b;
        return ((i + ((int) ((j2 >>> 32) ^ j2))) * 31) + this.f1469c;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TaxonomyVersion=");
        sb.append(this.f1468a);
        sb.append(", ModelVersion=");
        sb.append(this.b);
        sb.append(", TopicCode=");
        return android.support.v4.media.a.C("Topic { ", android.support.v4.media.a.g(this.f1469c, " }", sb));
    }
}
