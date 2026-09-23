package com.frostwire.jlibtorrent;

import com.frostwire.jlibtorrent.SessionStats;
import com.frostwire.jlibtorrent.alerts.Alert;
import com.frostwire.jlibtorrent.alerts.AlertType;
import com.frostwire.jlibtorrent.alerts.Alerts;
import com.frostwire.jlibtorrent.alerts.DhtGetPeersReplyAlert;
import com.frostwire.jlibtorrent.alerts.DhtImmutableItemAlert;
import com.frostwire.jlibtorrent.alerts.DhtMutableItemAlert;
import com.frostwire.jlibtorrent.alerts.MetadataReceivedAlert;
import com.frostwire.jlibtorrent.alerts.TorrentAlert;
import com.frostwire.jlibtorrent.swig.alert;
import com.frostwire.jlibtorrent.swig.alert_category_t;
import com.frostwire.jlibtorrent.swig.byte_vector;
import com.frostwire.jlibtorrent.swig.dht_get_peers_reply_alert;
import com.frostwire.jlibtorrent.swig.dht_immutable_item_alert;
import com.frostwire.jlibtorrent.swig.dht_mutable_item_alert;
import com.frostwire.jlibtorrent.swig.entry;
import com.frostwire.jlibtorrent.swig.libtorrent_jni;
import com.frostwire.jlibtorrent.swig.metadata_received_alert;
import com.frostwire.jlibtorrent.swig.session;
import com.frostwire.jlibtorrent.swig.session_params;
import com.frostwire.jlibtorrent.swig.settings_pack;
import com.frostwire.jlibtorrent.swig.sha1_hash;
import com.frostwire.jlibtorrent.swig.torrent_alert;
import com.frostwire.jlibtorrent.swig.torrent_handle;
import com.frostwire.jlibtorrent.swig.torrent_info;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.Arrays;
import java.util.HashMap;
import java.util.concurrent.locks.ReentrantLock;
import java.util.logging.Level;

/* loaded from: classes.dex */
public class SessionManager {
    public static final Logger h = new Logger(java.util.logging.Logger.getLogger(SessionManager.class.getName()));
    public static final int[] i = {AlertType.METADATA_RECEIVED.f2641c, AlertType.METADATA_FAILED.f2641c};
    public static final int[] j = {AlertType.DHT_IMMUTABLE_ITEM.f2641c};
    public static final int[] k = {AlertType.DHT_MUTABLE_ITEM.f2641c};
    public static final int[] l = {AlertType.DHT_GET_PEERS_REPLY.f2641c};

    /* renamed from: a, reason: collision with root package name */
    public final AlertListener[] f2613a = new AlertListener[Alerts.f2642a + 1];
    public final ReentrantLock b = new ReentrantLock();

    /* renamed from: c, reason: collision with root package name */
    public volatile session f2614c;
    public final SessionStats d;
    public long e;
    public final HashMap f;
    public Thread g;

