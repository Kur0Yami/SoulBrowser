package com.google.android.gms.internal.ads;

import android.hardware.display.DisplayManager;
import android.view.Choreographer;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class zzacp implements DisplayManager.DisplayListener {

    /* renamed from: a, reason: collision with root package name */
    public final Choreographer f3905a;
    public final DisplayManager b;

    /* renamed from: c, reason: collision with root package name */
    public volatile long f3906c = -9223372036854775807L;
    public volatile long d = -9223372036854775807L;

    public /* synthetic */ zzacp(Choreographer choreographer, DisplayManager displayManager) {
        this.f3905a = choreographer;
        this.b = displayManager;
    }

    public void a() {
        this.b.registerDisplayListener(this, zzfj.n());
    }

    public void b() {
        throw null;
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayAdded(int i) {
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayRemoved(int i) {
    }
}
