package androidx.credentials.provider;

import android.content.ComponentName;
import android.credentials.CredentialOption;
import android.os.Bundle;
import androidx.credentials.GetDigitalCredentialOption;
import androidx.credentials.GetPasswordOption;
import androidx.credentials.GetPublicKeyCredentialOption;
import androidx.credentials.internal.FrameworkClassParsingException;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u00012\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00040\u0004H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "Landroidx/credentials/CredentialOption;", "kotlin.jvm.PlatformType", "option", "Landroid/credentials/CredentialOption;", "invoke"}, k = 3, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class PendingIntentHandler$Api34Impl$Companion$retrieveProviderGetCredentialRequest$1 extends Lambda implements Function1<CredentialOption, androidx.credentials.CredentialOption> {
    static {
        new Lambda(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final androidx.credentials.CredentialOption invoke(CredentialOption credentialOption) {
        CredentialOption credentialOption2 = credentialOption;
        String type = credentialOption2.getType();
        Intrinsics.checkNotNullExpressionValue(type, "option.type");
        Bundle requestData = credentialOption2.getCredentialRetrievalData();
        Intrinsics.checkNotNullExpressionValue(requestData, "option.credentialRetrievalData");
        Bundle candidateQueryData = credentialOption2.getCandidateQueryData();
        Intrinsics.checkNotNullExpressionValue(candidateQueryData, "option.candidateQueryData");
        credentialOption2.isSystemProviderRequired();
        Set<ComponentName> allowedProviders = credentialOption2.getAllowedProviders();
        Intrinsics.checkNotNullExpressionValue(allowedProviders, "option.allowedProviders");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(requestData, "requestData");
        Intrinsics.checkNotNullParameter(candidateQueryData, "candidateQueryData");
        Intrinsics.checkNotNullParameter(allowedProviders, "allowedProviders");
        try {
            int hashCode = type.hashCode();
            if (hashCode != -1678407252) {
                if (hashCode != -543568185) {
                    if (hashCode == -95037569 && type.equals("androidx.credentials.TYPE_PUBLIC_KEY_CREDENTIAL")) {
                        String string = requestData.getString("androidx.credentials.BUNDLE_KEY_SUBTYPE");
                        if (string != null && string.hashCode() == -613058807 && string.equals("androidx.credentials.BUNDLE_VALUE_SUBTYPE_GET_PUBLIC_KEY_CREDENTIAL_OPTION")) {
                            return GetPublicKeyCredentialOption.Companion.a(requestData, candidateQueryData, allowedProviders);
                        }
                        throw new Exception();
                    }
                } else if (type.equals("android.credentials.TYPE_PASSWORD_CREDENTIAL")) {
                    return GetPasswordOption.Companion.a(requestData, candidateQueryData, allowedProviders);
                }
            } else if (type.equals("androidx.credentials.TYPE_DIGITAL_CREDENTIAL")) {
                return GetDigitalCredentialOption.Companion.a(requestData, candidateQueryData, allowedProviders);
            }
            throw new Exception();
        } catch (FrameworkClassParsingException unused) {
            boolean z = requestData.getBoolean("androidx.credentials.BUNDLE_KEY_IS_AUTO_SELECT_ALLOWED", false);
            int i = requestData.getInt("androidx.credentials.BUNDLE_KEY_TYPE_PRIORITY_VALUE", 2000);
            Intrinsics.checkNotNullParameter(requestData, "requestData");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(candidateQueryData, "candidateQueryData");
            Intrinsics.checkNotNullParameter(allowedProviders, "allowedProviders");
            androidx.credentials.CredentialOption credentialOption3 = new androidx.credentials.CredentialOption(type, requestData, candidateQueryData, z, allowedProviders, i);
            if (type.length() > 0) {
                if (i != 100) {
                    return credentialOption3;
                }
                throw new IllegalArgumentException("Custom types should not have passkey level priority.");
            }
            throw new IllegalArgumentException("type should not be empty");
        }
    }
}
