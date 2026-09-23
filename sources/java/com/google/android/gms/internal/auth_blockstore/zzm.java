package com.google.android.gms.internal.auth_blockstore;

import android.os.IInterface;
import com.google.android.gms.auth.blockstore.RetrieveBytesResponse;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
public interface zzm extends IInterface {
    void O3(Status status, byte[] bArr);

    void k1(Status status, RetrieveBytesResponse retrieveBytesResponse);
}
