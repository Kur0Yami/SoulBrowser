package okhttp3.internal;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0003¨\u0006\u0004"}, d2 = {"Lokhttp3/internal/LinkedTags;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "K", "Lokhttp3/internal/Tags;", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes4.dex */
final class LinkedTags<K> extends Tags {
    public final String toString() {
        List reversed;
        String joinToString$default;
        final int i = 0;
        reversed = CollectionsKt___CollectionsKt.reversed(SequencesKt.toList(SequencesKt.generateSequence(this, (Function1<? super LinkedTags<K>, ? extends LinkedTags<K>>) new Function1() { // from class: okhttp3.internal.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LinkedTags it = (LinkedTags) obj;
                switch (i) {
                    case 0:
                        Intrinsics.checkNotNullParameter(it, "it");
                        it.getClass();
                        return null;
                    default:
                        Intrinsics.checkNotNullParameter(it, "it");
                        it.getClass();
                        return "null=null";
                }
            }
        })));
        final int i2 = 1;
        joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(reversed, null, "{", "}", 0, null, new Function1() { // from class: okhttp3.internal.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LinkedTags it = (LinkedTags) obj;
                switch (i2) {
                    case 0:
                        Intrinsics.checkNotNullParameter(it, "it");
                        it.getClass();
                        return null;
                    default:
                        Intrinsics.checkNotNullParameter(it, "it");
                        it.getClass();
                        return "null=null";
                }
            }
        }, 25, null);
        return joinToString$default;
    }
}
