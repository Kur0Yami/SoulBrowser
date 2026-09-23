package com.google.android.gms.ads.internal.offline.buffering;

import android.content.Context;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.work.Data;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.internal.ads.zzbsv;
import com.google.android.gms.internal.ads.zzbwr;

@KeepForSdk
/* loaded from: classes.dex */
public class OfflinePingSender extends Worker {
    public final zzbwr k;

    public OfflinePingSender(@NonNull Context context, @NonNull WorkerParameters workerParameters) {
        super(context, workerParameters);
        this.k = zzbb.zzb().zzk(context, new zzbsv());
    }

    @Override // androidx.work.Worker
    @NonNull
    public final ListenableWorker.Result doWork() {
        try {
            this.k.zzg();
            return new ListenableWorker.Result.Success(Data.f1833c);
        } catch (RemoteException unused) {
            return new ListenableWorker.Result.Failure();
        }
    }
}
