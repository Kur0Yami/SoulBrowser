package com.frostwire.jlibtorrent;

import com.frostwire.jlibtorrent.swig.bdecode_node;
import com.frostwire.jlibtorrent.swig.byte_vector;
import com.frostwire.jlibtorrent.swig.error_code;
import com.frostwire.jlibtorrent.swig.libtorrent_jni;
import com.frostwire.jlibtorrent.swig.torrent_info;

/* loaded from: classes.dex */
public final class TorrentInfo {

    /* renamed from: a, reason: collision with root package name */
    public final torrent_info f2633a;

    public TorrentInfo(torrent_info torrent_infoVar) {
        this.f2633a = torrent_infoVar;
    }

    public static TorrentInfo a(byte[] bArr) {
        byte_vector byte_vectorVar = new byte_vector();
        for (byte b : bArr) {
            libtorrent_jni.byte_vector_push_back(byte_vectorVar.f2668a, byte_vectorVar, b);
        }
        bdecode_node bdecode_nodeVar = new bdecode_node(libtorrent_jni.new_bdecode_node__SWIG_0(), true);
        error_code error_codeVar = new error_code();
        if (libtorrent_jni.bdecode_node_bdecode(byte_vectorVar.f2668a, byte_vectorVar, bdecode_nodeVar.f2665a, bdecode_nodeVar, error_codeVar.f2682a, error_codeVar) == 0) {
            libtorrent_jni.error_code_clear(error_codeVar.f2682a, error_codeVar);
            torrent_info torrent_infoVar = new torrent_info(libtorrent_jni.new_torrent_info__SWIG_2(bdecode_nodeVar.f2665a, bdecode_nodeVar, error_codeVar.f2682a, error_codeVar), true);
            libtorrent_jni.byte_vector_clear(byte_vectorVar.f2668a, byte_vectorVar);
            if (libtorrent_jni.error_code_value(error_codeVar.f2682a, error_codeVar) == 0) {
                return new TorrentInfo(torrent_infoVar);
            }
            throw new IllegalArgumentException("Can't decode data: " + libtorrent_jni.error_code_message(error_codeVar.f2682a, error_codeVar));
        }
        throw new IllegalArgumentException("Can't decode data: " + libtorrent_jni.error_code_message(error_codeVar.f2682a, error_codeVar));
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, com.frostwire.jlibtorrent.swig.file_storage] */
    public final FileStorage b() {
        torrent_info torrent_infoVar = this.f2633a;
        long j = libtorrent_jni.torrent_info_files(torrent_infoVar.f2741a, torrent_infoVar);
        ?? obj = new Object();
        obj.f2685a = j;
        return new FileStorage(obj, torrent_infoVar);
    }
}
