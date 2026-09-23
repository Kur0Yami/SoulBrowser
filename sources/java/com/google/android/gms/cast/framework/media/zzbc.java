package com.google.android.gms.cast.framework.media;

import androidx.annotation.VisibleForTesting;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;
import j$.util.Objects;
import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
@VisibleForTesting
/* loaded from: classes.dex */
public abstract class zzbc extends BasePendingResult {

    /* renamed from: a, reason: collision with root package name */
    public com.google.android.gms.cast.internal.zzat f3566a;
    public final boolean b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ RemoteMediaClient f3567c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbc(RemoteMediaClient remoteMediaClient, boolean z) {
        super((GoogleApiClient) null);
        Objects.requireNonNull(remoteMediaClient);
        this.f3567c = remoteMediaClient;
        this.b = z;
    }

    public abstract void a();

    public final com.google.android.gms.cast.internal.zzat b() {
        if (this.f3566a == null) {
            this.f3566a = new zzba(this);
        }
        return this.f3566a;
    }

    public final void c() {
        if (!this.b) {
            RemoteMediaClient remoteMediaClient = this.f3567c;
            Iterator it = remoteMediaClient.g.iterator();
            while (it.hasNext()) {
                ((RemoteMediaClient.Listener) it.next()).c();
            }
            Iterator it2 = remoteMediaClient.h.iterator();
            while (it2.hasNext()) {
                ((RemoteMediaClient.Callback) it2.next()).getClass();
            }
        }
        try {
            synchronized (this.f3567c.f3505a) {
                a();
            }
        } catch (com.google.android.gms.cast.internal.zzap unused) {
            setResult(new zzbb(this, new Status(2100)));
        }
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* synthetic */ Result createFailedResult(Status status) {
        return new zzbb(this, status);
    }
}
