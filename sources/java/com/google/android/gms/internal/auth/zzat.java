package com.google.android.gms.internal.auth;

import android.os.IInterface;
import com.google.android.gms.auth.api.accounttransfer.DeviceMetaData;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
public interface zzat extends IInterface {
    void P(Status status);

    void W(DeviceMetaData deviceMetaData);

    void W1(byte[] bArr);

    void zze();
}
