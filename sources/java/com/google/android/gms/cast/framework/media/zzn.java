package com.google.android.gms.cast.framework.media;

import android.util.Log;
import android.util.SparseIntArray;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.cast.MediaQueueItem;
import com.google.android.gms.cast.framework.media.MediaQueue;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.cast.internal.Logger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

@VisibleForTesting
/* loaded from: classes.dex */
public final class zzn extends RemoteMediaClient.Callback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MediaQueue f3582a;

    public zzn(MediaQueue mediaQueue) {
        this.f3582a = mediaQueue;
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Callback
    public final void e() {
        MediaQueue mediaQueue = this.f3582a;
        long e = mediaQueue.e();
        if (e != mediaQueue.b) {
            mediaQueue.b = e;
            mediaQueue.a();
            if (mediaQueue.b != 0) {
                mediaQueue.b();
            }
        }
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Callback
    public final void g(int[] iArr) {
        ArrayList e = CastUtils.e(iArr);
        MediaQueue mediaQueue = this.f3582a;
        if (mediaQueue.d.equals(e)) {
            return;
        }
        mediaQueue.f();
        mediaQueue.f.evictAll();
        mediaQueue.g.clear();
        mediaQueue.d = e;
        mediaQueue.c();
        mediaQueue.h();
        mediaQueue.g();
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Callback
    public final void h(int i, int[] iArr) {
        int i2;
        if (i == 0) {
            i2 = this.f3582a.d.size();
        } else {
            MediaQueue mediaQueue = this.f3582a;
            i2 = mediaQueue.e.get(i, -1);
            if (i2 == -1) {
                mediaQueue.b();
                return;
            }
        }
        MediaQueue mediaQueue2 = this.f3582a;
        mediaQueue2.f();
        mediaQueue2.d.addAll(i2, CastUtils.e(iArr));
        mediaQueue2.c();
        Set set = mediaQueue2.m;
        synchronized (set) {
            try {
                Iterator it = set.iterator();
                while (it.hasNext()) {
                    ((MediaQueue.Callback) it.next()).a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        mediaQueue2.g();
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Callback
    public final void i(int[] iArr) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (true) {
            int length = iArr.length;
            MediaQueue mediaQueue = this.f3582a;
            if (i < length) {
                int i2 = iArr[i];
                mediaQueue.f.remove(Integer.valueOf(i2));
                int i3 = mediaQueue.e.get(i2, -1);
                if (i3 == -1) {
                    mediaQueue.b();
                    return;
                } else {
                    arrayList.add(Integer.valueOf(i3));
                    i++;
                }
            } else {
                Collections.sort(arrayList);
                mediaQueue.f();
                mediaQueue.d(CastUtils.d(arrayList));
                mediaQueue.g();
                return;
            }
        }
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Callback
    public final void j(int[] iArr) {
        ArrayList arrayList = new ArrayList();
        for (int i : iArr) {
            MediaQueue mediaQueue = this.f3582a;
            mediaQueue.f.remove(Integer.valueOf(i));
            SparseIntArray sparseIntArray = mediaQueue.e;
            int i2 = sparseIntArray.get(i, -1);
            if (i2 == -1) {
                mediaQueue.b();
                return;
            } else {
                sparseIntArray.delete(i);
                arrayList.add(Integer.valueOf(i2));
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        Collections.sort(arrayList);
        MediaQueue mediaQueue2 = this.f3582a;
        mediaQueue2.f();
        mediaQueue2.d.removeAll(CastUtils.e(iArr));
        mediaQueue2.c();
        int[] d = CastUtils.d(arrayList);
        Set set = mediaQueue2.m;
        synchronized (set) {
            try {
                Iterator it = set.iterator();
                while (it.hasNext()) {
                    ((MediaQueue.Callback) it.next()).c(d);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        mediaQueue2.g();
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Callback
    public final void k(MediaQueueItem[] mediaQueueItemArr) {
        HashSet hashSet = new HashSet();
        MediaQueue mediaQueue = this.f3582a;
        ArrayList arrayList = mediaQueue.g;
        SparseIntArray sparseIntArray = mediaQueue.e;
        arrayList.clear();
        int i = 0;
        for (MediaQueueItem mediaQueueItem : mediaQueueItemArr) {
            int i2 = mediaQueueItem.f;
            mediaQueue.f.put(Integer.valueOf(i2), mediaQueueItem);
            int i3 = sparseIntArray.get(i2, -1);
            if (i3 == -1) {
                mediaQueue.b();
                return;
            }
            hashSet.add(Integer.valueOf(i3));
        }
        int size = arrayList.size();
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            int i4 = sparseIntArray.get(((Integer) obj).intValue(), -1);
            if (i4 != -1) {
                hashSet.add(Integer.valueOf(i4));
            }
        }
        arrayList.clear();
        ArrayList arrayList2 = new ArrayList(hashSet);
        Collections.sort(arrayList2);
        mediaQueue.f();
        mediaQueue.d(CastUtils.d(arrayList2));
        mediaQueue.g();
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Callback
    public final void l(ArrayList arrayList, ArrayList arrayList2, int i) {
        ArrayList arrayList3 = new ArrayList();
        int i2 = 0;
        if (i == 0) {
            this.f3582a.d.size();
        } else if (arrayList2.isEmpty()) {
            Logger logger = this.f3582a.f3499a;
            Log.w(logger.f3604a, logger.d("Received a Queue Reordered message with an empty reordered items IDs list.", new Object[0]));
        } else {
            SparseIntArray sparseIntArray = this.f3582a.e;
            if (sparseIntArray.get(i, -1) == -1) {
                sparseIntArray.get(((Integer) arrayList2.get(0)).intValue(), -1);
            }
        }
        int size = arrayList2.size();
        while (i2 < size) {
            Object obj = arrayList2.get(i2);
            i2++;
            int intValue = ((Integer) obj).intValue();
            MediaQueue mediaQueue = this.f3582a;
            int i3 = mediaQueue.e.get(intValue, -1);
            if (i3 == -1) {
                mediaQueue.b();
                return;
            }
            arrayList3.add(Integer.valueOf(i3));
        }
        MediaQueue mediaQueue2 = this.f3582a;
        mediaQueue2.f();
        mediaQueue2.d = arrayList;
        mediaQueue2.c();
        Set set = mediaQueue2.m;
        synchronized (set) {
            try {
                Iterator it = set.iterator();
                while (it.hasNext()) {
                    ((MediaQueue.Callback) it.next()).d();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        mediaQueue2.g();
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Callback
    public final void m() {
        this.f3582a.b();
    }
}
