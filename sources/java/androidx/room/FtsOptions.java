package androidx.room;

/* loaded from: classes.dex */
public class FtsOptions {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public static final class MatchInfo {

        /* renamed from: c, reason: collision with root package name */
        public static final MatchInfo f1610c;
        public static final /* synthetic */ MatchInfo[] f;

        /* JADX INFO: Fake field, exist only in values array */
        MatchInfo EF0;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.room.FtsOptions$MatchInfo] */
        static {
            Enum r0 = new Enum("FTS3", 0);
            ?? r1 = new Enum("FTS4", 1);
            f1610c = r1;
            f = new MatchInfo[]{r0, r1};
        }

        public static MatchInfo valueOf(String str) {
            return (MatchInfo) Enum.valueOf(MatchInfo.class, str);
        }

        public static MatchInfo[] values() {
            return (MatchInfo[]) f.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public static final class Order {

        /* renamed from: c, reason: collision with root package name */
        public static final Order f1611c;
        public static final /* synthetic */ Order[] f;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.room.FtsOptions$Order] */
        static {
            ?? r0 = new Enum("ASC", 0);
            f1611c = r0;
            f = new Order[]{r0, new Enum("DESC", 1)};
        }

        public static Order valueOf(String str) {
            return (Order) Enum.valueOf(Order.class, str);
        }

        public static Order[] values() {
            return (Order[]) f.clone();
        }
    }
}
