package com.google.android.gms.cast.framework.media.uicontroller;

import android.os.Bundle;
import android.text.format.DateUtils;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaLiveSeekableRange;
import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.cast.MediaQueueItem;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.cast.internal.zzar;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import java.text.DateFormat;
import java.util.Date;
import java.util.regex.Pattern;

@ShowFirstParty
/* loaded from: classes.dex */
public final class zza {

    /* renamed from: a, reason: collision with root package name */
    public RemoteMediaClient f3532a;

    public static final String m(long j) {
        if (j >= 0) {
            return DateUtils.formatElapsedTime(j / 1000);
        }
        return "-".concat(String.valueOf(DateUtils.formatElapsedTime((-j) / 1000)));
    }

    public final int a() {
        MediaInfo mediaInfo;
        RemoteMediaClient remoteMediaClient = this.f3532a;
        long j = 1;
        if (remoteMediaClient != null && remoteMediaClient.j()) {
            RemoteMediaClient remoteMediaClient2 = this.f3532a;
            if (!remoteMediaClient2.l()) {
                if (remoteMediaClient2.m()) {
                    MediaQueueItem e = remoteMediaClient2.e();
                    if (e != null && (mediaInfo = e.f3450c) != null) {
                        j = Math.max(mediaInfo.i, 1L);
                    }
                } else {
                    j = Math.max(remoteMediaClient2.i(), 1L);
                }
            } else {
                Long h = h();
                if (h != null) {
                    j = h.longValue();
                } else {
                    Long j2 = j();
                    j = j2 != null ? j2.longValue() : Math.max(remoteMediaClient2.d(), 1L);
                }
            }
        }
        return Math.max((int) (j - f()), 1);
    }

    public final int b() {
        RemoteMediaClient remoteMediaClient = this.f3532a;
        if (remoteMediaClient != null && remoteMediaClient.j()) {
            RemoteMediaClient remoteMediaClient2 = this.f3532a;
            if (remoteMediaClient2.l() || !remoteMediaClient2.m()) {
                int d = (int) (remoteMediaClient2.d() - f());
                if (remoteMediaClient2.E()) {
                    int d2 = d();
                    int e = e();
                    Pattern pattern = CastUtils.f3603a;
                    d = Math.min(Math.max(d, d2), e);
                }
                int a2 = a();
                Pattern pattern2 = CastUtils.f3603a;
                return Math.min(Math.max(d, 0), a2);
            }
        }
        return 0;
    }

    public final boolean c(long j) {
        RemoteMediaClient remoteMediaClient = this.f3532a;
        if (remoteMediaClient == null || !remoteMediaClient.j() || !this.f3532a.E()) {
            return false;
        }
        if ((f() + e()) - j >= 10000) {
            return false;
        }
        return true;
    }

    public final int d() {
        RemoteMediaClient remoteMediaClient = this.f3532a;
        if (remoteMediaClient == null || !remoteMediaClient.j() || !this.f3532a.l() || !this.f3532a.E()) {
            return 0;
        }
        long longValue = ((Long) Preconditions.checkNotNull(i())).longValue() - f();
        int a2 = a();
        Pattern pattern = CastUtils.f3603a;
        return Math.min(Math.max((int) longValue, 0), a2);
    }

    public final int e() {
        RemoteMediaClient remoteMediaClient = this.f3532a;
        if (remoteMediaClient != null && remoteMediaClient.j() && this.f3532a.l()) {
            if (!this.f3532a.E()) {
                return 0;
            }
            long longValue = ((Long) Preconditions.checkNotNull(j())).longValue() - f();
            int a2 = a();
            Pattern pattern = CastUtils.f3603a;
            return Math.min(Math.max((int) longValue, 0), a2);
        }
        return a();
    }

    public final long f() {
        RemoteMediaClient remoteMediaClient = this.f3532a;
        if (remoteMediaClient != null && remoteMediaClient.j() && this.f3532a.l()) {
            RemoteMediaClient remoteMediaClient2 = this.f3532a;
            Long g = g();
            if (g != null) {
                return g.longValue();
            }
            Long i = i();
            if (i != null) {
                return i.longValue();
            }
            return remoteMediaClient2.d();
        }
        return 0L;
    }

    public final Long g() {
        MediaMetadata mediaMetadata;
        MediaInfo f;
        RemoteMediaClient remoteMediaClient = this.f3532a;
        if (remoteMediaClient != null && remoteMediaClient.j() && this.f3532a.l()) {
            RemoteMediaClient remoteMediaClient2 = this.f3532a;
            MediaInfo f2 = remoteMediaClient2.f();
            RemoteMediaClient remoteMediaClient3 = this.f3532a;
            if (remoteMediaClient3 != null && remoteMediaClient3.j() && (f = this.f3532a.f()) != null) {
                mediaMetadata = f.h;
            } else {
                mediaMetadata = null;
            }
            if (f2 != null && mediaMetadata != null) {
                Bundle bundle = mediaMetadata.f;
                if (bundle.containsKey("com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_MEDIA") && (bundle.containsKey("com.google.android.gms.cast.metadata.SECTION_DURATION") || remoteMediaClient2.E())) {
                    MediaMetadata.X(5, "com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_MEDIA");
                    return Long.valueOf(bundle.getLong("com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_MEDIA"));
                }
            }
        }
        return null;
    }

