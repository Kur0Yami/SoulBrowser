package com.frostwire.jlibtorrent.alerts;

import com.frostwire.jlibtorrent.swig.tracker_announce_alert;

/* loaded from: classes.dex */
public final class TrackerAnnounceAlert extends TrackerAlert<tracker_announce_alert> {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public static final class TrackerAnnounceEvent {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ TrackerAnnounceEvent[] f2654c = {new Enum("NONE", 0), new Enum("COMPLETED", 1), new Enum("STARTED", 2), new Enum("STOPPED", 3), new Enum("UNKNOWN", 4)};

        /* JADX INFO: Fake field, exist only in values array */
        TrackerAnnounceEvent EF5;

        public static TrackerAnnounceEvent valueOf(String str) {
            return (TrackerAnnounceEvent) Enum.valueOf(TrackerAnnounceEvent.class, str);
        }

        public static TrackerAnnounceEvent[] values() {
            return (TrackerAnnounceEvent[]) f2654c.clone();
        }
    }
}
