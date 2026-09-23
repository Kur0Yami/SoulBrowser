package com.mycompany.app.torrent;

import com.frostwire.jlibtorrent.AlertListener;
import com.frostwire.jlibtorrent.TorrentHandle;
import com.frostwire.jlibtorrent.TorrentStatus;
import com.frostwire.jlibtorrent.alerts.Alert;
import com.frostwire.jlibtorrent.alerts.AlertType;
import com.frostwire.jlibtorrent.swig.libtorrent_jni;
import com.frostwire.jlibtorrent.swig.status_flags_t;
import com.frostwire.jlibtorrent.swig.torrent_handle;
import com.frostwire.jlibtorrent.swig.torrent_status;
import com.mycompany.app.torrent.TorrentStream;

/* loaded from: classes3.dex */
public class Torrent implements AlertListener {

    /* renamed from: a, reason: collision with root package name */
    public TorrentHandle f18310a;
    public TorrentStream.InternalTorrentListener b;

    /* renamed from: c, reason: collision with root package name */
    public int f18311c;

    /* renamed from: com.mycompany.app.torrent.Torrent$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f18312a;

        static {
            int[] iArr = new int[AlertType.values().length];
            f18312a = iArr;
            try {
                iArr[AlertType.BLOCK_FINISHED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18312a[AlertType.TORRENT_FINISHED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    @Override // com.frostwire.jlibtorrent.AlertListener
    public final void a(Alert alert) {
        TorrentHandle torrentHandle;
        long j;
        TorrentStream.InternalTorrentListener internalTorrentListener = this.b;
        int ordinal = alert.type().ordinal();
        if (ordinal != 0) {
            if (ordinal == 12 && (torrentHandle = this.f18310a) != null && this.f18311c != 2) {
                long currentTimeMillis = System.currentTimeMillis();
                if (currentTimeMillis - torrentHandle.b >= 500) {
                    torrentHandle.b = currentTimeMillis;
                    torrent_handle torrent_handleVar = torrentHandle.f2630a;
                    status_flags_t status_flags_tVar = TorrentHandle.d;
                    torrent_handleVar.getClass();
                    long j2 = torrent_handleVar.f2739a;
                    if (status_flags_tVar == null) {
                        j = 0;
                    } else {
                        j = status_flags_tVar.f2730a;
                    }
                    torrentHandle.f2631c = new TorrentStatus(new torrent_status(libtorrent_jni.torrent_handle_status__SWIG_0(j2, torrent_handleVar, j, status_flags_tVar)));
                }
                TorrentStatus torrentStatus = torrentHandle.f2631c;
                if (torrentStatus != null) {
                    torrent_status torrent_statusVar = torrentStatus.f2636c;
                    float f = libtorrent_jni.torrent_status_progress_get(torrent_statusVar.f2742a, torrent_statusVar);
                    if (f > 0.0f && internalTorrentListener != null) {
                        internalTorrentListener.d(this, f);
                        return;
                    }
                    return;
                }
                return;
            }
            return;
        }
        if (this.f18311c != 2) {
            this.f18311c = 2;
            if (internalTorrentListener != null) {
                internalTorrentListener.b(this);
            }
        }
    }

    @Override // com.frostwire.jlibtorrent.AlertListener
    public final int[] b() {
        return new int[]{AlertType.BLOCK_FINISHED.f2641c, AlertType.TORRENT_FINISHED.f2641c};
    }
}
