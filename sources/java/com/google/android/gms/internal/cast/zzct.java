package com.google.android.gms.internal.cast;

import com.google.android.gms.cast.AdBreakClipInfo;
import com.google.android.gms.cast.AdBreakInfo;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;
import com.google.android.gms.cast.framework.media.widget.CastSeekBar;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class zzct extends UIController implements RemoteMediaClient.ProgressListener {
    public final CastSeekBar b;

    /* renamed from: c, reason: collision with root package name */
    public final com.google.android.gms.cast.framework.media.uicontroller.zza f9663c;

    public zzct(CastSeekBar castSeekBar, com.google.android.gms.cast.framework.media.uicontroller.zza zzaVar) {
        this.b = castSeekBar;
        this.f9663c = zzaVar;
        castSeekBar.setEnabled(false);
        castSeekBar.a(null);
        castSeekBar.h = null;
        castSeekBar.postInvalidate();
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.ProgressListener
    public final void a(long j, long j2) {
        h();
        g();
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void b() {
        f();
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void d(CastSession castSession) {
        super.d(castSession);
        RemoteMediaClient remoteMediaClient = this.f3529a;
        if (remoteMediaClient != null) {
            remoteMediaClient.b(this, 1000L);
        }
        f();
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void e() {
        RemoteMediaClient remoteMediaClient = this.f3529a;
        if (remoteMediaClient != null) {
            remoteMediaClient.v(this);
        }
        this.f3529a = null;
        f();
    }

    public final void f() {
        MediaInfo f;
        List<AdBreakInfo> unmodifiableList;
        int min;
        h();
        RemoteMediaClient remoteMediaClient = this.f3529a;
        ArrayList arrayList = null;
        if (remoteMediaClient == null) {
            f = null;
        } else {
            f = remoteMediaClient.f();
        }
        CastSeekBar castSeekBar = this.b;
        if (remoteMediaClient != null && remoteMediaClient.j() && !remoteMediaClient.m() && f != null) {
            List list = f.m;
            if (list == null) {
                unmodifiableList = null;
            } else {
                unmodifiableList = DesugarCollections.unmodifiableList(list);
            }
            if (unmodifiableList != null) {
                arrayList = new ArrayList();
                for (AdBreakInfo adBreakInfo : unmodifiableList) {
                    if (adBreakInfo != null) {
                        long j = adBreakInfo.f3425c;
                        com.google.android.gms.cast.framework.media.uicontroller.zza zzaVar = this.f9663c;
                        if (j == -1000) {
                            min = zzaVar.a();
                        } else {
                            min = Math.min((int) (j - zzaVar.f()), zzaVar.a());
                        }
                        if (min >= 0) {
                            arrayList.add(new com.google.android.gms.cast.framework.media.widget.zza(min, (int) adBreakInfo.g, adBreakInfo.k));
                        }
                    }
                }
            }
            castSeekBar.a(arrayList);
        } else {
            castSeekBar.a(null);
        }
        g();
    }

    public final void g() {
        int i;
        RemoteMediaClient remoteMediaClient = this.f3529a;
        CastSeekBar castSeekBar = this.b;
        AdBreakClipInfo adBreakClipInfo = null;
        if (remoteMediaClient != null && remoteMediaClient.p()) {
            int c2 = (int) remoteMediaClient.c();
            MediaStatus g = remoteMediaClient.g();
            if (g != null) {
                adBreakClipInfo = g.F();
            }
            if (adBreakClipInfo != null) {
                i = (int) adBreakClipInfo.g;
            } else {
                i = c2;
            }
            if (c2 < 0) {
                c2 = 0;
            }
            if (i < 0) {
                i = 1;
            }
            if (c2 > i) {
                i = c2;
            }
            castSeekBar.h = new com.google.android.gms.cast.framework.media.widget.zzb(c2, i);
            castSeekBar.postInvalidate();
            return;
        }
        castSeekBar.h = null;
        castSeekBar.postInvalidate();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, com.google.android.gms.cast.framework.media.widget.zze] */
    /* JADX WARN: Type inference failed for: r4v5, types: [java.lang.Object, com.google.android.gms.cast.framework.media.widget.zze] */
    public final void h() {
        int b;
        int b2;
        RemoteMediaClient remoteMediaClient = this.f3529a;
        boolean z = true;
        CastSeekBar castSeekBar = this.b;
        if (remoteMediaClient != null && remoteMediaClient.j() && !remoteMediaClient.p()) {
            castSeekBar.setEnabled(true);
        } else {
            castSeekBar.setEnabled(false);
        }
        ?? obj = new Object();
        com.google.android.gms.cast.framework.media.uicontroller.zza zzaVar = this.f9663c;
        obj.f3548a = zzaVar.b();
        obj.b = zzaVar.a();
        obj.f3549c = (int) (-zzaVar.f());
        RemoteMediaClient remoteMediaClient2 = this.f3529a;
        if (remoteMediaClient2 != null && remoteMediaClient2.j() && remoteMediaClient2.E()) {
            b = zzaVar.d();
        } else {
            b = zzaVar.b();
        }
        obj.d = b;
        RemoteMediaClient remoteMediaClient3 = this.f3529a;
        if (remoteMediaClient3 != null && remoteMediaClient3.j() && remoteMediaClient3.E()) {
            b2 = zzaVar.e();
        } else {
            b2 = zzaVar.b();
        }
        obj.e = b2;
        RemoteMediaClient remoteMediaClient4 = this.f3529a;
        if (remoteMediaClient4 == null || !remoteMediaClient4.j() || !remoteMediaClient4.E()) {
            z = false;
        }
        obj.f = z;
        if (!castSeekBar.f) {
            ?? obj2 = new Object();
            obj2.f3548a = obj.f3548a;
            obj2.b = obj.b;
            obj2.f3549c = obj.f3549c;
            obj2.d = obj.d;
            obj2.e = obj.e;
            obj2.f = z;
            castSeekBar.f3542c = obj2;
            castSeekBar.g = null;
            com.google.android.gms.cast.framework.media.widget.zzd zzdVar = castSeekBar.j;
            if (zzdVar != null) {
                zzdVar.c(castSeekBar.getProgress(), false);
            }
            castSeekBar.postInvalidate();
        }
    }
}
