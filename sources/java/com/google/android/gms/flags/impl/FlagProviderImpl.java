package com.google.android.gms.flags.impl;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.util.Log;
import androidx.annotation.NonNull;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

@DynamiteApi
/* loaded from: classes.dex */
public class FlagProviderImpl extends com.google.android.gms.flags.zzd {

    /* renamed from: c, reason: collision with root package name */
    public boolean f3818c;
    public SharedPreferences f;

    public FlagProviderImpl() {
        attachInterface(this, "com.google.android.gms.flags.IFlagProvider");
        this.f3818c = false;
    }

    @Override // com.google.android.gms.flags.zze
    public boolean getBooleanFlagValue(@NonNull String str, boolean z, int i) {
        String str2;
        if (!this.f3818c) {
            return z;
        }
        SharedPreferences sharedPreferences = this.f;
        Boolean valueOf = Boolean.valueOf(z);
        try {
            valueOf = (Boolean) com.google.android.gms.internal.flags.zzd.a(new zza(sharedPreferences, str, valueOf));
        } catch (Exception e) {
            String valueOf2 = String.valueOf(e.getMessage());
            if (valueOf2.length() != 0) {
                str2 = "Flag value not available, returning default: ".concat(valueOf2);
            } else {
                str2 = new String("Flag value not available, returning default: ");
            }
            Log.w("FlagDataUtils", str2);
        }
        return valueOf.booleanValue();
    }

    @Override // com.google.android.gms.flags.zze
    public int getIntFlagValue(@NonNull String str, int i, int i2) {
        String str2;
        if (!this.f3818c) {
            return i;
        }
        SharedPreferences sharedPreferences = this.f;
        Integer valueOf = Integer.valueOf(i);
        try {
            valueOf = (Integer) com.google.android.gms.internal.flags.zzd.a(new zzb(sharedPreferences, str, valueOf));
        } catch (Exception e) {
            String valueOf2 = String.valueOf(e.getMessage());
            if (valueOf2.length() != 0) {
                str2 = "Flag value not available, returning default: ".concat(valueOf2);
            } else {
                str2 = new String("Flag value not available, returning default: ");
            }
            Log.w("FlagDataUtils", str2);
        }
        return valueOf.intValue();
    }

    @Override // com.google.android.gms.flags.zze
    public long getLongFlagValue(@NonNull String str, long j, int i) {
        String str2;
        if (!this.f3818c) {
            return j;
        }
        SharedPreferences sharedPreferences = this.f;
        Long valueOf = Long.valueOf(j);
        try {
            valueOf = (Long) com.google.android.gms.internal.flags.zzd.a(new zzc(sharedPreferences, str, valueOf));
        } catch (Exception e) {
            String valueOf2 = String.valueOf(e.getMessage());
            if (valueOf2.length() != 0) {
                str2 = "Flag value not available, returning default: ".concat(valueOf2);
            } else {
                str2 = new String("Flag value not available, returning default: ");
            }
            Log.w("FlagDataUtils", str2);
        }
        return valueOf.longValue();
    }

    @Override // com.google.android.gms.flags.zze
    @NonNull
    public String getStringFlagValue(@NonNull String str, @NonNull String str2, int i) {
        String str3;
        if (!this.f3818c) {
            return str2;
        }
        try {
            return (String) com.google.android.gms.internal.flags.zzd.a(new zzd(this.f, str, str2));
        } catch (Exception e) {
            String valueOf = String.valueOf(e.getMessage());
            if (valueOf.length() != 0) {
                str3 = "Flag value not available, returning default: ".concat(valueOf);
            } else {
                str3 = new String("Flag value not available, returning default: ");
            }
            Log.w("FlagDataUtils", str3);
            return str2;
        }
    }

    @Override // com.google.android.gms.flags.zze
    public void init(@NonNull IObjectWrapper iObjectWrapper) {
        String str;
        Context context = (Context) ObjectWrapper.f2(iObjectWrapper);
        if (!this.f3818c) {
            try {
                this.f = zzf.a(context.createPackageContext("com.google.android.gms", 0));
                this.f3818c = true;
            } catch (PackageManager.NameNotFoundException unused) {
            } catch (Exception e) {
                String valueOf = String.valueOf(e.getMessage());
                if (valueOf.length() != 0) {
                    str = "Could not retrieve sdk flags, continuing with defaults: ".concat(valueOf);
                } else {
                    str = new String("Could not retrieve sdk flags, continuing with defaults: ");
                }
                Log.w("FlagProviderImpl", str);
            }
        }
    }
}
