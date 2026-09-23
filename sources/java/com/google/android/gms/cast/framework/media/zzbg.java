package com.google.android.gms.cast.framework.media;

import java.util.HashSet;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbg {
    public final long b;
    public boolean d;
    public final /* synthetic */ RemoteMediaClient e;

    /* renamed from: a, reason: collision with root package name */
    public final HashSet f3571a = new HashSet();

    /* renamed from: c, reason: collision with root package name */
    public final Runnable f3572c = new zzbf(this);

    public zzbg(RemoteMediaClient remoteMediaClient, long j) {
        this.e = remoteMediaClient;
        this.b = j;
    }
}
