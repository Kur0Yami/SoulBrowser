package com.mycompany.app.setting;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;
import androidx.mediarouter.app.MediaRouteButton;
import com.google.android.gms.cast.framework.CastButtonFactory;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.CastStateListener;
import com.google.android.gms.cast.framework.IntroductoryOverlay;
import com.google.android.gms.cast.framework.Session;
import com.google.android.gms.cast.framework.SessionManagerListener;
import com.google.android.gms.internal.cast.zzbk;
import com.google.android.gms.internal.cast.zzpm;
import com.google.android.gms.internal.cast.zzr;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.mycompany.app.cast.CastLocal;
import com.mycompany.app.dialog.DialogListBook;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainListView;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefMain;
import com.mycompany.app.pref.PrefPdf;
import com.mycompany.app.pref.PrefVideo;
import com.mycompany.app.setting.SettingCast;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyRecyclerView;
import com.mycompany.app.wview.WebCastView;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes3.dex */
public class CastActivity extends MainActivity {
    public static final /* synthetic */ int B1 = 0;
    public DialogListBook A1;
    public Context f1;
    public boolean g1;
    public int h1;
    public boolean i1;
    public FrameLayout j1;
    public FrameLayout k1;
    public MyCastListener l1;
    public MyCastCheckListener m1;
    public ExecutorService n1;
    public CastContext o1;
    public CastSession p1;
    public MyStateListener q1;
    public MySessionListener r1;
    public boolean s1;
    public boolean t1;
    public FrameLayout u1;
    public WebCastView v1;
    public MediaRouteButton w1;
    public FrameLayout x1;
    public View y1;
    public zzbk z1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.setting.CastActivity$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass3 implements Runnable {
        public AnonymousClass3() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            CastContext castContext;
            MediaRouteButton mediaRouteButton;
            CastSession castSession;
            boolean z = PrefMain.s;
            CastActivity castActivity = CastActivity.this;
            if (!z) {
                int i = CastActivity.B1;
                castActivity.y0();
                castActivity.z0();
            } else if (!castActivity.g1 && (castContext = castActivity.o1) != null) {
                if (castActivity.q1 == null) {
                    try {
                        MyStateListener myStateListener = new MyStateListener();
                        castActivity.q1 = myStateListener;
                        castContext.a(myStateListener);
                    } catch (Exception unused) {
                        castActivity.q1 = null;
                    }
                }
                if (castActivity.r1 == null) {
                    try {
                        castActivity.r1 = new MySessionListener();
                        castActivity.o1.d().a(castActivity.r1);
                    } catch (Exception unused2) {
                        castActivity.r1 = null;
                    }
                }
                try {
                    castActivity.p1 = castActivity.o1.d().c();
                } catch (Exception unused3) {
                }
                boolean z2 = castActivity.t1;
                boolean z3 = true;
                if (castActivity.o1.b() == 1 && ((castSession = castActivity.p1) == null || !castSession.c())) {
                    z3 = false;
                }
                castActivity.s1 = z3;
                castActivity.u0();
                if (z2 && castActivity.t1 && (mediaRouteButton = castActivity.w1) != null) {
                    try {
                        CastButtonFactory.a(castActivity.f1, mediaRouteButton);
                    } catch (Exception unused4) {
                    }
                    Handler handler = castActivity.O0;
                    if (handler != null) {
                        handler.post(new AnonymousClass5());
                    }
                }
            }
            int i2 = CastActivity.B1;
            castActivity.x0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.setting.CastActivity$5, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass5 implements Runnable {
        public AnonymousClass5() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            int i;
            Handler handler;
            CastActivity castActivity = CastActivity.this;
            if (castActivity.h1 == 0) {
                if (MainApp.K1) {
                    i = -328966;
                } else {
                    i = -16777216;
                }
            } else {
                i = -1;
            }
            MainUtil.h7(i, castActivity.f1, castActivity.w1);
            MediaRouteButton mediaRouteButton = castActivity.w1;
            if (mediaRouteButton != null && !mediaRouteButton.isEnabled() && (handler = castActivity.O0) != null) {
                handler.post(new AnonymousClass6());
            }
        }
    }

