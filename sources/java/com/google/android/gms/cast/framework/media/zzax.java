package com.google.android.gms.cast.framework.media;

import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.tasks.OnFailureListener;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzax implements com.google.android.gms.cast.internal.zzas {

    /* renamed from: a, reason: collision with root package name */
    public com.google.android.gms.cast.zzq f3561a;
    public final AtomicLong b = new AtomicLong((CastUtils.b.nextLong() & 65535) * 10000);

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ RemoteMediaClient f3562c;

    public zzax(RemoteMediaClient remoteMediaClient) {
        this.f3562c = remoteMediaClient;
    }

    @Override // com.google.android.gms.cast.internal.zzas
    public final void a(final long j, String str, String str2) {
        com.google.android.gms.cast.zzq zzqVar = this.f3561a;
        if (zzqVar != null) {
            zzqVar.d(str, str2).e(new OnFailureListener() { // from class: com.google.android.gms.cast.framework.media.zzaw
                @Override // com.google.android.gms.tasks.OnFailureListener
                public final void c(Exception exc) {
                    int i;
                    if (exc instanceof ApiException) {
                        i = ((ApiException) exc).getStatusCode();
                    } else {
                        i = 13;
                    }
                    Iterator it = zzax.this.f3562c.f3506c.d.iterator();
                    while (it.hasNext()) {
                        ((com.google.android.gms.cast.internal.zzav) it.next()).d(j, i, null);
                    }
                }
            });
            return;
        }
        throw new IllegalStateException("Device is not connected");
    }

    @Override // com.google.android.gms.cast.internal.zzas
    public final long zzc() {
        return this.b.getAndIncrement();
    }
}
