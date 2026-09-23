package net.dankito.readability4j.processor;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import org.jsoup.nodes.Element;

/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "scriptNode", "Lorg/jsoup/nodes/Element;", "invoke"}, k = 3, mv = {1, 1, 16})
/* loaded from: classes4.dex */
public final class Preprocessor$removeScripts$1 extends Lambda implements Function1<Element, Boolean> {

    /* renamed from: c, reason: collision with root package name */
    public static final Preprocessor$removeScripts$1 f21971c = new Lambda(1);

    @Override // kotlin.jvm.functions.Function1
    public final Boolean invoke(Element element) {
        Element element2 = element;
        element2.val(null);
        element2.removeAttr("src");
        return Boolean.TRUE;
    }
}
