package com.frostwire.jlibtorrent.alerts;

import com.frostwire.jlibtorrent.swig.add_torrent_alert;
import com.frostwire.jlibtorrent.swig.alerts_dropped_alert;
import com.frostwire.jlibtorrent.swig.block_downloading_alert;
import com.frostwire.jlibtorrent.swig.block_finished_alert;
import com.frostwire.jlibtorrent.swig.block_timeout_alert;
import com.frostwire.jlibtorrent.swig.block_uploaded_alert;
import com.frostwire.jlibtorrent.swig.cache_flushed_alert;
import com.frostwire.jlibtorrent.swig.dht_announce_alert;
import com.frostwire.jlibtorrent.swig.dht_bootstrap_alert;
import com.frostwire.jlibtorrent.swig.dht_direct_response_alert;
import com.frostwire.jlibtorrent.swig.dht_error_alert;
import com.frostwire.jlibtorrent.swig.dht_get_peers_alert;
import com.frostwire.jlibtorrent.swig.dht_get_peers_reply_alert;
import com.frostwire.jlibtorrent.swig.dht_immutable_item_alert;
import com.frostwire.jlibtorrent.swig.dht_live_nodes_alert;
import com.frostwire.jlibtorrent.swig.dht_log_alert;
import com.frostwire.jlibtorrent.swig.dht_mutable_item_alert;
import com.frostwire.jlibtorrent.swig.dht_outgoing_get_peers_alert;
import com.frostwire.jlibtorrent.swig.dht_pkt_alert;
import com.frostwire.jlibtorrent.swig.dht_put_alert;
import com.frostwire.jlibtorrent.swig.dht_reply_alert;
import com.frostwire.jlibtorrent.swig.dht_sample_infohashes_alert;
import com.frostwire.jlibtorrent.swig.dht_stats_alert;
import com.frostwire.jlibtorrent.swig.external_ip_alert;
import com.frostwire.jlibtorrent.swig.fastresume_rejected_alert;
import com.frostwire.jlibtorrent.swig.file_completed_alert;
import com.frostwire.jlibtorrent.swig.file_error_alert;
import com.frostwire.jlibtorrent.swig.file_rename_failed_alert;
import com.frostwire.jlibtorrent.swig.file_renamed_alert;
import com.frostwire.jlibtorrent.swig.hash_failed_alert;
import com.frostwire.jlibtorrent.swig.i2p_alert;
import com.frostwire.jlibtorrent.swig.incoming_connection_alert;
import com.frostwire.jlibtorrent.swig.incoming_request_alert;
import com.frostwire.jlibtorrent.swig.invalid_request_alert;
import com.frostwire.jlibtorrent.swig.listen_failed_alert;
import com.frostwire.jlibtorrent.swig.listen_succeeded_alert;
import com.frostwire.jlibtorrent.swig.log_alert;
import com.frostwire.jlibtorrent.swig.lsd_error_alert;
import com.frostwire.jlibtorrent.swig.lsd_peer_alert;
import com.frostwire.jlibtorrent.swig.metadata_failed_alert;
import com.frostwire.jlibtorrent.swig.metadata_received_alert;
import com.frostwire.jlibtorrent.swig.peer_ban_alert;
import com.frostwire.jlibtorrent.swig.peer_blocked_alert;
import com.frostwire.jlibtorrent.swig.peer_connect_alert;
import com.frostwire.jlibtorrent.swig.peer_disconnected_alert;
import com.frostwire.jlibtorrent.swig.peer_error_alert;
import com.frostwire.jlibtorrent.swig.peer_log_alert;
import com.frostwire.jlibtorrent.swig.peer_snubbed_alert;
import com.frostwire.jlibtorrent.swig.peer_unsnubbed_alert;
import com.frostwire.jlibtorrent.swig.performance_alert;
import com.frostwire.jlibtorrent.swig.picker_log_alert;
import com.frostwire.jlibtorrent.swig.piece_finished_alert;
import com.frostwire.jlibtorrent.swig.portmap_alert;
import com.frostwire.jlibtorrent.swig.portmap_error_alert;
import com.frostwire.jlibtorrent.swig.portmap_log_alert;
import com.frostwire.jlibtorrent.swig.read_piece_alert;
import com.frostwire.jlibtorrent.swig.request_dropped_alert;
import com.frostwire.jlibtorrent.swig.save_resume_data_alert;
import com.frostwire.jlibtorrent.swig.save_resume_data_failed_alert;
import com.frostwire.jlibtorrent.swig.scrape_failed_alert;
import com.frostwire.jlibtorrent.swig.scrape_reply_alert;
import com.frostwire.jlibtorrent.swig.session_error_alert;
import com.frostwire.jlibtorrent.swig.session_stats_alert;
import com.frostwire.jlibtorrent.swig.session_stats_header_alert;
import com.frostwire.jlibtorrent.swig.socks5_alert;
import com.frostwire.jlibtorrent.swig.state_changed_alert;
import com.frostwire.jlibtorrent.swig.state_update_alert;
import com.frostwire.jlibtorrent.swig.stats_alert;
import com.frostwire.jlibtorrent.swig.storage_moved_alert;
import com.frostwire.jlibtorrent.swig.storage_moved_failed_alert;
import com.frostwire.jlibtorrent.swig.torrent_checked_alert;
import com.frostwire.jlibtorrent.swig.torrent_delete_failed_alert;
import com.frostwire.jlibtorrent.swig.torrent_deleted_alert;
import com.frostwire.jlibtorrent.swig.torrent_error_alert;
import com.frostwire.jlibtorrent.swig.torrent_finished_alert;
import com.frostwire.jlibtorrent.swig.torrent_log_alert;
import com.frostwire.jlibtorrent.swig.torrent_need_cert_alert;
import com.frostwire.jlibtorrent.swig.torrent_paused_alert;
import com.frostwire.jlibtorrent.swig.torrent_removed_alert;
import com.frostwire.jlibtorrent.swig.torrent_resumed_alert;
import com.frostwire.jlibtorrent.swig.tracker_announce_alert;
import com.frostwire.jlibtorrent.swig.tracker_error_alert;
import com.frostwire.jlibtorrent.swig.tracker_reply_alert;
import com.frostwire.jlibtorrent.swig.tracker_warning_alert;
import com.frostwire.jlibtorrent.swig.trackerid_alert;
import com.frostwire.jlibtorrent.swig.udp_error_alert;
import com.frostwire.jlibtorrent.swig.unwanted_block_alert;
import com.frostwire.jlibtorrent.swig.url_seed_alert;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r1v1 com.frostwire.jlibtorrent.alerts.AlertType, still in use, count: 1, list:
  (r1v1 com.frostwire.jlibtorrent.alerts.AlertType) from 0x064a: APUT 
  (r1v80 com.frostwire.jlibtorrent.alerts.AlertType[])
  (4 ??[int, float, short, byte, char])
  (r1v1 com.frostwire.jlibtorrent.alerts.AlertType)
 (LINE:1611)
	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:151)
	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:116)
	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:88)
	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:87)
	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:238)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:180)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes.dex */
