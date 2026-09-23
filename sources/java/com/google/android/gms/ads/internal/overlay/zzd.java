package com.google.android.gms.ads.internal.overlay;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzd implements View.OnClickListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzm f3055c;

    public zzd(zzm zzmVar) {
        this.f3055c = zzmVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        zzm zzmVar = this.f3055c;
        zzmVar.z = 2;
        zzmVar.f3061c.finish();
    }
}
