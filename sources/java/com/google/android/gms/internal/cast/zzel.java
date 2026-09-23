package com.google.android.gms.internal.cast;

import com.google.android.gms.common.api.ApiMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzel extends zzfa {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzet f9684c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzel(zzet zzetVar) {
        super("com.google.android.gms.cast.remote_display.ICastRemoteDisplaySessionCallbacks");
        this.f9684c = zzetVar;
    }

    @Override // com.google.android.gms.internal.cast.zzfb
    public final void D2(int i, ApiMetadata apiMetadata) {
        zzet.b.b("onRemoteDisplayEnded", new Object[0]);
        this.f9684c.getClass();
    }
}
