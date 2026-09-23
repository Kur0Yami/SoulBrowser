package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.view.Surface;
import android.view.TextureView;
import com.google.android.gms.ads.RequestConfiguration;
import java.io.IOException;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class zzceo extends zzceq implements TextureView.SurfaceTextureListener, MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnVideoSizeChangedListener {
    public static final HashMap x;
    public final zzcfk g;
    public final zzcfl h;
    public final boolean i;
    public final zzdxe j;
    public int k;
    public int l;
    public MediaPlayer m;
    public Uri n;
    public int o;
    public int p;
    public int q;
    public zzcfi r;
    public final boolean s;
    public int t;
    public zzcey u;
    public boolean v;
    public Integer w;

    static {
        HashMap hashMap = new HashMap();
        x = hashMap;
        hashMap.put(-1004, "MEDIA_ERROR_IO");
        hashMap.put(-1007, "MEDIA_ERROR_MALFORMED");
        hashMap.put(-1010, "MEDIA_ERROR_UNSUPPORTED");
        hashMap.put(-110, "MEDIA_ERROR_TIMED_OUT");
        hashMap.put(3, "MEDIA_INFO_VIDEO_RENDERING_START");
        hashMap.put(100, "MEDIA_ERROR_SERVER_DIED");
        hashMap.put(1, "MEDIA_ERROR_UNKNOWN");
        hashMap.put(1, "MEDIA_INFO_UNKNOWN");
        hashMap.put(700, "MEDIA_INFO_VIDEO_TRACK_LAGGING");
        hashMap.put(701, "MEDIA_INFO_BUFFERING_START");
        hashMap.put(702, "MEDIA_INFO_BUFFERING_END");
        hashMap.put(800, "MEDIA_INFO_BAD_INTERLEAVING");
        hashMap.put(801, "MEDIA_INFO_NOT_SEEKABLE");
        hashMap.put(802, "MEDIA_INFO_METADATA_UPDATE");
        hashMap.put(901, "MEDIA_INFO_UNSUPPORTED_SUBTITLE");
        hashMap.put(902, "MEDIA_INFO_SUBTITLE_TIMED_OUT");
    }

    public zzceo(Context context, zzcfk zzcfkVar, boolean z, boolean z2, zzcfl zzcflVar, zzdxe zzdxeVar) {
        super(context);
        this.k = 0;
        this.l = 0;
        this.v = false;
        this.w = null;
        this.g = zzcfkVar;
        this.h = zzcflVar;
        this.s = z;
        this.i = z2;
        zzcflVar.a(this);
        this.j = zzdxeVar;
    }

    public final void B() {
        SurfaceTexture surfaceTexture;
        zzdxe zzdxeVar;
        com.google.android.gms.ads.internal.util.zze.zza("AdMediaPlayerView init MediaPlayer");
        SurfaceTexture surfaceTexture2 = getSurfaceTexture();
        if (this.n != null && surfaceTexture2 != null) {
            C(false);
            try {
                com.google.android.gms.ads.internal.zzt.zzv();
                MediaPlayer mediaPlayer = new MediaPlayer();
                this.m = mediaPlayer;
                mediaPlayer.setOnBufferingUpdateListener(this);
                this.m.setOnCompletionListener(this);
                this.m.setOnErrorListener(this);
                this.m.setOnInfoListener(this);
                this.m.setOnPreparedListener(this);
                this.m.setOnVideoSizeChangedListener(this);
                this.q = 0;
                if (this.s) {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Fe)).booleanValue() && (zzdxeVar = this.j) != null) {
                        zzdxd a2 = zzdxeVar.a();
                        a2.b("action", "svp_ampv");
                        a2.c();
                    }
                    zzcfi zzcfiVar = new zzcfi(getContext());
                    this.r = zzcfiVar;
                    int width = getWidth();
                    int height = getHeight();
                    zzcfiVar.q = width;
                    zzcfiVar.p = height;
                    zzcfiVar.s = surfaceTexture2;
                    zzcfi zzcfiVar2 = this.r;
                    zzcfiVar2.start();
                    if (zzcfiVar2.s == null) {
                        surfaceTexture = null;
                    } else {
                        try {
                            zzcfiVar2.x.await();
                        } catch (InterruptedException unused) {
                        }
                        surfaceTexture = zzcfiVar2.r;
                    }
                    if (surfaceTexture != null) {
                        surfaceTexture2 = surfaceTexture;
                    } else {
                        this.r.c();
                        this.r = null;
                    }
                }
                this.m.setDataSource(getContext(), this.n);
                com.google.android.gms.ads.internal.zzt.zzw();
                this.m.setSurface(new Surface(surfaceTexture2));
                this.m.setAudioStreamType(3);
                this.m.setScreenOnWhilePlaying(true);
                this.m.prepareAsync();
                E(1);
            } catch (IOException e) {
                e = e;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to initialize MediaPlayer at ".concat(String.valueOf(this.n)), e);
                onError(this.m, 1, 0);
            } catch (IllegalArgumentException e2) {
                e = e2;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to initialize MediaPlayer at ".concat(String.valueOf(this.n)), e);
                onError(this.m, 1, 0);
            } catch (IllegalStateException e3) {
                e = e3;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to initialize MediaPlayer at ".concat(String.valueOf(this.n)), e);
                onError(this.m, 1, 0);
            }
        }
    }

    public final void C(boolean z) {
        com.google.android.gms.ads.internal.util.zze.zza("AdMediaPlayerView release");
        zzcfi zzcfiVar = this.r;
        if (zzcfiVar != null) {
            zzcfiVar.c();
            this.r = null;
        }
        MediaPlayer mediaPlayer = this.m;
        if (mediaPlayer != null) {
            mediaPlayer.reset();
            this.m.release();
            this.m = null;
            E(0);
            if (z) {
                this.l = 0;
            }
        }
    }

    public final boolean D() {
        int i;
        return (this.m == null || (i = this.k) == -1 || i == 0 || i == 1) ? false : true;
    }

    public final void E(int i) {
        zzcfo zzcfoVar = this.f;
        zzcfl zzcflVar = this.h;
        if (i == 3) {
            zzcflVar.d();
            zzcfoVar.h = true;
            zzcfoVar.a();
        } else if (this.k == 3) {
            zzcflVar.m = false;
            zzcfoVar.h = false;
            zzcfoVar.a();
        }
        this.k = i;
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    public final String h() {
        return "MediaPlayer".concat(true != this.s ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : " spherical");
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    public final void i(zzcey zzceyVar) {
        this.u = zzceyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    public final void j(String str) {
        Uri parse = Uri.parse(str);
        zzbev F = zzbev.F(parse);
        if (F != null && F.f4600c == null) {
            return;
        }
        if (F != null) {
            parse = Uri.parse(F.f4600c);
        }
        this.n = parse;
        this.t = 0;
        B();
        requestLayout();
        invalidate();
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    public final void k() {
        com.google.android.gms.ads.internal.util.zze.zza("AdMediaPlayerView stop");
        MediaPlayer mediaPlayer = this.m;
        if (mediaPlayer != null) {
            mediaPlayer.stop();
            this.m.release();
            this.m = null;
            E(0);
            this.l = 0;
        }
        this.h.b();
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    public final void l() {
        com.google.android.gms.ads.internal.util.zze.zza("AdMediaPlayerView play");
        if (D()) {
            this.m.start();
            E(3);
            this.f5087c.f5101c = true;
            com.google.android.gms.ads.internal.util.zzs.zza.post(new zzcel(this));
        }
        this.l = 3;
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    public final void m() {
        com.google.android.gms.ads.internal.util.zze.zza("AdMediaPlayerView pause");
        if (D() && this.m.isPlaying()) {
            this.m.pause();
            E(4);
            com.google.android.gms.ads.internal.util.zzs.zza.post(new zzcem(this));
        }
        this.l = 4;
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    public final int n() {
        if (D()) {
            return this.m.getDuration();
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    public final int o() {
        if (D()) {
            return this.m.getCurrentPosition();
        }
        return 0;
    }

    @Override // android.view.TextureView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        setSurfaceTextureListener(this);
    }

    @Override // android.media.MediaPlayer.OnBufferingUpdateListener
    public final void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
        this.q = i;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public final void onCompletion(MediaPlayer mediaPlayer) {
        com.google.android.gms.ads.internal.util.zze.zza("AdMediaPlayerView completion");
        E(5);
        this.l = 5;
        com.google.android.gms.ads.internal.util.zzs.zza.post(new zzceg(this));
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public final boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        Integer valueOf = Integer.valueOf(i);
        HashMap hashMap = x;
        String str = (String) hashMap.get(valueOf);
        String str2 = (String) hashMap.get(Integer.valueOf(i2));
        String r = android.support.v4.media.a.r(new StringBuilder(String.valueOf(str).length() + 38 + String.valueOf(str2).length()), "AdMediaPlayerView MediaPlayer error: ", str, ":", str2);
        int i3 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzi(r);
        E(-1);
        this.l = -1;
        com.google.android.gms.ads.internal.util.zzs.zza.post(new zzceh(this, str, str2));
        return true;
    }

    @Override // android.media.MediaPlayer.OnInfoListener
    public final boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
        Integer valueOf = Integer.valueOf(i);
        HashMap hashMap = x;
        String str = (String) hashMap.get(valueOf);
        String str2 = (String) hashMap.get(Integer.valueOf(i2));
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 37 + String.valueOf(str2).length());
        sb.append("AdMediaPlayerView MediaPlayer info: ");
        sb.append(str);
        sb.append(":");
        sb.append(str2);
        com.google.android.gms.ads.internal.util.zze.zza(sb.toString());
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x005e, code lost:
    
        if (r1 > r6) goto L30;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onMeasure(int r6, int r7) {
        /*
            r5 = this;
            int r0 = r5.o
            int r0 = android.view.View.getDefaultSize(r0, r6)
            int r1 = r5.p
            int r1 = android.view.View.getDefaultSize(r1, r7)
            int r2 = r5.o
            if (r2 <= 0) goto L7a
            int r2 = r5.p
            if (r2 <= 0) goto L7a
            com.google.android.gms.internal.ads.zzcfi r2 = r5.r
            if (r2 != 0) goto L7a
            int r0 = android.view.View.MeasureSpec.getMode(r6)
            int r6 = android.view.View.MeasureSpec.getSize(r6)
            int r1 = android.view.View.MeasureSpec.getMode(r7)
            int r7 = android.view.View.MeasureSpec.getSize(r7)
            r2 = 1073741824(0x40000000, float:2.0)
            if (r0 != r2) goto L43
            if (r1 != r2) goto L42
            int r0 = r5.o
            int r1 = r0 * r7
            int r2 = r5.p
            int r3 = r6 * r2
            if (r1 >= r3) goto L3c
            int r0 = r1 / r2
        L3a:
            r1 = r7
            goto L7a
        L3c:
            if (r1 <= r3) goto L60
            int r1 = r3 / r0
        L40:
            r0 = r6
            goto L7a
        L42:
            r0 = r2
        L43:
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 != r2) goto L54
            int r0 = r5.p
            int r0 = r0 * r6
            int r2 = r5.o
            int r0 = r0 / r2
            if (r1 != r3) goto L52
            if (r0 <= r7) goto L52
            goto L60
        L52:
            r1 = r0
            goto L40
        L54:
            if (r1 != r2) goto L64
            int r1 = r5.o
            int r1 = r1 * r7
            int r2 = r5.p
            int r1 = r1 / r2
            if (r0 != r3) goto L62
            if (r1 <= r6) goto L62
        L60:
            r0 = r6
            goto L3a
        L62:
            r0 = r1
            goto L3a
        L64:
            int r2 = r5.o
            int r4 = r5.p
            if (r1 != r3) goto L70
            if (r4 <= r7) goto L70
            int r1 = r7 * r2
            int r1 = r1 / r4
            goto L72
        L70:
            r1 = r2
            r7 = r4
        L72:
            if (r0 != r3) goto L62
            if (r1 <= r6) goto L62
            int r4 = r4 * r6
            int r1 = r4 / r2
            goto L40
        L7a:
            r5.setMeasuredDimension(r0, r1)
            com.google.android.gms.internal.ads.zzcfi r6 = r5.r
            if (r6 == 0) goto L84
            r6.b(r0, r1)
        L84:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzceo.onMeasure(int, int):void");
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public final void onPrepared(MediaPlayer mediaPlayer) {
        com.google.android.gms.ads.internal.util.zze.zza("AdMediaPlayerView prepared");
        E(2);
        zzcfl zzcflVar = this.h;
        if (zzcflVar.i && !zzcflVar.j) {
            zzbgr.a(zzcflVar.e, zzcflVar.d, "vfr2");
            zzcflVar.j = true;
        }
        com.google.android.gms.ads.internal.util.zzs.zza.post(new zzcef(this, mediaPlayer));
        this.o = mediaPlayer.getVideoWidth();
        this.p = mediaPlayer.getVideoHeight();
        int i = this.t;
        if (i != 0) {
            p(i);
        }
        if (this.i && D() && this.m.getCurrentPosition() > 0 && this.l != 3) {
            com.google.android.gms.ads.internal.util.zze.zza("AdMediaPlayerView nudging MediaPlayer");
            MediaPlayer mediaPlayer2 = this.m;
            if (mediaPlayer2 != null) {
                try {
                    mediaPlayer2.setVolume(0.0f, 0.0f);
                } catch (IllegalStateException unused) {
                }
            } else {
                com.google.android.gms.ads.internal.util.client.zzo.zzi("AdMediaPlayerView setMediaPlayerVolume() called before onPrepared().");
            }
            this.m.start();
            int currentPosition = this.m.getCurrentPosition();
            long currentTimeMillis = com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis();
            while (D() && this.m.getCurrentPosition() == currentPosition && com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis() - currentTimeMillis <= 250) {
            }
            this.m.pause();
            zzq();
        }
        int i2 = this.o;
        int i3 = this.p;
        StringBuilder sb = new StringBuilder(String.valueOf(i2).length() + 40 + String.valueOf(i3).length());
        sb.append("AdMediaPlayerView stream dimensions: ");
        sb.append(i2);
        sb.append(" x ");
        sb.append(i3);
        com.google.android.gms.ads.internal.util.client.zzo.zzh(sb.toString());
        if (this.l == 3) {
            l();
        }
        zzq();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        com.google.android.gms.ads.internal.util.zze.zza("AdMediaPlayerView surface created");
        B();
        com.google.android.gms.ads.internal.util.zzs.zza.post(new zzcei(this));
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        com.google.android.gms.ads.internal.util.zze.zza("AdMediaPlayerView surface destroyed");
        MediaPlayer mediaPlayer = this.m;
        if (mediaPlayer != null && this.t == 0) {
            this.t = mediaPlayer.getCurrentPosition();
        }
        zzcfi zzcfiVar = this.r;
        if (zzcfiVar != null) {
            zzcfiVar.c();
        }
        com.google.android.gms.ads.internal.util.zzs.zza.post(new zzcek(this));
        C(true);
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        com.google.android.gms.ads.internal.util.zze.zza("AdMediaPlayerView surface changed");
        int i3 = this.l;
        boolean z = false;
        if (this.o == i && this.p == i2) {
            z = true;
        }
        if (this.m != null && i3 == 3 && z) {
            int i4 = this.t;
            if (i4 != 0) {
                p(i4);
            }
            l();
        }
        zzcfi zzcfiVar = this.r;
        if (zzcfiVar != null) {
            zzcfiVar.b(i, i2);
        }
        com.google.android.gms.ads.internal.util.zzs.zza.post(new zzcej(this, i, i2));
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        this.h.c(this);
        this.f5087c.a(surfaceTexture, this.u);
    }

    @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
    public final void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
        StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 35 + String.valueOf(i2).length());
        sb.append("AdMediaPlayerView size changed: ");
        sb.append(i);
        sb.append(" x ");
        sb.append(i2);
        com.google.android.gms.ads.internal.util.zze.zza(sb.toString());
        this.o = mediaPlayer.getVideoWidth();
        int videoHeight = mediaPlayer.getVideoHeight();
        this.p = videoHeight;
        if (this.o != 0 && videoHeight != 0) {
            requestLayout();
        }
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(final int i) {
        StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 47);
        sb.append("AdMediaPlayerView window visibility changed to ");
        sb.append(i);
        com.google.android.gms.ads.internal.util.zze.zza(sb.toString());
        com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcen
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzcey zzceyVar = zzceo.this.u;
                if (zzceyVar != null) {
                    zzceyVar.onWindowVisibilityChanged(i);
                }
            }
        });
        super.onWindowVisibilityChanged(i);
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    public final void p(int i) {
        StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 23);
        sb.append("AdMediaPlayerView seek ");
        sb.append(i);
        com.google.android.gms.ads.internal.util.zze.zza(sb.toString());
        if (D()) {
            this.m.seekTo(i);
            this.t = 0;
        } else {
            this.t = i;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    public final void q(float f, float f2) {
        zzcfi zzcfiVar = this.r;
        if (zzcfiVar != null) {
            zzcfiVar.d(f, f2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    public final int r() {
        MediaPlayer mediaPlayer = this.m;
        if (mediaPlayer != null) {
            return mediaPlayer.getVideoWidth();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    public final int s() {
        MediaPlayer mediaPlayer = this.m;
        if (mediaPlayer != null) {
            return mediaPlayer.getVideoHeight();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    public final long t() {
        if (this.w != null) {
            return (v() * this.q) / 100;
        }
        return -1L;
    }

    @Override // android.view.View
    public final String toString() {
        String name = zzceo.class.getName();
        String hexString = Integer.toHexString(hashCode());
        return android.support.v4.media.a.q(new StringBuilder(name.length() + 1 + String.valueOf(hexString).length()), name, "@", hexString);
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    public final long u() {
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    public final long v() {
        if (this.w != null) {
            return n() * this.w.intValue();
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzceq
    public final int w() {
        if (Build.VERSION.SDK_INT >= 26 && D()) {
            return this.m.getMetrics().getInt("android.media.mediaplayer.dropped");
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzcfn
    public final void zzq() {
        float f;
        zzcfo zzcfoVar = this.f;
        float f2 = 0.0f;
        if (zzcfoVar.i) {
            f = 0.0f;
        } else {
            f = zzcfoVar.j;
        }
        if (zzcfoVar.g) {
            f2 = f;
        }
        MediaPlayer mediaPlayer = this.m;
        if (mediaPlayer != null) {
            try {
                mediaPlayer.setVolume(f2, f2);
            } catch (IllegalStateException unused) {
            }
        } else {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("AdMediaPlayerView setMediaPlayerVolume() called before onPrepared().");
        }
    }
}
