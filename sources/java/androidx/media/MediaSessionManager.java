package androidx.media;

import android.media.session.MediaSessionManager;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import androidx.media.MediaSessionManagerImplApi28;
import androidx.media.MediaSessionManagerImplBase;

/* loaded from: classes.dex */
public final class MediaSessionManager {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f1268a = 0;

    /* loaded from: classes.dex */
    public interface MediaSessionManagerImpl {
    }

    /* loaded from: classes.dex */
    public interface RemoteUserInfoImpl {
    }

    static {
        Log.isLoggable("MediaSessionManager", 3);
    }

    /* loaded from: classes.dex */
    public static final class RemoteUserInfo {

        /* renamed from: a, reason: collision with root package name */
        public final MediaSessionManagerImplBase.RemoteUserInfoImplBase f1269a;

        public RemoteUserInfo(String str, int i, int i2) {
            if (str != null) {
                if (!TextUtils.isEmpty(str)) {
                    if (Build.VERSION.SDK_INT >= 28) {
                        MediaSessionManagerImplBase.RemoteUserInfoImplBase remoteUserInfoImplBase = new MediaSessionManagerImplBase.RemoteUserInfoImplBase(str, i, i2);
                        a.a(i, i2, str);
                        this.f1269a = remoteUserInfoImplBase;
                        return;
                    }
                    this.f1269a = new MediaSessionManagerImplBase.RemoteUserInfoImplBase(str, i, i2);
                    return;
                }
                throw new IllegalArgumentException("packageName should be nonempty");
            }
            throw new NullPointerException("package shouldn't be null");
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RemoteUserInfo)) {
                return false;
            }
            return this.f1269a.equals(((RemoteUserInfo) obj).f1269a);
        }

        public final int hashCode() {
            return this.f1269a.hashCode();
        }

        public RemoteUserInfo(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
            String a2 = MediaSessionManagerImplApi28.RemoteUserInfoImplApi28.a(remoteUserInfo);
            if (a2 != null) {
                if (!TextUtils.isEmpty(a2)) {
                    this.f1269a = new MediaSessionManagerImplApi28.RemoteUserInfoImplApi28(remoteUserInfo);
                    return;
                }
                throw new IllegalArgumentException("packageName should be nonempty");
            }
            throw new NullPointerException("package shouldn't be null");
        }
    }
}
