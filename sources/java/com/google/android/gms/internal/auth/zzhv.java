package com.google.android.gms.internal.auth;

/* loaded from: classes.dex */
public final class zzhv implements zzhu {

    /* renamed from: a, reason: collision with root package name */
    public static final zzdc f9577a;

    static {
        zzcz zzczVar = new zzcz(new zzcz(zzcr.a(), false, false).a().f9517a, true, true);
        f9577a = zzczVar.c("Aang__create_auth_exception_with_pending_intent", false);
        zzczVar.c("Aang__enable_add_account_restrictions", false);
        zzczVar.c("Aang__log_missing_gaia_id_event", true);
        zzczVar.c("Aang__log_obfuscated_gaiaid_status", true);
        zzczVar.c("Aang__switch_clear_token_to_aang", false);
    }

    @Override // com.google.android.gms.internal.auth.zzhu
    public final boolean zza() {
        return ((Boolean) f9577a.b()).booleanValue();
    }
}
