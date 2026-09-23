package androidx.media;

import android.media.AudioFocusRequest;
import android.media.AudioManager;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* loaded from: classes.dex */
public final class AudioManagerCompat {

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api21Impl {
        @DoNotInline
        public static boolean a(AudioManager audioManager) {
            return audioManager.isVolumeFixed();
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api26Impl {
        @DoNotInline
        public static int a(AudioManager audioManager, AudioFocusRequest audioFocusRequest) {
            return audioManager.abandonAudioFocusRequest(audioFocusRequest);
        }

        @DoNotInline
        public static int b(AudioManager audioManager, AudioFocusRequest audioFocusRequest) {
            return audioManager.requestAudioFocus(audioFocusRequest);
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api28Impl {
        @DoNotInline
        public static int a(AudioManager audioManager, int i) {
            return audioManager.getStreamMinVolume(i);
        }
    }
}
