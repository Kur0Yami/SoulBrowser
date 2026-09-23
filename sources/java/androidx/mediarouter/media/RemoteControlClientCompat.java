package androidx.mediarouter.media;

import androidx.mediarouter.media.MediaRouterUtils;

/* loaded from: classes.dex */
abstract class RemoteControlClientCompat {

    /* loaded from: classes.dex */
    public static class JellybeanImpl extends RemoteControlClientCompat {

        /* loaded from: classes.dex */
        public static final class VolumeCallbackWrapper implements MediaRouterUtils.VolumeCallback {
        }
    }

    /* loaded from: classes.dex */
    public static final class PlaybackInfo {

        /* renamed from: a, reason: collision with root package name */
        public int f1412a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public int f1413c;
        public int d;
        public String e;
    }

    /* loaded from: classes.dex */
    public interface VolumeCallback {
    }
}
