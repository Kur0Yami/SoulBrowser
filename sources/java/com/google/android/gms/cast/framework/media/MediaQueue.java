package com.google.android.gms.cast.framework.media;

import android.os.Looper;
import android.util.Log;
import android.util.LruCache;
import android.util.SparseIntArray;
import androidx.annotation.MainThread;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.cast.zzfk;
import j$.util.DesugarCollections;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.TimerTask;

@MainThread
/* loaded from: classes.dex */
public class MediaQueue {
    public long b;

    /* renamed from: c, reason: collision with root package name */
    public final RemoteMediaClient f3500c;
    public ArrayList d;
    public final SparseIntArray e;
    public final LruCache f;
    public final ArrayList g;
    public final ArrayDeque h;
    public final zzfk i;
    public final TimerTask j;
    public BasePendingResult k;
    public BasePendingResult l;
    public final Set m = DesugarCollections.synchronizedSet(new HashSet());

    /* renamed from: a, reason: collision with root package name */
    public final Logger f3499a = new Logger("MediaQueue", null);

    public MediaQueue(RemoteMediaClient remoteMediaClient) {
        this.f3500c = remoteMediaClient;
        Math.max(20, 1);
        this.d = new ArrayList();
        this.e = new SparseIntArray();
        this.g = new ArrayList();
        this.h = new ArrayDeque(20);
        this.i = new zzfk(Looper.getMainLooper());
        this.j = new zzj(this);
        remoteMediaClient.u(new zzn(this));
        this.f = new zzk(this);
        this.b = e();
        b();
    }

    public final void a() {
        f();
        this.d.clear();
        this.e.clear();
        this.f.evictAll();
        this.g.clear();
        this.i.removeCallbacks(this.j);
        this.h.clear();
        BasePendingResult basePendingResult = this.l;
        if (basePendingResult != null) {
            basePendingResult.cancel();
            this.l = null;
        }
        BasePendingResult basePendingResult2 = this.k;
        if (basePendingResult2 != null) {
            basePendingResult2.cancel();
            this.k = null;
        }
        h();
        g();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [com.google.android.gms.common.api.PendingResult] */
    public final void b() {
        BasePendingResult basePendingResult;
        zzak zzakVar;
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (this.b != 0 && (basePendingResult = this.l) == null) {
            if (basePendingResult != null) {
                basePendingResult.cancel();
                this.l = null;
            }
            BasePendingResult basePendingResult2 = this.k;
            if (basePendingResult2 != null) {
                basePendingResult2.cancel();
                this.k = null;
            }
            RemoteMediaClient remoteMediaClient = this.f3500c;
            remoteMediaClient.getClass();
            Preconditions.checkMainThread("Must be called from the main thread.");
            if (!remoteMediaClient.J()) {
                zzakVar = RemoteMediaClient.I();
            } else {
                zzak zzakVar2 = new zzak(remoteMediaClient);
                RemoteMediaClient.L(zzakVar2);
                zzakVar = zzakVar2;
            }
            this.l = zzakVar;
            zzakVar.setResultCallback(new ResultCallback() { // from class: com.google.android.gms.cast.framework.media.zzm
                @Override // com.google.android.gms.common.api.ResultCallback
                public final void onResult(Result result) {
                    Status status = ((RemoteMediaClient.MediaChannelResult) result).getStatus();
                    int statusCode = status.getStatusCode();
                    MediaQueue mediaQueue = MediaQueue.this;
                    if (statusCode != 0) {
                        Logger logger = mediaQueue.f3499a;
                        Log.w(logger.f3604a, logger.d("Error fetching queue item ids, statusCode=" + statusCode + ", statusMessage=" + status.getStatusMessage(), new Object[0]));
                    }
                    mediaQueue.l = null;
                    if (!mediaQueue.h.isEmpty()) {
                        zzfk zzfkVar = mediaQueue.i;
                        TimerTask timerTask = mediaQueue.j;
                        zzfkVar.removeCallbacks(timerTask);
                        zzfkVar.postDelayed(timerTask, 500L);
                    }
                }
            });
        }
    }

    public final /* synthetic */ void c() {
        SparseIntArray sparseIntArray = this.e;
        sparseIntArray.clear();
        for (int i = 0; i < this.d.size(); i++) {
            sparseIntArray.put(((Integer) this.d.get(i)).intValue(), i);
        }
    }

    public final void d(int[] iArr) {
        Set set = this.m;
        synchronized (set) {
            try {
                Iterator it = set.iterator();
                while (it.hasNext()) {
                    ((Callback) it.next()).e(iArr);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final long e() {
        int i;
        MediaStatus g = this.f3500c.g();
        if (g != null) {
            MediaInfo mediaInfo = g.f3455c;
            if (mediaInfo == null) {
                i = -1;
            } else {
                i = mediaInfo.f;
            }
            int i2 = g.i;
            int i3 = g.j;
            int i4 = g.p;
            if (i2 == 1) {
                if (i3 != 1) {
                    if (i3 != 2) {
                        if (i3 != 3) {
                            return 0L;
                        }
                    } else if (i != 2) {
                        return 0L;
                    }
                }
                if (i4 == 0) {
                    return 0L;
                }
            }
            return g.f;
        }
        return 0L;
    }

    public final void f() {
        Set set = this.m;
        synchronized (set) {
            try {
                Iterator it = set.iterator();
                while (it.hasNext()) {
                    ((Callback) it.next()).getClass();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void g() {
        Set set = this.m;
        synchronized (set) {
            try {
                Iterator it = set.iterator();
                while (it.hasNext()) {
                    ((Callback) it.next()).f();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void h() {
        Set set = this.m;
        synchronized (set) {
            try {
                Iterator it = set.iterator();
                while (it.hasNext()) {
                    ((Callback) it.next()).b();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* loaded from: classes.dex */
    public static abstract class Callback {
        public void b() {
        }

        public void c(int[] iArr) {
        }

        public void e(int[] iArr) {
        }

        public void f() {
        }

        public void a() {
        }

        public void d() {
        }
    }
}