    /* renamed from: com.frostwire.jlibtorrent.SessionManager$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 implements AlertListener {
        /* JADX WARN: Type inference failed for: r3v11, types: [java.lang.Object, com.frostwire.jlibtorrent.swig.create_torrent] */
        @Override // com.frostwire.jlibtorrent.AlertListener
        public final void a(Alert alert) {
            torrent_handle e = ((torrent_alert) ((TorrentAlert) alert).f2640a).e();
            if (e != null && libtorrent_jni.torrent_handle_is_valid(e.f2739a, e)) {
                sha1_hash sha1_hashVar = new sha1_hash(libtorrent_jni.torrent_handle_info_hash(e.f2739a, e), true);
                if (!libtorrent_jni.sha1_hash_op_ne(sha1_hashVar.f2725a, sha1_hashVar, 0L, null)) {
                    if (alert.type().equals(AlertType.METADATA_RECEIVED)) {
                        MetadataReceivedAlert metadataReceivedAlert = (MetadataReceivedAlert) alert;
                        alert alertVar = metadataReceivedAlert.f2640a;
                        ReentrantLock reentrantLock = metadataReceivedAlert.f2647c;
                        int i = -1;
                        if (!metadataReceivedAlert.f) {
                            int i2 = metadataReceivedAlert.d;
                            if (i2 <= 0) {
                                reentrantLock.lock();
                                try {
                                    try {
                                    } finally {
                                    }
                                } catch (Throwable unused) {
                                    metadataReceivedAlert.f = true;
                                }
                                if (!metadataReceivedAlert.f) {
                                    i2 = metadataReceivedAlert.d;
                                    if (i2 <= 0) {
                                        torrent_handle e2 = ((metadata_received_alert) alertVar).e();
                                        if (e2 != null && libtorrent_jni.torrent_handle_is_valid(e2.f2739a, e2)) {
                                            torrent_info a2 = e2.a();
                                            if (a2 != null && libtorrent_jni.torrent_info_is_valid(a2.f2741a, a2)) {
                                                metadataReceivedAlert.d = libtorrent_jni.torrent_info_metadata_size(a2.f2741a, a2);
                                                i = metadataReceivedAlert.d;
                                            }
                                            metadataReceivedAlert.f = true;
                                        }
                                        metadataReceivedAlert.f = true;
                                    }
                                }
                            }
                            i = i2;
                        }
                        if (i > 0) {
                            if (i <= 0) {
                                if (!metadataReceivedAlert.f) {
                                    if (metadataReceivedAlert.e == null) {
                                        reentrantLock.lock();
                                        try {
                                            try {
                                                if (!metadataReceivedAlert.f && metadataReceivedAlert.e == null) {
                                                    torrent_handle e3 = ((metadata_received_alert) alertVar).e();
                                                    if (e3 != null && libtorrent_jni.torrent_handle_is_valid(e3.f2739a, e3)) {
                                                        torrent_info a3 = e3.a();
                                                        if (a3 != null && libtorrent_jni.torrent_info_is_valid(a3.f2741a, a3)) {
                                                            metadataReceivedAlert.d = libtorrent_jni.torrent_info_metadata_size(a3.f2741a, a3);
                                                            long new_create_torrent__SWIG_5 = libtorrent_jni.new_create_torrent__SWIG_5(a3.f2741a, a3);
                                                            ?? obj = new Object();
                                                            obj.b = true;
                                                            obj.f2673a = new_create_torrent__SWIG_5;
                                                            entry entryVar = new entry(libtorrent_jni.create_torrent_generate(new_create_torrent__SWIG_5, obj), true);
                                                            metadataReceivedAlert.e = Vectors.a(new byte_vector(libtorrent_jni.entry_bencode(entryVar.f2681a, entryVar)));
                                                        }
                                                        metadataReceivedAlert.f = true;
                                                    } else {
                                                        metadataReceivedAlert.f = true;
                                                    }
                                                }
                                            } catch (Throwable unused2) {
                                                metadataReceivedAlert.f = true;
                                            }
                                            throw null;
                                        } finally {
                                        }
                                    }
                                    throw null;
                                }
                                throw null;
                            }
                            throw null;
                        }
                        throw null;
                    }
                    throw null;
                }
            }
        }

