package kotlinx.coroutines.debug;

import android.annotation.SuppressLint;
import com.google.android.gms.ads.RequestConfiguration;
import java.lang.instrument.ClassFileTransformer;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlinx.coroutines.debug.internal.ConcurrentWeakMap;
import kotlinx.coroutines.debug.internal.DebugProbesImpl;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\bÁ\u0002\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lkotlinx/coroutines/debug/AgentPremain;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "DebugProbesTransformer", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
@SuppressLint({"all"})
@IgnoreJRERequirement
/* loaded from: classes4.dex */
public final class AgentPremain {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlinx/coroutines/debug/AgentPremain$DebugProbesTransformer;", "Ljava/lang/instrument/ClassFileTransformer;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class DebugProbesTransformer implements ClassFileTransformer {
    }

    static {
        Object m30constructorimpl;
        Boolean bool;
        Object obj = null;
        try {
            Result.Companion companion = Result.INSTANCE;
            String property = System.getProperty("kotlinx.coroutines.debug.enable.creation.stack.trace");
            if (property != null) {
                bool = Boolean.valueOf(Boolean.parseBoolean(property));
            } else {
                bool = null;
            }
            m30constructorimpl = Result.m30constructorimpl(bool);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            m30constructorimpl = Result.m30constructorimpl(ResultKt.createFailure(th));
        }
        if (!Result.m36isFailureimpl(m30constructorimpl)) {
            obj = m30constructorimpl;
        }
        if (((Boolean) obj) == null) {
            ConcurrentWeakMap concurrentWeakMap = DebugProbesImpl.f21690a;
        }
    }
}
