package com.frostwire.jlibtorrent.alerts;

import com.frostwire.jlibtorrent.swig.performance_alert;

/* loaded from: classes.dex */
public final class PerformanceAlert extends TorrentAlert<performance_alert> {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public static final class PerformanceWarning {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ PerformanceWarning[] f2650c;

        /* JADX INFO: Fake field, exist only in values array */
        PerformanceWarning EF0;

        /* JADX WARN: Multi-variable type inference failed */
        static {
            int i = performance_alert.performance_warning_t.f2702c.f2703a;
            Enum r0 = new Enum("OUTSTANDING_DISK_BUFFER_LIMIT_REACHED", 0);
            int i2 = performance_alert.performance_warning_t.d.f2703a;
            Enum r1 = new Enum("OUTSTANDING_REQUEST_LIMIT_REACHED", 1);
            int i3 = performance_alert.performance_warning_t.e.f2703a;
            Enum r3 = new Enum("UPLOAD_LIMIT_TOO_LOW", 2);
            int i4 = performance_alert.performance_warning_t.f.f2703a;
            Enum r5 = new Enum("DOWNLOAD_LIMIT_TOO_LOW", 3);
            int i5 = performance_alert.performance_warning_t.g.f2703a;
            Enum r7 = new Enum("SEND_BUFFER_WATERMARK_TOO_LOW", 4);
            int i6 = performance_alert.performance_warning_t.h.f2703a;
            Enum r9 = new Enum("TOO_MANY_OPTIMISTIC_UNCHOKE_SLOTS", 5);
            int i7 = performance_alert.performance_warning_t.i.f2703a;
            Enum r11 = new Enum("TOO_HIGH_DISK_QUEUE_LIMIT", 6);
            int i8 = performance_alert.performance_warning_t.j.f2703a;
            Enum r13 = new Enum("TOO_FEW_OUTGOING_PORTS", 7);
            int i9 = performance_alert.performance_warning_t.k.f2703a;
            Enum r15 = new Enum("TOO_FEW_FILE_DESCRIPTORS", 8);
            int i10 = performance_alert.performance_warning_t.l.f2703a;
            f2650c = new PerformanceWarning[]{r0, r1, r3, r5, r7, r9, r11, r13, r15, new Enum("NUM_WARNINGS", 9), new Enum("UNKNOWN", 10)};
        }

        public static PerformanceWarning valueOf(String str) {
            return (PerformanceWarning) Enum.valueOf(PerformanceWarning.class, str);
        }

        public static PerformanceWarning[] values() {
            return (PerformanceWarning[]) f2650c.clone();
        }
    }
}
