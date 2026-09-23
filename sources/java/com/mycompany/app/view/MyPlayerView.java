package com.mycompany.app.view;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.view.Surface;
import android.view.TextureView;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.google.api.client.http.HttpStatusCodes;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import java.lang.ref.WeakReference;
import java.util.HashMap;

/* loaded from: classes3.dex */
public class MyPlayerView extends TextureView {
    public static final /* synthetic */ int x = 0;

    /* renamed from: c, reason: collision with root package name */
    public Context f18865c;
    public Handler f;
    public PlayerViewListener g;
    public Uri h;
    public String i;
    public String j;
    public SurfaceTexture k;
    public Surface l;
    public MediaPlayer m;
    public PlayTask n;
    public boolean o;
    public boolean p;
    public boolean q;
    public int r;
    public int s;
    public int t;
    public int u;
    public int v;
    public MediaPlayer w;

    /* renamed from: com.mycompany.app.view.MyPlayerView$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements TextureView.SurfaceTextureListener {
        public AnonymousClass1() {
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
            MyPlayerView myPlayerView = MyPlayerView.this;
            myPlayerView.k = surfaceTexture;
            Handler handler = myPlayerView.f;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.view.MyPlayerView.1.1
                @Override // java.lang.Runnable
                public final void run() {
                    MyPlayerView myPlayerView2 = MyPlayerView.this;
                    SurfaceTexture surfaceTexture2 = myPlayerView2.k;
                    myPlayerView2.k = null;
                    if (surfaceTexture2 != null) {
                        myPlayerView2.l = new Surface(surfaceTexture2);
                        Handler handler2 = myPlayerView2.f;
                        if (handler2 == null) {
                            return;
                        }
                        handler2.post(new Runnable() { // from class: com.mycompany.app.view.MyPlayerView.1.1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                MyPlayerView myPlayerView3 = MyPlayerView.this;
                                myPlayerView3.c(myPlayerView3.h, myPlayerView3.i, myPlayerView3.j);
                            }
                        });
                    }
                }
            });
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            MyPlayerView myPlayerView = MyPlayerView.this;
            myPlayerView.k = null;
            myPlayerView.l = null;
            return false;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
            MyPlayerView.b(MyPlayerView.this);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
            int i = MyPlayerView.x;
            MyPlayerView.this.d();
        }
    }

    /* renamed from: com.mycompany.app.view.MyPlayerView$10, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass10 implements Runnable {
        public AnonymousClass10() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            MyPlayerView myPlayerView = MyPlayerView.this;
            MediaPlayer mediaPlayer = myPlayerView.m;
            if (mediaPlayer != null) {
                try {
                    mediaPlayer.reset();
                } catch (IllegalStateException unused) {
                }
            }
            Handler handler = myPlayerView.f;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.view.MyPlayerView.10.1
                @Override // java.lang.Runnable
                public final void run() {
                    PlayerViewListener playerViewListener = MyPlayerView.this.g;
                    if (playerViewListener != null) {
                        playerViewListener.d();
                    }
                }
            });
        }
    }

    /* loaded from: classes3.dex */
    public static class PlayTask extends MyAsyncTask {
        public final WeakReference e;
        public boolean f;

