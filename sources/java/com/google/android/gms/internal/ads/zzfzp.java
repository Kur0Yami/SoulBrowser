package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.tasks.Task;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzfzp extends zzgxf {
    public Task l;

    @Override // com.google.android.gms.internal.ads.zzgxf
    public final void e() {
        this.l = null;
    }

    @Override // com.google.android.gms.internal.ads.zzgxf
    public final String f() {
        Task task = this.l;
        if (task == null) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        return task.toString();
    }
}
