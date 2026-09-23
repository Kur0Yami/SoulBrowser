package com.google.android.gms.internal.ads;

import java.util.concurrent.ThreadFactory;

/* loaded from: classes.dex */
final /* synthetic */ class zzfh implements ThreadFactory {
    @Override // java.util.concurrent.ThreadFactory
    public final /* synthetic */ Thread newThread(Runnable runnable) {
        String str = zzfj.f7405a;
        return new Thread(runnable, "ExoPlayer:AudioTrackReleaseThread");
    }
}