public final class AlertType {
    TORRENT_FINISHED(torrent_finished_alert.C),
    /* JADX INFO: Fake field, exist only in values array */
    SOCKS5_ALERT(torrent_removed_alert.C),
    /* JADX INFO: Fake field, exist only in values array */
    DHT_PUT(torrent_deleted_alert.C),
    /* JADX INFO: Fake field, exist only in values array */
    TORRENT_PAUSED(torrent_paused_alert.C),
    /* JADX INFO: Fake field, exist only in values array */
    TORRENT_RESUMED(torrent_resumed_alert.C),
    /* JADX INFO: Fake field, exist only in values array */
    TORRENT_CHECKED(torrent_checked_alert.C),
    /* JADX INFO: Fake field, exist only in values array */
    TORRENT_ERROR(torrent_error_alert.C),
    /* JADX INFO: Fake field, exist only in values array */
    TORRENT_NEED_CERT(torrent_need_cert_alert.C),
    /* JADX INFO: Fake field, exist only in values array */
    INCOMING_CONNECTION(incoming_connection_alert.B),
    ADD_TORRENT(add_torrent_alert.C),
    /* JADX INFO: Fake field, exist only in values array */
    SAVE_RESUME_DATA(save_resume_data_alert.C),
    /* JADX INFO: Fake field, exist only in values array */
    FASTRESUME_REJECTED(fastresume_rejected_alert.C),
    BLOCK_FINISHED(block_finished_alert.D),
    METADATA_RECEIVED(metadata_received_alert.C),
    METADATA_FAILED(metadata_failed_alert.C),
    /* JADX INFO: Fake field, exist only in values array */
    UNKNOWN(file_completed_alert.C),
    /* JADX INFO: Fake field, exist only in values array */
    SOCKS5_ALERT(file_renamed_alert.C),
    /* JADX INFO: Fake field, exist only in values array */
    DHT_PUT(file_rename_failed_alert.C),
    /* JADX INFO: Fake field, exist only in values array */
    UNKNOWN(file_error_alert.C),
    /* JADX INFO: Fake field, exist only in values array */
    SOCKS5_ALERT(hash_failed_alert.C),
    PORTMAP(portmap_alert.B),
    PORTMAP_ERROR(portmap_error_alert.B),
    /* JADX INFO: Fake field, exist only in values array */
    SOCKS5_ALERT(portmap_log_alert.B),
    /* JADX INFO: Fake field, exist only in values array */
    DHT_PUT(tracker_announce_alert.D),
    /* JADX INFO: Fake field, exist only in values array */
    UNKNOWN(tracker_reply_alert.D),
    /* JADX INFO: Fake field, exist only in values array */
    SOCKS5_ALERT(tracker_warning_alert.D),
    /* JADX INFO: Fake field, exist only in values array */
    DHT_PUT(tracker_error_alert.D),
    /* JADX INFO: Fake field, exist only in values array */
    UNKNOWN(read_piece_alert.C),
    /* JADX INFO: Fake field, exist only in values array */
    SOCKS5_ALERT(state_changed_alert.C),
    /* JADX INFO: Fake field, exist only in values array */
    DHT_PUT(dht_reply_alert.D),
    /* JADX INFO: Fake field, exist only in values array */
    UNKNOWN(dht_bootstrap_alert.B),
    /* JADX INFO: Fake field, exist only in values array */
    SOCKS5_ALERT(dht_get_peers_alert.B),
    EXTERNAL_IP(external_ip_alert.B),
    LISTEN_SUCCEEDED(listen_succeeded_alert.B),
    STATE_UPDATE(state_update_alert.B),
    SESSION_STATS(session_stats_alert.B),
    /* JADX INFO: Fake field, exist only in values array */
    UNKNOWN(scrape_reply_alert.D),
    /* JADX INFO: Fake field, exist only in values array */
    SOCKS5_ALERT(scrape_failed_alert.D),
    /* JADX INFO: Fake field, exist only in values array */
    DHT_PUT(lsd_peer_alert.D),
    /* JADX INFO: Fake field, exist only in values array */
    UNKNOWN(peer_blocked_alert.D),
    /* JADX INFO: Fake field, exist only in values array */
    SOCKS5_ALERT(performance_alert.C),
    /* JADX INFO: Fake field, exist only in values array */
    DHT_PUT(piece_finished_alert.C),
    /* JADX INFO: Fake field, exist only in values array */
    UNKNOWN(save_resume_data_failed_alert.C),
    /* JADX INFO: Fake field, exist only in values array */
    SOCKS5_ALERT(stats_alert.C),
    /* JADX INFO: Fake field, exist only in values array */
    DHT_PUT(storage_moved_alert.C),
    /* JADX INFO: Fake field, exist only in values array */
    UNKNOWN(torrent_delete_failed_alert.C),
    /* JADX INFO: Fake field, exist only in values array */
    SOCKS5_ALERT(url_seed_alert.C),
    /* JADX INFO: Fake field, exist only in values array */
    DHT_PUT(invalid_request_alert.D),
    LISTEN_FAILED(listen_failed_alert.B),
    /* JADX INFO: Fake field, exist only in values array */
    SOCKS5_ALERT(peer_ban_alert.D),
    /* JADX INFO: Fake field, exist only in values array */
    DHT_PUT(peer_connect_alert.D),
    /* JADX INFO: Fake field, exist only in values array */
    UNKNOWN(peer_disconnected_alert.D),
    /* JADX INFO: Fake field, exist only in values array */
    SOCKS5_ALERT(peer_error_alert.D),
    /* JADX INFO: Fake field, exist only in values array */
    DHT_PUT(peer_snubbed_alert.D),
    /* JADX INFO: Fake field, exist only in values array */
    UNKNOWN(peer_unsnubbed_alert.D),
    /* JADX INFO: Fake field, exist only in values array */
    SOCKS5_ALERT(request_dropped_alert.D),
    /* JADX INFO: Fake field, exist only in values array */
    DHT_PUT(udp_error_alert.B),
    /* JADX INFO: Fake field, exist only in values array */
    UNKNOWN(block_downloading_alert.D),
    /* JADX INFO: Fake field, exist only in values array */
    SOCKS5_ALERT(block_timeout_alert.D),
    /* JADX INFO: Fake field, exist only in values array */
    DHT_PUT(cache_flushed_alert.C),
    /* JADX INFO: Fake field, exist only in values array */
    UNKNOWN(dht_announce_alert.B),
    /* JADX INFO: Fake field, exist only in values array */
    SOCKS5_ALERT(storage_moved_failed_alert.C),
    /* JADX INFO: Fake field, exist only in values array */
    DHT_PUT(trackerid_alert.D),
    /* JADX INFO: Fake field, exist only in values array */
    UNKNOWN(unwanted_block_alert.D),
    /* JADX INFO: Fake field, exist only in values array */
    SOCKS5_ALERT(dht_error_alert.B),
    /* JADX INFO: Fake field, exist only in values array */
    DHT_PUT(dht_put_alert.B),
    DHT_MUTABLE_ITEM(dht_mutable_item_alert.B),
    DHT_IMMUTABLE_ITEM(dht_immutable_item_alert.B),
    /* JADX INFO: Fake field, exist only in values array */
    UNKNOWN(i2p_alert.B),
    /* JADX INFO: Fake field, exist only in values array */
    SOCKS5_ALERT(dht_outgoing_get_peers_alert.B),
    /* JADX INFO: Fake field, exist only in values array */
    UNKNOWN(log_alert.B),
    /* JADX INFO: Fake field, exist only in values array */
    SOCKS5_ALERT(torrent_log_alert.C),
    /* JADX INFO: Fake field, exist only in values array */
    UNKNOWN(peer_log_alert.D),
    /* JADX INFO: Fake field, exist only in values array */
    SOCKS5_ALERT(lsd_error_alert.B),
    DHT_STATS(dht_stats_alert.B),
    /* JADX INFO: Fake field, exist only in values array */
    SOCKS5_ALERT(incoming_request_alert.E),
    /* JADX INFO: Fake field, exist only in values array */
    UNKNOWN(dht_log_alert.C),
    /* JADX INFO: Fake field, exist only in values array */
    SOCKS5_ALERT(dht_pkt_alert.C),
    DHT_GET_PEERS_REPLY(dht_get_peers_reply_alert.C),
    /* JADX INFO: Fake field, exist only in values array */
    SOCKS5_ALERT(dht_direct_response_alert.B),
    /* JADX INFO: Fake field, exist only in values array */
    UNKNOWN(picker_log_alert.D),
    /* JADX INFO: Fake field, exist only in values array */
    SOCKS5_ALERT(session_error_alert.B),
    /* JADX INFO: Fake field, exist only in values array */
    UNKNOWN(dht_live_nodes_alert.B),
    SESSION_STATS_HEADER(session_stats_header_alert.B),
    /* JADX INFO: Fake field, exist only in values array */
    UNKNOWN(dht_sample_infohashes_alert.C),
    /* JADX INFO: Fake field, exist only in values array */
    SOCKS5_ALERT(block_uploaded_alert.D),
    /* JADX INFO: Fake field, exist only in values array */
    UNKNOWN(alerts_dropped_alert.B),
    /* JADX INFO: Fake field, exist only in values array */
    SOCKS5_ALERT(socks5_alert.A),
    /* JADX INFO: Fake field, exist only in values array */
    UNKNOWN(-1);

