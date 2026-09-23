package com.google.android.gms.internal.cast;

import android.annotation.TargetApi;
import android.view.Choreographer;

@TargetApi(16)
/* loaded from: classes.dex */
final class zzgv extends zzgw {
    public final Choreographer b = Choreographer.getInstance();

    @Override // com.google.android.gms.internal.cast.zzgw
    public final void a(final zzgt zzgtVar) {
        if (zzgtVar.b == null) {
            zzgtVar.b = new Choreographer.FrameCallback() { // from class: com.google.android.gms.internal.cast.zzgs
                @Override // android.view.Choreographer.FrameCallback
                public final /* synthetic */ void doFrame(long j) {
                    zzgt.this.a();
                }
            };
        }
        this.b.postFrameCallback(zzgtVar.b);
    }
}
