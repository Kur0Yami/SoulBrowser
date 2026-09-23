package kotlin.collections;

import java.util.Map;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.markers.KMappedMarker;

/* loaded from: classes3.dex */
public final /* synthetic */ class a implements Function1 {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f21530c;
    public final /* synthetic */ KMappedMarker f;

    public /* synthetic */ a(KMappedMarker kMappedMarker, int i) {
        this.f21530c = i;
        this.f = kMappedMarker;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.f21530c) {
            case 0:
                return AbstractCollection.a((AbstractCollection) this.f, obj);
            default:
                return AbstractMap.a((AbstractMap) this.f, (Map.Entry) obj);
        }
    }
}
