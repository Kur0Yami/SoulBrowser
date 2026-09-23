package kotlin.comparisons;

import java.util.Comparator;

/* loaded from: classes3.dex */
public final /* synthetic */ class b implements Comparator {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f21535c;
    public final /* synthetic */ Comparator f;
    public final /* synthetic */ Comparator g;

    public /* synthetic */ b(Comparator comparator, Comparator comparator2, int i) {
        this.f21535c = i;
        this.f = comparator;
        this.g = comparator2;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f21535c) {
            case 0:
                return ComparisonsKt__ComparisonsKt.b(this.f, this.g, obj, obj2);
            default:
                return ComparisonsKt__ComparisonsKt.c(this.f, this.g, obj, obj2);
        }
    }
}
