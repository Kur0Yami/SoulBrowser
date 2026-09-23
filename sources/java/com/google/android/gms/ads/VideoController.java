package com.google.android.gms.ads;

import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzed;
import com.google.android.gms.ads.internal.client.zzfz;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.common.annotation.KeepForSdk;

/* loaded from: classes.dex */
public final class VideoController {

    @KeepForSdk
    public static final int PLAYBACK_STATE_ENDED = 3;

    @KeepForSdk
    public static final int PLAYBACK_STATE_PAUSED = 2;

    @KeepForSdk
    public static final int PLAYBACK_STATE_PLAYING = 1;

    @KeepForSdk
    public static final int PLAYBACK_STATE_READY = 5;

    @KeepForSdk
    public static final int PLAYBACK_STATE_UNKNOWN = 0;

    /* renamed from: a, reason: collision with root package name */
    public final Object f2952a = new Object();
    public zzed b;

    /* renamed from: c, reason: collision with root package name */
    public VideoLifecycleCallbacks f2953c;

    /* loaded from: classes.dex */
    public static abstract class VideoLifecycleCallbacks {
        public void onVideoEnd() {
        }

        public void onVideoMute(boolean z) {
        }

        public void onVideoPause() {
        }

        public void onVideoPlay() {
        }

        public void onVideoStart() {
        }
    }

    @KeepForSdk
    public int getPlaybackState() {
        synchronized (this.f2952a) {
            zzed zzedVar = this.b;
            if (zzedVar == null) {
                return 0;
            }
            try {
                return zzedVar.zzi();
            } catch (RemoteException e) {
                zzo.zzg("Unable to call getPlaybackState on video controller.", e);
                return 0;
            }
        }
    }

    @Nullable
    public VideoLifecycleCallbacks getVideoLifecycleCallbacks() {
        VideoLifecycleCallbacks videoLifecycleCallbacks;
        synchronized (this.f2952a) {
            videoLifecycleCallbacks = this.f2953c;
        }
        return videoLifecycleCallbacks;
    }

    public boolean hasVideoContent() {
        boolean z;
        synchronized (this.f2952a) {
            if (this.b != null) {
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    public boolean isClickToExpandEnabled() {
        synchronized (this.f2952a) {
            zzed zzedVar = this.b;
            if (zzedVar == null) {
                return false;
            }
            try {
                return zzedVar.zzp();
            } catch (RemoteException e) {
                zzo.zzg("Unable to call isClickToExpandEnabled.", e);
                return false;
            }
        }
    }

    public boolean isCustomControlsEnabled() {
        synchronized (this.f2952a) {
            zzed zzedVar = this.b;
            if (zzedVar == null) {
                return false;
            }
            try {
                return zzedVar.zzn();
            } catch (RemoteException e) {
                zzo.zzg("Unable to call isUsingCustomPlayerControls.", e);
                return false;
            }
        }
    }

    public boolean isMuted() {
        synchronized (this.f2952a) {
            zzed zzedVar = this.b;
            if (zzedVar == null) {
                return true;
            }
            try {
                return zzedVar.zzh();
            } catch (RemoteException e) {
                zzo.zzg("Unable to call isMuted on video controller.", e);
                return true;
            }
        }
    }

    public void mute(boolean z) {
        synchronized (this.f2952a) {
            zzed zzedVar = this.b;
            if (zzedVar == null) {
                return;
            }
            try {
                zzedVar.zzg(z);
            } catch (RemoteException e) {
                zzo.zzg("Unable to call mute on video controller.", e);
            }
        }
    }

    public void pause() {
        synchronized (this.f2952a) {
            zzed zzedVar = this.b;
            if (zzedVar == null) {
                return;
            }
            try {
                zzedVar.zzf();
            } catch (RemoteException e) {
                zzo.zzg("Unable to call pause on video controller.", e);
            }
        }
    }

    public void play() {
        synchronized (this.f2952a) {
            zzed zzedVar = this.b;
            if (zzedVar == null) {
                return;
            }
            try {
                zzedVar.zze();
            } catch (RemoteException e) {
                zzo.zzg("Unable to call play on video controller.", e);
            }
        }
    }

    public void setVideoLifecycleCallbacks(@Nullable VideoLifecycleCallbacks videoLifecycleCallbacks) {
        zzfz zzfzVar;
        synchronized (this.f2952a) {
            this.f2953c = videoLifecycleCallbacks;
            zzed zzedVar = this.b;
            if (zzedVar == null) {
                return;
            }
            if (videoLifecycleCallbacks == null) {
                zzfzVar = null;
            } else {
                try {
                    zzfzVar = new zzfz(videoLifecycleCallbacks);
                } catch (RemoteException e) {
                    zzo.zzg("Unable to call setVideoLifecycleCallbacks on video controller.", e);
                }
            }
            zzedVar.zzl(zzfzVar);
        }
    }

    public void stop() {
        synchronized (this.f2952a) {
            zzed zzedVar = this.b;
            if (zzedVar == null) {
                return;
            }
            try {
                zzedVar.zzq();
            } catch (RemoteException e) {
                zzo.zzg("Unable to call stop on video controller.", e);
            }
        }
    }

    public final void zza(@Nullable zzed zzedVar) {
        synchronized (this.f2952a) {
            try {
                this.b = zzedVar;
                VideoLifecycleCallbacks videoLifecycleCallbacks = this.f2953c;
                if (videoLifecycleCallbacks != null) {
                    setVideoLifecycleCallbacks(videoLifecycleCallbacks);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Nullable
    public final zzed zzb() {
        zzed zzedVar;
        synchronized (this.f2952a) {
            zzedVar = this.b;
        }
        return zzedVar;
    }
}
