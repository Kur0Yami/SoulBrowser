package com.google.android.gms.internal.ads;

import android.webkit.WebView;

/* loaded from: classes.dex */
final class zzfsy implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final WebView f7637c;

    public zzfsy(zzfsz zzfszVar) {
        this.f7637c = zzfszVar.e;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f7637c.destroy();
    }
}
