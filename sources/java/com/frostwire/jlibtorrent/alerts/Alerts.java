package com.frostwire.jlibtorrent.alerts;

import com.frostwire.jlibtorrent.swig.alert;
import com.frostwire.jlibtorrent.swig.libtorrent_jni;
import com.frostwire.jlibtorrent.swig.metadata_received_alert;
import com.frostwire.jlibtorrent.swig.peer_alert;
import com.frostwire.jlibtorrent.swig.torrent_alert;
import com.frostwire.jlibtorrent.swig.tracker_alert;

/* loaded from: classes.dex */
public final class Alerts {

    /* renamed from: a, reason: collision with root package name */
    public static final int f2642a;
    public static final CastLambda[] b;

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 implements CastLambda {
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            Alerts.a(alertVar);
            throw null;
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$10, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass10 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.torrent_alert, com.frostwire.jlibtorrent.swig.performance_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_performance_alert = libtorrent_jni.alert_cast_to_performance_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_performance_alert == 0) {
                alertVar2 = null;
            } else {
                ?? torrent_alertVar = new torrent_alert(libtorrent_jni.performance_alert_SWIGUpcast(alert_cast_to_performance_alert), false);
                torrent_alertVar.B = alert_cast_to_performance_alert;
                alertVar2 = torrent_alertVar;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$11, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass11 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.torrent_alert, com.frostwire.jlibtorrent.swig.state_changed_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_state_changed_alert = libtorrent_jni.alert_cast_to_state_changed_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_state_changed_alert == 0) {
                alertVar2 = null;
            } else {
                ?? torrent_alertVar = new torrent_alert(libtorrent_jni.state_changed_alert_SWIGUpcast(alert_cast_to_state_changed_alert), false);
                torrent_alertVar.B = alert_cast_to_state_changed_alert;
                alertVar2 = torrent_alertVar;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$12, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass12 implements CastLambda {
        /* JADX WARN: Type inference failed for: r6v2, types: [com.frostwire.jlibtorrent.swig.tracker_error_alert, com.frostwire.jlibtorrent.swig.tracker_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_tracker_error_alert = libtorrent_jni.alert_cast_to_tracker_error_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_tracker_error_alert == 0) {
                alertVar2 = null;
            } else {
                ?? tracker_alertVar = new tracker_alert(libtorrent_jni.tracker_error_alert_SWIGUpcast(alert_cast_to_tracker_error_alert));
                tracker_alertVar.C = alert_cast_to_tracker_error_alert;
                alertVar2 = tracker_alertVar;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$13, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass13 implements CastLambda {
        /* JADX WARN: Type inference failed for: r6v2, types: [com.frostwire.jlibtorrent.swig.tracker_warning_alert, com.frostwire.jlibtorrent.swig.tracker_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_tracker_warning_alert = libtorrent_jni.alert_cast_to_tracker_warning_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_tracker_warning_alert == 0) {
                alertVar2 = null;
            } else {
                ?? tracker_alertVar = new tracker_alert(libtorrent_jni.tracker_warning_alert_SWIGUpcast(alert_cast_to_tracker_warning_alert));
                tracker_alertVar.C = alert_cast_to_tracker_warning_alert;
                alertVar2 = tracker_alertVar;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$14, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass14 implements CastLambda {
        /* JADX WARN: Type inference failed for: r6v2, types: [com.frostwire.jlibtorrent.swig.scrape_reply_alert, com.frostwire.jlibtorrent.swig.tracker_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_scrape_reply_alert = libtorrent_jni.alert_cast_to_scrape_reply_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_scrape_reply_alert == 0) {
                alertVar2 = null;
            } else {
                ?? tracker_alertVar = new tracker_alert(libtorrent_jni.scrape_reply_alert_SWIGUpcast(alert_cast_to_scrape_reply_alert));
                tracker_alertVar.C = alert_cast_to_scrape_reply_alert;
                alertVar2 = tracker_alertVar;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$15, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass15 implements CastLambda {
        /* JADX WARN: Type inference failed for: r6v2, types: [com.frostwire.jlibtorrent.swig.tracker_alert, com.frostwire.jlibtorrent.swig.scrape_failed_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_scrape_failed_alert = libtorrent_jni.alert_cast_to_scrape_failed_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_scrape_failed_alert == 0) {
                alertVar2 = null;
            } else {
                ?? tracker_alertVar = new tracker_alert(libtorrent_jni.scrape_failed_alert_SWIGUpcast(alert_cast_to_scrape_failed_alert));
                tracker_alertVar.C = alert_cast_to_scrape_failed_alert;
                alertVar2 = tracker_alertVar;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$16, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass16 implements CastLambda {
        /* JADX WARN: Type inference failed for: r6v2, types: [com.frostwire.jlibtorrent.swig.tracker_reply_alert, com.frostwire.jlibtorrent.swig.tracker_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_tracker_reply_alert = libtorrent_jni.alert_cast_to_tracker_reply_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_tracker_reply_alert == 0) {
                alertVar2 = null;
            } else {
                ?? tracker_alertVar = new tracker_alert(libtorrent_jni.tracker_reply_alert_SWIGUpcast(alert_cast_to_tracker_reply_alert));
                tracker_alertVar.C = alert_cast_to_tracker_reply_alert;
                alertVar2 = tracker_alertVar;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$17, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass17 implements CastLambda {
        /* JADX WARN: Type inference failed for: r6v2, types: [com.frostwire.jlibtorrent.swig.tracker_alert, com.frostwire.jlibtorrent.swig.dht_reply_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_dht_reply_alert = libtorrent_jni.alert_cast_to_dht_reply_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_dht_reply_alert == 0) {
                alertVar2 = null;
            } else {
                ?? tracker_alertVar = new tracker_alert(libtorrent_jni.dht_reply_alert_SWIGUpcast(alert_cast_to_dht_reply_alert));
                tracker_alertVar.C = alert_cast_to_dht_reply_alert;
                alertVar2 = tracker_alertVar;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$18, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass18 implements CastLambda {
        /* JADX WARN: Type inference failed for: r6v2, types: [com.frostwire.jlibtorrent.swig.tracker_announce_alert, com.frostwire.jlibtorrent.swig.tracker_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_tracker_announce_alert = libtorrent_jni.alert_cast_to_tracker_announce_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_tracker_announce_alert == 0) {
                alertVar2 = null;
            } else {
                ?? tracker_alertVar = new tracker_alert(libtorrent_jni.tracker_announce_alert_SWIGUpcast(alert_cast_to_tracker_announce_alert));
                tracker_alertVar.C = alert_cast_to_tracker_announce_alert;
                alertVar2 = tracker_alertVar;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$19, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass19 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.hash_failed_alert, com.frostwire.jlibtorrent.swig.torrent_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_hash_failed_alert = libtorrent_jni.alert_cast_to_hash_failed_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_hash_failed_alert == 0) {
                alertVar2 = null;
            } else {
                ?? torrent_alertVar = new torrent_alert(libtorrent_jni.hash_failed_alert_SWIGUpcast(alert_cast_to_hash_failed_alert), false);
                torrent_alertVar.B = alert_cast_to_hash_failed_alert;
                alertVar2 = torrent_alertVar;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$2, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass2 implements CastLambda {
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            Alerts.a(alertVar);
            throw null;
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$20, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass20 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.peer_alert, com.frostwire.jlibtorrent.swig.peer_ban_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_peer_ban_alert = libtorrent_jni.alert_cast_to_peer_ban_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_peer_ban_alert == 0) {
                alertVar2 = null;
            } else {
                ?? peer_alertVar = new peer_alert(libtorrent_jni.peer_ban_alert_SWIGUpcast(alert_cast_to_peer_ban_alert), false);
                peer_alertVar.C = alert_cast_to_peer_ban_alert;
                alertVar2 = peer_alertVar;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$21, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass21 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.peer_alert, com.frostwire.jlibtorrent.swig.peer_unsnubbed_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_peer_unsnubbed_alert = libtorrent_jni.alert_cast_to_peer_unsnubbed_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_peer_unsnubbed_alert == 0) {
                alertVar2 = null;
            } else {
                ?? peer_alertVar = new peer_alert(libtorrent_jni.peer_unsnubbed_alert_SWIGUpcast(alert_cast_to_peer_unsnubbed_alert), false);
                peer_alertVar.C = alert_cast_to_peer_unsnubbed_alert;
                alertVar2 = peer_alertVar;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$22, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass22 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.peer_alert, com.frostwire.jlibtorrent.swig.peer_snubbed_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_peer_snubbed_alert = libtorrent_jni.alert_cast_to_peer_snubbed_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_peer_snubbed_alert == 0) {
                alertVar2 = null;
            } else {
                ?? peer_alertVar = new peer_alert(libtorrent_jni.peer_snubbed_alert_SWIGUpcast(alert_cast_to_peer_snubbed_alert), false);
                peer_alertVar.C = alert_cast_to_peer_snubbed_alert;
                alertVar2 = peer_alertVar;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$23, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass23 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.peer_alert, com.frostwire.jlibtorrent.swig.peer_error_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_peer_error_alert = libtorrent_jni.alert_cast_to_peer_error_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_peer_error_alert == 0) {
                alertVar2 = null;
            } else {
                ?? peer_alertVar = new peer_alert(libtorrent_jni.peer_error_alert_SWIGUpcast(alert_cast_to_peer_error_alert), false);
                peer_alertVar.C = alert_cast_to_peer_error_alert;
                alertVar2 = peer_alertVar;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$24, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass24 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.peer_alert, com.frostwire.jlibtorrent.swig.peer_connect_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_peer_connect_alert = libtorrent_jni.alert_cast_to_peer_connect_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_peer_connect_alert == 0) {
                alertVar2 = null;
            } else {
                ?? peer_alertVar = new peer_alert(libtorrent_jni.peer_connect_alert_SWIGUpcast(alert_cast_to_peer_connect_alert), false);
                peer_alertVar.C = alert_cast_to_peer_connect_alert;
                alertVar2 = peer_alertVar;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$25, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass25 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.peer_alert, com.frostwire.jlibtorrent.swig.peer_disconnected_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_peer_disconnected_alert = libtorrent_jni.alert_cast_to_peer_disconnected_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_peer_disconnected_alert == 0) {
                alertVar2 = null;
            } else {
                ?? peer_alertVar = new peer_alert(libtorrent_jni.peer_disconnected_alert_SWIGUpcast(alert_cast_to_peer_disconnected_alert), false);
                peer_alertVar.C = alert_cast_to_peer_disconnected_alert;
                alertVar2 = peer_alertVar;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$26, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass26 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.peer_alert, com.frostwire.jlibtorrent.swig.invalid_request_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_invalid_request_alert = libtorrent_jni.alert_cast_to_invalid_request_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_invalid_request_alert == 0) {
                alertVar2 = null;
            } else {
                ?? peer_alertVar = new peer_alert(libtorrent_jni.invalid_request_alert_SWIGUpcast(alert_cast_to_invalid_request_alert), false);
                peer_alertVar.C = alert_cast_to_invalid_request_alert;
                alertVar2 = peer_alertVar;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$27, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass27 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.torrent_alert, com.frostwire.jlibtorrent.swig.torrent_finished_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_torrent_finished_alert = libtorrent_jni.alert_cast_to_torrent_finished_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_torrent_finished_alert == 0) {
                alertVar2 = null;
            } else {
                ?? torrent_alertVar = new torrent_alert(libtorrent_jni.torrent_finished_alert_SWIGUpcast(alert_cast_to_torrent_finished_alert), false);
                torrent_alertVar.B = alert_cast_to_torrent_finished_alert;
                alertVar2 = torrent_alertVar;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$28, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass28 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.torrent_alert, com.frostwire.jlibtorrent.swig.piece_finished_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_piece_finished_alert = libtorrent_jni.alert_cast_to_piece_finished_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_piece_finished_alert == 0) {
                alertVar2 = null;
            } else {
                ?? torrent_alertVar = new torrent_alert(libtorrent_jni.piece_finished_alert_SWIGUpcast(alert_cast_to_piece_finished_alert), false);
                torrent_alertVar.B = alert_cast_to_piece_finished_alert;
                alertVar2 = torrent_alertVar;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$29, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass29 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.peer_alert, com.frostwire.jlibtorrent.swig.request_dropped_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_request_dropped_alert = libtorrent_jni.alert_cast_to_request_dropped_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_request_dropped_alert == 0) {
                alertVar2 = null;
            } else {
                ?? peer_alertVar = new peer_alert(libtorrent_jni.request_dropped_alert_SWIGUpcast(alert_cast_to_request_dropped_alert), false);
                peer_alertVar.C = alert_cast_to_request_dropped_alert;
                alertVar2 = peer_alertVar;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$3, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass3 implements CastLambda {
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            Alerts.a(alertVar);
            throw null;
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$30, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass30 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.peer_alert, com.frostwire.jlibtorrent.swig.block_timeout_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_block_timeout_alert = libtorrent_jni.alert_cast_to_block_timeout_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_block_timeout_alert == 0) {
                alertVar2 = null;
            } else {
                ?? peer_alertVar = new peer_alert(libtorrent_jni.block_timeout_alert_SWIGUpcast(alert_cast_to_block_timeout_alert), false);
                peer_alertVar.C = alert_cast_to_block_timeout_alert;
                alertVar2 = peer_alertVar;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$31, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass31 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.peer_alert, com.frostwire.jlibtorrent.swig.block_finished_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_block_finished_alert = libtorrent_jni.alert_cast_to_block_finished_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_block_finished_alert == 0) {
                alertVar2 = null;
            } else {
                ?? peer_alertVar = new peer_alert(libtorrent_jni.block_finished_alert_SWIGUpcast(alert_cast_to_block_finished_alert), false);
                peer_alertVar.C = alert_cast_to_block_finished_alert;
                alertVar2 = peer_alertVar;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$32, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass32 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.peer_alert, com.frostwire.jlibtorrent.swig.block_downloading_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_block_downloading_alert = libtorrent_jni.alert_cast_to_block_downloading_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_block_downloading_alert == 0) {
                alertVar2 = null;
            } else {
                ?? peer_alertVar = new peer_alert(libtorrent_jni.block_downloading_alert_SWIGUpcast(alert_cast_to_block_downloading_alert), false);
                peer_alertVar.C = alert_cast_to_block_downloading_alert;
                alertVar2 = peer_alertVar;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$33, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass33 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.unwanted_block_alert, com.frostwire.jlibtorrent.swig.peer_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_unwanted_block_alert = libtorrent_jni.alert_cast_to_unwanted_block_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_unwanted_block_alert == 0) {
                alertVar2 = null;
            } else {
                ?? peer_alertVar = new peer_alert(libtorrent_jni.unwanted_block_alert_SWIGUpcast(alert_cast_to_unwanted_block_alert), false);
                peer_alertVar.C = alert_cast_to_unwanted_block_alert;
                alertVar2 = peer_alertVar;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$34, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass34 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.storage_moved_alert, com.frostwire.jlibtorrent.swig.torrent_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_storage_moved_alert = libtorrent_jni.alert_cast_to_storage_moved_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_storage_moved_alert == 0) {
                alertVar2 = null;
            } else {
                ?? torrent_alertVar = new torrent_alert(libtorrent_jni.storage_moved_alert_SWIGUpcast(alert_cast_to_storage_moved_alert), false);
                torrent_alertVar.B = alert_cast_to_storage_moved_alert;
                alertVar2 = torrent_alertVar;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$35, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass35 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.torrent_alert, com.frostwire.jlibtorrent.swig.storage_moved_failed_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_storage_moved_failed_alert = libtorrent_jni.alert_cast_to_storage_moved_failed_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_storage_moved_failed_alert == 0) {
                alertVar2 = null;
            } else {
                ?? torrent_alertVar = new torrent_alert(libtorrent_jni.storage_moved_failed_alert_SWIGUpcast(alert_cast_to_storage_moved_failed_alert), false);
                torrent_alertVar.B = alert_cast_to_storage_moved_failed_alert;
                alertVar2 = torrent_alertVar;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$36, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass36 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.torrent_alert, com.frostwire.jlibtorrent.swig.torrent_deleted_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_torrent_deleted_alert = libtorrent_jni.alert_cast_to_torrent_deleted_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_torrent_deleted_alert == 0) {
                alertVar2 = null;
            } else {
                ?? torrent_alertVar = new torrent_alert(libtorrent_jni.torrent_deleted_alert_SWIGUpcast(alert_cast_to_torrent_deleted_alert), false);
                torrent_alertVar.B = alert_cast_to_torrent_deleted_alert;
                alertVar2 = torrent_alertVar;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$37, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass37 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.torrent_delete_failed_alert, com.frostwire.jlibtorrent.swig.torrent_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_torrent_delete_failed_alert = libtorrent_jni.alert_cast_to_torrent_delete_failed_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_torrent_delete_failed_alert == 0) {
                alertVar2 = null;
            } else {
                ?? torrent_alertVar = new torrent_alert(libtorrent_jni.torrent_delete_failed_alert_SWIGUpcast(alert_cast_to_torrent_delete_failed_alert), false);
                torrent_alertVar.B = alert_cast_to_torrent_delete_failed_alert;
                alertVar2 = torrent_alertVar;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$38, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass38 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.torrent_alert, com.frostwire.jlibtorrent.swig.save_resume_data_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_save_resume_data_alert = libtorrent_jni.alert_cast_to_save_resume_data_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_save_resume_data_alert == 0) {
                alertVar2 = null;
            } else {
                ?? torrent_alertVar = new torrent_alert(libtorrent_jni.save_resume_data_alert_SWIGUpcast(alert_cast_to_save_resume_data_alert), false);
                torrent_alertVar.B = alert_cast_to_save_resume_data_alert;
                alertVar2 = torrent_alertVar;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$39, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass39 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.torrent_alert, com.frostwire.jlibtorrent.swig.save_resume_data_failed_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_save_resume_data_failed_alert = libtorrent_jni.alert_cast_to_save_resume_data_failed_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_save_resume_data_failed_alert == 0) {
                alertVar2 = null;
            } else {
                ?? torrent_alertVar = new torrent_alert(libtorrent_jni.save_resume_data_failed_alert_SWIGUpcast(alert_cast_to_save_resume_data_failed_alert), false);
                torrent_alertVar.B = alert_cast_to_save_resume_data_failed_alert;
                alertVar2 = torrent_alertVar;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$4, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass4 implements CastLambda {
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            Alerts.a(alertVar);
            throw null;
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$40, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass40 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.torrent_paused_alert, com.frostwire.jlibtorrent.swig.torrent_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_torrent_paused_alert = libtorrent_jni.alert_cast_to_torrent_paused_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_torrent_paused_alert == 0) {
                alertVar2 = null;
            } else {
                ?? torrent_alertVar = new torrent_alert(libtorrent_jni.torrent_paused_alert_SWIGUpcast(alert_cast_to_torrent_paused_alert), false);
                torrent_alertVar.B = alert_cast_to_torrent_paused_alert;
                alertVar2 = torrent_alertVar;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$41, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass41 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.torrent_alert, com.frostwire.jlibtorrent.swig.torrent_resumed_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_torrent_resumed_alert = libtorrent_jni.alert_cast_to_torrent_resumed_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_torrent_resumed_alert == 0) {
                alertVar2 = null;
            } else {
                ?? torrent_alertVar = new torrent_alert(libtorrent_jni.torrent_resumed_alert_SWIGUpcast(alert_cast_to_torrent_resumed_alert), false);
                torrent_alertVar.B = alert_cast_to_torrent_resumed_alert;
                alertVar2 = torrent_alertVar;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$42, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass42 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.torrent_checked_alert, com.frostwire.jlibtorrent.swig.torrent_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_torrent_checked_alert = libtorrent_jni.alert_cast_to_torrent_checked_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_torrent_checked_alert == 0) {
                alertVar2 = null;
            } else {
                ?? torrent_alertVar = new torrent_alert(libtorrent_jni.torrent_checked_alert_SWIGUpcast(alert_cast_to_torrent_checked_alert), false);
                torrent_alertVar.B = alert_cast_to_torrent_checked_alert;
                alertVar2 = torrent_alertVar;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$43, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass43 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.url_seed_alert, com.frostwire.jlibtorrent.swig.torrent_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_url_seed_alert = libtorrent_jni.alert_cast_to_url_seed_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_url_seed_alert == 0) {
                alertVar2 = null;
            } else {
                ?? torrent_alertVar = new torrent_alert(libtorrent_jni.url_seed_alert_SWIGUpcast(alert_cast_to_url_seed_alert), false);
                torrent_alertVar.B = alert_cast_to_url_seed_alert;
                alertVar2 = torrent_alertVar;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$44, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass44 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.torrent_alert, com.frostwire.jlibtorrent.swig.file_error_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_file_error_alert = libtorrent_jni.alert_cast_to_file_error_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_file_error_alert == 0) {
                alertVar2 = null;
            } else {
                ?? torrent_alertVar = new torrent_alert(libtorrent_jni.file_error_alert_SWIGUpcast(alert_cast_to_file_error_alert), false);
                torrent_alertVar.B = alert_cast_to_file_error_alert;
                alertVar2 = torrent_alertVar;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$45, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass45 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.metadata_failed_alert, com.frostwire.jlibtorrent.swig.torrent_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_metadata_failed_alert = libtorrent_jni.alert_cast_to_metadata_failed_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_metadata_failed_alert == 0) {
                alertVar2 = null;
            } else {
                ?? torrent_alertVar = new torrent_alert(libtorrent_jni.metadata_failed_alert_SWIGUpcast(alert_cast_to_metadata_failed_alert), false);
                torrent_alertVar.B = alert_cast_to_metadata_failed_alert;
                alertVar2 = torrent_alertVar;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$46, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass46 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.torrent_alert, com.frostwire.jlibtorrent.swig.metadata_received_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            metadata_received_alert metadata_received_alertVar;
            long alert_cast_to_metadata_received_alert = libtorrent_jni.alert_cast_to_metadata_received_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_metadata_received_alert == 0) {
                metadata_received_alertVar = null;
            } else {
                ?? torrent_alertVar = new torrent_alert(libtorrent_jni.metadata_received_alert_SWIGUpcast(alert_cast_to_metadata_received_alert), false);
                torrent_alertVar.B = alert_cast_to_metadata_received_alert;
                metadata_received_alertVar = torrent_alertVar;
            }
            return new MetadataReceivedAlert(metadata_received_alertVar);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$47, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass47 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.alert, com.frostwire.jlibtorrent.swig.udp_error_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_udp_error_alert = libtorrent_jni.alert_cast_to_udp_error_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_udp_error_alert == 0) {
                alertVar2 = null;
            } else {
                ?? alertVar3 = new alert(libtorrent_jni.udp_error_alert_SWIGUpcast(alert_cast_to_udp_error_alert), false);
                alertVar3.A = alert_cast_to_udp_error_alert;
                alertVar2 = alertVar3;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$48, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass48 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.external_ip_alert, com.frostwire.jlibtorrent.swig.alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_external_ip_alert = libtorrent_jni.alert_cast_to_external_ip_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_external_ip_alert == 0) {
                alertVar2 = null;
            } else {
                ?? alertVar3 = new alert(libtorrent_jni.external_ip_alert_SWIGUpcast(alert_cast_to_external_ip_alert), false);
                alertVar3.A = alert_cast_to_external_ip_alert;
                alertVar2 = alertVar3;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$49, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass49 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.listen_failed_alert, com.frostwire.jlibtorrent.swig.alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_listen_failed_alert = libtorrent_jni.alert_cast_to_listen_failed_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_listen_failed_alert == 0) {
                alertVar2 = null;
            } else {
                ?? alertVar3 = new alert(libtorrent_jni.listen_failed_alert_SWIGUpcast(alert_cast_to_listen_failed_alert), false);
                alertVar3.A = alert_cast_to_listen_failed_alert;
                alertVar2 = alertVar3;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$5, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass5 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.torrent_alert, com.frostwire.jlibtorrent.swig.torrent_removed_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_torrent_removed_alert = libtorrent_jni.alert_cast_to_torrent_removed_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_torrent_removed_alert == 0) {
                alertVar2 = null;
            } else {
                ?? torrent_alertVar = new torrent_alert(libtorrent_jni.torrent_removed_alert_SWIGUpcast(alert_cast_to_torrent_removed_alert), false);
                torrent_alertVar.B = alert_cast_to_torrent_removed_alert;
                alertVar2 = torrent_alertVar;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$50, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass50 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.listen_succeeded_alert, com.frostwire.jlibtorrent.swig.alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_listen_succeeded_alert = libtorrent_jni.alert_cast_to_listen_succeeded_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_listen_succeeded_alert == 0) {
                alertVar2 = null;
            } else {
                ?? alertVar3 = new alert(libtorrent_jni.listen_succeeded_alert_SWIGUpcast(alert_cast_to_listen_succeeded_alert), false);
                alertVar3.A = alert_cast_to_listen_succeeded_alert;
                alertVar2 = alertVar3;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$51, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass51 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.portmap_error_alert, com.frostwire.jlibtorrent.swig.alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_portmap_error_alert = libtorrent_jni.alert_cast_to_portmap_error_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_portmap_error_alert == 0) {
                alertVar2 = null;
            } else {
                ?? alertVar3 = new alert(libtorrent_jni.portmap_error_alert_SWIGUpcast(alert_cast_to_portmap_error_alert), false);
                alertVar3.A = alert_cast_to_portmap_error_alert;
                alertVar2 = alertVar3;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$52, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass52 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.portmap_alert, com.frostwire.jlibtorrent.swig.alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_portmap_alert = libtorrent_jni.alert_cast_to_portmap_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_portmap_alert == 0) {
                alertVar2 = null;
            } else {
                ?? alertVar3 = new alert(libtorrent_jni.portmap_alert_SWIGUpcast(alert_cast_to_portmap_alert), false);
                alertVar3.A = alert_cast_to_portmap_alert;
                alertVar2 = alertVar3;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$53, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass53 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.alert, com.frostwire.jlibtorrent.swig.portmap_log_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_portmap_log_alert = libtorrent_jni.alert_cast_to_portmap_log_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_portmap_log_alert == 0) {
                alertVar2 = null;
            } else {
                ?? alertVar3 = new alert(libtorrent_jni.portmap_log_alert_SWIGUpcast(alert_cast_to_portmap_log_alert), false);
                alertVar3.A = alert_cast_to_portmap_log_alert;
                alertVar2 = alertVar3;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$54, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass54 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.torrent_alert, com.frostwire.jlibtorrent.swig.fastresume_rejected_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_fastresume_rejected_alert = libtorrent_jni.alert_cast_to_fastresume_rejected_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_fastresume_rejected_alert == 0) {
                alertVar2 = null;
            } else {
                ?? torrent_alertVar = new torrent_alert(libtorrent_jni.fastresume_rejected_alert_SWIGUpcast(alert_cast_to_fastresume_rejected_alert), false);
                torrent_alertVar.B = alert_cast_to_fastresume_rejected_alert;
                alertVar2 = torrent_alertVar;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$55, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass55 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.peer_alert, com.frostwire.jlibtorrent.swig.peer_blocked_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_peer_blocked_alert = libtorrent_jni.alert_cast_to_peer_blocked_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_peer_blocked_alert == 0) {
                alertVar2 = null;
            } else {
                ?? peer_alertVar = new peer_alert(libtorrent_jni.peer_blocked_alert_SWIGUpcast(alert_cast_to_peer_blocked_alert), false);
                peer_alertVar.C = alert_cast_to_peer_blocked_alert;
                alertVar2 = peer_alertVar;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$56, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass56 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.alert, com.frostwire.jlibtorrent.swig.dht_announce_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_dht_announce_alert = libtorrent_jni.alert_cast_to_dht_announce_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_dht_announce_alert == 0) {
                alertVar2 = null;
            } else {
                ?? alertVar3 = new alert(libtorrent_jni.dht_announce_alert_SWIGUpcast(alert_cast_to_dht_announce_alert), false);
                alertVar3.A = alert_cast_to_dht_announce_alert;
                alertVar2 = alertVar3;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$57, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass57 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.dht_get_peers_alert, com.frostwire.jlibtorrent.swig.alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_dht_get_peers_alert = libtorrent_jni.alert_cast_to_dht_get_peers_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_dht_get_peers_alert == 0) {
                alertVar2 = null;
            } else {
                ?? alertVar3 = new alert(libtorrent_jni.dht_get_peers_alert_SWIGUpcast(alert_cast_to_dht_get_peers_alert), false);
                alertVar3.A = alert_cast_to_dht_get_peers_alert;
                alertVar2 = alertVar3;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$58, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass58 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.stats_alert, com.frostwire.jlibtorrent.swig.torrent_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_stats_alert = libtorrent_jni.alert_cast_to_stats_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_stats_alert == 0) {
                alertVar2 = null;
            } else {
                ?? torrent_alertVar = new torrent_alert(libtorrent_jni.stats_alert_SWIGUpcast(alert_cast_to_stats_alert), false);
                torrent_alertVar.B = alert_cast_to_stats_alert;
                alertVar2 = torrent_alertVar;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$59, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass59 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.cache_flushed_alert, com.frostwire.jlibtorrent.swig.torrent_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_cache_flushed_alert = libtorrent_jni.alert_cast_to_cache_flushed_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_cache_flushed_alert == 0) {
                alertVar2 = null;
            } else {
                ?? torrent_alertVar = new torrent_alert(libtorrent_jni.cache_flushed_alert_SWIGUpcast(alert_cast_to_cache_flushed_alert), false);
                torrent_alertVar.B = alert_cast_to_cache_flushed_alert;
                alertVar2 = torrent_alertVar;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$6, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass6 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.torrent_alert, com.frostwire.jlibtorrent.swig.read_piece_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_read_piece_alert = libtorrent_jni.alert_cast_to_read_piece_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_read_piece_alert == 0) {
                alertVar2 = null;
            } else {
                ?? torrent_alertVar = new torrent_alert(libtorrent_jni.read_piece_alert_SWIGUpcast(alert_cast_to_read_piece_alert), false);
                torrent_alertVar.B = alert_cast_to_read_piece_alert;
                alertVar2 = torrent_alertVar;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$60, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass60 implements CastLambda {
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            Alerts.a(alertVar);
            throw null;
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$61, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass61 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.peer_alert, com.frostwire.jlibtorrent.swig.lsd_peer_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_lsd_peer_alert = libtorrent_jni.alert_cast_to_lsd_peer_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_lsd_peer_alert == 0) {
                alertVar2 = null;
            } else {
                ?? peer_alertVar = new peer_alert(libtorrent_jni.lsd_peer_alert_SWIGUpcast(alert_cast_to_lsd_peer_alert), false);
                peer_alertVar.C = alert_cast_to_lsd_peer_alert;
                alertVar2 = peer_alertVar;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$62, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass62 implements CastLambda {
        /* JADX WARN: Type inference failed for: r6v2, types: [com.frostwire.jlibtorrent.swig.trackerid_alert, com.frostwire.jlibtorrent.swig.tracker_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_trackerid_alert = libtorrent_jni.alert_cast_to_trackerid_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_trackerid_alert == 0) {
                alertVar2 = null;
            } else {
                ?? tracker_alertVar = new tracker_alert(libtorrent_jni.trackerid_alert_SWIGUpcast(alert_cast_to_trackerid_alert));
                tracker_alertVar.C = alert_cast_to_trackerid_alert;
                alertVar2 = tracker_alertVar;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$63, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass63 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.alert, com.frostwire.jlibtorrent.swig.dht_bootstrap_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_dht_bootstrap_alert = libtorrent_jni.alert_cast_to_dht_bootstrap_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_dht_bootstrap_alert == 0) {
                alertVar2 = null;
            } else {
                ?? alertVar3 = new alert(libtorrent_jni.dht_bootstrap_alert_SWIGUpcast(alert_cast_to_dht_bootstrap_alert), false);
                alertVar3.A = alert_cast_to_dht_bootstrap_alert;
                alertVar2 = alertVar3;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$64, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass64 implements CastLambda {
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            Alerts.a(alertVar);
            throw null;
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$65, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass65 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.torrent_error_alert, com.frostwire.jlibtorrent.swig.torrent_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_torrent_error_alert = libtorrent_jni.alert_cast_to_torrent_error_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_torrent_error_alert == 0) {
                alertVar2 = null;
            } else {
                ?? torrent_alertVar = new torrent_alert(libtorrent_jni.torrent_error_alert_SWIGUpcast(alert_cast_to_torrent_error_alert), false);
                torrent_alertVar.B = alert_cast_to_torrent_error_alert;
                alertVar2 = torrent_alertVar;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$66, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass66 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.torrent_alert, com.frostwire.jlibtorrent.swig.torrent_need_cert_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_torrent_need_cert_alert = libtorrent_jni.alert_cast_to_torrent_need_cert_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_torrent_need_cert_alert == 0) {
                alertVar2 = null;
            } else {
                ?? torrent_alertVar = new torrent_alert(libtorrent_jni.torrent_need_cert_alert_SWIGUpcast(alert_cast_to_torrent_need_cert_alert), false);
                torrent_alertVar.B = alert_cast_to_torrent_need_cert_alert;
                alertVar2 = torrent_alertVar;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$67, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass67 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.alert, com.frostwire.jlibtorrent.swig.incoming_connection_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_incoming_connection_alert = libtorrent_jni.alert_cast_to_incoming_connection_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_incoming_connection_alert == 0) {
                alertVar2 = null;
            } else {
                ?? alertVar3 = new alert(libtorrent_jni.incoming_connection_alert_SWIGUpcast(alert_cast_to_incoming_connection_alert), false);
                alertVar3.A = alert_cast_to_incoming_connection_alert;
                alertVar2 = alertVar3;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$68, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass68 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.torrent_alert, com.frostwire.jlibtorrent.swig.add_torrent_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_add_torrent_alert = libtorrent_jni.alert_cast_to_add_torrent_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_add_torrent_alert == 0) {
                alertVar2 = null;
            } else {
                ?? torrent_alertVar = new torrent_alert(libtorrent_jni.add_torrent_alert_SWIGUpcast(alert_cast_to_add_torrent_alert), false);
                torrent_alertVar.B = alert_cast_to_add_torrent_alert;
                alertVar2 = torrent_alertVar;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$69, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass69 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.alert, com.frostwire.jlibtorrent.swig.state_update_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_state_update_alert = libtorrent_jni.alert_cast_to_state_update_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_state_update_alert == 0) {
                alertVar2 = null;
            } else {
                ?? alertVar3 = new alert(libtorrent_jni.state_update_alert_SWIGUpcast(alert_cast_to_state_update_alert), false);
                alertVar3.A = alert_cast_to_state_update_alert;
                alertVar2 = alertVar3;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$7, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass7 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.file_completed_alert, com.frostwire.jlibtorrent.swig.torrent_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_file_completed_alert = libtorrent_jni.alert_cast_to_file_completed_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_file_completed_alert == 0) {
                alertVar2 = null;
            } else {
                ?? torrent_alertVar = new torrent_alert(libtorrent_jni.file_completed_alert_SWIGUpcast(alert_cast_to_file_completed_alert), false);
                torrent_alertVar.B = alert_cast_to_file_completed_alert;
                alertVar2 = torrent_alertVar;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$70, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass70 implements CastLambda {
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            Alerts.a(alertVar);
            throw null;
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$71, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass71 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.alert, com.frostwire.jlibtorrent.swig.session_stats_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_session_stats_alert = libtorrent_jni.alert_cast_to_session_stats_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_session_stats_alert == 0) {
                alertVar2 = null;
            } else {
                ?? alertVar3 = new alert(libtorrent_jni.session_stats_alert_SWIGUpcast(alert_cast_to_session_stats_alert), false);
                alertVar3.A = alert_cast_to_session_stats_alert;
                alertVar2 = alertVar3;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$72, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass72 implements CastLambda {
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            Alerts.a(alertVar);
            throw null;
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$73, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass73 implements CastLambda {
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            Alerts.a(alertVar);
            throw null;
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$74, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass74 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.alert, com.frostwire.jlibtorrent.swig.dht_error_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_dht_error_alert = libtorrent_jni.alert_cast_to_dht_error_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_dht_error_alert == 0) {
                alertVar2 = null;
            } else {
                ?? alertVar3 = new alert(libtorrent_jni.dht_error_alert_SWIGUpcast(alert_cast_to_dht_error_alert), false);
                alertVar3.A = alert_cast_to_dht_error_alert;
                alertVar2 = alertVar3;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$75, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass75 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.dht_immutable_item_alert, com.frostwire.jlibtorrent.swig.alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_dht_immutable_item_alert = libtorrent_jni.alert_cast_to_dht_immutable_item_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_dht_immutable_item_alert == 0) {
                alertVar2 = null;
            } else {
                ?? alertVar3 = new alert(libtorrent_jni.dht_immutable_item_alert_SWIGUpcast(alert_cast_to_dht_immutable_item_alert), false);
                alertVar3.A = alert_cast_to_dht_immutable_item_alert;
                alertVar2 = alertVar3;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$76, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass76 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.alert, com.frostwire.jlibtorrent.swig.dht_mutable_item_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_dht_mutable_item_alert = libtorrent_jni.alert_cast_to_dht_mutable_item_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_dht_mutable_item_alert == 0) {
                alertVar2 = null;
            } else {
                ?? alertVar3 = new alert(libtorrent_jni.dht_mutable_item_alert_SWIGUpcast(alert_cast_to_dht_mutable_item_alert), false);
                alertVar3.A = alert_cast_to_dht_mutable_item_alert;
                alertVar2 = alertVar3;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$77, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass77 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.alert, com.frostwire.jlibtorrent.swig.dht_put_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_dht_put_alert = libtorrent_jni.alert_cast_to_dht_put_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_dht_put_alert == 0) {
                alertVar2 = null;
            } else {
                ?? alertVar3 = new alert(libtorrent_jni.dht_put_alert_SWIGUpcast(alert_cast_to_dht_put_alert), false);
                alertVar3.A = alert_cast_to_dht_put_alert;
                alertVar2 = alertVar3;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$78, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass78 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.alert, com.frostwire.jlibtorrent.swig.i2p_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_i2p_alert = libtorrent_jni.alert_cast_to_i2p_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_i2p_alert == 0) {
                alertVar2 = null;
            } else {
                ?? alertVar3 = new alert(libtorrent_jni.i2p_alert_SWIGUpcast(alert_cast_to_i2p_alert), false);
                alertVar3.A = alert_cast_to_i2p_alert;
                alertVar2 = alertVar3;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$79, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass79 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.alert, com.frostwire.jlibtorrent.swig.dht_outgoing_get_peers_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_dht_outgoing_get_peers_alert = libtorrent_jni.alert_cast_to_dht_outgoing_get_peers_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_dht_outgoing_get_peers_alert == 0) {
                alertVar2 = null;
            } else {
                ?? alertVar3 = new alert(libtorrent_jni.dht_outgoing_get_peers_alert_SWIGUpcast(alert_cast_to_dht_outgoing_get_peers_alert), false);
                alertVar3.A = alert_cast_to_dht_outgoing_get_peers_alert;
                alertVar2 = alertVar3;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$8, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass8 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.file_renamed_alert, com.frostwire.jlibtorrent.swig.torrent_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_file_renamed_alert = libtorrent_jni.alert_cast_to_file_renamed_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_file_renamed_alert == 0) {
                alertVar2 = null;
            } else {
                ?? torrent_alertVar = new torrent_alert(libtorrent_jni.file_renamed_alert_SWIGUpcast(alert_cast_to_file_renamed_alert), false);
                torrent_alertVar.B = alert_cast_to_file_renamed_alert;
                alertVar2 = torrent_alertVar;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$80, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass80 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.alert, com.frostwire.jlibtorrent.swig.log_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_log_alert = libtorrent_jni.alert_cast_to_log_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_log_alert == 0) {
                alertVar2 = null;
            } else {
                ?? alertVar3 = new alert(libtorrent_jni.log_alert_SWIGUpcast(alert_cast_to_log_alert), false);
                alertVar3.A = alert_cast_to_log_alert;
                alertVar2 = alertVar3;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$81, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass81 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.torrent_log_alert, com.frostwire.jlibtorrent.swig.torrent_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_torrent_log_alert = libtorrent_jni.alert_cast_to_torrent_log_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_torrent_log_alert == 0) {
                alertVar2 = null;
            } else {
                ?? torrent_alertVar = new torrent_alert(libtorrent_jni.torrent_log_alert_SWIGUpcast(alert_cast_to_torrent_log_alert), false);
                torrent_alertVar.B = alert_cast_to_torrent_log_alert;
                alertVar2 = torrent_alertVar;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$82, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass82 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.peer_alert, com.frostwire.jlibtorrent.swig.peer_log_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_peer_log_alert = libtorrent_jni.alert_cast_to_peer_log_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_peer_log_alert == 0) {
                alertVar2 = null;
            } else {
                ?? peer_alertVar = new peer_alert(libtorrent_jni.peer_log_alert_SWIGUpcast(alert_cast_to_peer_log_alert), false);
                peer_alertVar.C = alert_cast_to_peer_log_alert;
                alertVar2 = peer_alertVar;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$83, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass83 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.alert, com.frostwire.jlibtorrent.swig.lsd_error_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_lsd_error_alert = libtorrent_jni.alert_cast_to_lsd_error_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_lsd_error_alert == 0) {
                alertVar2 = null;
            } else {
                ?? alertVar3 = new alert(libtorrent_jni.lsd_error_alert_SWIGUpcast(alert_cast_to_lsd_error_alert), false);
                alertVar3.A = alert_cast_to_lsd_error_alert;
                alertVar2 = alertVar3;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$84, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass84 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.dht_stats_alert, com.frostwire.jlibtorrent.swig.alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_dht_stats_alert = libtorrent_jni.alert_cast_to_dht_stats_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_dht_stats_alert == 0) {
                alertVar2 = null;
            } else {
                ?? alertVar3 = new alert(libtorrent_jni.dht_stats_alert_SWIGUpcast(alert_cast_to_dht_stats_alert), false);
                alertVar3.A = alert_cast_to_dht_stats_alert;
                alertVar2 = alertVar3;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$85, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass85 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.peer_alert, com.frostwire.jlibtorrent.swig.incoming_request_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_incoming_request_alert = libtorrent_jni.alert_cast_to_incoming_request_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_incoming_request_alert == 0) {
                alertVar2 = null;
            } else {
                ?? peer_alertVar = new peer_alert(libtorrent_jni.incoming_request_alert_SWIGUpcast(alert_cast_to_incoming_request_alert), false);
                peer_alertVar.C = alert_cast_to_incoming_request_alert;
                alertVar2 = peer_alertVar;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$86, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass86 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.alert, com.frostwire.jlibtorrent.swig.dht_log_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_dht_log_alert = libtorrent_jni.alert_cast_to_dht_log_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_dht_log_alert == 0) {
                alertVar2 = null;
            } else {
                ?? alertVar3 = new alert(libtorrent_jni.dht_log_alert_SWIGUpcast(alert_cast_to_dht_log_alert), false);
                alertVar3.A = alert_cast_to_dht_log_alert;
                alertVar2 = alertVar3;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$87, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass87 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.alert, com.frostwire.jlibtorrent.swig.dht_pkt_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_dht_pkt_alert = libtorrent_jni.alert_cast_to_dht_pkt_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_dht_pkt_alert == 0) {
                alertVar2 = null;
            } else {
                ?? alertVar3 = new alert(libtorrent_jni.dht_pkt_alert_SWIGUpcast(alert_cast_to_dht_pkt_alert), false);
                alertVar3.A = alert_cast_to_dht_pkt_alert;
                alertVar2 = alertVar3;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$88, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass88 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.dht_get_peers_reply_alert, com.frostwire.jlibtorrent.swig.alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_dht_get_peers_reply_alert = libtorrent_jni.alert_cast_to_dht_get_peers_reply_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_dht_get_peers_reply_alert == 0) {
                alertVar2 = null;
            } else {
                ?? alertVar3 = new alert(libtorrent_jni.dht_get_peers_reply_alert_SWIGUpcast(alert_cast_to_dht_get_peers_reply_alert), false);
                alertVar3.A = alert_cast_to_dht_get_peers_reply_alert;
                alertVar2 = alertVar3;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$89, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass89 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.alert, com.frostwire.jlibtorrent.swig.dht_direct_response_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_dht_direct_response_alert = libtorrent_jni.alert_cast_to_dht_direct_response_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_dht_direct_response_alert == 0) {
                alertVar2 = null;
            } else {
                ?? alertVar3 = new alert(libtorrent_jni.dht_direct_response_alert_SWIGUpcast(alert_cast_to_dht_direct_response_alert), false);
                alertVar3.A = alert_cast_to_dht_direct_response_alert;
                alertVar2 = alertVar3;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$9, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass9 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.file_rename_failed_alert, com.frostwire.jlibtorrent.swig.torrent_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_file_rename_failed_alert = libtorrent_jni.alert_cast_to_file_rename_failed_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_file_rename_failed_alert == 0) {
                alertVar2 = null;
            } else {
                ?? torrent_alertVar = new torrent_alert(libtorrent_jni.file_rename_failed_alert_SWIGUpcast(alert_cast_to_file_rename_failed_alert), false);
                torrent_alertVar.B = alert_cast_to_file_rename_failed_alert;
                alertVar2 = torrent_alertVar;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$90, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass90 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.peer_alert, com.frostwire.jlibtorrent.swig.picker_log_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_picker_log_alert = libtorrent_jni.alert_cast_to_picker_log_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_picker_log_alert == 0) {
                alertVar2 = null;
            } else {
                ?? peer_alertVar = new peer_alert(libtorrent_jni.picker_log_alert_SWIGUpcast(alert_cast_to_picker_log_alert), false);
                peer_alertVar.C = alert_cast_to_picker_log_alert;
                alertVar2 = peer_alertVar;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$91, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass91 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.session_error_alert, com.frostwire.jlibtorrent.swig.alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_session_error_alert = libtorrent_jni.alert_cast_to_session_error_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_session_error_alert == 0) {
                alertVar2 = null;
            } else {
                ?? alertVar3 = new alert(libtorrent_jni.session_error_alert_SWIGUpcast(alert_cast_to_session_error_alert), false);
                alertVar3.A = alert_cast_to_session_error_alert;
                alertVar2 = alertVar3;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$92, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass92 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.alert, com.frostwire.jlibtorrent.swig.dht_live_nodes_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_dht_live_nodes_alert = libtorrent_jni.alert_cast_to_dht_live_nodes_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_dht_live_nodes_alert == 0) {
                alertVar2 = null;
            } else {
                ?? alertVar3 = new alert(libtorrent_jni.dht_live_nodes_alert_SWIGUpcast(alert_cast_to_dht_live_nodes_alert), false);
                alertVar3.A = alert_cast_to_dht_live_nodes_alert;
                alertVar2 = alertVar3;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$93, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass93 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.session_stats_header_alert, com.frostwire.jlibtorrent.swig.alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_session_stats_header_alert = libtorrent_jni.alert_cast_to_session_stats_header_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_session_stats_header_alert == 0) {
                alertVar2 = null;
            } else {
                ?? alertVar3 = new alert(libtorrent_jni.session_stats_header_alert_SWIGUpcast(alert_cast_to_session_stats_header_alert), false);
                alertVar3.A = alert_cast_to_session_stats_header_alert;
                alertVar2 = alertVar3;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$94, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass94 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.dht_sample_infohashes_alert, com.frostwire.jlibtorrent.swig.alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_dht_sample_infohashes_alert = libtorrent_jni.alert_cast_to_dht_sample_infohashes_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_dht_sample_infohashes_alert == 0) {
                alertVar2 = null;
            } else {
                ?? alertVar3 = new alert(libtorrent_jni.dht_sample_infohashes_alert_SWIGUpcast(alert_cast_to_dht_sample_infohashes_alert), false);
                alertVar3.A = alert_cast_to_dht_sample_infohashes_alert;
                alertVar2 = alertVar3;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$95, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass95 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.peer_alert, com.frostwire.jlibtorrent.swig.block_uploaded_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_block_uploaded_alert = libtorrent_jni.alert_cast_to_block_uploaded_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_block_uploaded_alert == 0) {
                alertVar2 = null;
            } else {
                ?? peer_alertVar = new peer_alert(libtorrent_jni.block_uploaded_alert_SWIGUpcast(alert_cast_to_block_uploaded_alert), false);
                peer_alertVar.C = alert_cast_to_block_uploaded_alert;
                alertVar2 = peer_alertVar;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.alerts.Alerts$96, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass96 implements CastLambda {
        /* JADX WARN: Type inference failed for: r7v2, types: [com.frostwire.jlibtorrent.swig.alert, com.frostwire.jlibtorrent.swig.alerts_dropped_alert] */
        @Override // com.frostwire.jlibtorrent.alerts.Alerts.CastLambda
        public final Alert a(alert alertVar) {
            alert alertVar2;
            long alert_cast_to_alerts_dropped_alert = libtorrent_jni.alert_cast_to_alerts_dropped_alert(alertVar.f2659a, alertVar);
            if (alert_cast_to_alerts_dropped_alert == 0) {
                alertVar2 = null;
            } else {
                ?? alertVar3 = new alert(libtorrent_jni.alerts_dropped_alert_SWIGUpcast(alert_cast_to_alerts_dropped_alert), false);
                alertVar3.A = alert_cast_to_alerts_dropped_alert;
                alertVar2 = alertVar3;
            }
            return new AbstractAlert(alertVar2);
        }
    }

    /* loaded from: classes.dex */
    public interface CastLambda {
        Alert a(alert alertVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        int num_alert_types_get = libtorrent_jni.num_alert_types_get();
        f2642a = num_alert_types_get;
        CastLambda[] castLambdaArr = new CastLambda[num_alert_types_get];
        castLambdaArr[0] = new Object();
        castLambdaArr[1] = new Object();
        castLambdaArr[2] = new Object();
        castLambdaArr[3] = new Object();
        castLambdaArr[4] = new Object();
        castLambdaArr[5] = new Object();
        castLambdaArr[6] = new Object();
        castLambdaArr[7] = new Object();
        castLambdaArr[8] = new Object();
        castLambdaArr[9] = new Object();
        castLambdaArr[10] = new Object();
        castLambdaArr[11] = new Object();
        castLambdaArr[12] = new Object();
        castLambdaArr[13] = new Object();
        castLambdaArr[14] = new Object();
        castLambdaArr[15] = new Object();
        castLambdaArr[16] = new Object();
        castLambdaArr[17] = new Object();
        castLambdaArr[18] = new Object();
        castLambdaArr[19] = new Object();
        castLambdaArr[20] = new Object();
        castLambdaArr[21] = new Object();
        castLambdaArr[22] = new Object();
        castLambdaArr[23] = new Object();
        castLambdaArr[24] = new Object();
        castLambdaArr[25] = new Object();
        castLambdaArr[26] = new Object();
        castLambdaArr[27] = new Object();
        castLambdaArr[28] = new Object();
        castLambdaArr[29] = new Object();
        castLambdaArr[30] = new Object();
        castLambdaArr[31] = new Object();
        castLambdaArr[32] = new Object();
        castLambdaArr[33] = new Object();
        castLambdaArr[34] = new Object();
        castLambdaArr[35] = new Object();
        castLambdaArr[36] = new Object();
        castLambdaArr[37] = new Object();
        castLambdaArr[38] = new Object();
        castLambdaArr[39] = new Object();
        castLambdaArr[40] = new Object();
        castLambdaArr[41] = new Object();
        castLambdaArr[42] = new Object();
        castLambdaArr[43] = new Object();
        castLambdaArr[44] = new Object();
        castLambdaArr[45] = new Object();
        castLambdaArr[46] = new Object();
        castLambdaArr[47] = new Object();
        castLambdaArr[48] = new Object();
        castLambdaArr[49] = new Object();
        castLambdaArr[50] = new Object();
        castLambdaArr[51] = new Object();
        castLambdaArr[52] = new Object();
        castLambdaArr[53] = new Object();
        castLambdaArr[54] = new Object();
        castLambdaArr[55] = new Object();
        castLambdaArr[56] = new Object();
        castLambdaArr[57] = new Object();
        castLambdaArr[58] = new Object();
        castLambdaArr[59] = new Object();
        castLambdaArr[60] = new Object();
        castLambdaArr[61] = new Object();
        castLambdaArr[62] = new Object();
        castLambdaArr[63] = new Object();
        castLambdaArr[64] = new Object();
        castLambdaArr[65] = new Object();
        castLambdaArr[66] = new Object();
        castLambdaArr[67] = new Object();
        castLambdaArr[68] = new Object();
        castLambdaArr[69] = new Object();
        castLambdaArr[70] = new Object();
        castLambdaArr[71] = new Object();
        castLambdaArr[72] = new Object();
        castLambdaArr[73] = new Object();
        castLambdaArr[74] = new Object();
        castLambdaArr[75] = new Object();
        castLambdaArr[76] = new Object();
        castLambdaArr[77] = new Object();
        castLambdaArr[78] = new Object();
        castLambdaArr[79] = new Object();
        castLambdaArr[80] = new Object();
        castLambdaArr[81] = new Object();
        castLambdaArr[82] = new Object();
        castLambdaArr[83] = new Object();
        castLambdaArr[84] = new Object();
        castLambdaArr[85] = new Object();
        castLambdaArr[86] = new Object();
        castLambdaArr[87] = new Object();
        castLambdaArr[88] = new Object();
        castLambdaArr[89] = new Object();
        castLambdaArr[90] = new Object();
        castLambdaArr[91] = new Object();
        castLambdaArr[92] = new Object();
        castLambdaArr[93] = new Object();
        castLambdaArr[94] = new Object();
        castLambdaArr[95] = new Object();
        b = castLambdaArr;
    }

    public static void a(alert alertVar) {
        throw new IllegalArgumentException("alert not known: " + alertVar.c() + " - " + alertVar.b());
    }

    public static Alert b(alert alertVar) {
        return b[alertVar.c()].a(alertVar);
    }
}
