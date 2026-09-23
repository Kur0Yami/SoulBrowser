package com.mycompany.app.torrent;

import com.frostwire.jlibtorrent.AlertListener;
import com.frostwire.jlibtorrent.alerts.AddTorrentAlert;
import com.frostwire.jlibtorrent.alerts.Alert;
import com.frostwire.jlibtorrent.alerts.AlertType;

/* loaded from: classes3.dex */
public abstract class TorAlertAddListener implements AlertListener {

    /* renamed from: com.mycompany.app.torrent.TorAlertAddListener$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static {
            try {
                new int[AlertType.values().length][AlertType.ADD_TORRENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    @Override // com.frostwire.jlibtorrent.AlertListener
    public final void a(Alert alert) {
        if (alert.type().ordinal() != 9) {
            return;
        }
        c((AddTorrentAlert) alert);
    }

    @Override // com.frostwire.jlibtorrent.AlertListener
    public final int[] b() {
        return new int[]{AlertType.ADD_TORRENT.f2641c};
    }

    public abstract void c(AddTorrentAlert addTorrentAlert);
}
