package com.frostwire.jlibtorrent;

import com.frostwire.jlibtorrent.swig.add_piece_flags_t;
import com.frostwire.jlibtorrent.swig.deadline_flags_t;
import com.frostwire.jlibtorrent.swig.libtorrent_jni;
import com.frostwire.jlibtorrent.swig.reannounce_flags_t;
import com.frostwire.jlibtorrent.swig.resume_data_flags_t;
import com.frostwire.jlibtorrent.swig.status_flags_t;
import com.frostwire.jlibtorrent.swig.torrent_handle;

/* loaded from: classes.dex */
public final class TorrentHandle {
    public static final status_flags_t d = new status_flags_t(libtorrent_jni.new_status_flags_t(), true);
    public static final add_piece_flags_t e = torrent_handle.f2738c;
    public static final status_flags_t f = torrent_handle.d;
    public static final status_flags_t g = torrent_handle.e;
    public static final status_flags_t h = torrent_handle.f;
    public static final status_flags_t i = torrent_handle.g;
    public static final status_flags_t j = torrent_handle.h;
    public static final status_flags_t k = torrent_handle.i;
    public static final status_flags_t l = torrent_handle.j;
    public static final status_flags_t m = torrent_handle.k;
    public static final resume_data_flags_t n = torrent_handle.o;
    public static final resume_data_flags_t o = torrent_handle.p;
    public static final resume_data_flags_t p = torrent_handle.q;
    public static final reannounce_flags_t q = torrent_handle.r;
    public static final deadline_flags_t r = torrent_handle.l;

    /* renamed from: a, reason: collision with root package name */
    public final torrent_handle f2630a;
    public long b;

    /* renamed from: c, reason: collision with root package name */
    public TorrentStatus f2631c;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public static final class FileProgressFlags {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ FileProgressFlags[] f2632c;

        /* JADX INFO: Fake field, exist only in values array */
        FileProgressFlags EF9;

        /* JADX WARN: Multi-variable type inference failed */
        static {
            int i = torrent_handle.file_progress_flags_t.b.f2740a;
            f2632c = new FileProgressFlags[]{new Enum("PIECE_GRANULARITY", 0)};
        }

        public static FileProgressFlags valueOf(String str) {
            return (FileProgressFlags) Enum.valueOf(FileProgressFlags.class, str);
        }

        public static FileProgressFlags[] values() {
            return (FileProgressFlags[]) f2632c.clone();
        }
    }

    public TorrentHandle(torrent_handle torrent_handleVar) {
        this.f2630a = torrent_handleVar;
    }
}