    /* renamed from: com.mycompany.app.setting.CastActivity$6, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass6 implements Runnable {
        public AnonymousClass6() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            CastActivity castActivity = CastActivity.this;
            MediaRouteButton mediaRouteButton = castActivity.w1;
            if (mediaRouteButton != null && !mediaRouteButton.isEnabled()) {
                castActivity.w1.setEnabled(true);
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface MyCastCheckListener {
    }

    /* loaded from: classes3.dex */
    public interface MyCastListener {
        void a();
    }

    /* loaded from: classes3.dex */
    public class MySessionListener implements SessionManagerListener<CastSession> {
        public MySessionListener() {
        }

        @Override // com.google.android.gms.cast.framework.SessionManagerListener
        public final /* bridge */ /* synthetic */ void d(Session session, int i) {
        }

        @Override // com.google.android.gms.cast.framework.SessionManagerListener
        public final /* bridge */ /* synthetic */ void e(Session session, String str) {
        }

        @Override // com.google.android.gms.cast.framework.SessionManagerListener
        public final void f(Session session, int i) {
            CastSession castSession = (CastSession) session;
            CastActivity castActivity = CastActivity.this;
            if (castActivity.p1 == castSession) {
                castActivity.p1 = null;
            }
        }

        @Override // com.google.android.gms.cast.framework.SessionManagerListener
        public final void h(Session session, String str) {
            CastActivity castActivity = CastActivity.this;
            castActivity.p1 = (CastSession) session;
            castActivity.u0();
            MyCastListener myCastListener = castActivity.l1;
            if (myCastListener != null) {
                myCastListener.a();
            }
        }

        @Override // com.google.android.gms.cast.framework.SessionManagerListener
        public final /* bridge */ /* synthetic */ void j(Session session, int i) {
        }

        @Override // com.google.android.gms.cast.framework.SessionManagerListener
        public final void k(Session session, boolean z) {
            CastActivity castActivity = CastActivity.this;
            castActivity.p1 = (CastSession) session;
            castActivity.u0();
            MyCastListener myCastListener = castActivity.l1;
            if (myCastListener != null) {
                myCastListener.a();
            }
        }

        @Override // com.google.android.gms.cast.framework.SessionManagerListener
        public final /* bridge */ /* synthetic */ void m(Session session, int i) {
        }

        @Override // com.google.android.gms.cast.framework.SessionManagerListener
        public final /* bridge */ /* synthetic */ void n(Session session) {
        }

        @Override // com.google.android.gms.cast.framework.SessionManagerListener
        public final /* bridge */ /* synthetic */ void o(Session session) {
        }
    }

    /* loaded from: classes3.dex */
    public class MyStateListener implements CastStateListener {
        public MyStateListener() {
        }

        @Override // com.google.android.gms.cast.framework.CastStateListener
        public final void a(int i) {
            Handler handler;
            boolean z = true;
            if (i == 1) {
                z = false;
            }
            CastActivity castActivity = CastActivity.this;
            castActivity.s1 = z;
            if (z) {
                castActivity.u0();
            } else {
                CastLocal.a().c();
            }
            MediaRouteButton mediaRouteButton = castActivity.w1;
            if (mediaRouteButton != null && !mediaRouteButton.isEnabled() && (handler = castActivity.O0) != null) {
                handler.post(new AnonymousClass6());
            }
        }
    }

    public final void A0() {
        int i;
        FrameLayout frameLayout = this.u1;
        if (frameLayout != null && this.w1 != null) {
            int i2 = -16777216;
            if (this.h1 == 1) {
                frameLayout.setBackgroundColor(-1593835520);
            } else {
                if (MainApp.K1) {
                    i = -16777216;
                } else {
                    i = -460552;
                }
                frameLayout.setBackgroundColor(i);
            }
            if (this.h1 == 0) {
                if (MainApp.K1) {
                    i2 = -328966;
                }
            } else {
                i2 = -1;
            }
            MainUtil.h7(i2, this.f1, this.w1);
        }
    }

