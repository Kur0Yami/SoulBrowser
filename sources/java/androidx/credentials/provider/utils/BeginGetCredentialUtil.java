package androidx.credentials.provider.utils;

import android.content.pm.SigningInfo;
import android.os.Bundle;
import android.service.credentials.BeginGetCredentialResponse;
import android.service.credentials.CallingAppInfo;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.credentials.provider.BeginGetCredentialOption;
import androidx.credentials.provider.BeginGetCredentialRequest;
import androidx.credentials.provider.BeginGetCredentialResponse;
import androidx.credentials.provider.BeginGetCustomCredentialOption;
import androidx.credentials.provider.BeginGetPasswordOption;
import androidx.credentials.provider.BeginGetPublicKeyCredentialOption;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@RequiresApi
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Landroidx/credentials/provider/utils/BeginGetCredentialUtil;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Companion", "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@RestrictTo
/* loaded from: classes.dex */
public final class BeginGetCredentialUtil {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/credentials/provider/utils/BeginGetCredentialUtil$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nBeginGetCredentialUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BeginGetCredentialUtil.kt\nandroidx/credentials/provider/utils/BeginGetCredentialUtil$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,186:1\n1855#2,2:187\n1855#2,2:189\n1855#2,2:191\n1855#2,2:193\n1#3:195\n*S KotlinDebug\n*F\n+ 1 BeginGetCredentialUtil.kt\nandroidx/credentials/provider/utils/BeginGetCredentialUtil$Companion\n*L\n42#1:187,2\n85#1:189,2\n96#1:191,2\n105#1:193,2\n*E\n"})
    /* loaded from: classes.dex */
    public static final class Companion {
        public static void a(BeginGetCredentialResponse response) {
            Intrinsics.checkNotNullParameter(response, "response");
            new BeginGetCredentialResponse.Builder();
            response.getClass();
            throw null;
        }

        /* JADX WARN: Type inference failed for: r7v2, types: [java.lang.Object, androidx.credentials.provider.BeginGetCredentialRequest] */
        public static BeginGetCredentialRequest b(android.service.credentials.BeginGetCredentialRequest request) {
            BeginGetCredentialOption beginGetCredentialOption;
            BeginGetCredentialOption beginGetCredentialOption2;
            Intrinsics.checkNotNullParameter(request, "request");
            ArrayList beginGetCredentialOptions = new ArrayList();
            List<android.service.credentials.BeginGetCredentialOption> beginGetCredentialOptions2 = request.getBeginGetCredentialOptions();
            Intrinsics.checkNotNullExpressionValue(beginGetCredentialOptions2, "request.beginGetCredentialOptions");
            for (android.service.credentials.BeginGetCredentialOption beginGetCredentialOption3 : beginGetCredentialOptions2) {
                String id = beginGetCredentialOption3.getId();
                Intrinsics.checkNotNullExpressionValue(id, "it.id");
                String type = beginGetCredentialOption3.getType();
                Intrinsics.checkNotNullExpressionValue(type, "it.type");
                Bundle data = beginGetCredentialOption3.getCandidateQueryData();
                Intrinsics.checkNotNullExpressionValue(data, "it.candidateQueryData");
                Intrinsics.checkNotNullParameter(id, "id");
                Intrinsics.checkNotNullParameter(type, "type");
                Intrinsics.checkNotNullParameter(data, "candidateQueryData");
                if (Intrinsics.areEqual(type, "android.credentials.TYPE_PASSWORD_CREDENTIAL")) {
                    beginGetCredentialOption2 = BeginGetPasswordOption.Companion.a(id, data);
                } else {
                    if (Intrinsics.areEqual(type, "androidx.credentials.TYPE_PUBLIC_KEY_CREDENTIAL")) {
                        Intrinsics.checkNotNullParameter(data, "data");
                        Intrinsics.checkNotNullParameter(id, "id");
                        try {
                            String string = data.getString("androidx.credentials.BUNDLE_KEY_REQUEST_JSON");
                            data.getByteArray("androidx.credentials.BUNDLE_KEY_CLIENT_DATA_HASH");
                            Intrinsics.checkNotNull(string);
                            beginGetCredentialOption = new BeginGetPublicKeyCredentialOption(id, data, string);
                        } catch (Exception unused) {
                            throw new Exception();
                        }
                    } else {
                        beginGetCredentialOption = new BeginGetCustomCredentialOption(id, data, type);
                    }
                    beginGetCredentialOption2 = beginGetCredentialOption;
                }
                beginGetCredentialOptions.add(beginGetCredentialOption2);
            }
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
            Intrinsics.checkNotNullParameter(beginGetCredentialOptions, "beginGetCredentialOptions");
            return new Object();
        }
    }
}
