package org.apache.commons.text.lookup;

import j$.util.Base64;
import j$.util.function.Function$CC;
import java.nio.charset.StandardCharsets;
import java.nio.file.Path;
import java.util.Locale;
import java.util.Map;
import java.util.function.Function;

/* loaded from: classes4.dex */
public final /* synthetic */ class b implements Function {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f22489a;

    @Override // java.util.function.Function
    /* renamed from: andThen */
    public /* synthetic */ Function mo17andThen(Function function) {
        int i = this.f22489a;
        return Function$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f22489a) {
            case 0:
                int i = InterpolatorStringLookup.d;
                String str = (String) ((Map.Entry) obj).getKey();
                FunctionStringLookup functionStringLookup = StringLookupFactory.f22484a;
                return str.toLowerCase(Locale.ROOT);
            case 1:
                FunctionStringLookup functionStringLookup2 = StringLookupFactory.f22484a;
                return new String(Base64.getDecoder().decode((String) obj), StandardCharsets.ISO_8859_1);
            case 2:
                FunctionStringLookup functionStringLookup3 = StringLookupFactory.f22484a;
                return Base64.getEncoder().encodeToString(((String) obj).getBytes(StandardCharsets.ISO_8859_1));
            case 3:
                return (StringLookup) ((Map.Entry) obj).getValue();
            case 4:
                return ((Path) obj).toAbsolutePath();
            case 5:
                return System.getenv((String) obj);
            default:
                return System.getProperty((String) obj);
        }
    }

    @Override // java.util.function.Function
    public /* synthetic */ Function compose(Function function) {
        int i = this.f22489a;
        return Function$CC.$default$compose(this, function);
    }
}
