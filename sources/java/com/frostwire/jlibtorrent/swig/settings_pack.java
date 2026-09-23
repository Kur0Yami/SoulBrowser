package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public class settings_pack {

    /* renamed from: a, reason: collision with root package name */
    public transient long f2720a;
    public transient boolean b;

    /* loaded from: classes.dex */
    public static final class bandwidth_mixed_algo_t {
        static {
            libtorrent_jni.settings_pack_prefer_tcp_get();
            libtorrent_jni.settings_pack_peer_proportional_get();
        }

        public final String toString() {
            return null;
        }
    }

    /* loaded from: classes.dex */
    public static final class choking_algorithm_t {
        static {
            libtorrent_jni.settings_pack_fixed_slots_choker_get();
            libtorrent_jni.settings_pack_rate_based_choker_get();
        }

        public final String toString() {
            return null;
        }
    }

    /* loaded from: classes.dex */
    public static final class enc_level {
        static {
            libtorrent_jni.settings_pack_pe_plaintext_get();
            libtorrent_jni.settings_pack_pe_rc4_get();
            libtorrent_jni.settings_pack_pe_both_get();
        }

        public final String toString() {
            return null;
        }
    }

    /* loaded from: classes.dex */
    public static final class enc_policy {
        public final String toString() {
            return null;
        }
    }

    /* loaded from: classes.dex */
    public static final class io_buffer_mode_t {
        static {
            libtorrent_jni.settings_pack_enable_os_cache_get();
            libtorrent_jni.settings_pack_deprecated_disable_os_cache_for_aligned_files_get();
            libtorrent_jni.settings_pack_disable_os_cache_get();
        }

        public final String toString() {
            return null;
        }
    }

    /* loaded from: classes.dex */
    public static final class proxy_type_t {
        public final String toString() {
            return null;
        }
    }

    /* loaded from: classes.dex */
    public static final class seed_choking_algorithm_t {
        public final String toString() {
            return null;
        }
    }

    /* loaded from: classes.dex */
    public static final class settings_counts_t {
        static {
            libtorrent_jni.settings_pack_num_string_settings_get();
            libtorrent_jni.settings_pack_num_bool_settings_get();
            libtorrent_jni.settings_pack_num_int_settings_get();
        }

        public final String toString() {
            return null;
        }
    }

    /* loaded from: classes.dex */
    public static final class string_types {
        static {
            libtorrent_jni.settings_pack_user_agent_get();
            libtorrent_jni.settings_pack_handshake_client_version_get();
        }

        public final String toString() {
            return null;
        }
    }

    /* loaded from: classes.dex */
    public static final class suggest_mode_t {
        static {
            libtorrent_jni.settings_pack_no_piece_suggestions_get();
            libtorrent_jni.settings_pack_suggest_read_cache_get();
        }

        public final String toString() {
            return null;
        }
    }

    /* loaded from: classes.dex */
    public static final class type_bases {
        static {
            libtorrent_jni.settings_pack_string_type_base_get();
            libtorrent_jni.settings_pack_int_type_base_get();
            libtorrent_jni.settings_pack_bool_type_base_get();
            libtorrent_jni.settings_pack_type_mask_get();
            libtorrent_jni.settings_pack_index_mask_get();
        }

        public final String toString() {
            return null;
        }
    }

    public settings_pack(long j, boolean z) {
        this.b = z;
        this.f2720a = j;
    }

    public final void finalize() {
        synchronized (this) {
            try {
                long j = this.f2720a;
                if (j != 0) {
                    if (this.b) {
                        this.b = false;
                        libtorrent_jni.delete_settings_pack(j);
                    }
                    this.f2720a = 0L;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* loaded from: classes.dex */
    public static final class bool_types {

        /* renamed from: c, reason: collision with root package name */
        public static final bool_types f2721c;
        public static final bool_types d;
        public static int e;

        /* renamed from: a, reason: collision with root package name */
        public final int f2722a;
        public final String b;

        static {
            new bool_types("allow_multiple_connections_per_ip", libtorrent_jni.settings_pack_allow_multiple_connections_per_ip_get());
            new bool_types("send_redundant_have", libtorrent_jni.settings_pack_send_redundant_have_get());
            new bool_types("use_dht_as_fallback", libtorrent_jni.settings_pack_use_dht_as_fallback_get());
            new bool_types("upnp_ignore_nonrouters");
            new bool_types("use_parole_mode");
            new bool_types("use_read_cache");
            new bool_types("coalesce_reads", libtorrent_jni.settings_pack_coalesce_reads_get());
            new bool_types("coalesce_writes");
            new bool_types("auto_manage_prefer_seeds");
            new bool_types("dont_count_slow_torrents");
            new bool_types("close_redundant_connections");
            new bool_types("prioritize_partial_pieces");
            new bool_types("rate_limit_ip_overhead");
            new bool_types("announce_to_all_tiers");
            new bool_types("announce_to_all_trackers");
            new bool_types("prefer_udp_trackers");
            new bool_types("deprecated_strict_super_seeding");
            new bool_types("disable_hash_checks", libtorrent_jni.settings_pack_disable_hash_checks_get());
            new bool_types("allow_i2p_mixed");
            new bool_types("volatile_read_cache", libtorrent_jni.settings_pack_volatile_read_cache_get());
            new bool_types("no_atime_storage", libtorrent_jni.settings_pack_no_atime_storage_get());
            new bool_types("incoming_starts_queued_torrents");
            new bool_types("report_true_downloaded");
            new bool_types("strict_end_game_mode");
            new bool_types("enable_outgoing_utp", libtorrent_jni.settings_pack_enable_outgoing_utp_get());
            new bool_types("enable_incoming_utp");
            new bool_types("enable_outgoing_tcp");
            new bool_types("enable_incoming_tcp");
            new bool_types("no_recheck_incomplete_resume", libtorrent_jni.settings_pack_no_recheck_incomplete_resume_get());
            f2721c = new bool_types("anonymous_mode");
            new bool_types("report_web_seed_downloads");
            new bool_types("seeding_outgoing_connections", libtorrent_jni.settings_pack_seeding_outgoing_connections_get());
            new bool_types("no_connect_privileged_ports");
            new bool_types("smooth_connects");
            new bool_types("always_send_user_agent");
            new bool_types("apply_ip_filter_to_trackers");
            new bool_types("ban_web_seeds", libtorrent_jni.settings_pack_ban_web_seeds_get());
            new bool_types("allow_partial_disk_writes");
            new bool_types("support_share_mode", libtorrent_jni.settings_pack_support_share_mode_get());
            new bool_types("support_merkle_torrents");
            new bool_types("report_redundant_bytes");
            new bool_types("listen_system_port_fallback");
            new bool_types("announce_crypto_support", libtorrent_jni.settings_pack_announce_crypto_support_get());
            new bool_types("enable_upnp");
            new bool_types("enable_natpmp");
            new bool_types("enable_lsd");
            d = new bool_types("enable_dht");
            new bool_types("prefer_rc4");
            new bool_types("proxy_hostnames");
            new bool_types("proxy_peer_connections");
            new bool_types("auto_sequential");
            new bool_types("proxy_tracker_connections");
            new bool_types("enable_ip_notifier");
            new bool_types("dht_prefer_verified_node_ids");
            new bool_types("piece_extent_affinity");
            new bool_types("validate_https_trackers");
            new bool_types("ssrf_mitigation");
            new bool_types("allow_idna");
            new bool_types("max_bool_setting_internal");
            e = 0;
        }

        public bool_types(String str) {
            this.b = str;
            int i = e;
            e = i + 1;
            this.f2722a = i;
        }

        public final String toString() {
            return this.b;
        }

        public bool_types(String str, int i) {
            this.b = str;
            this.f2722a = i;
            e = i + 1;
        }
    }

    /* loaded from: classes.dex */
    public static final class int_types {

        /* renamed from: c, reason: collision with root package name */
        public static final int_types f2723c;
        public static final int_types d;
        public static final int_types e;
        public static final int_types f;
        public static final int_types g;
        public static int h;

        /* renamed from: a, reason: collision with root package name */
        public final int f2724a;
        public final String b;

        static {
            new int_types("tracker_completion_timeout", libtorrent_jni.settings_pack_tracker_completion_timeout_get());
            new int_types("tracker_receive_timeout");
            new int_types("stop_tracker_timeout");
            new int_types("tracker_maximum_response_length");
            new int_types("piece_timeout");
            new int_types("request_timeout");
            new int_types("request_queue_time");
            new int_types("max_allowed_in_request_queue");
            new int_types("max_out_request_queue");
            new int_types("whole_pieces_threshold");
            new int_types("peer_timeout");
            new int_types("urlseed_timeout");
            new int_types("urlseed_pipeline_size");
            new int_types("urlseed_wait_retry");
            new int_types("file_pool_size");
            new int_types("max_failcount");
            new int_types("min_reconnect_time");
            new int_types("peer_connect_timeout");
            new int_types("connection_speed");
            new int_types("inactivity_timeout");
            new int_types("unchoke_interval");
            new int_types("optimistic_unchoke_interval");
            new int_types("num_want");
            new int_types("initial_picker_threshold");
            new int_types("allowed_fast_set_size");
            new int_types("suggest_mode");
            new int_types("max_queued_disk_bytes");
            new int_types("handshake_timeout");
            new int_types("send_buffer_low_watermark");
            new int_types("send_buffer_watermark");
            new int_types("send_buffer_watermark_factor");
            new int_types("choking_algorithm");
            new int_types("seed_choking_algorithm");
            new int_types("cache_size");
            new int_types("cache_expiry", libtorrent_jni.settings_pack_cache_expiry_get());
            new int_types("disk_io_write_mode");
            new int_types("disk_io_read_mode");
            new int_types("outgoing_port");
            new int_types("num_outgoing_ports");
            new int_types("peer_dscp");
            new int_types("peer_tos", libtorrent_jni.settings_pack_peer_tos_get());
            new int_types("active_downloads");
            new int_types("active_seeds");
            new int_types("active_checking");
            f2723c = new int_types("active_dht_limit");
            new int_types("active_tracker_limit");
            new int_types("active_lsd_limit");
            new int_types("active_limit");
            new int_types("auto_manage_interval", libtorrent_jni.settings_pack_auto_manage_interval_get());
            new int_types("seed_time_limit");
            new int_types("auto_scrape_interval");
            new int_types("auto_scrape_min_interval");
            new int_types("max_peerlist_size");
            new int_types("max_paused_peerlist_size");
            new int_types("min_announce_interval");
            new int_types("auto_manage_startup");
            new int_types("seeding_piece_quota");
            new int_types("max_rejects");
            new int_types("recv_socket_buffer_size");
            new int_types("send_socket_buffer_size");
            new int_types("max_peer_recv_buffer_size");
            new int_types("read_cache_line_size", libtorrent_jni.settings_pack_read_cache_line_size_get());
            new int_types("write_cache_line_size");
            new int_types("optimistic_disk_retry");
            new int_types("max_suggest_pieces");
            new int_types("local_service_announce_interval");
            new int_types("dht_announce_interval");
            new int_types("udp_tracker_token_expiry");
            new int_types("num_optimistic_unchoke_slots", libtorrent_jni.settings_pack_num_optimistic_unchoke_slots_get());
            new int_types("deprecated_default_est_reciprocation_rate");
            new int_types("deprecated_increase_est_reciprocation_rate");
            new int_types("deprecated_decrease_est_reciprocation_rate");
            new int_types("max_pex_peers");
            new int_types("tick_interval");
            new int_types("share_mode_target");
            d = new int_types("upload_rate_limit");
            e = new int_types("download_rate_limit");
            new int_types("dht_upload_rate_limit", libtorrent_jni.settings_pack_dht_upload_rate_limit_get());
            new int_types("unchoke_slots_limit");
            f = new int_types("connections_limit", libtorrent_jni.settings_pack_connections_limit_get());
            new int_types("connections_slack");
            new int_types("utp_target_delay");
            new int_types("utp_gain_factor");
            new int_types("utp_min_timeout");
            new int_types("utp_syn_resends");
            new int_types("utp_fin_resends");
            new int_types("utp_num_resends");
            new int_types("utp_connect_timeout");
            new int_types("utp_loss_multiplier", libtorrent_jni.settings_pack_utp_loss_multiplier_get());
            new int_types("mixed_mode_algorithm");
            new int_types("listen_queue_size");
            new int_types("torrent_connect_boost");
            new int_types("alert_queue_size");
            new int_types("max_metadata_size");
            new int_types("checking_mem_usage", libtorrent_jni.settings_pack_checking_mem_usage_get());
            new int_types("predictive_piece_announce");
            new int_types("aio_threads");
            new int_types("deprecated_aio_max");
            new int_types("tracker_backoff", libtorrent_jni.settings_pack_tracker_backoff_get());
            new int_types("share_ratio_limit");
            new int_types("seed_time_ratio_limit");
            new int_types("peer_turnover");
            new int_types("peer_turnover_cutoff");
            new int_types("peer_turnover_interval");
            new int_types("connect_seed_every_n_download");
            new int_types("max_http_recv_buffer_size");
            new int_types("max_retry_port_bind");
            g = new int_types("alert_mask");
            new int_types("out_enc_policy");
            new int_types("in_enc_policy");
            new int_types("allowed_enc_level");
            new int_types("inactive_down_rate");
            new int_types("inactive_up_rate");
            new int_types("proxy_type");
            new int_types("proxy_port");
            new int_types("i2p_port");
            new int_types("cache_size_volatile");
            new int_types("urlseed_max_request_bytes");
            new int_types("web_seed_name_lookup_retry");
            new int_types("close_file_interval");
            new int_types("utp_cwnd_reduce_timer");
            new int_types("max_web_seed_connections");
            new int_types("resolver_cache_timeout");
            new int_types("send_not_sent_low_watermark");
            new int_types("rate_choker_initial_threshold");
            new int_types("upnp_lease_duration");
            new int_types("max_concurrent_http_announces");
            new int_types("max_int_setting_internal");
            h = 0;
        }

        public int_types(String str) {
            this.b = str;
            int i = h;
            h = i + 1;
            this.f2724a = i;
        }

        public final String toString() {
            return this.b;
        }

        public int_types(String str, int i) {
            this.b = str;
            this.f2724a = i;
            h = i + 1;
        }
    }
}
