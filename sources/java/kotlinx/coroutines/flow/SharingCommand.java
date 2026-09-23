package kotlinx.coroutines.flow;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001¨\u0006\u0002"}, d2 = {"Lkotlinx/coroutines/flow/SharingCommand;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class SharingCommand {

    /* renamed from: c, reason: collision with root package name */
    public static final SharingCommand f21813c;
    public static final SharingCommand f;
    public static final /* synthetic */ SharingCommand[] g;
    public static final /* synthetic */ EnumEntries h;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, kotlinx.coroutines.flow.SharingCommand] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, kotlinx.coroutines.flow.SharingCommand] */
    static {
        ?? r0 = new Enum("START", 0);
        f21813c = r0;
        Enum r1 = new Enum("STOP", 1);
        ?? r3 = new Enum("STOP_AND_RESET_REPLAY_CACHE", 2);
        f = r3;
        SharingCommand[] sharingCommandArr = {r0, r1, r3};
        g = sharingCommandArr;
        h = EnumEntriesKt.enumEntries(sharingCommandArr);
    }

    public static SharingCommand valueOf(String str) {
        return (SharingCommand) Enum.valueOf(SharingCommand.class, str);
    }

    public static SharingCommand[] values() {
        return (SharingCommand[]) g.clone();
    }
}
