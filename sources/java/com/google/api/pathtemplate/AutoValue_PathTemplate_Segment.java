package com.google.api.pathtemplate;

import android.support.v4.media.a;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.api.pathtemplate.PathTemplate;

/* loaded from: classes3.dex */
final class AutoValue_PathTemplate_Segment extends PathTemplate.Segment {
    @Override // com.google.api.pathtemplate.PathTemplate.Segment
    public final String a() {
        return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    @Override // com.google.api.pathtemplate.PathTemplate.Segment
    public final PathTemplate.SegmentKind b() {
        return null;
    }

    @Override // com.google.api.pathtemplate.PathTemplate.Segment
    public final String c() {
        return null;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof PathTemplate.Segment)) {
            return false;
        }
        ((PathTemplate.Segment) obj).b();
        throw null;
    }

    public final int hashCode() {
        throw null;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Segment{kind=");
        sb.append((Object) null);
        sb.append(", value=");
        return a.p(sb, null, ", complexSeparator=}");
    }
}
