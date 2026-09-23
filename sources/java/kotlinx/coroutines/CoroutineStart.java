package kotlinx.coroutines;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001¨\u0006\u0002"}, d2 = {"Lkotlinx/coroutines/CoroutineStart;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class CoroutineStart {

    /* renamed from: c, reason: collision with root package name */
    public static final CoroutineStart f21581c;
    public static final CoroutineStart f;
    public static final CoroutineStart g;
    public static final CoroutineStart h;
    public static final /* synthetic */ CoroutineStart[] i;
    public static final /* synthetic */ EnumEntries j;

    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[CoroutineStart.values().length];
            try {
                CoroutineStart coroutineStart = CoroutineStart.f21581c;
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                CoroutineStart coroutineStart2 = CoroutineStart.f21581c;
                iArr[2] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                CoroutineStart coroutineStart3 = CoroutineStart.f21581c;
                iArr[3] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                CoroutineStart coroutineStart4 = CoroutineStart.f21581c;
                iArr[1] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, kotlinx.coroutines.CoroutineStart] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, kotlinx.coroutines.CoroutineStart] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, kotlinx.coroutines.CoroutineStart] */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Enum, kotlinx.coroutines.CoroutineStart] */
    static {
        ?? r0 = new Enum("DEFAULT", 0);
        f21581c = r0;
        ?? r1 = new Enum("LAZY", 1);
        f = r1;
        ?? r3 = new Enum("ATOMIC", 2);
        g = r3;
        ?? r5 = new Enum("UNDISPATCHED", 3);
        h = r5;
        CoroutineStart[] coroutineStartArr = {r0, r1, r3, r5};
        i = coroutineStartArr;
        j = EnumEntriesKt.enumEntries(coroutineStartArr);
    }

    public static CoroutineStart valueOf(String str) {
        return (CoroutineStart) Enum.valueOf(CoroutineStart.class, str);
    }

    public static CoroutineStart[] values() {
        return (CoroutineStart[]) i.clone();
    }
}
