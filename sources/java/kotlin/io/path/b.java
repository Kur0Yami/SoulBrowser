package kotlin.io.path;

import java.nio.file.Path;
import kotlin.jvm.functions.Function3;

/* loaded from: classes4.dex */
public final /* synthetic */ class b implements Function3 {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f21541c;
    public final /* synthetic */ boolean f;

    public /* synthetic */ b(boolean z, int i) {
        this.f21541c = i;
        this.f = z;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        CopyActionContext copyActionContext = (CopyActionContext) obj;
        Path path = (Path) obj2;
        Path path2 = (Path) obj3;
        switch (this.f21541c) {
            case 0:
                return PathsKt__PathRecursiveFunctionsKt.e(this.f, copyActionContext, path, path2);
            default:
                return PathsKt__PathRecursiveFunctionsKt.a(this.f, copyActionContext, path, path2);
        }
    }
}
