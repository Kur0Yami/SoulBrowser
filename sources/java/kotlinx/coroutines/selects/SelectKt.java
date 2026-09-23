package kotlinx.coroutines.selects;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.internal.Symbol;

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006*Â\u0001\b\u0007\u0010\f\"[\u0012\u0017\u0012\u0015\u0012\u0002\b\u00030\u0001¢\u0006\f\b\u0002\u0012\b\b\u0003\u0012\u0004\b\b(\u0004\u0012\u0015\u0012\u0013\u0018\u00010\u0005¢\u0006\f\b\u0002\u0012\b\b\u0003\u0012\u0004\b\b(\u0006\u0012\u0015\u0012\u0013\u0018\u00010\u0005¢\u0006\f\b\u0002\u0012\b\b\u0003\u0012\u0004\b\b(\u0007\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\b0\u00002[\u0012\u0017\u0012\u0015\u0012\u0002\b\u00030\u0001¢\u0006\f\b\u0002\u0012\b\b\u0003\u0012\u0004\b\b(\u0004\u0012\u0015\u0012\u0013\u0018\u00010\u0005¢\u0006\f\b\u0002\u0012\b\b\u0003\u0012\u0004\b\b(\u0006\u0012\u0015\u0012\u0013\u0018\u00010\u0005¢\u0006\f\b\u0002\u0012\b\b\u0003\u0012\u0004\b\b(\u0007\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\b0\u0000B\u0002\b\u000b*¦\u0001\b\u0007\u0010\u000f\"M\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0002\u0012\b\b\u0003\u0012\u0004\b\b(\r\u0012\u0015\u0012\u0013\u0018\u00010\u0005¢\u0006\f\b\u0002\u0012\b\b\u0003\u0012\u0004\b\b(\u0006\u0012\u0015\u0012\u0013\u0018\u00010\u0005¢\u0006\f\b\u0002\u0012\b\b\u0003\u0012\u0004\b\b(\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00002M\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0002\u0012\b\b\u0003\u0012\u0004\b\b(\r\u0012\u0015\u0012\u0013\u0018\u00010\u0005¢\u0006\f\b\u0002\u0012\b\b\u0003\u0012\u0004\b\b(\u0006\u0012\u0015\u0012\u0013\u0018\u00010\u0005¢\u0006\f\b\u0002\u0012\b\b\u0003\u0012\u0004\b\b(\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0000B\u0002\b\u000b*¦\u0001\b\u0007\u0010\u0010\"M\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0002\u0012\b\b\u0003\u0012\u0004\b\b(\r\u0012\u0017\u0012\u0015\u0012\u0002\b\u00030\u0001¢\u0006\f\b\u0002\u0012\b\b\u0003\u0012\u0004\b\b(\u0004\u0012\u0015\u0012\u0013\u0018\u00010\u0005¢\u0006\f\b\u0002\u0012\b\b\u0003\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\n0\u00002M\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0002\u0012\b\b\u0003\u0012\u0004\b\b(\r\u0012\u0017\u0012\u0015\u0012\u0002\b\u00030\u0001¢\u0006\f\b\u0002\u0012\b\b\u0003\u0012\u0004\b\b(\u0004\u0012\u0015\u0012\u0013\u0018\u00010\u0005¢\u0006\f\b\u0002\u0012\b\b\u0003\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\n0\u0000B\u0002\b\u000b¨\u0006\u0011"}, d2 = {"Lkotlin/Function3;", "Lkotlinx/coroutines/selects/SelectInstance;", "Lkotlin/ParameterName;", "name", "select", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "param", "internalResult", "Lkotlin/Function1;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Lkotlinx/coroutines/InternalCoroutinesApi;", "OnCancellationConstructor", "clauseObject", "clauseResult", "ProcessResultFunction", "RegistrationFunction", "kotlinx-coroutines-core"}, k = 2, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class SelectKt {

    /* renamed from: a, reason: collision with root package name */
    public static final Function3 f21929a = SelectKt$DUMMY_PROCESS_RESULT_FUNCTION$1.f21931c;
    public static final Symbol b = new Symbol("STATE_REG");

    /* renamed from: c, reason: collision with root package name */
    public static final Symbol f21930c = new Symbol("STATE_COMPLETED");
    public static final Symbol d = new Symbol("STATE_CANCELLED");
    public static final Symbol e = new Symbol("NO_RESULT");
    public static final Symbol f = new Symbol("PARAM_CLAUSE_0");
}
