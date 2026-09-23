package com.mycompany.app.torrent;

import com.frostwire.jlibtorrent.TorrentInfo;
import java.util.HashMap;

/* loaded from: classes3.dex */
public class TorrentUtil {
    public static TorrentUtil b;

    /* renamed from: a, reason: collision with root package name */
    public HashMap f18323a;

    /* loaded from: classes3.dex */
    public static class TorrentItem {

        /* renamed from: a, reason: collision with root package name */
        public TorrentInfo f18324a;
        public String b;

        /* renamed from: c, reason: collision with root package name */
        public long f18325c;
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [com.mycompany.app.torrent.TorrentUtil, java.lang.Object] */
    public static TorrentUtil b() {
        if (b == null) {
            synchronized (TorrentUtil.class) {
                try {
                    if (b == null) {
                        b = new Object();
                    }
                } finally {
                }
            }
        }
        return b;
    }

    public final TorrentInfo a(String str) {
        try {
            HashMap hashMap = this.f18323a;
            if (hashMap == null) {
                return null;
            }
            TorrentInfo torrentInfo = (TorrentInfo) hashMap.get(str);
            try {
                this.f18323a.remove(str);
                return torrentInfo;
            } catch (Exception unused) {
                return torrentInfo;
            }
        } catch (Exception unused2) {
            return null;
        }
    }
}
