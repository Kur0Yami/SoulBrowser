package androidx.credentials.provider.utils;

import android.content.pm.SigningInfo;
import android.service.credentials.ClearCredentialStateRequest;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.credentials.provider.CallingAppInfo;
import androidx.credentials.provider.ProviderClearCredentialStateRequest;
import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@RequiresApi
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Landroidx/credentials/provider/utils/ClearCredentialUtil;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Companion", "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@RestrictTo
/* loaded from: classes.dex */
public final class ClearCredentialUtil {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/credentials/provider/utils/ClearCredentialUtil$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        /* JADX WARN: Type inference failed for: r0v1, types: [androidx.credentials.provider.ProviderClearCredentialStateRequest, java.lang.Object] */
        public static ProviderClearCredentialStateRequest a(ClearCredentialStateRequest request) {
            Intrinsics.checkNotNullParameter(request, "request");
            String packageName = request.getCallingAppInfo().getPackageName();
            Intrinsics.checkNotNullExpressionValue(packageName, "request.callingAppInfo.packageName");
            SigningInfo signingInfo = request.getCallingAppInfo().getSigningInfo();
            Intrinsics.checkNotNullExpressionValue(signingInfo, "request.callingAppInfo.signingInfo");
            String origin = request.getCallingAppInfo().getOrigin();
            Intrinsics.checkNotNullParameter(packageName, "packageName");
            Intrinsics.checkNotNullParameter(signingInfo, "signingInfo");
            CallingAppInfo callingAppInfo = new CallingAppInfo(packageName, signingInfo, origin);
            Intrinsics.checkNotNullParameter(callingAppInfo, "callingAppInfo");
            return new Object();
        }
    }
}
