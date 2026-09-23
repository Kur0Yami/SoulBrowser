package com.google.common.hash;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.errorprone.annotations.Immutable;
import java.io.Serializable;

@Immutable
/* loaded from: classes3.dex */
final class SipHashFunction extends AbstractHashFunction implements Serializable {

    /* loaded from: classes3.dex */
    public static final class SipHasher extends AbstractStreamingHasher {
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof SipHashFunction) && 0 == 0 && 0 == 0) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return (int) ((((SipHashFunction.class.hashCode() ^ 0) ^ 0) ^ 0) ^ 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Hashing.sipHash");
        sb.append(0);
        sb.append(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        sb.append(0);
        sb.append("(");
        sb.append(0L);
        sb.append(", ");
        return android.support.v4.media.a.o(sb, 0L, ")");
    }
}
