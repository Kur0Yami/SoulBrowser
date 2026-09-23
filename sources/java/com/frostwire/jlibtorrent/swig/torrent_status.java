package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public class torrent_status {

    /* renamed from: a, reason: collision with root package name */
    public transient long f2742a;
    public transient boolean b = true;

    public torrent_status(long j) {
        this.f2742a = j;
    }

    public final void finalize() {
        synchronized (this) {
            try {
                long j = this.f2742a;
                if (j != 0) {
                    if (this.b) {
                        this.b = false;
                        libtorrent_jni.delete_torrent_status(j);
                    }
                    this.f2742a = 0L;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* loaded from: classes.dex */
    public static final class state_t {

        /* renamed from: c, reason: collision with root package name */
        public static final state_t f2743c = new state_t("checking_files", libtorrent_jni.torrent_status_checking_files_get());
        public static final state_t d = new state_t("downloading_metadata");
        public static final state_t e = new state_t("downloading");
        public static final state_t f = new state_t("finished");
        public static final state_t g = new state_t("seeding");
        public static final state_t h = new state_t("checking_resume_data", libtorrent_jni.torrent_status_checking_resume_data_get());
        public static int i = 0;

        /* renamed from: a, reason: collision with root package name */
        public final int f2744a;
        public final String b;

        public state_t(String str) {
            this.b = str;
            int i2 = i;
            i = i2 + 1;
            this.f2744a = i2;
        }

        public final String toString() {
            return this.b;
        }

        public state_t(String str, int i2) {
            this.b = str;
            this.f2744a = i2;
            i = i2 + 1;
        }
    }
}
