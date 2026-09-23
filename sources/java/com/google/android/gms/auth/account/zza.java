package com.google.android.gms.auth.account;

import android.accounts.Account;
import android.os.Parcel;

/* loaded from: classes.dex */
public abstract class zza extends com.google.android.gms.internal.auth.zzb implements zzb {
    @Override // com.google.android.gms.internal.auth.zzb
    public final boolean I1(int i, Parcel parcel, Parcel parcel2) {
        if (i != 1) {
            boolean z = false;
            if (i != 2) {
                return false;
            }
            int i2 = com.google.android.gms.internal.auth.zzc.f9500a;
            int readInt = parcel.readInt();
            com.google.android.gms.internal.auth.zzc.b(parcel);
            if (readInt != 0) {
                z = true;
            }
            n2(z);
            return true;
        }
        Account account = (Account) com.google.android.gms.internal.auth.zzc.a(parcel, Account.CREATOR);
        com.google.android.gms.internal.auth.zzc.b(parcel);
        q4(account);
        return true;
    }
}
