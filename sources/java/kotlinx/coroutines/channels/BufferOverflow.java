package kotlinx.coroutines.channels;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001¨\u0006\u0002"}, d2 = {"Lkotlinx/coroutines/channels/BufferOverflow;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class BufferOverflow {

    /* renamed from: c, reason: collision with root package name */
    public static final BufferOverflow f21616c;
    public static final BufferOverflow f;
    public static final BufferOverflow g;
    public static final /* synthetic */ BufferOverflow[] h;
    public static final /* synthetic */ EnumEntries i;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, kotlinx.coroutines.channels.BufferOverflow] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, kotlinx.coroutines.channels.BufferOverflow] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, kotlinx.coroutines.channels.BufferOverflow] */
    static {
        ?? r0 = new Enum("SUSPEND", 0);
        f21616c = r0;
        ?? r1 = new Enum("DROP_OLDEST", 1);
        f = r1;
        ?? r3 = new Enum("DROP_LATEST", 2);
        g = r3;
        BufferOverflow[] bufferOverflowArr = {r0, r1, r3};
        h = bufferOverflowArr;
        i = EnumEntriesKt.enumEntries(bufferOverflowArr);
    }

    public static BufferOverflow valueOf(String str) {
        return (BufferOverflow) Enum.valueOf(BufferOverflow.class, str);
    }

    public static BufferOverflow[] values() {
        return (BufferOverflow[]) h.clone();
    }
}
