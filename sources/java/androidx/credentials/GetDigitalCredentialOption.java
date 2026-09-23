package androidx.credentials;

import android.os.Bundle;
import androidx.credentials.internal.RequestValidationHelper;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@ExperimentalDigitalCredentialApi
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Landroidx/credentials/GetDigitalCredentialOption;", "Landroidx/credentials/CredentialOption;", "Companion", "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class GetDigitalCredentialOption extends CredentialOption {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0080\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/credentials/GetDigitalCredentialOption$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "BUNDLE_KEY_REQUEST_JSON", "Ljava/lang/String;", "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public static GetDigitalCredentialOption a(Bundle requestData, Bundle candidateQueryData, Set allowedProviders) {
            Intrinsics.checkNotNullParameter(requestData, "requestData");
            Intrinsics.checkNotNullParameter(candidateQueryData, "candidateQueryData");
            Intrinsics.checkNotNullParameter(allowedProviders, "allowedProviders");
            try {
                String string = requestData.getString("androidx.credentials.BUNDLE_KEY_REQUEST_JSON");
                Intrinsics.checkNotNull(string);
                return new GetDigitalCredentialOption(string, requestData, candidateQueryData, requestData.getBoolean("androidx.credentials.BUNDLE_KEY_IS_AUTO_SELECT_ALLOWED", false), allowedProviders, requestData.getInt("androidx.credentials.BUNDLE_KEY_TYPE_PRIORITY_VALUE", 100));
            } catch (Exception unused) {
                throw new Exception();
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetDigitalCredentialOption(String requestJson, Bundle requestData, Bundle candidateQueryData, boolean z, Set allowedProviders, int i) {
        super("androidx.credentials.TYPE_DIGITAL_CREDENTIAL", requestData, candidateQueryData, z, allowedProviders, i);
        Intrinsics.checkNotNullParameter(requestJson, "requestJson");
        Intrinsics.checkNotNullParameter(requestData, "requestData");
        Intrinsics.checkNotNullParameter(candidateQueryData, "candidateQueryData");
        Intrinsics.checkNotNullParameter(allowedProviders, "allowedProviders");
        if (RequestValidationHelper.Companion.a(requestJson)) {
        } else {
            throw new IllegalArgumentException("credentialJson must not be empty, and must be a valid JSON");
        }
    }
}