        public PlayTask(MyPlayerView myPlayerView) {
            this.e = new WeakReference(myPlayerView);
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void a() {
            MyPlayerView myPlayerView;
            Uri uri;
            WeakReference weakReference = this.e;
            if (weakReference != null && (myPlayerView = (MyPlayerView) weakReference.get()) != null && !this.f12839c && (uri = myPlayerView.h) != null) {
                HashMap v0 = MainUtil.v0(myPlayerView.f18865c, myPlayerView.i, myPlayerView.j);
                MediaPlayer mediaPlayer = myPlayerView.m;
                if (mediaPlayer != null) {
                    try {
                        if (v0 != null) {
                            mediaPlayer.setDataSource(myPlayerView.f18865c, uri, v0);
                        } else {
                            mediaPlayer.setDataSource(myPlayerView.f18865c, uri);
                        }
                    } catch (Exception unused) {
                        this.f = true;
                    }
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            MyPlayerView myPlayerView;
            WeakReference weakReference = this.e;
            if (weakReference == null || (myPlayerView = (MyPlayerView) weakReference.get()) == null) {
                return;
            }
            myPlayerView.n = null;
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            MyPlayerView myPlayerView;
            MediaPlayer mediaPlayer;
            WeakReference weakReference = this.e;
            if (weakReference != null && (myPlayerView = (MyPlayerView) weakReference.get()) != null) {
                myPlayerView.n = null;
                if (!this.f && (mediaPlayer = myPlayerView.m) != null) {
                    try {
                        mediaPlayer.prepareAsync();
                        return;
                    } catch (Exception unused) {
                        if (myPlayerView.m != null) {
                            MainApp.J(myPlayerView.f18865c, new AnonymousClass10());
                            return;
                        }
                        return;
                    }
                }
                if (myPlayerView.m == null) {
                    return;
                }
                MainApp.J(myPlayerView.f18865c, new AnonymousClass10());
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface PlayerViewListener {
        void a(int i, int i2);

        void b(boolean z);

        void c();

        void d();
    }

    public MyPlayerView(Context context) {
        super(context);
        this.f18865c = context;
        this.f = new Handler(Looper.getMainLooper());
        setSurfaceTextureListener(new AnonymousClass1());
    }

    public static void a(MyPlayerView myPlayerView, int i) {
        if (myPlayerView.p && myPlayerView.o && myPlayerView.m != null && myPlayerView.g != null) {
            Handler handler = myPlayerView.f;
            if (handler == null) {
                return;
            }
            handler.postDelayed(new Runnable() { // from class: com.mycompany.app.view.MyPlayerView.9
                @Override // java.lang.Runnable
                public final void run() {
                    MediaPlayer mediaPlayer;
                    MyPlayerView myPlayerView2 = MyPlayerView.this;
                    if (myPlayerView2.p && myPlayerView2.o && (mediaPlayer = myPlayerView2.m) != null && myPlayerView2.g != null) {
                        myPlayerView2.p = false;
                        if (mediaPlayer.getDuration() > 0) {
                            myPlayerView2.d();
                            return;
                        }
                        return;
                    }
                    myPlayerView2.p = false;
                }
            }, i);
            return;
        }
        myPlayerView.p = false;
    }

    public static void b(MyPlayerView myPlayerView) {
        ViewParent parent;
        MediaPlayer mediaPlayer = myPlayerView.m;
        if (mediaPlayer != null) {
            int videoWidth = mediaPlayer.getVideoWidth();
            int videoHeight = myPlayerView.m.getVideoHeight();
            if (videoWidth != 0 && videoHeight != 0 && (parent = myPlayerView.getParent()) != null && (parent instanceof ViewGroup)) {
                ViewGroup viewGroup = (ViewGroup) parent;
                int width = viewGroup.getWidth();
                int height = viewGroup.getHeight();
                if (width != 0 && height != 0) {
                    if (myPlayerView.s != width || myPlayerView.t != height || myPlayerView.u != videoWidth || myPlayerView.v != videoHeight) {
                        myPlayerView.s = width;
                        myPlayerView.t = height;
                        myPlayerView.u = videoWidth;
                        myPlayerView.v = videoHeight;
                        float f = videoHeight / videoWidth;
                        int i = (int) (width * f);
                        if (i > height) {
                            width = (int) (height / f);
                        } else {
                            height = i;
                        }
                        PlayerViewListener playerViewListener = myPlayerView.g;
                        if (playerViewListener != null) {
                            playerViewListener.a(width, height);
                        }
                    }
                }
            }
        }
    }

    public final void c(Uri uri, String str, String str2) {
        this.h = uri;
        this.i = str;
        this.j = str2;
        if (uri != null && this.m == null && this.l != null) {
            this.o = false;
            this.p = false;
            this.q = false;
            this.r = -1;
            PlayerViewListener playerViewListener = this.g;
            if (playerViewListener != null) {
                playerViewListener.b(true);
            }
            MediaPlayer mediaPlayer = new MediaPlayer();
            this.m = mediaPlayer;
            mediaPlayer.setSurface(this.l);
            this.m.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.mycompany.app.view.MyPlayerView.2
                @Override // android.media.MediaPlayer.OnPreparedListener
                public final void onPrepared(MediaPlayer mediaPlayer2) {
                    MyPlayerView myPlayerView = MyPlayerView.this;
                    myPlayerView.o = true;
                    myPlayerView.p = true;
                    myPlayerView.f(true, false);
                    MyPlayerView.a(myPlayerView, 800);
                }
            });
            this.m.setOnSeekCompleteListener(new MediaPlayer.OnSeekCompleteListener() { // from class: com.mycompany.app.view.MyPlayerView.3
                @Override // android.media.MediaPlayer.OnSeekCompleteListener
                public final void onSeekComplete(MediaPlayer mediaPlayer2) {
                    MyPlayerView myPlayerView = MyPlayerView.this;
                    myPlayerView.p = true;
                    if (myPlayerView.q && myPlayerView.r != -1) {
                        myPlayerView.d();
                    }
                    myPlayerView.r = -1;
                    myPlayerView.f(true, false);
                    MyPlayerView.a(myPlayerView, HttpStatusCodes.STATUS_CODE_BAD_REQUEST);
                }
            });
            this.m.setOnVideoSizeChangedListener(new MediaPlayer.OnVideoSizeChangedListener() { // from class: com.mycompany.app.view.MyPlayerView.4
                @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
                public final void onVideoSizeChanged(MediaPlayer mediaPlayer2, int i, int i2) {
                    MyPlayerView.b(MyPlayerView.this);
                }
            });
            this.m.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.mycompany.app.view.MyPlayerView.5
                @Override // android.media.MediaPlayer.OnCompletionListener
                public final void onCompletion(MediaPlayer mediaPlayer2) {
                    final MyPlayerView myPlayerView = MyPlayerView.this;
                    if (myPlayerView.h == null) {
                        return;
                    }
                    if (myPlayerView.m == null) {
                        myPlayerView.d();
                        return;
                    }
                    myPlayerView.o = false;
                    myPlayerView.p = false;
                    myPlayerView.q = false;
                    myPlayerView.r = -1;
                    PlayerViewListener playerViewListener2 = myPlayerView.g;
                    if (playerViewListener2 != null) {
                        playerViewListener2.b(true);
                    }
                    MainApp.J(myPlayerView.f18865c, new Runnable() { // from class: com.mycompany.app.view.MyPlayerView.7
                        @Override // java.lang.Runnable
                        public final void run() {
                            MyPlayerView myPlayerView2 = MyPlayerView.this;
                            MediaPlayer mediaPlayer3 = myPlayerView2.m;
                            if (mediaPlayer3 == null) {
                                return;
                            }
                            try {
                                mediaPlayer3.reset();
                            } catch (IllegalStateException unused) {
                            }
                            PlayTask playTask = myPlayerView2.n;
                            if (playTask != null) {
                                playTask.f12839c = true;
                            }
                            myPlayerView2.n = null;
                            PlayTask playTask2 = new PlayTask(myPlayerView2);
                            myPlayerView2.n = playTask2;
                            playTask2.b(myPlayerView2.f18865c);
                        }
                    });
                }
            });
            this.m.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: com.mycompany.app.view.MyPlayerView.6
                @Override // android.media.MediaPlayer.OnErrorListener
                public final boolean onError(MediaPlayer mediaPlayer2, int i, int i2) {
                    MyPlayerView myPlayerView = MyPlayerView.this;
                    if (myPlayerView.m != null) {
                        MainApp.J(myPlayerView.f18865c, new AnonymousClass10());
                        return true;
                    }
                    return true;
                }
            });
            PlayTask playTask = this.n;
            if (playTask != null) {
                playTask.f12839c = true;
            }
            this.n = null;
            PlayTask playTask2 = new PlayTask(this);
            this.n = playTask2;
            playTask2.b(this.f18865c);
        }
    }

