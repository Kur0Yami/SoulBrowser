package androidx.credentials.provider;

import com.google.android.gms.ads.RequestConfiguration;
import j$.util.Objects;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Landroidx/credentials/provider/AuthenticationError;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Companion", "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AuthenticationError {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0080\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0087T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0087T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0006X\u0087T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004¨\u0006\b"}, d2 = {"Landroidx/credentials/provider/AuthenticationError$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "EXTRA_BIOMETRIC_AUTH_ERROR", "Ljava/lang/String;", "EXTRA_BIOMETRIC_AUTH_ERROR_FALLBACK", "EXTRA_BIOMETRIC_AUTH_ERROR_MESSAGE", "EXTRA_BIOMETRIC_AUTH_ERROR_MESSAGE_FALLBACK", "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
    }

    static {
        MapsKt.linkedMapOf(TuplesKt.to(5, 5), TuplesKt.to(12, 12), TuplesKt.to(1, 1), TuplesKt.to(7, 7), TuplesKt.to(9, 9), TuplesKt.to(11, 11), TuplesKt.to(14, 14), TuplesKt.to(4, 4), TuplesKt.to(15, 15), TuplesKt.to(3, 3), TuplesKt.to(2, 2), TuplesKt.to(10, 10), TuplesKt.to(8, 8));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof AuthenticationError) && Intrinsics.areEqual((Object) null, (Object) null)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(0, null);
    }
}
