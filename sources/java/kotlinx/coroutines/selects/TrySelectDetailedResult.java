package kotlinx.coroutines.selects;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\b\u0080\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001¨\u0006\u0002"}, d2 = {"Lkotlinx/coroutines/selects/TrySelectDetailedResult;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class TrySelectDetailedResult {

    /* renamed from: c, reason: collision with root package name */
    public static final TrySelectDetailedResult f21932c;
    public static final TrySelectDetailedResult f;
    public static final TrySelectDetailedResult g;
    public static final TrySelectDetailedResult h;
    public static final /* synthetic */ TrySelectDetailedResult[] i;
    public static final /* synthetic */ EnumEntries j;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, kotlinx.coroutines.selects.TrySelectDetailedResult] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, kotlinx.coroutines.selects.TrySelectDetailedResult] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, kotlinx.coroutines.selects.TrySelectDetailedResult] */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Enum, kotlinx.coroutines.selects.TrySelectDetailedResult] */
    static {
        ?? r0 = new Enum("SUCCESSFUL", 0);
        f21932c = r0;
        ?? r1 = new Enum("REREGISTER", 1);
        f = r1;
        ?? r3 = new Enum("CANCELLED", 2);
        g = r3;
        ?? r5 = new Enum("ALREADY_SELECTED", 3);
        h = r5;
        TrySelectDetailedResult[] trySelectDetailedResultArr = {r0, r1, r3, r5};
        i = trySelectDetailedResultArr;
        j = EnumEntriesKt.enumEntries(trySelectDetailedResultArr);
    }

    public static TrySelectDetailedResult valueOf(String str) {
        return (TrySelectDetailedResult) Enum.valueOf(TrySelectDetailedResult.class, str);
    }

    public static TrySelectDetailedResult[] values() {
        return (TrySelectDetailedResult[]) i.clone();
    }
}
