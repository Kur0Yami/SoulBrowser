package org.apache.commons.text.translate;

import j$.util.function.Consumer$CC;
import java.util.ArrayList;
import java.util.function.Consumer;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

/* loaded from: classes4.dex */
public final /* synthetic */ class b implements Consumer {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f22517c;
    public final /* synthetic */ ArrayList f;

    public /* synthetic */ b(int i, ArrayList arrayList) {
        this.f22517c = i;
        this.f = arrayList;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void n(Object obj) {
        ArrayList arrayList;
        Object obj2;
        switch (this.f22517c) {
            case 0:
                arrayList = this.f;
                obj2 = (CharSequenceTranslator) obj;
                break;
            default:
                arrayList = (Elements) this.f;
                obj2 = (Element) obj;
                break;
        }
        arrayList.add(obj2);
    }

    public /* synthetic */ Consumer andThen(Consumer consumer) {
        int i = this.f22517c;
        return Consumer$CC.$default$andThen(this, consumer);
    }
}
