package com.google.android.gms.common.api.internal;

import j$.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zaat implements com.google.android.gms.common.internal.zaj {
    final /* synthetic */ zaaz zaa;

    public zaat(zaaz zaazVar) {
        Objects.requireNonNull(zaazVar);
        this.zaa = zaazVar;
    }

    @Override // com.google.android.gms.common.internal.zaj
    public final boolean isConnected() {
        return this.zaa.isConnected();
    }
}
