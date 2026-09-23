package kotlinx.coroutines.channels;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.internal.OnUndeliveredElementKt;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.selects.SelectInstance;

@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001\"\u0004\b\u0000\u0010\u00042\n\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\bH\n¢\u0006\u0002\b\n"}, d2 = {"<anonymous>", "Lkotlin/Function1;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "E", "select", "Lkotlinx/coroutines/selects/SelectInstance;", "<anonymous parameter 1>", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "element", "invoke"}, k = 3, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
final class BufferedChannel$onUndeliveredElementReceiveCancellationConstructor$1$1 extends Lambda implements Function3<SelectInstance<?>, Object, Object, Function1<? super Throwable, ? extends Unit>> {
    @Override // kotlin.jvm.functions.Function3
    public final Function1<? super Throwable, ? extends Unit> invoke(SelectInstance<?> selectInstance, Object obj, Object obj2) {
        return new Function1<Throwable, Unit>(obj2, null, selectInstance) { // from class: kotlinx.coroutines.channels.BufferedChannel$onUndeliveredElementReceiveCancellationConstructor$1$1.1

            /* renamed from: c, reason: collision with root package name */
            public final /* synthetic */ Object f21626c;
            public final /* synthetic */ SelectInstance f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
                this.f = selectInstance;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Unit invoke(Throwable th) {
                Symbol symbol = BufferedChannelKt.l;
                Object obj3 = this.f21626c;
                if (obj3 != symbol) {
                    OnUndeliveredElementKt.a(null, obj3, this.f.getF21924c());
                }
                return Unit.INSTANCE;
            }
        };
    }
}
