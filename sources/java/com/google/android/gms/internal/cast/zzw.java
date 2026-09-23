package com.google.android.gms.internal.cast;

import android.text.TextUtils;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.Session;
import com.google.android.gms.cast.framework.SessionManagerListener;
import com.google.android.gms.common.internal.Preconditions;

@VisibleForTesting
/* loaded from: classes.dex */
public final class zzw implements SessionManagerListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzy f9845a;

    public zzw(zzy zzyVar) {
        this.f9845a = zzyVar;
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final void d(Session session, int i) {
        zzcr zzcrVar = new zzcr(6);
        zzcrVar.f9659a = Integer.valueOf(i);
        zzcs zzcsVar = new zzcs(zzcrVar);
        zzy zzyVar = this.f9845a;
        zzyVar.a(zzcsVar);
        ((zzaa) Preconditions.checkNotNull(zzyVar.d)).a((CastSession) session);
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final void e(Session session, String str) {
        zzcs zzcsVar = new zzcs(new zzcr(7));
        zzy zzyVar = this.f9845a;
        zzyVar.a(zzcsVar);
        ((zzaa) Preconditions.checkNotNull(zzyVar.d)).a((CastSession) session);
        zzaa zzaaVar = (zzaa) Preconditions.checkNotNull(zzyVar.d);
        String str2 = zzaaVar.k;
        if (str2 == null) {
            zzaaVar.k = str;
        } else if (!TextUtils.equals(str, str2)) {
            zzaaVar.b(4);
        }
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final void f(Session session, int i) {
        boolean z;
        zzcr zzcrVar = new zzcr(9);
        zzcrVar.f9659a = Integer.valueOf(i);
        zzy zzyVar = this.f9845a;
        if (zzyVar.b.f == 2) {
            z = true;
        } else {
            z = false;
        }
        zzcrVar.b = Boolean.valueOf(z);
        zzyVar.a(new zzcs(zzcrVar));
        zzyVar.c();
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final void h(Session session, String str) {
        zzcs zzcsVar = new zzcs(new zzcr(4));
        zzy zzyVar = this.f9845a;
        zzyVar.a(zzcsVar);
        ((zzaa) Preconditions.checkNotNull(zzyVar.d)).a((CastSession) session);
        zzaa zzaaVar = (zzaa) Preconditions.checkNotNull(zzyVar.d);
        String str2 = zzaaVar.k;
        if (str2 == null) {
            zzaaVar.k = str;
        } else if (!TextUtils.equals(str, str2)) {
            zzaaVar.b(4);
        }
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final void j(Session session, int i) {
        zzcr zzcrVar = new zzcr(5);
        zzcrVar.f9659a = Integer.valueOf(i);
        zzcs zzcsVar = new zzcs(zzcrVar);
        zzy zzyVar = this.f9845a;
        zzyVar.a(zzcsVar);
        zzyVar.c();
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* synthetic */ void k(Session session, boolean z) {
        zzcs zzcsVar = new zzcs(new zzcr(4));
        zzy zzyVar = this.f9845a;
        zzyVar.a(zzcsVar);
        ((zzaa) Preconditions.checkNotNull(zzyVar.d)).a((CastSession) session);
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final void m(Session session, int i) {
        zzcr zzcrVar = new zzcr(8);
        zzcrVar.f9659a = Integer.valueOf(i);
        zzcs zzcsVar = new zzcs(zzcrVar);
        zzy zzyVar = this.f9845a;
        zzyVar.a(zzcsVar);
        zzyVar.c();
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final void n(Session session) {
        boolean z;
        CastSession castSession = (CastSession) session;
        zzcr zzcrVar = new zzcr(2);
        zzy zzyVar = this.f9845a;
        if (zzyVar.b.f == 2) {
            z = true;
        } else {
            z = false;
        }
        zzcrVar.b = Boolean.valueOf(z);
        zzyVar.a(new zzcs(zzcrVar));
        ((zzaa) Preconditions.checkNotNull(zzyVar.d)).a(castSession);
        castSession.m = zzyVar.e;
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void o(Session session) {
    }
}
