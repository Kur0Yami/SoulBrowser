package com.google.android.gms.cast;

import android.annotation.SuppressLint;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.common.api.Result;

@SuppressLint({"MissingRemoteException"})
@Deprecated
/* loaded from: classes.dex */
public class RemoteMediaPlayer implements Cast.MessageReceivedCallback {

    @Deprecated
    /* loaded from: classes.dex */
    public interface MediaChannelResult extends Result {
    }

    @Deprecated
    /* loaded from: classes.dex */
    public interface OnMetadataUpdatedListener {
    }

    @Deprecated
    /* loaded from: classes.dex */
    public interface OnPreloadStatusUpdatedListener {
    }

    @Deprecated
    /* loaded from: classes.dex */
    public interface OnQueueStatusUpdatedListener {
    }

    @Deprecated
    /* loaded from: classes.dex */
    public interface OnStatusUpdatedListener {
    }

    static {
        String str = com.google.android.gms.cast.internal.zzar.x;
    }

    @Override // com.google.android.gms.cast.Cast.MessageReceivedCallback
    public final void a(String str) {
        throw null;
    }
}