    public final void d() {
        PlayerViewListener playerViewListener = this.g;
        if (playerViewListener == null) {
            return;
        }
        this.p = false;
        playerViewListener.b(false);
    }

    public final void e() {
        PlayTask playTask = this.n;
        if (playTask != null) {
            playTask.f12839c = true;
        }
        this.n = null;
        MediaPlayer mediaPlayer = this.m;
        this.w = mediaPlayer;
        this.m = null;
        if (mediaPlayer == null) {
            return;
        }
        MainApp.J(this.f18865c, new Runnable() { // from class: com.mycompany.app.view.MyPlayerView.8
            @Override // java.lang.Runnable
            public final void run() {
                MyPlayerView myPlayerView = MyPlayerView.this;
                MediaPlayer mediaPlayer2 = myPlayerView.w;
                myPlayerView.w = null;
                if (mediaPlayer2 == null) {
                    return;
                }
                mediaPlayer2.stop();
                mediaPlayer2.release();
            }
        });
    }

    public final void f(boolean z, boolean z2) {
        boolean z3;
        MediaPlayer mediaPlayer = this.m;
        if (mediaPlayer == null) {
            z3 = false;
        } else {
            z3 = this.o;
        }
        if (z3) {
            if (z2) {
                this.q = !z;
            }
            if (z) {
                if (!this.q) {
                    this.r = -1;
                    if (!mediaPlayer.isPlaying()) {
                        this.m.start();
                    }
                }
            } else if (mediaPlayer.isPlaying()) {
                this.m.pause();
            }
            PlayerViewListener playerViewListener = this.g;
            if (playerViewListener != null) {
                playerViewListener.c();
            }
        }
    }

    public int getDuration() {
        boolean z;
        int duration;
        MediaPlayer mediaPlayer = this.m;
        if (mediaPlayer == null) {
            z = false;
        } else {
            z = this.o;
        }
        if (!z || (duration = mediaPlayer.getDuration()) < 0) {
            return 0;
        }
        return duration;
    }

    public int getPosition() {
        boolean z;
        MediaPlayer mediaPlayer = this.m;
        if (mediaPlayer == null) {
            z = false;
        } else {
            z = this.o;
        }
        if (z) {
            int i = this.r;
            if (i != -1) {
                return i;
            }
            int currentPosition = mediaPlayer.getCurrentPosition();
            if (currentPosition >= 0) {
                return currentPosition;
            }
        }
        return 0;
    }

    public void setListener(PlayerViewListener playerViewListener) {
        this.g = playerViewListener;
    }
}
