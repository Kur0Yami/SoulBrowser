package com.google.android.gms.internal.cast;

import java.util.concurrent.locks.AbstractOwnableSynchronizer;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzwk extends AbstractOwnableSynchronizer implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final zzwm f9860c;

    public /* synthetic */ zzwk(zzwv zzwvVar) {
        this.f9860c = zzwvVar;
    }

    public final /* synthetic */ void a(Thread thread) {
        setExclusiveOwnerThread(thread);
    }

    @Override // java.lang.Runnable
    public final void run() {
    }

    public final String toString() {
        return this.f9860c.toString();
    }
}
