package com.google.android.gms.cast.framework.media.uicontroller;

import android.app.Activity;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.Session;
import com.google.android.gms.cast.framework.SessionManager;
import com.google.android.gms.cast.framework.SessionManagerListener;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.widget.CastSeekBar;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.cast.zzct;
import com.google.android.gms.internal.cast.zzcu;
import com.google.android.gms.internal.cast.zzcv;
import com.google.android.gms.internal.cast.zzdb;
import com.google.android.gms.internal.cast.zzdg;
import com.google.android.gms.internal.cast.zzdh;
import com.google.android.gms.internal.cast.zzdj;
import com.google.android.gms.internal.cast.zzdm;
import com.google.android.gms.internal.cast.zzdn;
import com.google.android.gms.internal.cast.zzpm;
import com.google.android.gms.internal.cast.zzr;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class UIMediaController implements RemoteMediaClient.Listener, SessionManagerListener<CastSession> {
    public static final Logger h = new Logger("UIMediaController", null);

    /* renamed from: a, reason: collision with root package name */
    public final Activity f3530a;
    public final SessionManager b;

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f3531c = new HashMap();
    public final HashSet d = new HashSet();
    public final zza e = new Object();
    public RemoteMediaClient.Listener f;
    public RemoteMediaClient g;

    /* JADX WARN: Type inference failed for: r0v2, types: [com.google.android.gms.cast.framework.media.uicontroller.zza, java.lang.Object] */
    public UIMediaController(FragmentActivity fragmentActivity) {
        SessionManager sessionManager;
        this.f3530a = fragmentActivity;
        CastContext h2 = CastContext.h(fragmentActivity);
        zzr.a(zzpm.UI_MEDIA_CONTROLLER);
        if (h2 != null) {
            sessionManager = h2.d();
        } else {
            sessionManager = null;
        }
        this.b = sessionManager;
        if (sessionManager != null) {
            sessionManager.a(this);
            z(sessionManager.c());
        }
    }

    public final void A() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (this.g != null) {
            this.e.f3532a = null;
            Iterator it = this.f3531c.values().iterator();
            while (it.hasNext()) {
                Iterator it2 = ((List) it.next()).iterator();
                while (it2.hasNext()) {
                    ((UIController) it2.next()).e();
                }
            }
            Preconditions.checkNotNull(this.g);
            RemoteMediaClient remoteMediaClient = this.g;
            remoteMediaClient.getClass();
            Preconditions.checkMainThread("Must be called from the main thread.");
            remoteMediaClient.g.remove(this);
            this.g = null;
        }
    }

    public final void B(View view, UIController uIController) {
        SessionManager sessionManager = this.b;
        if (sessionManager == null) {
            return;
        }
        HashMap hashMap = this.f3531c;
        List list = (List) hashMap.get(view);
        if (list == null) {
            list = new ArrayList();
            hashMap.put(view, list);
        }
        list.add(uIController);
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (this.g != null) {
            uIController.d((CastSession) Preconditions.checkNotNull(sessionManager.c()));
            C();
        }
    }

    public final void C() {
        Iterator it = this.f3531c.values().iterator();
        while (it.hasNext()) {
            Iterator it2 = ((List) it.next()).iterator();
            while (it2.hasNext()) {
                ((UIController) it2.next()).b();
            }
        }
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Listener
    public final void a() {
        C();
        RemoteMediaClient.Listener listener = this.f;
        if (listener != null) {
            listener.a();
        }
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Listener
    public final void b() {
        C();
        RemoteMediaClient.Listener listener = this.f;
        if (listener != null) {
            listener.b();
        }
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Listener
    public final void c() {
        Iterator it = this.f3531c.values().iterator();
        while (it.hasNext()) {
            Iterator it2 = ((List) it.next()).iterator();
            while (it2.hasNext()) {
                ((UIController) it2.next()).c();
            }
        }
        RemoteMediaClient.Listener listener = this.f;
        if (listener != null) {
            listener.c();
        }
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void d(Session session, int i) {
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void e(Session session, String str) {
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final void f(Session session, int i) {
        A();
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Listener
    public final void g() {
        C();
        RemoteMediaClient.Listener listener = this.f;
        if (listener != null) {
            listener.g();
        }
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final void h(Session session, String str) {
        z((CastSession) session);
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Listener
    public final void i() {
        C();
        RemoteMediaClient.Listener listener = this.f;
        if (listener != null) {
            listener.i();
        }
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final void j(Session session, int i) {
        A();
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final void k(Session session, boolean z) {
        z((CastSession) session);
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Listener
    public final void l() {
        C();
        RemoteMediaClient.Listener listener = this.f;
        if (listener != null) {
            listener.l();
        }
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final void m(Session session, int i) {
        A();
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void n(Session session) {
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void o(Session session) {
    }

    public final void p(ImageView imageView) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        imageView.setOnClickListener(new zzb(this));
        B(imageView, new zzdg(imageView, this.f3530a));
    }

    public final void q(ImageView imageView, Drawable drawable, Drawable drawable2, Drawable drawable3, ProgressBar progressBar, boolean z) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        zzr.a(zzpm.PAUSE_CONTROLLER);
        imageView.setOnClickListener(new zzc(this));
        B(imageView, new zzdh(imageView, this.f3530a, drawable, drawable2, drawable3, progressBar, z));
    }

    public final void r(CastSeekBar castSeekBar) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        zzr.a(zzpm.SEEK_CONTROLLER);
        castSeekBar.j = new zzh(this);
        B(castSeekBar, new zzct(castSeekBar, this.e));
    }

    public final void s(ImageView imageView) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        imageView.setOnClickListener(new zzk(this));
        B(imageView, new zzcu(imageView, this.f3530a));
    }

    public final void t(ImageView imageView) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        imageView.setOnClickListener(new zzf(this));
        B(imageView, new zzcv(imageView, this.e));
    }

    public final void u(RelativeLayout relativeLayout) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        relativeLayout.setOnClickListener(new zzj(this));
        B(relativeLayout, new zzdb(relativeLayout));
    }

    public final void v(ImageView imageView) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        imageView.setOnClickListener(new zzg(this));
        B(imageView, new zzdj(imageView, this.e));
    }

    public final void w(ImageView imageView) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        imageView.setOnClickListener(new zzd(this));
        B(imageView, new zzdm(imageView));
    }

    public final void x(ImageView imageView) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        imageView.setOnClickListener(new zze(this));
        B(imageView, new zzdn(imageView));
    }

    public final RemoteMediaClient y() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        return this.g;
    }

    public final void z(Session session) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (this.g == null && session != null && session.c()) {
            CastSession castSession = (CastSession) session;
            RemoteMediaClient j = castSession.j();
            this.g = j;
            if (j != null) {
                Preconditions.checkMainThread("Must be called from the main thread.");
                j.g.add(this);
                zza zzaVar = this.e;
                Preconditions.checkNotNull(zzaVar);
                zzaVar.f3532a = castSession.j();
                Iterator it = this.f3531c.values().iterator();
                while (it.hasNext()) {
                    Iterator it2 = ((List) it.next()).iterator();
                    while (it2.hasNext()) {
                        ((UIController) it2.next()).d(castSession);
                    }
                }
                C();
            }
        }
    }
}
