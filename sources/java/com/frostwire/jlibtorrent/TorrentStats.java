package com.frostwire.jlibtorrent;

/* loaded from: classes.dex */
public final class TorrentStats {

    /* renamed from: com.frostwire.jlibtorrent.TorrentStats$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f2634a;

        static {
            int[] iArr = new int[SeriesMetric.values().length];
            f2634a = iArr;
            try {
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2634a[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2634a[2] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public static final class SeriesMetric {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ SeriesMetric[] f2635c = {new Enum("TIME", 0), new Enum("DOWNLOAD_RATE", 1), new Enum("UPLOAD_RATE", 2)};

        /* JADX INFO: Fake field, exist only in values array */
        SeriesMetric EF5;

        public static SeriesMetric valueOf(String str) {
            return (SeriesMetric) Enum.valueOf(SeriesMetric.class, str);
        }

        public static SeriesMetric[] values() {
            return (SeriesMetric[]) f2635c.clone();
        }
    }
}
