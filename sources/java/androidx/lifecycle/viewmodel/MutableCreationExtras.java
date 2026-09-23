package androidx.lifecycle.viewmodel;

import androidx.lifecycle.viewmodel.CreationExtras;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/lifecycle/viewmodel/MutableCreationExtras;", "Landroidx/lifecycle/viewmodel/CreationExtras;", "lifecycle-viewmodel_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class MutableCreationExtras extends CreationExtras {
    public /* synthetic */ MutableCreationExtras(int i) {
        this(CreationExtras.Empty.b);
    }

    public final Object a(CreationExtras.Key key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.f1240a.get(key);
    }

    public final void b(CreationExtras.Key key, Object obj) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.f1240a.put(key, obj);
    }

    public MutableCreationExtras(CreationExtras initialExtras) {
        Intrinsics.checkNotNullParameter(initialExtras, "initialExtras");
        this.f1240a.putAll(initialExtras.f1240a);
    }
}
