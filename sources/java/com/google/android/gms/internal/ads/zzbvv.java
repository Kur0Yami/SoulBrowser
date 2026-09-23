package com.google.android.gms.internal.ads;

import android.view.View;
import j$.util.Objects;

/* loaded from: classes.dex */
final class zzbvv implements View.OnClickListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzbvx f4933c;

    public zzbvv(zzbvx zzbvxVar) {
        Objects.requireNonNull(zzbvxVar);
        this.f4933c = zzbvxVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f4933c.f(true);
    }
}
