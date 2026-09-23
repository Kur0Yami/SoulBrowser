package com.frostwire.jlibtorrent;

import com.frostwire.jlibtorrent.swig.file_flags_t;
import com.frostwire.jlibtorrent.swig.file_storage;
import com.frostwire.jlibtorrent.swig.torrent_info;

/* loaded from: classes.dex */
public final class FileStorage {

    /* renamed from: c, reason: collision with root package name */
    public static final file_flags_t f2602c = file_storage.b;
    public static final file_flags_t d = file_storage.f2684c;
    public static final file_flags_t e = file_storage.d;
    public static final file_flags_t f = file_storage.e;

    /* renamed from: a, reason: collision with root package name */
    public final file_storage f2603a;
    public final torrent_info b;

    public FileStorage(file_storage file_storageVar, torrent_info torrent_infoVar) {
        this.f2603a = file_storageVar;
        this.b = torrent_infoVar;
    }
}
