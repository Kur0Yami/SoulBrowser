package com.google.android.gms.internal.p000authapi;

import com.google.android.gms.common.Feature;

/* loaded from: classes.dex */
public final class zbav {

    /* renamed from: a, reason: collision with root package name */
    public static final Feature f9464a;
    public static final Feature b;

    /* renamed from: c, reason: collision with root package name */
    public static final Feature f9465c;
    public static final Feature d;
    public static final Feature[] e;

    static {
        Feature feature = new Feature("auth_api_credentials_begin_sign_in", 9L);
        Feature feature2 = new Feature("auth_api_credentials_sign_out", 2L);
        f9464a = feature2;
        Feature feature3 = new Feature("auth_api_credentials_authorize", 1L);
        b = feature3;
        Feature feature4 = new Feature("auth_api_credentials_revoke_access", 1L);
        Feature feature5 = new Feature("auth_api_credentials_clear_token", 1L);
        Feature feature6 = new Feature("auth_api_credentials_save_password", 4L);
        f9465c = feature6;
        Feature feature7 = new Feature("auth_api_credentials_get_sign_in_intent", 6L);
        d = feature7;
        e = new Feature[]{feature, feature2, feature3, feature4, feature5, feature6, feature7, new Feature("auth_api_credentials_save_account_linking_token", 3L), new Feature("auth_api_credentials_get_phone_number_hint_intent", 3L), new Feature("auth_api_credentials_verify_with_google", 1L), new Feature("auth_api_credentials_credential_provider", 1L), new Feature("auth_api_credentials_save_webauthn_credential_specifics", 1L), new Feature("auth_api_credentials_list_webauthn_credential_specifics", 1L), new Feature("auth_api_credentials_get_google_passkey_for_export", 1L), new Feature("auth_api_credentials_get_authentication_intent", 1L), new Feature("auth_api_credentials_get_registration_intent", 1L), new Feature("auth_api_credentials_check_key_availability", 1L), new Feature("auth_api_credentials_has_discoverable_key", 1L), new Feature("auth_api_credentials_validate_calling_browser", 1L), new Feature("auth_api_credentials_validate_rp_id_and_calling_package", 1L), new Feature("auth_api_credentials_get_credential_list_for_browser", 1L)};
    }
}
