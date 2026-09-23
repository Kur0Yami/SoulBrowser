package com.google.android.gms.auth.api.signin.internal;

import android.os.Parcel;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
public abstract class zbq extends com.google.android.gms.internal.p000authapi.zbb implements zbr {
    @Override // com.google.android.gms.internal.p000authapi.zbb
    public final boolean I1(int i, Parcel parcel, Parcel parcel2) {
        switch (i) {
            case 101:
                GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) com.google.android.gms.internal.p000authapi.zbc.a(parcel, GoogleSignInAccount.CREATOR);
                Status status = (Status) com.google.android.gms.internal.p000authapi.zbc.a(parcel, Status.CREATOR);
                com.google.android.gms.internal.p000authapi.zbc.c(parcel);
                Q0(googleSignInAccount, status);
                break;
            case 102:
                Status status2 = (Status) com.google.android.gms.internal.p000authapi.zbc.a(parcel, Status.CREATOR);
                com.google.android.gms.internal.p000authapi.zbc.c(parcel);
                M2(status2);
                break;
            case 103:
                Status status3 = (Status) com.google.android.gms.internal.p000authapi.zbc.a(parcel, Status.CREATOR);
                com.google.android.gms.internal.p000authapi.zbc.c(parcel);
                y3(status3);
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
