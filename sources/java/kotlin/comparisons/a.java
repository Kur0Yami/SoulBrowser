package kotlin.comparisons;

import java.util.Comparator;
import kotlin.jvm.functions.Function1;

/* loaded from: classes3.dex */
public final /* synthetic */ class a implements Comparator {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f21534c;
    public final /* synthetic */ Object f;

    public /* synthetic */ a(int i, Object obj) {
        this.f21534c = i;
        this.f = obj;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int nullsLast$lambda$0$ComparisonsKt__ComparisonsKt;
        int nullsFirst$lambda$0$ComparisonsKt__ComparisonsKt;
        int compareBy$lambda$0$ComparisonsKt__ComparisonsKt;
        switch (this.f21534c) {
            case 0:
                nullsLast$lambda$0$ComparisonsKt__ComparisonsKt = ComparisonsKt__ComparisonsKt.nullsLast$lambda$0$ComparisonsKt__ComparisonsKt((Comparator) this.f, obj, obj2);
                return nullsLast$lambda$0$ComparisonsKt__ComparisonsKt;
            case 1:
                nullsFirst$lambda$0$ComparisonsKt__ComparisonsKt = ComparisonsKt__ComparisonsKt.nullsFirst$lambda$0$ComparisonsKt__ComparisonsKt((Comparator) this.f, obj, obj2);
                return nullsFirst$lambda$0$ComparisonsKt__ComparisonsKt;
            default:
                compareBy$lambda$0$ComparisonsKt__ComparisonsKt = ComparisonsKt__ComparisonsKt.compareBy$lambda$0$ComparisonsKt__ComparisonsKt((Function1[]) this.f, obj, obj2);
                return compareBy$lambda$0$ComparisonsKt__ComparisonsKt;
        }
    }
}