    public static final AlertType[] w;

    /* renamed from: c, reason: collision with root package name */
    public final int f2641c;

    static {
        AlertType alertType = TORRENT_FINISHED;
        AlertType alertType2 = ADD_TORRENT;
        AlertType alertType3 = BLOCK_FINISHED;
        AlertType alertType4 = METADATA_RECEIVED;
        AlertType alertType5 = METADATA_FAILED;
        AlertType alertType6 = PORTMAP;
        AlertType alertType7 = PORTMAP_ERROR;
        AlertType alertType8 = EXTERNAL_IP;
        AlertType alertType9 = LISTEN_SUCCEEDED;
        AlertType alertType10 = STATE_UPDATE;
        AlertType alertType11 = SESSION_STATS;
        AlertType alertType12 = LISTEN_FAILED;
        AlertType alertType13 = DHT_MUTABLE_ITEM;
        AlertType alertType14 = DHT_IMMUTABLE_ITEM;
        AlertType alertType15 = DHT_STATS;
        AlertType alertType16 = DHT_GET_PEERS_REPLY;
        AlertType alertType17 = SESSION_STATS_HEADER;
        AlertType alertType18 = UNKNOWN;
        AlertType[] alertTypeArr = new AlertType[Alerts.f2642a];
        alertTypeArr[0] = alertType18;
        alertTypeArr[1] = alertType18;
        alertTypeArr[2] = alertType18;
        alertTypeArr[3] = alertType18;
        alertTypeArr[4] = r1;
        alertTypeArr[5] = r0;
        alertTypeArr[6] = r0;
        alertTypeArr[7] = r1;
        alertTypeArr[8] = r2;
        alertTypeArr[9] = r1;
        alertTypeArr[10] = r1;
        alertTypeArr[11] = r2;
        alertTypeArr[12] = r1;
        alertTypeArr[13] = r0;
        alertTypeArr[14] = r1;
        alertTypeArr[15] = r0;
        alertTypeArr[16] = r2;
        alertTypeArr[17] = r2;
        alertTypeArr[18] = r1;
        alertTypeArr[19] = r1;
        alertTypeArr[20] = r0;
        alertTypeArr[21] = r2;
        alertTypeArr[22] = r1;
        alertTypeArr[23] = r2;
        alertTypeArr[24] = r0;
        alertTypeArr[25] = r2;
        alertTypeArr[26] = alertType;
        alertTypeArr[27] = r2;
        alertTypeArr[28] = r1;
        alertTypeArr[29] = r1;
        alertTypeArr[30] = alertType3;
        alertTypeArr[31] = r0;
        alertTypeArr[32] = r0;
        alertTypeArr[33] = r2;
        alertTypeArr[34] = r1;
        alertTypeArr[35] = r2;
        alertTypeArr[36] = r0;
        alertTypeArr[37] = r7;
        alertTypeArr[38] = r0;
        alertTypeArr[39] = r4;
        alertTypeArr[40] = r6;
        alertTypeArr[41] = r8;
        alertTypeArr[42] = r1;
        alertTypeArr[43] = r0;
        alertTypeArr[44] = alertType5;
        alertTypeArr[45] = alertType4;
        alertTypeArr[46] = r2;
        alertTypeArr[47] = alertType8;
        alertTypeArr[48] = alertType12;
        alertTypeArr[49] = alertType9;
        alertTypeArr[50] = alertType7;
        alertTypeArr[51] = alertType6;
        alertTypeArr[52] = r1;
        alertTypeArr[53] = r9;
        alertTypeArr[54] = r0;
        alertTypeArr[55] = r0;
        alertTypeArr[56] = r1;
        alertTypeArr[57] = r1;
        alertTypeArr[58] = r2;
        alertTypeArr[59] = alertType18;
        alertTypeArr[60] = r2;
        alertTypeArr[61] = r2;
        alertTypeArr[62] = r0;
        alertTypeArr[63] = alertType18;
        alertTypeArr[64] = r10;
        alertTypeArr[65] = r12;
        alertTypeArr[66] = r3;
        alertTypeArr[67] = alertType2;
        alertTypeArr[68] = alertType10;
        alertTypeArr[69] = alertType18;
        alertTypeArr[70] = alertType11;
        alertTypeArr[71] = alertType18;
        alertTypeArr[72] = alertType18;
        alertTypeArr[73] = r1;
        alertTypeArr[74] = alertType14;
        alertTypeArr[75] = alertType13;
        alertTypeArr[76] = r2;
        alertTypeArr[77] = r0;
        alertTypeArr[78] = r1;
        alertTypeArr[79] = r0;
        alertTypeArr[80] = r1;
        alertTypeArr[81] = r0;
        alertTypeArr[82] = r1;
        alertTypeArr[83] = alertType15;
        alertTypeArr[84] = r1;
        alertTypeArr[85] = r0;
        alertTypeArr[86] = r1;
        alertTypeArr[87] = alertType16;
        alertTypeArr[88] = r1;
        alertTypeArr[89] = r0;
        alertTypeArr[90] = r1;
        alertTypeArr[91] = r0;
        alertTypeArr[92] = alertType17;
        alertTypeArr[93] = r0;
        alertTypeArr[94] = r1;
        alertTypeArr[95] = r0;
        alertTypeArr[96] = r1;
        w = alertTypeArr;
    }

    public AlertType(int i) {
        this.f2641c = i;
    }

    public static AlertType valueOf(String str) {
        return (AlertType) Enum.valueOf(AlertType.class, str);
    }

    public static AlertType[] values() {
        return (AlertType[]) x.clone();
    }
}