    public final Long h() {
        MediaMetadata mediaMetadata;
        Long g;
        MediaInfo f;
        RemoteMediaClient remoteMediaClient = this.f3532a;
        if (remoteMediaClient != null && remoteMediaClient.j() && this.f3532a.l()) {
            RemoteMediaClient remoteMediaClient2 = this.f3532a;
            if (remoteMediaClient2 != null && remoteMediaClient2.j() && (f = this.f3532a.f()) != null) {
                mediaMetadata = f.h;
            } else {
                mediaMetadata = null;
            }
            if (mediaMetadata != null) {
                Bundle bundle = mediaMetadata.f;
                if (bundle.containsKey("com.google.android.gms.cast.metadata.SECTION_DURATION") && (g = g()) != null) {
                    long longValue = g.longValue();
                    MediaMetadata.X(5, "com.google.android.gms.cast.metadata.SECTION_DURATION");
                    return Long.valueOf(bundle.getLong("com.google.android.gms.cast.metadata.SECTION_DURATION") + longValue);
                }
            }
        }
        return null;
    }

    public final Long i() {
        RemoteMediaClient remoteMediaClient;
        MediaStatus g;
        long j;
        MediaLiveSeekableRange mediaLiveSeekableRange;
        RemoteMediaClient remoteMediaClient2 = this.f3532a;
        if (remoteMediaClient2 != null && remoteMediaClient2.j() && this.f3532a.l() && this.f3532a.E() && (g = (remoteMediaClient = this.f3532a).g()) != null && g.y != null) {
            synchronized (remoteMediaClient.f3505a) {
                Preconditions.checkMainThread("Must be called from the main thread.");
                zzar zzarVar = remoteMediaClient.f3506c;
                MediaStatus mediaStatus = zzarVar.f;
                j = 0;
                if (mediaStatus != null && (mediaLiveSeekableRange = mediaStatus.y) != null) {
                    long j2 = mediaLiveSeekableRange.f3441c;
                    if (mediaLiveSeekableRange.g) {
                        j = zzarVar.f(1.0d, j2, -1L);
                    } else {
                        j = j2;
                    }
                    if (mediaLiveSeekableRange.h) {
                        j = Math.min(j, mediaLiveSeekableRange.f);
                    }
                }
            }
            return Long.valueOf(j);
        }
        return null;
    }

    public final Long j() {
        RemoteMediaClient remoteMediaClient;
        MediaStatus g;
        long j;
        MediaLiveSeekableRange mediaLiveSeekableRange;
        RemoteMediaClient remoteMediaClient2 = this.f3532a;
        if (remoteMediaClient2 != null && remoteMediaClient2.j() && this.f3532a.l() && this.f3532a.E() && (g = (remoteMediaClient = this.f3532a).g()) != null && g.y != null) {
            synchronized (remoteMediaClient.f3505a) {
                Preconditions.checkMainThread("Must be called from the main thread.");
                zzar zzarVar = remoteMediaClient.f3506c;
                MediaStatus mediaStatus = zzarVar.f;
                j = 0;
                if (mediaStatus != null && (mediaLiveSeekableRange = mediaStatus.y) != null) {
                    long j2 = mediaLiveSeekableRange.f;
                    j = !mediaLiveSeekableRange.h ? zzarVar.f(1.0d, j2, -1L) : j2;
                }
            }
            return Long.valueOf(j);
        }
        return null;
    }

    public final String k(long j) {
        RemoteMediaClient remoteMediaClient = this.f3532a;
        if (remoteMediaClient != null && remoteMediaClient.j()) {
            RemoteMediaClient remoteMediaClient2 = this.f3532a;
            int i = 1;
            if (remoteMediaClient2 != null && remoteMediaClient2.j() && this.f3532a.l() && l() != null) {
                i = 2;
            }
            if (i - 1 != 0) {
                return DateFormat.getTimeInstance().format(new Date(((Long) Preconditions.checkNotNull(l())).longValue() + j));
            }
            if (remoteMediaClient2.l() && g() == null) {
                return m(j);
            }
            return m(j - f());
        }
        return null;
    }

    public final Long l() {
        MediaInfo f;
        RemoteMediaClient remoteMediaClient = this.f3532a;
        if (remoteMediaClient != null && remoteMediaClient.j() && this.f3532a.l() && (f = this.f3532a.f()) != null) {
            long j = f.q;
            if (j != -1) {
                return Long.valueOf(j);
            }
            return null;
        }
        return null;
    }
}
