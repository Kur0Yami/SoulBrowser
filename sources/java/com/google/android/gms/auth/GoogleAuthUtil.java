package com.google.android.gms.auth;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.auth.zzbw;
import com.google.android.gms.internal.auth.zzdc;
import com.google.android.gms.internal.auth.zzhw;
import com.google.android.gms.internal.auth.zzhx;
import java.io.IOException;

/* loaded from: classes.dex */
public final class GoogleAuthUtil extends zzl {
    public static void j(Context context, String str) {
        Preconditions.checkNotMainThread("Calling this from your main thread can lead to deadlock");
        zzl.e(context);
        Bundle bundle = new Bundle();
        zzl.f(context, bundle);
        zzdc.c(context);
        if (((zzhx) zzhw.f.f9578c.zza()).zzc() && zzl.i(context)) {
            com.google.android.gms.internal.auth.zzg a2 = com.google.android.gms.internal.auth.zzh.a(context);
            zzbw zzbwVar = new zzbw();
            zzbwVar.f = str;
            try {
                zzl.c(a2.f(zzbwVar), "clear token");
                return;
            } catch (ApiException e) {
                zzl.f3422c.w("%s failed via GoogleAuthServiceClient, falling back to previous approach:\n%s", "clear token", Log.getStackTraceString(e));
            }
        }
        zzl.b(context, zzl.b, new zzh(str, bundle));
    }

    public static String k(final Context context, String str, final String str2) {
        TokenData tokenData;
        final Account account = new Account(str, "com.google");
        Bundle bundle = new Bundle();
        zzl.h(account);
        Preconditions.checkNotMainThread("Calling this from your main thread can lead to deadlock");
        Preconditions.checkNotEmpty(str2, "Scope cannot be empty or null.");
        zzl.h(account);
        zzl.e(context);
        final Bundle bundle2 = new Bundle(bundle);
        zzl.f(context, bundle2);
        zzdc.c(context);
        if (((zzhx) zzhw.f.f9578c.zza()).zzc() && zzl.i(context)) {
            try {
                Bundle bundle3 = (Bundle) zzl.c(com.google.android.gms.internal.auth.zzh.a(context).c(account, str2, bundle2), "token retrieval");
                zzl.d(bundle3);
                tokenData = zzl.a(context, bundle3);
            } catch (ApiException e) {
                zzl.f3422c.w("%s failed via GoogleAuthServiceClient, falling back to previous approach:\n%s", "token retrieval", Log.getStackTraceString(e));
            }
            return tokenData.f;
        }
        tokenData = (TokenData) zzl.b(context, zzl.b, new zzk() { // from class: com.google.android.gms.auth.zzg
            @Override // com.google.android.gms.auth.zzk
            public final Object a(IBinder iBinder) {
                String[] strArr = zzl.f3421a;
                Bundle n0 = com.google.android.gms.internal.auth.zze.f2(iBinder).n0(account, str2, bundle2);
                if (n0 != null) {
                    return zzl.a(context, n0);
                }
                throw new IOException("Service call returned null");
            }
        });
        return tokenData.f;
    }
}