        @Override // com.frostwire.jlibtorrent.AlertListener
        public final int[] b() {
            return SessionManager.i;
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.SessionManager$2, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass2 implements AlertListener {
        @Override // com.frostwire.jlibtorrent.AlertListener
        public final void a(Alert alert) {
            dht_immutable_item_alert dht_immutable_item_alertVar = (dht_immutable_item_alert) ((DhtImmutableItemAlert) alert).f2640a;
            long dht_immutable_item_alert_target_get = libtorrent_jni.dht_immutable_item_alert_target_get(dht_immutable_item_alertVar.A, dht_immutable_item_alertVar);
            if (dht_immutable_item_alert_target_get != 0) {
                new sha1_hash(dht_immutable_item_alert_target_get, false);
            }
            throw null;
        }

        @Override // com.frostwire.jlibtorrent.AlertListener
        public final int[] b() {
            return SessionManager.j;
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.SessionManager$3, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass3 implements AlertListener {
        @Override // com.frostwire.jlibtorrent.AlertListener
        public final void a(Alert alert) {
            entry entryVar;
            DhtMutableItemAlert dhtMutableItemAlert = (DhtMutableItemAlert) alert;
            dht_mutable_item_alert dht_mutable_item_alertVar = (dht_mutable_item_alert) dhtMutableItemAlert.f2640a;
            dht_mutable_item_alertVar.getClass();
            boolean equals = Arrays.equals((byte[]) null, Vectors.a(new byte_vector(libtorrent_jni.dht_mutable_item_alert_get_key(dht_mutable_item_alertVar.A, dht_mutable_item_alertVar))));
            dht_mutable_item_alert dht_mutable_item_alertVar2 = (dht_mutable_item_alert) dhtMutableItemAlert.f2640a;
            dht_mutable_item_alertVar2.getClass();
            boolean equals2 = Arrays.equals((byte[]) null, Vectors.a(new byte_vector(libtorrent_jni.dht_mutable_item_alert_get_salt(dht_mutable_item_alertVar2.A, dht_mutable_item_alertVar2))));
            if (equals && equals2) {
                long dht_mutable_item_alert_item_get = libtorrent_jni.dht_mutable_item_alert_item_get(dht_mutable_item_alertVar2.A, dht_mutable_item_alertVar2);
                long j = 0;
                if (dht_mutable_item_alert_item_get == 0) {
                    entryVar = null;
                } else {
                    entryVar = new entry(dht_mutable_item_alert_item_get, false);
                }
                if (entryVar != null) {
                    j = entryVar.f2681a;
                }
                new entry(libtorrent_jni.new_entry__SWIG_6(j, entryVar), true);
                dht_mutable_item_alertVar2.getClass();
                Vectors.a(new byte_vector(libtorrent_jni.dht_mutable_item_alert_get_signature(dht_mutable_item_alertVar2.A, dht_mutable_item_alertVar2)));
                libtorrent_jni.dht_mutable_item_alert_get_seq(dht_mutable_item_alertVar2.A, dht_mutable_item_alertVar2);
                throw null;
            }
        }

        @Override // com.frostwire.jlibtorrent.AlertListener
        public final int[] b() {
            return SessionManager.k;
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.SessionManager$4, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass4 implements AlertListener {
        @Override // com.frostwire.jlibtorrent.AlertListener
        public final void a(Alert alert) {
            dht_get_peers_reply_alert dht_get_peers_reply_alertVar = (dht_get_peers_reply_alert) ((DhtGetPeersReplyAlert) alert).f2640a;
            long dht_get_peers_reply_alert_info_hash_get = libtorrent_jni.dht_get_peers_reply_alert_info_hash_get(dht_get_peers_reply_alertVar.A, dht_get_peers_reply_alertVar);
            if (dht_get_peers_reply_alert_info_hash_get != 0) {
                new sha1_hash(dht_get_peers_reply_alert_info_hash_get, false);
            }
            throw null;
        }

        @Override // com.frostwire.jlibtorrent.AlertListener
        public final int[] b() {
            return SessionManager.l;
        }
    }

    /* renamed from: com.frostwire.jlibtorrent.SessionManager$6, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass6 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f2616a;

        static {
            int[] iArr = new int[AlertType.values().length];
            f2616a = iArr;
            try {
                iArr[AlertType.SESSION_STATS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2616a[AlertType.PORTMAP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2616a[AlertType.PORTMAP_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2616a[AlertType.LISTEN_SUCCEEDED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f2616a[AlertType.LISTEN_FAILED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f2616a[AlertType.EXTERNAL_IP.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f2616a[AlertType.ADD_TORRENT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* loaded from: classes.dex */
    public static final class MutableItem {
    }

    public SessionManager() {
        new ReentrantLock();
        this.d = new SessionStats();
        this.f = new HashMap();
        f();
    }

    public static void a(SessionManager sessionManager, Alert alert, int i2) {
        AlertListener alertListener = sessionManager.f2613a[i2];
        if (alertListener != null) {
            try {
                alertListener.a(alert);
            } catch (Throwable th) {
                String str = "Error calling alert listener: " + th.getMessage();
                Logger logger = h;
                logger.f2604a.logp(Level.INFO, logger.b, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, str);
            }
        }
    }

    public static alert_category_t b() {
        alert_category_t alert_category_tVar = alert.z;
        alert_category_t a2 = alert.n.a(alert.o).a(alert.p).a(alert.r).a(alert.t).a(alert.u);
        alert_category_t alert_category_tVar2 = new alert_category_t(libtorrent_jni.alert_category_t_inv(a2.f2660a, a2), true);
        alert_category_tVar.getClass();
        return new alert_category_t(libtorrent_jni.alert_category_t_and_(alert_category_tVar.f2660a, alert_category_tVar, alert_category_tVar2.f2660a, alert_category_tVar2), true);
    }

    public final TorrentHandle c(Sha1Hash sha1Hash) {
        if (this.f2614c != null) {
            session sessionVar = this.f2614c;
            sha1_hash sha1_hashVar = sha1Hash.f2621c;
            sessionVar.getClass();
            torrent_handle torrent_handleVar = new torrent_handle(libtorrent_jni.session_handle_find_torrent(sessionVar.f2718a, sessionVar, sha1_hashVar.f2725a, sha1_hashVar), true);
            if (!libtorrent_jni.torrent_handle_is_valid(torrent_handleVar.f2739a, torrent_handleVar)) {
                Logger logger = h;
                StringBuilder sb = new StringBuilder("SessionManager.find(Sha1Hash ");
                sha1_hash sha1_hashVar2 = sha1Hash.f2621c;
                sb.append(libtorrent_jni.sha1_hash_to_hex(sha1_hashVar2.f2725a, sha1_hashVar2));
                sb.append(") found, but it is invalid");
                logger.f2604a.logp(Level.INFO, logger.b, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, sb.toString());
            }
            if (libtorrent_jni.torrent_handle_is_valid(torrent_handleVar.f2739a, torrent_handleVar)) {
                return new TorrentHandle(torrent_handleVar);
            }
            return null;
        }
        return null;
    }

    public final synchronized void d(boolean z, int i2, AlertListener alertListener) {
        try {
            if (z) {
                AlertListener[] alertListenerArr = this.f2613a;
                AlertListener alertListener2 = alertListenerArr[i2];
                if (alertListener2 != null) {
                    if (alertListener == null) {
                        alertListener = alertListener2;
                    } else {
                        alertListener = new AlertMulticaster(alertListener2, alertListener);
                    }
                }
                alertListenerArr[i2] = alertListener;
            } else {
                AlertListener[] alertListenerArr2 = this.f2613a;
                alertListenerArr2[i2] = AlertMulticaster.c(alertListenerArr2[i2], alertListener);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void e(boolean z, AlertListener alertListener) {
        if (alertListener != null) {
            int[] b = alertListener.b();
            if (b == null) {
                d(z, Alerts.f2642a, alertListener);
                return;
            }
            for (int i2 : b) {
                d(z, i2, alertListener);
            }
        }
    }

    public final void f() {
        int i2 = 0;
        while (true) {
            SessionStats sessionStats = this.d;
            if (i2 < 6) {
                SessionStats.Average average = sessionStats.f2618a[i2];
                average.b = 0L;
                average.f2619a = 0L;
                i2++;
            } else {
                sessionStats.getClass();
                this.f.clear();
                this.g = null;
                return;
            }
        }
    }

    public final void finalize() {
        if (this.f2614c != null) {
            this.b.lock();
            try {
                if (this.f2614c != null) {
                    session sessionVar = this.f2614c;
                    this.f2614c = null;
                    libtorrent_jni.session_handle_post_session_stats(sessionVar.f2718a, sessionVar);
                    try {
                        Thread.sleep(750L);
                    } catch (InterruptedException unused) {
                    }
                    Thread thread = this.g;
                    if (thread != null) {
                        try {
                            thread.join();
                        } catch (Throwable unused2) {
                        }
                    }
                    f();
                    sessionVar.a();
                }
            } finally {
                this.b.unlock();
            }
        }
        super.finalize();
    }

    /* JADX WARN: Type inference failed for: r13v0, types: [com.frostwire.jlibtorrent.swig.port_filter, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v8, types: [com.frostwire.jlibtorrent.swig.session_handle, com.frostwire.jlibtorrent.swig.session, java.lang.Object] */
    public final void g(SessionParams sessionParams) {
        settings_pack settings_packVar;
        if (this.f2614c != null) {
            return;
        }
        this.b.lock();
        try {
            if (this.f2614c == null) {
                f();
                session_params session_paramsVar = sessionParams.f2617a;
                long session_params_settings_get = libtorrent_jni.session_params_settings_get(session_paramsVar.f2719a, session_paramsVar);
                long j2 = 0;
                if (session_params_settings_get == 0) {
                    settings_packVar = null;
                } else {
                    settings_packVar = new settings_pack(session_params_settings_get, false);
                }
                int i2 = settings_pack.int_types.g.f2724a;
                alert_category_t b = b();
                libtorrent_jni.settings_pack_set_int(settings_packVar.f2720a, settings_packVar, i2, libtorrent_jni.alert_category_t_to_int(b.f2660a, b));
                session_params session_paramsVar2 = sessionParams.f2617a;
                if (session_paramsVar2 != null) {
                    j2 = session_paramsVar2.f2719a;
                }
                long new_session__SWIG_0 = libtorrent_jni.new_session__SWIG_0(j2, session_paramsVar2);
                long session_SWIGUpcast = libtorrent_jni.session_SWIGUpcast(new_session__SWIG_0);
                ?? obj = new Object();
                obj.b = true;
                obj.f2718a = session_SWIGUpcast;
                obj.j = new_session__SWIG_0;
                this.f2614c = obj;
                Thread thread = new Thread(new Runnable() { // from class: com.frostwire.jlibtorrent.SessionManager.5
                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX WARN: Removed duplicated region for block: B:35:0x03eb  */
                    /* JADX WARN: Removed duplicated region for block: B:46:0x0413  */
                    /* JADX WARN: Removed duplicated region for block: B:51:0x041e A[SYNTHETIC] */
                    /* JADX WARN: Type inference failed for: r12v16, types: [int] */
                    /* JADX WARN: Type inference failed for: r12v18 */
                    /* JADX WARN: Type inference failed for: r12v19 */
                    /* JADX WARN: Type inference failed for: r7v0, types: [java.lang.Object, com.frostwire.jlibtorrent.swig.alert_ptr_vector] */
                    @Override // java.lang.Runnable
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public final void run() {
                        /*
                            Method dump skipped, instructions count: 1125
                            To view this dump add '--comments-level debug' option
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.frostwire.jlibtorrent.SessionManager.AnonymousClass5.run():void");
                    }
                }, "SessionManager-alertsLoop");
                thread.setDaemon(true);
                thread.start();
                this.g = thread;
                long new_port_filter = libtorrent_jni.new_port_filter();
                ?? obj2 = new Object();
                obj2.b = true;
                obj2.f2705a = new_port_filter;
                libtorrent_jni.port_filter_add_rule(new_port_filter, obj2, 0, 79, 1L);
                libtorrent_jni.port_filter_add_rule(obj2.f2705a, obj2, 81, 442, 1L);
                libtorrent_jni.port_filter_add_rule(obj2.f2705a, obj2, 444, 1023, 1L);
                session sessionVar = this.f2614c;
                libtorrent_jni.session_handle_set_port_filter(sessionVar.f2718a, sessionVar, obj2.f2705a, obj2);
            }
        } finally {
            this.b.unlock();
        }
    }

    public final void h() {
        boolean z;
        long j2;
        if (this.f2614c != null) {
            if (this.f2614c != null) {
                session sessionVar = this.f2614c;
                z = libtorrent_jni.session_handle_is_dht_running(sessionVar.f2718a, sessionVar);
            } else {
                z = false;
            }
            if (!z) {
                SettingsPack settingsPack = new SettingsPack();
                settings_pack settings_packVar = settingsPack.f2620a;
                libtorrent_jni.settings_pack_set_bool(settings_packVar.f2720a, settings_packVar, settings_pack.bool_types.d.f2722a, true);
                if (this.f2614c != null) {
                    session sessionVar2 = this.f2614c;
                    settings_pack settings_packVar2 = settingsPack.f2620a;
                    long j3 = sessionVar2.f2718a;
                    if (settings_packVar2 == null) {
                        j2 = 0;
                    } else {
                        j2 = settings_packVar2.f2720a;
                    }
                    libtorrent_jni.session_handle_apply_settings(j3, sessionVar2, j2, settings_packVar2);
                }
            }
        }
    }
}
