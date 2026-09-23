package androidx.credentials.provider.utils;

import android.content.pm.SigningInfo;
import android.os.Bundle;
import android.service.credentials.BeginCreateCredentialResponse;
import android.service.credentials.CallingAppInfo;
import androidx.credentials.internal.FrameworkClassParsingException;
import androidx.credentials.provider.BeginCreateCredentialRequest;
import androidx.credentials.provider.BeginCreateCredentialResponse;
import androidx.credentials.provider.BeginCreateCustomCredentialRequest;
import androidx.credentials.provider.BeginCreatePublicKeyCredentialRequest;
import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Landroidx/credentials/provider/utils/BeginCreateCredentialUtil;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Companion", "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class BeginCreateCredentialUtil {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0080\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/credentials/provider/utils/BeginCreateCredentialUtil$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nBeginCreateCredentialUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BeginCreateCredentialUtil.kt\nandroidx/credentials/provider/utils/BeginCreateCredentialUtil$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,124:1\n1855#2,2:125\n1#3:127\n*S KotlinDebug\n*F\n+ 1 BeginCreateCredentialUtil.kt\nandroidx/credentials/provider/utils/BeginCreateCredentialUtil$Companion\n*L\n76#1:125,2\n*E\n"})
    /* loaded from: classes.dex */
    public static final class Companion {
        public static void a(BeginCreateCredentialResponse response) {
            Intrinsics.checkNotNullParameter(response, "response");
            new BeginCreateCredentialResponse.Builder();
            response.getClass();
            throw null;
        }

        public static BeginCreateCredentialRequest b(android.service.credentials.BeginCreateCredentialRequest request) {
            Intrinsics.checkNotNullParameter(request, "request");
            String type = request.getType();
            Intrinsics.checkNotNullExpressionValue(type, "request.type");
            Bundle data = request.getData();
            Intrinsics.checkNotNullExpressionValue(data, "request.data");
            CallingAppInfo callingAppInfo = request.getCallingAppInfo();
            if (callingAppInfo != null) {
                String packageName = callingAppInfo.getPackageName();
                Intrinsics.checkNotNullExpressionValue(packageName, "it.packageName");
                SigningInfo signingInfo = callingAppInfo.getSigningInfo();
                Intrinsics.checkNotNullExpressionValue(signingInfo, "it.signingInfo");
                String origin = callingAppInfo.getOrigin();
                Intrinsics.checkNotNullParameter(packageName, "packageName");
                Intrinsics.checkNotNullParameter(signingInfo, "signingInfo");
                new androidx.credentials.provider.CallingAppInfo(packageName, signingInfo, origin);
            }
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(data, "candidateQueryData");
            try {
                if (Intrinsics.areEqual(type, "android.credentials.TYPE_PASSWORD_CREDENTIAL")) {
                    Intrinsics.checkNotNullParameter(data, "data");
                    try {
                        Intrinsics.checkNotNullParameter(data, "candidateQueryData");
                        return new BeginCreateCredentialRequest("android.credentials.TYPE_PASSWORD_CREDENTIAL", data);
                    } catch (Exception unused) {
                        throw new Exception();
                    }
                }
                if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_PUBLIC_KEY_CREDENTIAL")) {
                    Intrinsics.checkNotNullParameter(data, "data");
                    try {
                        String string = data.getString("androidx.credentials.BUNDLE_KEY_REQUEST_JSON");
                        data.getByteArray("androidx.credentials.BUNDLE_KEY_CLIENT_DATA_HASH");
                        Intrinsics.checkNotNull(string);
                        return new BeginCreatePublicKeyCredentialRequest(string, data);
                    } catch (Exception unused2) {
                        throw new Exception();
                    }
                }
                return new BeginCreateCustomCredentialRequest(type, data);
            } catch (FrameworkClassParsingException unused3) {
                return new BeginCreateCustomCredentialRequest(type, data);
            }
            return new BeginCreateCustomCredentialRequest(type, data);
        }
    }
}
