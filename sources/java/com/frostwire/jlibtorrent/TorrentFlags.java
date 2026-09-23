package com.frostwire.jlibtorrent;

import com.frostwire.jlibtorrent.swig.libtorrent_jni;
import com.frostwire.jlibtorrent.swig.torrent_flags_t;

/* loaded from: classes.dex */
public final class TorrentFlags {

    /* renamed from: a, reason: collision with root package name */
    public static final torrent_flags_t f2628a;
    public static final torrent_flags_t b;

    /* renamed from: c, reason: collision with root package name */
    public static final torrent_flags_t f2629c;
    public static final torrent_flags_t d;
    public static final torrent_flags_t e;
    public static final torrent_flags_t f;
    public static final torrent_flags_t g;
    public static final torrent_flags_t h;
    public static final torrent_flags_t i;
    public static final torrent_flags_t j;
    public static final torrent_flags_t k;
    public static final torrent_flags_t l;
    public static final torrent_flags_t m;
    public static final torrent_flags_t n;
    public static final torrent_flags_t o;
    public static final torrent_flags_t p;
    public static final torrent_flags_t q;
    public static final torrent_flags_t r;

    static {
        torrent_flags_t torrent_flags_tVar;
        torrent_flags_t torrent_flags_tVar2;
        torrent_flags_t torrent_flags_tVar3;
        torrent_flags_t torrent_flags_tVar4;
        torrent_flags_t torrent_flags_tVar5;
        torrent_flags_t torrent_flags_tVar6;
        torrent_flags_t torrent_flags_tVar7;
        torrent_flags_t torrent_flags_tVar8;
        torrent_flags_t torrent_flags_tVar9;
        torrent_flags_t torrent_flags_tVar10;
        torrent_flags_t torrent_flags_tVar11;
        torrent_flags_t torrent_flags_tVar12;
        torrent_flags_t torrent_flags_tVar13;
        torrent_flags_t torrent_flags_tVar14;
        torrent_flags_t torrent_flags_tVar15;
        torrent_flags_t torrent_flags_tVar16;
        torrent_flags_t torrent_flags_tVar17;
        long seed_mode_get = libtorrent_jni.seed_mode_get();
        torrent_flags_t torrent_flags_tVar18 = null;
        if (seed_mode_get == 0) {
            torrent_flags_tVar = null;
        } else {
            torrent_flags_tVar = new torrent_flags_t(seed_mode_get, false);
        }
        f2628a = torrent_flags_tVar;
        long upload_mode_get = libtorrent_jni.upload_mode_get();
        if (upload_mode_get == 0) {
            torrent_flags_tVar2 = null;
        } else {
            torrent_flags_tVar2 = new torrent_flags_t(upload_mode_get, false);
        }
        b = torrent_flags_tVar2;
        long share_mode_get = libtorrent_jni.share_mode_get();
        if (share_mode_get == 0) {
            torrent_flags_tVar3 = null;
        } else {
            torrent_flags_tVar3 = new torrent_flags_t(share_mode_get, false);
        }
        f2629c = torrent_flags_tVar3;
        long apply_ip_filter_get = libtorrent_jni.apply_ip_filter_get();
        if (apply_ip_filter_get == 0) {
            torrent_flags_tVar4 = null;
        } else {
            torrent_flags_tVar4 = new torrent_flags_t(apply_ip_filter_get, false);
        }
        d = torrent_flags_tVar4;
        long paused_get = libtorrent_jni.paused_get();
        if (paused_get == 0) {
            torrent_flags_tVar5 = null;
        } else {
            torrent_flags_tVar5 = new torrent_flags_t(paused_get, false);
        }
        e = torrent_flags_tVar5;
        long auto_managed_get = libtorrent_jni.auto_managed_get();
        if (auto_managed_get == 0) {
            torrent_flags_tVar6 = null;
        } else {
            torrent_flags_tVar6 = new torrent_flags_t(auto_managed_get, false);
        }
        f = torrent_flags_tVar6;
        long duplicate_is_error_get = libtorrent_jni.duplicate_is_error_get();
        if (duplicate_is_error_get == 0) {
            torrent_flags_tVar7 = null;
        } else {
            torrent_flags_tVar7 = new torrent_flags_t(duplicate_is_error_get, false);
        }
        g = torrent_flags_tVar7;
        long update_subscribe_get = libtorrent_jni.update_subscribe_get();
        if (update_subscribe_get == 0) {
            torrent_flags_tVar8 = null;
        } else {
            torrent_flags_tVar8 = new torrent_flags_t(update_subscribe_get, false);
        }
        h = torrent_flags_tVar8;
        long super_seeding_get = libtorrent_jni.super_seeding_get();
        if (super_seeding_get == 0) {
            torrent_flags_tVar9 = null;
        } else {
            torrent_flags_tVar9 = new torrent_flags_t(super_seeding_get, false);
        }
        i = torrent_flags_tVar9;
        long sequential_download_get = libtorrent_jni.sequential_download_get();
        if (sequential_download_get == 0) {
            torrent_flags_tVar10 = null;
        } else {
            torrent_flags_tVar10 = new torrent_flags_t(sequential_download_get, false);
        }
        j = torrent_flags_tVar10;
        long stop_when_ready_get = libtorrent_jni.stop_when_ready_get();
        if (stop_when_ready_get == 0) {
            torrent_flags_tVar11 = null;
        } else {
            torrent_flags_tVar11 = new torrent_flags_t(stop_when_ready_get, false);
        }
        k = torrent_flags_tVar11;
        long override_trackers_get = libtorrent_jni.override_trackers_get();
        if (override_trackers_get == 0) {
            torrent_flags_tVar12 = null;
        } else {
            torrent_flags_tVar12 = new torrent_flags_t(override_trackers_get, false);
        }
        l = torrent_flags_tVar12;
        long override_web_seeds_get = libtorrent_jni.override_web_seeds_get();
        if (override_web_seeds_get == 0) {
            torrent_flags_tVar13 = null;
        } else {
            torrent_flags_tVar13 = new torrent_flags_t(override_web_seeds_get, false);
        }
        m = torrent_flags_tVar13;
        long need_save_resume_get = libtorrent_jni.need_save_resume_get();
        if (need_save_resume_get == 0) {
            torrent_flags_tVar14 = null;
        } else {
            torrent_flags_tVar14 = new torrent_flags_t(need_save_resume_get, false);
        }
        n = torrent_flags_tVar14;
        long disable_dht_get = libtorrent_jni.disable_dht_get();
        if (disable_dht_get == 0) {
            torrent_flags_tVar15 = null;
        } else {
            torrent_flags_tVar15 = new torrent_flags_t(disable_dht_get, false);
        }
        o = torrent_flags_tVar15;
        long disable_lsd_get = libtorrent_jni.disable_lsd_get();
        if (disable_lsd_get == 0) {
            torrent_flags_tVar16 = null;
        } else {
            torrent_flags_tVar16 = new torrent_flags_t(disable_lsd_get, false);
        }
        p = torrent_flags_tVar16;
        long disable_pex_get = libtorrent_jni.disable_pex_get();
        if (disable_pex_get == 0) {
            torrent_flags_tVar17 = null;
        } else {
            torrent_flags_tVar17 = new torrent_flags_t(disable_pex_get, false);
        }
        q = torrent_flags_tVar17;
        long all_get = libtorrent_jni.all_get();
        if (all_get != 0) {
            torrent_flags_tVar18 = new torrent_flags_t(all_get, false);
        }
        r = torrent_flags_tVar18;
    }
}