    public final void B0(View view, FrameLayout frameLayout, FrameLayout frameLayout2) {
        this.j1 = frameLayout;
        this.k1 = frameLayout2;
        setContentView(view);
        setMainInsetView(view);
    }

    public final void C0(DialogListBook dialogListBook) {
        this.A1 = dialogListBook;
        if (this.w1 != null) {
            u0();
        }
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!this.u0) {
            f0();
        }
        this.f1 = getApplicationContext();
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.f1 = null;
        this.j1 = null;
        this.k1 = null;
        this.l1 = null;
        this.n1 = null;
        this.o1 = null;
        this.p1 = null;
        this.u1 = null;
        this.v1 = null;
        this.w1 = null;
        this.x1 = null;
        this.y1 = null;
        this.z1 = null;
        this.A1 = null;
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        this.g1 = true;
        y0();
        super.onPause();
        if (isFinishing()) {
            MainApp.T1 = null;
        }
        x0();
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        this.g1 = false;
        if (this.h1 != 1) {
            v0(this.j1, this.k1, null);
        }
        super.onResume();
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.setting.CastActivity.1
            @Override // java.lang.Runnable
            public final void run() {
                CastActivity castActivity = CastActivity.this;
                if (castActivity.O0 == null) {
                    return;
                }
                if (castActivity.h1 == 1 && !castActivity.i1) {
                    MainUtil.g7(castActivity.getWindow(), PrefVideo.v, PrefVideo.u);
                } else {
                    MainUtil.g7(castActivity.getWindow(), PrefPdf.o, PrefPdf.n);
                }
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [com.mycompany.app.wview.WebCastView, android.widget.FrameLayout, android.view.ViewGroup] */
    public final void u0() {
        Handler handler;
        Handler handler2;
        MainListView mainListView;
        if (!PrefMain.s) {
            z0();
            return;
        }
        if (this.j1 != null && this.k1 != null) {
            if (this.u1 == null) {
                try {
                    Fragment B = T().B(R.id.cast_mini_controller);
                    if (B != null) {
                        FragmentTransaction d = T().d();
                        d.g(B);
                        d.e();
                    }
                } catch (Exception unused) {
                }
                try {
                    this.u1 = this.j1;
                    this.x1 = this.k1;
                    LayoutInflater layoutInflater = getLayoutInflater();
                    ?? frameLayout = new FrameLayout(this);
                    this.v1 = frameLayout;
                    this.w1 = (MediaRouteButton) layoutInflater.inflate(R.layout.cast_icon_layout, (ViewGroup) frameLayout, false);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
                    layoutParams.gravity = 17;
                    this.v1.addView(this.w1, layoutParams);
                    this.y1 = layoutInflater.inflate(R.layout.cast_mini_control, (ViewGroup) this.x1, false);
                } catch (Exception unused2) {
                    z0();
                    return;
                }
            }
            WebCastView webCastView = this.v1;
            if (webCastView != null && this.w1 != null && this.y1 != null) {
                webCastView.setAvailListener(new WebCastView.MyCastAvailListener() { // from class: com.mycompany.app.setting.CastActivity.4
                    @Override // com.mycompany.app.wview.WebCastView.MyCastAvailListener
                    public final void b() {
                    }

                    @Override // com.mycompany.app.wview.WebCastView.MyCastAvailListener
                    public final void c(View view) {
                    }

                    @Override // com.mycompany.app.wview.WebCastView.MyCastAvailListener
                    public final boolean d() {
                        return CastActivity.this.s1;
                    }
                });
                DialogListBook dialogListBook = this.A1;
                if (dialogListBook != null) {
                    this.t1 = false;
                    WebCastView webCastView2 = this.v1;
                    MediaRouteButton mediaRouteButton = this.w1;
                    View view = this.y1;
                    if (webCastView2 != null && mediaRouteButton != null && view != null && (mainListView = dialogListBook.D) != null) {
                        mainListView.k(webCastView2, mediaRouteButton, view);
                    }
                    zzbk zzbkVar = this.z1;
                    if (zzbkVar != null) {
                        zzbkVar.a();
                        this.z1 = null;
                    }
                    if (this.w1 != null && (handler2 = this.O0) != null) {
                        handler2.post(new Runnable() { // from class: com.mycompany.app.setting.CastActivity.8
                            @Override // java.lang.Runnable
                            public final void run() {
                                CastActivity castActivity = CastActivity.this;
                                MediaRouteButton mediaRouteButton2 = castActivity.w1;
                                if (mediaRouteButton2 != null && mediaRouteButton2.getWidth() != 0 && castActivity.w1.getHeight() != 0) {
                                    try {
                                        IntroductoryOverlay.Builder builder = new IntroductoryOverlay.Builder(castActivity, castActivity.w1);
                                        builder.d = castActivity.getString(R.string.introducing_cast);
                                        builder.f3473c = builder.f3472a.getResources().getColor(R.color.cast_overlay);
                                        builder.f = true;
                                        builder.e = new IntroductoryOverlay.OnOverlayDismissedListener() { // from class: com.mycompany.app.setting.CastActivity.8.1
                                            @Override // com.google.android.gms.cast.framework.IntroductoryOverlay.OnOverlayDismissedListener
                                            public final void a() {
                                                CastActivity.this.z1 = null;
                                            }
                                        };
                                        zzr.a(zzpm.INSTRUCTIONS_VIEW);
                                        zzbk zzbkVar2 = new zzbk(builder);
                                        castActivity.z1 = zzbkVar2;
                                        zzbkVar2.b();
                                    } catch (Exception unused3) {
                                    }
                                }
                            }
                        });
                        return;
                    }
                    return;
                }
                if (!this.t1) {
                    this.t1 = true;
                    try {
                        MainUtil.W6(this.v1);
                        this.u1.removeAllViewsInLayout();
                        this.u1.addView(this.v1, MainApp.g1, -1);
                        this.u1.setVisibility(0);
                        MainUtil.W6(this.y1);
                        this.x1.removeAllViewsInLayout();
                        this.x1.addView(this.y1, -1, -2);
                        this.x1.setVisibility(0);
                        A0();
                        MediaRouteButton mediaRouteButton2 = this.w1;
                        if (mediaRouteButton2 != null) {
                            try {
                                CastButtonFactory.a(this.f1, mediaRouteButton2);
                            } catch (Exception unused3) {
                            }
                            Handler handler3 = this.O0;
                            if (handler3 != null) {
                                handler3.post(new AnonymousClass5());
                            }
                        }
                        zzbk zzbkVar2 = this.z1;
                        if (zzbkVar2 != null) {
                            zzbkVar2.a();
                            this.z1 = null;
                        }
                        if (this.w1 != null && (handler = this.O0) != null) {
                            handler.post(new Runnable() { // from class: com.mycompany.app.setting.CastActivity.8
                                @Override // java.lang.Runnable
                                public final void run() {
                                    CastActivity castActivity = CastActivity.this;
                                    MediaRouteButton mediaRouteButton22 = castActivity.w1;
                                    if (mediaRouteButton22 != null && mediaRouteButton22.getWidth() != 0 && castActivity.w1.getHeight() != 0) {
                                        try {
                                            IntroductoryOverlay.Builder builder = new IntroductoryOverlay.Builder(castActivity, castActivity.w1);
                                            builder.d = castActivity.getString(R.string.introducing_cast);
                                            builder.f3473c = builder.f3472a.getResources().getColor(R.color.cast_overlay);
                                            builder.f = true;
                                            builder.e = new IntroductoryOverlay.OnOverlayDismissedListener() { // from class: com.mycompany.app.setting.CastActivity.8.1
                                                @Override // com.google.android.gms.cast.framework.IntroductoryOverlay.OnOverlayDismissedListener
                                                public final void a() {
                                                    CastActivity.this.z1 = null;
                                                }
                                            };
                                            zzr.a(zzpm.INSTRUCTIONS_VIEW);
                                            zzbk zzbkVar22 = new zzbk(builder);
                                            castActivity.z1 = zzbkVar22;
                                            zzbkVar22.b();
                                        } catch (Exception unused32) {
                                        }
                                    }
                                }
                            });
                            return;
                        }
                        return;
                    } catch (Exception unused4) {
                        z0();
                        return;
                    }
                }
                return;
            }
            z0();
            return;
        }
        z0();
    }

    public final void v0(FrameLayout frameLayout, FrameLayout frameLayout2, MyCastListener myCastListener) {
        this.j1 = frameLayout;
        this.k1 = frameLayout2;
        this.l1 = myCastListener;
        if (!PrefMain.s) {
            y0();
            z0();
            x0();
        } else {
            if (this.o1 != null) {
                Handler handler = this.O0;
                if (handler == null) {
                    return;
                }
                handler.post(new AnonymousClass3());
                return;
            }
            try {
                if (this.n1 == null) {
                    this.n1 = Executors.newSingleThreadExecutor();
                }
                CastContext.f(this.f1, this.n1).c(new OnCompleteListener<CastContext>() { // from class: com.mycompany.app.setting.CastActivity.2
                    @Override // com.google.android.gms.tasks.OnCompleteListener
                    public final void onComplete(Task task) {
                        CastActivity castActivity = CastActivity.this;
                        if (!castActivity.g1 && task != null) {
                            try {
                                castActivity.o1 = (CastContext) task.m();
                            } catch (Exception unused) {
                            }
                            Handler handler2 = castActivity.O0;
                            if (handler2 != null) {
                                handler2.post(new AnonymousClass3());
                                return;
                            }
                            return;
                        }
                        castActivity.x0();
                    }
                });
            } catch (Exception unused) {
                x0();
            }
        }
    }

    public final void w0() {
        Handler handler;
        if (this.w1 == null || (handler = this.O0) == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.setting.CastActivity.7
            @Override // java.lang.Runnable
            public final void run() {
                MediaRouteButton mediaRouteButton = CastActivity.this.w1;
                if (mediaRouteButton != null) {
                    mediaRouteButton.performClick();
                }
            }
        });
    }

