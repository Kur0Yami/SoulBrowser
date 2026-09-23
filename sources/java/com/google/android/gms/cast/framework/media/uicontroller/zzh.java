package com.google.android.gms.cast.framework.media.uicontroller;

import com.google.android.gms.cast.MediaSeekOptions;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.widget.CastSeekBar;
import com.google.android.gms.internal.cast.zzdr;
import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzh extends com.google.android.gms.cast.framework.media.widget.zzd {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ UIMediaController f3539a;

    public zzh(UIMediaController uIMediaController) {
        this.f3539a = uIMediaController;
    }

    /* JADX WARN: Type inference failed for: r9v2, types: [com.google.android.gms.cast.MediaSeekOptions$Builder, java.lang.Object] */
    @Override // com.google.android.gms.cast.framework.media.widget.zzd
    public final void a(CastSeekBar castSeekBar) {
        boolean z;
        UIMediaController uIMediaController = this.f3539a;
        uIMediaController.getClass();
        int progress = castSeekBar.getProgress();
        Iterator it = uIMediaController.d.iterator();
        while (true) {
            z = true;
            if (!it.hasNext()) {
                break;
            } else {
                ((zzdr) it.next()).g(true);
            }
        }
        RemoteMediaClient y = uIMediaController.y();
        if (y != null && y.j()) {
            zza zzaVar = uIMediaController.e;
            long f = zzaVar.f() + progress;
            ?? obj = new Object();
            obj.f3454a = f;
            if (!y.l() || !zzaVar.c(f)) {
                z = false;
            }
            obj.b = z;
            y.w(new MediaSeekOptions(obj.f3454a, z));
        }
    }

    @Override // com.google.android.gms.cast.framework.media.widget.zzd
    public final void b() {
        Iterator it = this.f3539a.d.iterator();
        while (it.hasNext()) {
            ((zzdr) it.next()).g(false);
        }
    }

    @Override // com.google.android.gms.cast.framework.media.widget.zzd
    public final void c(int i, boolean z) {
        UIMediaController uIMediaController = this.f3539a;
        if (z) {
            Iterator it = uIMediaController.d.iterator();
            while (it.hasNext()) {
                ((zzdr) it.next()).f(uIMediaController.e.f() + i);
            }
            return;
        }
        uIMediaController.getClass();
    }
}
