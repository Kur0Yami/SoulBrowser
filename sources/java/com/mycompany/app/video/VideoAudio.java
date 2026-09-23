package com.mycompany.app.video;

import android.content.Context;
import android.media.MediaPlayer;
import android.net.Uri;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.db.book.DbBookSub;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefSub;
import com.mycompany.app.soulbrowser.R;
import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public class VideoAudio {

    /* renamed from: a, reason: collision with root package name */
    public Context f18443a;
    public AudioListener b;

    /* renamed from: c, reason: collision with root package name */
    public MediaPlayer f18444c;
    public PlayTask d;
    public boolean e;
    public boolean f;
    public String g;
    public int h;
    public MediaPlayer i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.video.VideoAudio$4, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass4 implements Runnable {
        public AnonymousClass4() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            VideoAudio videoAudio = VideoAudio.this;
            MediaPlayer mediaPlayer = videoAudio.i;
            videoAudio.i = null;
            if (mediaPlayer == null) {
                return;
            }
            mediaPlayer.stop();
            mediaPlayer.release();
        }
    }

    /* loaded from: classes3.dex */
    public interface AudioListener {
        int a();
    }

    /* loaded from: classes3.dex */
    public static class PlayTask extends MyAsyncTask {
        public final WeakReference e;
        public final String f;
        public final boolean g;
        public boolean h;

        public PlayTask(VideoAudio videoAudio, String str, boolean z) {
            WeakReference weakReference = new WeakReference(videoAudio);
            this.e = weakReference;
            if (((VideoAudio) weakReference.get()) == null) {
                return;
            }
            this.f = str;
            this.g = z;
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void a() {
            VideoAudio videoAudio;
            MediaPlayer mediaPlayer;
            WeakReference weakReference = this.e;
            if (weakReference != null && (videoAudio = (VideoAudio) weakReference.get()) != null && !this.f12839c && (mediaPlayer = videoAudio.f18444c) != null) {
                try {
                    mediaPlayer.setDataSource(videoAudio.f18443a, Uri.parse(videoAudio.g));
                } catch (Exception unused) {
                    this.h = true;
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            VideoAudio videoAudio;
            WeakReference weakReference = this.e;
            if (weakReference == null || (videoAudio = (VideoAudio) weakReference.get()) == null) {
                return;
            }
            videoAudio.d = null;
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            VideoAudio videoAudio;
            MediaPlayer mediaPlayer;
            WeakReference weakReference = this.e;
            if (weakReference != null && (videoAudio = (VideoAudio) weakReference.get()) != null) {
                videoAudio.d = null;
                boolean z = this.h;
                boolean z2 = this.g;
                if (!z && (mediaPlayer = videoAudio.f18444c) != null) {
                    try {
                        mediaPlayer.prepareAsync();
                        if (z2) {
                            DbBookSub.f(videoAudio.h, videoAudio.f18443a, this.f, videoAudio.g);
                            return;
                        }
                        return;
                    } catch (Exception unused) {
                        if (z2) {
                            MainUtil.e8(videoAudio.f18443a, R.string.audio_error);
                            return;
                        }
                        return;
                    }
                }
                if (z2) {
                    MainUtil.e8(videoAudio.f18443a, R.string.audio_error);
                }
            }
        }
    }

    public final void a(boolean z) {
        AudioListener audioListener;
        if (this.f18444c != null && (audioListener = this.b) != null && this.e) {
            if (z) {
                VideoActivity videoActivity = VideoActivity.this;
                if (PrefSub.x && videoActivity.Q0() && videoActivity.g()) {
                    if (!this.f18444c.isPlaying()) {
                        if (this.f) {
                            d(null, this.h, this.g, false);
                            return;
                        } else {
                            this.f18444c.start();
                            return;
                        }
                    }
                    return;
                }
            }
            if (this.f18444c.isPlaying()) {
                this.f18444c.pause();
            }
        }
    }

    public final void b(int i) {
        MediaPlayer mediaPlayer = this.f18444c;
        if (mediaPlayer != null && this.b != null && this.e) {
            int duration = mediaPlayer.getDuration();
            if (duration <= 0) {
                a(true);
                return;
            }
            int i2 = i + this.h;
            if (i2 >= 0 && i2 <= duration) {
                this.f18444c.seekTo(i2);
                a(true);
            } else {
                a(false);
            }
        }
    }

    public final void c() {
        MediaPlayer mediaPlayer = this.f18444c;
        if (mediaPlayer != null && this.b != null && this.e) {
            this.f = true;
            if (mediaPlayer.isPlaying()) {
                this.f18444c.pause();
            }
        }
    }

    public final void d(String str, int i, String str2, boolean z) {
        if (z && MainUtil.q5(str2, this.g)) {
            return;
        }
        PlayTask playTask = this.d;
        if (playTask != null) {
            playTask.f12839c = true;
        }
        this.d = null;
        this.e = false;
        this.f = false;
        MediaPlayer mediaPlayer = this.f18444c;
        this.i = mediaPlayer;
        this.f18444c = null;
        if (mediaPlayer != null) {
            MainApp.J(this.f18443a, new AnonymousClass4());
        }
        this.g = str2;
        this.h = i;
        MediaPlayer mediaPlayer2 = new MediaPlayer();
        this.f18444c = mediaPlayer2;
        mediaPlayer2.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.mycompany.app.video.VideoAudio.1
            @Override // android.media.MediaPlayer.OnPreparedListener
            public final void onPrepared(MediaPlayer mediaPlayer3) {
                AudioListener audioListener;
                VideoAudio videoAudio = VideoAudio.this;
                if (videoAudio.f18444c != null && (audioListener = videoAudio.b) != null) {
                    videoAudio.e = true;
                    videoAudio.b(audioListener.a());
                }
            }
        });
        this.f18444c.setOnSeekCompleteListener(new MediaPlayer.OnSeekCompleteListener() { // from class: com.mycompany.app.video.VideoAudio.2
            @Override // android.media.MediaPlayer.OnSeekCompleteListener
            public final void onSeekComplete(MediaPlayer mediaPlayer3) {
                VideoAudio.this.a(true);
            }
        });
        this.f18444c.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.mycompany.app.video.VideoAudio.3
            @Override // android.media.MediaPlayer.OnCompletionListener
            public final void onCompletion(MediaPlayer mediaPlayer3) {
                VideoAudio.this.a(false);
            }
        });
        PlayTask playTask2 = this.d;
        if (playTask2 != null) {
            playTask2.f12839c = true;
        }
        this.d = null;
        PlayTask playTask3 = new PlayTask(this, str, z);
        this.d = playTask3;
        playTask3.b(this.f18443a);
    }
}
