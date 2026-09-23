package com.frostwire.jlibtorrent;

import com.frostwire.jlibtorrent.swig.libtorrent_jni;
import com.frostwire.jlibtorrent.swig.torrent_status;

/* loaded from: classes.dex */
public final class TorrentStatus implements Cloneable {

    /* renamed from: c, reason: collision with root package name */
    public final torrent_status f2636c;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public static final class State {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ State[] f2637c;

        /* JADX INFO: Fake field, exist only in values array */
        State EF0;

        /* JADX WARN: Multi-variable type inference failed */
        static {
            int i = torrent_status.state_t.f2743c.f2744a;
            Enum r0 = new Enum("CHECKING_FILES", 0);
            int i2 = torrent_status.state_t.d.f2744a;
            Enum r1 = new Enum("DOWNLOADING_METADATA", 1);
            int i3 = torrent_status.state_t.e.f2744a;
            Enum r3 = new Enum("DOWNLOADING", 2);
            int i4 = torrent_status.state_t.f.f2744a;
            Enum r5 = new Enum("FINISHED", 3);
            int i5 = torrent_status.state_t.g.f2744a;
            Enum r7 = new Enum("SEEDING", 4);
            int i6 = torrent_status.state_t.h.f2744a;
            f2637c = new State[]{r0, r1, r3, r5, r7, new Enum("CHECKING_RESUME_DATA", 5), new Enum("UNKNOWN", 6)};
        }

        public static State valueOf(String str) {
            return (State) Enum.valueOf(State.class, str);
        }

        public static State[] values() {
            return (State[]) f2637c.clone();
        }
    }

    public TorrentStatus(torrent_status torrent_statusVar) {
        this.f2636c = torrent_statusVar;
    }

    public final Object clone() {
        torrent_status torrent_statusVar = this.f2636c;
        return new TorrentStatus(new torrent_status(libtorrent_jni.new_torrent_status__SWIG_1(torrent_statusVar.f2742a, torrent_statusVar)));
    }
}
