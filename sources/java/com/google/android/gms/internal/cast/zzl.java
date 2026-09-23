package com.google.android.gms.internal.cast;

import android.util.Log;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.Session;
import com.google.android.gms.cast.framework.SessionManagerListener;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.internal.Preconditions;

@VisibleForTesting
/* loaded from: classes.dex */
public final class zzl implements SessionManagerListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzn f9757a;

    public zzl(zzn zznVar) {
        this.f9757a = zznVar;
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final void d(Session session, int i) {
        Logger logger = zzn.j;
        zzn.j.b("onSessionSuspended with reason = %d", Integer.valueOf(i));
        zzn zznVar = this.f9757a;
        zznVar.h = (CastSession) session;
        zznVar.e();
        Preconditions.checkNotNull(zznVar.g);
        zznVar.f9786a.b(225, zznVar.f9787c.a(zznVar.g, i));
        zznVar.a();
        zznVar.e.removeCallbacks(zznVar.d);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x00f0  */
    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void e(com.google.android.gms.cast.framework.Session r11, java.lang.String r12) {
        /*
            Method dump skipped, instructions count: 415
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.cast.zzl.e(com.google.android.gms.cast.framework.Session, java.lang.String):void");
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* synthetic */ void f(Session session, int i) {
        zzn zznVar = this.f9757a;
        zznVar.h = (CastSession) session;
        zznVar.b(i);
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final void h(Session session, String str) {
        zzn.j.b("onSessionStarted with sessionId = %s", str);
        zzn zznVar = this.f9757a;
        zznVar.h = (CastSession) session;
        zznVar.e();
        zzo zzoVar = zznVar.g;
        zzoVar.f = str;
        zznVar.f9786a.b(222, (zzqr) zznVar.f9787c.b(zzoVar).e());
        zznVar.a();
        zznVar.c();
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* synthetic */ void j(Session session, int i) {
        zzn zznVar = this.f9757a;
        zznVar.h = (CastSession) session;
        zznVar.b(i);
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final void k(Session session, boolean z) {
        Logger logger = zzn.j;
        zzn.j.b("onSessionResumed with wasSuspended = %b", Boolean.valueOf(z));
        zzn zznVar = this.f9757a;
        zznVar.h = (CastSession) session;
        zznVar.e();
        Preconditions.checkNotNull(zznVar.g);
        zzp zzpVar = zznVar.f9787c;
        zzo zzoVar = zznVar.g;
        zzj zzjVar = zznVar.f9786a;
        zzqq b = zzpVar.b(zzoVar);
        zzqf o = zzqg.o(b.f());
        o.c();
        ((zzqg) o.f).r(z);
        b.c();
        ((zzqr) b.f).x((zzqg) o.e());
        zzjVar.b(227, (zzqr) b.e());
        zznVar.a();
        zznVar.c();
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* synthetic */ void m(Session session, int i) {
        zzn zznVar = this.f9757a;
        zznVar.h = (CastSession) session;
        zznVar.b(i);
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final void n(Session session) {
        Logger logger = zzn.j;
        logger.b("onSessionStarting", new Object[0]);
        zzn zznVar = this.f9757a;
        zznVar.h = (CastSession) session;
        if (zznVar.g != null) {
            Log.w(logger.f3604a, logger.d("Start a session while there's already an active session. Create a new one.", new Object[0]));
        }
        zznVar.d();
        zzo zzoVar = zznVar.g;
        zzp zzpVar = zznVar.f9787c;
        zzj zzjVar = zznVar.f9786a;
        zzqq b = zzpVar.b(zzoVar);
        if (zzoVar.p == 1) {
            zzqf o = zzqg.o(b.f());
            o.c();
            ((zzqg) o.f).t(17);
            b.g((zzqg) o.e());
        }
        zzjVar.b(221, (zzqr) b.e());
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* synthetic */ void o(Session session) {
        this.f9757a.h = (CastSession) session;
    }
}
