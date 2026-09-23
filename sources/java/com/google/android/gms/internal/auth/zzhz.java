package com.google.android.gms.internal.auth;

import android.util.Base64;

/* loaded from: classes.dex */
public final class zzhz implements zzhx {

    /* renamed from: a, reason: collision with root package name */
    public static final zzdc f9579a;
    public static final zzdc b;

    static {
        zzcz zzczVar = new zzcz(new zzcz(zzcr.a(), false, false).a().f9517a, true, true);
        Double valueOf = Double.valueOf(0.0d);
        new zzdc(zzczVar, "getTokenRefactor__account_data_service_sample_percentage", valueOf);
        zzczVar.c("getTokenRefactor__account_data_service_tokenAPI_usable", true);
        zzczVar.b(20L, "getTokenRefactor__account_manager_timeout_seconds");
        zzczVar.b(0L, "getTokenRefactor__android_id_shift");
        try {
            f9579a = new zzdc(zzczVar, "getTokenRefactor__blocked_packages", zzhs.i(Base64.decode("ChNjb20uYW5kcm9pZC52ZW5kaW5nCiBjb20uZ29vZ2xlLmFuZHJvaWQuYXBwcy5tZWV0aW5ncwohY29tLmdvb2dsZS5hbmRyb2lkLmFwcHMubWVzc2FnaW5n", 3)));
            zzczVar.c("getTokenRefactor__chimera_get_token_evolved", true);
            zzczVar.b(20L, "getTokenRefactor__clear_token_timeout_seconds");
            zzczVar.b(20L, "getTokenRefactor__default_task_timeout_seconds");
            zzczVar.c("getTokenRefactor__gaul_accounts_api_evolved", false);
            b = zzczVar.c("getTokenRefactor__gaul_token_api_evolved", false);
            zzczVar.b(120L, "getTokenRefactor__get_token_timeout_seconds");
            zzczVar.c("getTokenRefactor__gms_account_authenticator_evolved", true);
            new zzdc(zzczVar, "getTokenRefactor__gms_account_authenticator_sample_percentage", valueOf);
        } catch (Exception e) {
            throw new AssertionError(e);
        }
    }

    @Override // com.google.android.gms.internal.auth.zzhx
    public final zzhs zza() {
        return (zzhs) f9579a.b();
    }

    @Override // com.google.android.gms.internal.auth.zzhx
    public final boolean zzc() {
        return ((Boolean) b.b()).booleanValue();
    }
}
