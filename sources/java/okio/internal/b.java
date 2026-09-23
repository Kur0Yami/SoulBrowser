package okio.internal;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import okio.Path;
import okio.internal.ResourceFileSystem;

/* loaded from: classes4.dex */
public final /* synthetic */ class b implements Function1 {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        ZipEntry entry = (ZipEntry) obj;
        Path path = ResourceFileSystem.i;
        Intrinsics.checkNotNullParameter(entry, "entry");
        return Boolean.valueOf(ResourceFileSystem.Companion.a(entry.f22232a));
    }
}
