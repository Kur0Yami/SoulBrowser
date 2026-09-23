package com.frostwire.jlibtorrent;

import com.frostwire.jlibtorrent.swig.add_files_listener;
import com.frostwire.jlibtorrent.swig.create_flags_t;
import com.frostwire.jlibtorrent.swig.create_torrent;
import com.frostwire.jlibtorrent.swig.set_piece_hashes_listener;

/* loaded from: classes.dex */
public final class TorrentBuilder {

    /* renamed from: a, reason: collision with root package name */
    public static final create_flags_t f2626a = create_torrent.f2672c;
    public static final create_flags_t b = create_torrent.d;

    /* renamed from: c, reason: collision with root package name */
    public static final create_flags_t f2627c = create_torrent.e;
    public static final create_flags_t d = create_torrent.f;
    public static final create_flags_t e = create_torrent.g;

    /* renamed from: com.frostwire.jlibtorrent.TorrentBuilder$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 extends add_files_listener {
        @Override // com.frostwire.jlibtorrent.swig.add_files_listener
        public final boolean a(String str) {
            create_flags_t create_flags_tVar = TorrentBuilder.f2626a;
            throw null;
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.TorrentBuilder$2, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass2 extends set_piece_hashes_listener {
        @Override // com.frostwire.jlibtorrent.swig.set_piece_hashes_listener
        public final void a(int i) {
            create_flags_t create_flags_tVar = TorrentBuilder.f2626a;
            throw null;
        }
    }

    /* loaded from: classes.dex */
    public interface Listener {
    }

    /* loaded from: classes.dex */
    public static final class Result {
    }
}
