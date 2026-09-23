package org.jsoup.select;

import com.google.android.gms.ads.RequestConfiguration;
import j$.util.Comparator;
import j$.util.List;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.LeafNode;

/* loaded from: classes4.dex */
public abstract class CombiningEvaluator extends Evaluator {
    public boolean e;

    /* renamed from: c, reason: collision with root package name */
    public int f22620c = 0;
    public int d = 0;

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f22619a = new ArrayList();
    public final ArrayList b = new ArrayList();

    @Override // org.jsoup.select.Evaluator
    public final int a() {
        return this.d;
    }

    public void add(Evaluator evaluator) {
        this.f22619a.add(evaluator);
        e();
    }

    @Override // org.jsoup.select.Evaluator
    public final void c() {
        ArrayList arrayList = this.f22619a;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ((Evaluator) obj).c();
        }
    }

    @Override // org.jsoup.select.Evaluator
    public final boolean d() {
        return this.e;
    }

    /* JADX WARN: Type inference failed for: r3v2, types: [java.util.function.ToIntFunction, java.lang.Object] */
    public final void e() {
        ArrayList arrayList = this.f22619a;
        this.f22620c = arrayList.size();
        int i = 0;
        this.d = 0;
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            this.d = ((Evaluator) obj).a() + this.d;
        }
        ArrayList arrayList2 = this.b;
        arrayList2.clear();
        arrayList2.addAll(arrayList);
        List.EL.sort(arrayList2, Comparator.CC.comparingInt(new Object()));
        int size2 = arrayList.size();
        while (i < size2) {
            Object obj2 = arrayList.get(i);
            i++;
            if (((Evaluator) obj2).d()) {
                this.e = true;
                return;
            }
        }
    }

    /* loaded from: classes4.dex */
    public static final class And extends CombiningEvaluator {
        public And(Collection<Evaluator> collection) {
            this.f22619a.addAll(collection);
            e();
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            for (int i = 0; i < this.f22620c; i++) {
                if (!((Evaluator) this.b.get(i)).matches(element, element2)) {
                    return false;
                }
            }
            return true;
        }

        public String toString() {
            return StringUtil.join(this.f22619a, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, LeafNode leafNode) {
            for (int i = 0; i < this.f22620c; i++) {
                if (!((Evaluator) this.b.get(i)).matches(element, leafNode)) {
                    return false;
                }
            }
            return true;
        }
    }

    /* loaded from: classes4.dex */
    public static final class Or extends CombiningEvaluator {
        public Or(Collection<Evaluator> collection) {
            if (this.f22620c > 1) {
                this.f22619a.add(new And(collection));
            } else {
                this.f22619a.addAll(collection);
            }
            e();
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            for (int i = 0; i < this.f22620c; i++) {
                if (((Evaluator) this.b.get(i)).matches(element, element2)) {
                    return true;
                }
            }
            return false;
        }

        public String toString() {
            return StringUtil.join(this.f22619a, ", ");
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, LeafNode leafNode) {
            for (int i = 0; i < this.f22620c; i++) {
                if (((Evaluator) this.b.get(i)).matches(element, leafNode)) {
                    return true;
                }
            }
            return false;
        }

        public Or(Evaluator... evaluatorArr) {
            this(Arrays.asList(evaluatorArr));
        }
    }
}
