package androidx.credentials.provider;

import android.app.slice.Slice;
import android.app.slice.SliceSpec;
import android.os.Build;
import androidx.annotation.RequiresApi;
import androidx.credentials.provider.CustomCredentialEntry;
import androidx.credentials.provider.PasswordCredentialEntry;
import androidx.credentials.provider.PublicKeyCredentialEntry;
import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\b&\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005¨\u0006\u0006"}, d2 = {"Landroidx/credentials/provider/CredentialEntry;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Api28Impl", "Api34Impl", "Api35Impl", "Companion", "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public abstract class CredentialEntry {

    /* renamed from: a, reason: collision with root package name */
    public final BeginGetCredentialOption f928a;
    public final CharSequence b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f929c;
    public final CharSequence d;

    @RequiresApi
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÁ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/credentials/provider/CredentialEntry$Api28Impl;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Api28Impl {
        public static final CredentialEntry a(Slice slice) {
            String str;
            Intrinsics.checkNotNullParameter(slice, "slice");
            try {
                SliceSpec spec = slice.getSpec();
                CredentialEntry credentialEntry = null;
                if (spec != null) {
                    str = spec.getType();
                } else {
                    str = null;
                }
                if (Intrinsics.areEqual(str, "android.credentials.TYPE_PASSWORD_CREDENTIAL")) {
                    Intrinsics.checkNotNullParameter(slice, "slice");
                    int i = Build.VERSION.SDK_INT;
                    if (i >= 35) {
                        credentialEntry = PasswordCredentialEntry.Api35Impl.a(slice);
                    } else if (i >= 28) {
                        credentialEntry = PasswordCredentialEntry.Api28Impl.a(slice);
                    }
                    Intrinsics.checkNotNull(credentialEntry);
                    return credentialEntry;
                }
                if (Intrinsics.areEqual(str, "androidx.credentials.TYPE_PUBLIC_KEY_CREDENTIAL")) {
                    Intrinsics.checkNotNullParameter(slice, "slice");
                    int i2 = Build.VERSION.SDK_INT;
                    if (i2 >= 35) {
                        credentialEntry = PublicKeyCredentialEntry.Api35Impl.a(slice);
                    } else if (i2 >= 28) {
                        credentialEntry = PublicKeyCredentialEntry.Api28Impl.a(slice);
                    }
                    Intrinsics.checkNotNull(credentialEntry);
                    return credentialEntry;
                }
                CustomCredentialEntry a2 = CustomCredentialEntry.Companion.a(slice);
                Intrinsics.checkNotNull(a2);
                return a2;
            } catch (Exception unused) {
                return CustomCredentialEntry.Companion.a(slice);
            }
        }
    }

    @RequiresApi
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÃ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/credentials/provider/CredentialEntry$Api34Impl;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Api34Impl {
    }

    @RequiresApi
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÁ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/credentials/provider/CredentialEntry$Api35Impl;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Api35Impl {
        public static final CredentialEntry a(Slice slice) {
            String str;
            Intrinsics.checkNotNullParameter(slice, "slice");
            try {
                SliceSpec spec = slice.getSpec();
                CredentialEntry credentialEntry = null;
                if (spec != null) {
                    str = spec.getType();
                } else {
                    str = null;
                }
                if (Intrinsics.areEqual(str, "android.credentials.TYPE_PASSWORD_CREDENTIAL")) {
                    Intrinsics.checkNotNullParameter(slice, "slice");
                    int i = Build.VERSION.SDK_INT;
                    if (i >= 35) {
                        credentialEntry = PasswordCredentialEntry.Api35Impl.a(slice);
                    } else if (i >= 28) {
                        credentialEntry = PasswordCredentialEntry.Api28Impl.a(slice);
                    }
                    Intrinsics.checkNotNull(credentialEntry);
                    return credentialEntry;
                }
                if (Intrinsics.areEqual(str, "androidx.credentials.TYPE_PUBLIC_KEY_CREDENTIAL")) {
                    Intrinsics.checkNotNullParameter(slice, "slice");
                    int i2 = Build.VERSION.SDK_INT;
                    if (i2 >= 35) {
                        credentialEntry = PublicKeyCredentialEntry.Api35Impl.a(slice);
                    } else if (i2 >= 28) {
                        credentialEntry = PublicKeyCredentialEntry.Api28Impl.a(slice);
                    }
                    Intrinsics.checkNotNull(credentialEntry);
                    return credentialEntry;
                }
                CustomCredentialEntry a2 = CustomCredentialEntry.Companion.a(slice);
                Intrinsics.checkNotNull(a2);
                return a2;
            } catch (Exception unused) {
                return CustomCredentialEntry.Companion.a(slice);
            }
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0013\n\u0002\u0010\b\n\u0002\b\u0014\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\t\u0010\u0004R\u0014\u0010\n\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\n\u0010\u0004R\u0014\u0010\u000b\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0004R\u0014\u0010\f\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\f\u0010\u0004R\u0014\u0010\r\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\r\u0010\u0004R\u0014\u0010\u000e\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u000e\u0010\u0004R\u0014\u0010\u000f\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u000f\u0010\u0004R\u0014\u0010\u0010\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0010\u0010\u0004R\u0014\u0010\u0011\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0011\u0010\u0004R\u0014\u0010\u0012\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0012\u0010\u0004R\u0014\u0010\u0013\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0013\u0010\u0004R\u0014\u0010\u0014\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0014\u0010\u0004R\u0014\u0010\u0015\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0015\u0010\u0004R\u0014\u0010\u0017\u001a\u00020\u00168\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0014\u0010\u0019\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0019\u0010\u0004R\u0014\u0010\u001a\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u001a\u0010\u0004R\u0014\u0010\u001b\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u001b\u0010\u0004R\u0014\u0010\u001c\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u001c\u0010\u0004R\u0014\u0010\u001d\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u001d\u0010\u0004R\u0014\u0010\u001e\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u001e\u0010\u0004R\u0014\u0010\u001f\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u001f\u0010\u0004R\u0014\u0010 \u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b \u0010\u0004R\u0014\u0010!\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b!\u0010\u0004R\u0014\u0010\"\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\"\u0010\u0004R\u0014\u0010#\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b#\u0010\u0004R\u0014\u0010$\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b$\u0010\u0004R\u0014\u0010%\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b%\u0010\u0004R\u0014\u0010&\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b&\u0010\u0004R\u0014\u0010'\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b'\u0010\u0004R\u0014\u0010(\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b(\u0010\u0004R\u0014\u0010)\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b)\u0010\u0004¨\u0006*"}, d2 = {"Landroidx/credentials/provider/CredentialEntry$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "EXTRA_CREDENTIAL_ENTRY_AFFILIATED_DOMAIN_PREFIX", "Ljava/lang/String;", "EXTRA_CREDENTIAL_ENTRY_ENTRY_GROUP_ID_PREFIX", "EXTRA_CREDENTIAL_ENTRY_ENTRY_TYPE_PREFIX", "EXTRA_CREDENTIAL_ENTRY_HAS_DEFAULT_ICON_PREFIX", "EXTRA_CREDENTIAL_ENTRY_IS_AUTO_SELECT_ALLOWED_FROM_OPTION_PREFIX", "EXTRA_CREDENTIAL_ENTRY_IS_AUTO_SELECT_ALLOWED_PREFIX", "EXTRA_CREDENTIAL_ENTRY_IS_DEFAULT_ICON_PREFERRED_AS_SINGLE_PROV_PREFIX", "EXTRA_CREDENTIAL_ENTRY_LAST_USED_TIME_PREFIX", "EXTRA_CREDENTIAL_ENTRY_OPTION_DATA_PREFIX", "EXTRA_CREDENTIAL_ENTRY_OPTION_ID_PREFIX", "EXTRA_CREDENTIAL_ENTRY_OPTION_TYPE_PREFIX", "EXTRA_CREDENTIAL_ENTRY_PENDING_INTENT_PREFIX", "EXTRA_CREDENTIAL_ENTRY_SIZE", "EXTRA_CREDENTIAL_SUBTITLE_PREFIX", "EXTRA_CREDENTIAL_TITLE_PREFIX", "EXTRA_CREDENTIAL_TYPE_DISPLAY_NAME_PREFIX", "EXTRA_CREDENTIAL_TYPE_ICON_PREFIX", "FALSE_STRING", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "REVISION_ID", "I", "SLICE_HINT_AFFILIATED_DOMAIN", "SLICE_HINT_ALLOWED_AUTHENTICATORS", "SLICE_HINT_AUTO_ALLOWED", "SLICE_HINT_AUTO_SELECT_FROM_OPTION", "SLICE_HINT_BIOMETRIC_PROMPT_DATA", "SLICE_HINT_CRYPTO_OP_ID", "SLICE_HINT_DEDUPLICATION_ID", "SLICE_HINT_DEFAULT_ICON_RES_ID", "SLICE_HINT_ICON", "SLICE_HINT_IS_DEFAULT_ICON_PREFERRED", "SLICE_HINT_LAST_USED_TIME_MILLIS", "SLICE_HINT_OPTION_ID", "SLICE_HINT_PENDING_INTENT", "SLICE_HINT_SUBTITLE", "SLICE_HINT_TITLE", "SLICE_HINT_TYPE_DISPLAY_NAME", "TRUE_STRING", "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
    }

    public CredentialEntry(String type, BeginGetCredentialOption beginGetCredentialOption, CharSequence entryGroupId, boolean z, CharSequence charSequence, BiometricPromptData biometricPromptData) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(beginGetCredentialOption, "beginGetCredentialOption");
        Intrinsics.checkNotNullParameter(entryGroupId, "entryGroupId");
        this.f928a = beginGetCredentialOption;
        this.b = entryGroupId;
        this.f929c = z;
        this.d = charSequence;
    }
}
