package com.google.android.gms.cast.framework.media;

import android.util.Log;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.cast.zzfk;
import java.util.ArrayDeque;
import java.util.TimerTask;

/* loaded from: classes.dex */
final class zzj extends TimerTask {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MediaQueue f3578c;

    public zzj(MediaQueue mediaQueue) {
        this.f3578c = mediaQueue;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        PendingResult pendingResult;
        final MediaQueue mediaQueue = this.f3578c;
        ArrayDeque arrayDeque = mediaQueue.h;
        if (!arrayDeque.isEmpty() && mediaQueue.k == null && mediaQueue.b != 0) {
            RemoteMediaClient remoteMediaClient = mediaQueue.f3500c;
            int[] d = CastUtils.d(arrayDeque);
            remoteMediaClient.getClass();
            Preconditions.checkMainThread("Must be called from the main thread.");
            if (!remoteMediaClient.J()) {
                pendingResult = RemoteMediaClient.I();
            } else {
                zzal zzalVar = new zzal(remoteMediaClient, d);
                RemoteMediaClient.L(zzalVar);
                pendingResult = zzalVar;
            }
            mediaQueue.k = (BasePendingResult) pendingResult;
            pendingResult.setResultCallback(new ResultCallback() { // from class: com.google.android.gms.cast.framework.media.zzl
                @Override // com.google.android.gms.common.api.ResultCallback
                public final void onResult(Result result) {
                    MediaQueue mediaQueue2 = MediaQueue.this;
                    mediaQueue2.getClass();
                    Status status = ((RemoteMediaClient.MediaChannelResult) result).getStatus();
                    int statusCode = status.getStatusCode();
                    if (statusCode != 0) {
                        Logger logger = mediaQueue2.f3499a;
                        Log.w(logger.f3604a, logger.d("Error fetching queue items, statusCode=" + statusCode + ", statusMessage=" + status.getStatusMessage(), new Object[0]));
                    }
                    mediaQueue2.k = null;
                    if (!mediaQueue2.h.isEmpty()) {
                        zzfk zzfkVar = mediaQueue2.i;
                        TimerTask timerTask = mediaQueue2.j;
                        zzfkVar.removeCallbacks(timerTask);
                        zzfkVar.postDelayed(timerTask, 500L);
                    }
                }
            });
            arrayDeque.clear();
        }
    }
}
