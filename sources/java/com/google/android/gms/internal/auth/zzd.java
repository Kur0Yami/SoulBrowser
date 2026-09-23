package com.google.android.gms.internal.auth;

import android.accounts.Account;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.auth.AccountChangeEventsResponse;

/* loaded from: classes.dex */
public final class zzd extends zza implements zzf {
    @Override // com.google.android.gms.internal.auth.zzf
    public final Bundle D3(String str, Bundle bundle) {
        Parcel I1 = I1();
        I1.writeString(str);
        zzc.c(I1, bundle);
        Parcel f2 = f2(2, I1);
        Bundle bundle2 = (Bundle) zzc.a(f2, Bundle.CREATOR);
        f2.recycle();
        return bundle2;
    }

    @Override // com.google.android.gms.internal.auth.zzf
    public final Bundle n0(Account account, String str, Bundle bundle) {
        Parcel I1 = I1();
        zzc.c(I1, account);
        I1.writeString(str);
        zzc.c(I1, bundle);
        Parcel f2 = f2(5, I1);
        Bundle bundle2 = (Bundle) zzc.a(f2, Bundle.CREATOR);
        f2.recycle();
        return bundle2;
    }

    @Override // com.google.android.gms.internal.auth.zzf
    public final Bundle zzf() {
        Parcel I1 = I1();
        int i = zzc.f9500a;
        I1.writeInt(0);
        Parcel f2 = f2(7, I1);
        Bundle bundle = (Bundle) zzc.a(f2, Bundle.CREATOR);
        f2.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.auth.zzf
    public final Bundle zzg() {
        Parcel I1 = I1();
        I1.writeString(null);
        Parcel f2 = f2(8, I1);
        Bundle bundle = (Bundle) zzc.a(f2, Bundle.CREATOR);
        f2.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.auth.zzf
    public final AccountChangeEventsResponse zzh() {
        Parcel I1 = I1();
        int i = zzc.f9500a;
        I1.writeInt(0);
        Parcel f2 = f2(3, I1);
        AccountChangeEventsResponse accountChangeEventsResponse = (AccountChangeEventsResponse) zzc.a(f2, AccountChangeEventsResponse.CREATOR);
        f2.recycle();
        return accountChangeEventsResponse;
    }
}