    public final void x0() {
        MyCastCheckListener myCastCheckListener = this.m1;
        if (myCastCheckListener != null) {
            final SettingCast.AnonymousClass3 anonymousClass3 = (SettingCast.AnonymousClass3) myCastCheckListener;
            MyRecyclerView myRecyclerView = SettingCast.this.L1;
            if (myRecyclerView != null) {
                myRecyclerView.post(new Runnable() { // from class: com.mycompany.app.setting.SettingCast.3.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        SettingCast.this.Y1 = false;
                    }
                });
            }
            this.m1 = null;
        }
    }

    public final void y0() {
        CastContext castContext = this.o1;
        MyStateListener myStateListener = this.q1;
        MySessionListener mySessionListener = this.r1;
        this.o1 = null;
        this.p1 = null;
        this.q1 = null;
        this.r1 = null;
        if (castContext != null) {
            if (myStateListener != null) {
                try {
                    castContext.g(myStateListener);
                } catch (Exception unused) {
                }
            }
            if (mySessionListener != null) {
                try {
                    castContext.d().e(mySessionListener);
                } catch (Exception unused2) {
                }
            }
        }
    }

    public final void z0() {
        MainListView mainListView;
        DialogListBook dialogListBook = this.A1;
        if (dialogListBook != null && (mainListView = dialogListBook.D) != null) {
            mainListView.T();
        }
        this.s1 = false;
        this.t1 = false;
        FrameLayout frameLayout = this.u1;
        if (frameLayout != null) {
            try {
                frameLayout.removeAllViewsInLayout();
            } catch (Exception unused) {
            }
            this.u1.setVisibility(4);
            this.u1.requestLayout();
            this.u1 = null;
        }
        FrameLayout frameLayout2 = this.x1;
        if (frameLayout2 != null) {
            try {
                frameLayout2.removeAllViewsInLayout();
            } catch (Exception unused2) {
            }
            this.x1.setVisibility(8);
            this.x1 = null;
        }
        this.v1 = null;
        this.w1 = null;
        this.y1 = null;
        try {
            Fragment B = T().B(R.id.cast_mini_controller);
            if (B != null) {
                FragmentTransaction d = T().d();
                d.g(B);
                d.e();
            }
        } catch (Exception unused3) {
        }
    }
}
