package kotlin.io.path;

import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.nio.file.attribute.FileAttributeView;
import java.util.concurrent.CompletionException;
import org.apache.commons.lang3.AppendableJoiner;
import org.apache.commons.lang3.function.FailableBiConsumer;
import org.apache.commons.lang3.reflect.TypeUtils;

/* loaded from: classes4.dex */
public final /* synthetic */ class f implements FailableBiConsumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f21545a;

    public static /* bridge */ /* synthetic */ Class b() {
        return FileAttributeView.class;
    }

    public static /* bridge */ /* synthetic */ CompletionException c(Object obj) {
        return (CompletionException) obj;
    }

    public static /* bridge */ /* synthetic */ boolean d(Object obj) {
        return obj instanceof CompletionException;
    }

    @Override // org.apache.commons.lang3.function.FailableBiConsumer
    public void a(StringBuilder sb, Object obj) {
        String obj2;
        String obj3;
        switch (this.f21545a) {
            case 3:
                sb.append((CharSequence) TypeUtils.p((Type) obj));
                return;
            case 4:
                TypeVariable typeVariable = (TypeVariable) obj;
                if (android.support.v4.media.a.A(typeVariable)) {
                    obj2 = TypeUtils.p(typeVariable);
                } else {
                    AppendableJoiner appendableJoiner = TypeUtils.f22387a;
                    obj2 = typeVariable.toString();
                }
                sb.append((CharSequence) obj2);
                return;
            default:
                if (obj instanceof Type) {
                    obj3 = TypeUtils.p((Type) obj);
                } else {
                    AppendableJoiner appendableJoiner2 = TypeUtils.f22387a;
                    obj3 = obj.toString();
                }
                sb.append((CharSequence) obj3);
                return;
        }
    }
}
