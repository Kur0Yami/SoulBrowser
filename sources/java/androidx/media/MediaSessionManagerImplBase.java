package androidx.media;

import android.text.TextUtils;
import androidx.media.MediaSessionManager;
import j$.util.Objects;

/* loaded from: classes.dex */
class MediaSessionManagerImplBase implements MediaSessionManager.MediaSessionManagerImpl {

    /* loaded from: classes.dex */
    public static class RemoteUserInfoImplBase implements MediaSessionManager.RemoteUserInfoImpl {

        /* renamed from: a, reason: collision with root package name */
        public final String f1270a;
        public final int b;

        /* renamed from: c, reason: collision with root package name */
        public final int f1271c;

        public RemoteUserInfoImplBase(String str, int i, int i2) {
            this.f1270a = str;
            this.b = i;
            this.f1271c = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RemoteUserInfoImplBase)) {
                return false;
            }
            RemoteUserInfoImplBase remoteUserInfoImplBase = (RemoteUserInfoImplBase) obj;
            int i = remoteUserInfoImplBase.f1271c;
            String str = remoteUserInfoImplBase.f1270a;
            int i2 = remoteUserInfoImplBase.b;
            int i3 = this.f1271c;
            String str2 = this.f1270a;
            int i4 = this.b;
            if (i4 >= 0 && i2 >= 0) {
                if (TextUtils.equals(str2, str) && i4 == i2 && i3 == i) {
                    return true;
                }
                return false;
            }
            if (TextUtils.equals(str2, str) && i3 == i) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Objects.hash(this.f1270a, Integer.valueOf(this.f1271c));
        }
    }

    static {
        int i = MediaSessionManager.f1268a;
    }
}
