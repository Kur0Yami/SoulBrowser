package kotlin.io;

import java.util.ArrayList;
import kotlin.jvm.functions.Function1;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements Function1 {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f21539c;
    public final /* synthetic */ ArrayList f;

    public /* synthetic */ a(int i, ArrayList arrayList) {
        this.f21539c = i;
        this.f = arrayList;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.f21539c) {
            case 0:
                return FilesKt__FileReadWriteKt.a(this.f, (String) obj);
            default:
                return TextStreamsKt.a(this.f, (String) obj);
        }
    }
}
