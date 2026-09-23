package org.jsoup.nodes;

import com.google.android.gms.ads.RequestConfiguration;
import j$.util.DesugarCollections;
import j$.util.Objects;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.ConcurrentModificationException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import org.jsoup.helper.Validate;
import org.jsoup.internal.Normalizer;
import org.jsoup.internal.QuietAppendable;
import org.jsoup.internal.SharedConstants;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Range;
import org.jsoup.parser.ParseSettings;

/* loaded from: classes4.dex */
public class Attributes implements Iterable<Attribute>, Cloneable {

    /* renamed from: c, reason: collision with root package name */
    public int f22561c = 0;
    public String[] f = new String[3];
    public Object[] g = new Object[3];

    /* loaded from: classes4.dex */
    public static class Dataset extends AbstractMap<String, String> {

        /* renamed from: c, reason: collision with root package name */
        public final Attributes f22563c;

        /* loaded from: classes4.dex */
        public class DatasetIterator implements Iterator<Map.Entry<String, String>> {

            /* renamed from: c, reason: collision with root package name */
            public final Iterator f22564c;
            public Attribute f;

            public DatasetIterator() {
                this.f22564c = Dataset.this.f22563c.iterator();
            }

            @Override // java.util.Iterator
            public final boolean hasNext() {
                while (true) {
                    Iterator it = this.f22564c;
                    if (it.hasNext()) {
                        Attribute attribute = (Attribute) it.next();
                        this.f = attribute;
                        String str = attribute.f22560c;
                        if (str.startsWith("data-") && str.length() > 5) {
                            return true;
                        }
                    } else {
                        return false;
                    }
                }
            }

            @Override // java.util.Iterator
            public final Map.Entry<String, String> next() {
                return new Attribute(this.f.getKey().substring(5), this.f.getValue());
            }

            @Override // java.util.Iterator
            public final void remove() {
                Dataset.this.f22563c.remove(this.f.getKey());
            }
        }

        /* loaded from: classes4.dex */
        public class EntrySet extends AbstractSet<Map.Entry<String, String>> {
            public EntrySet() {
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public final Iterator iterator() {
                return new DatasetIterator();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final int size() {
                int i = 0;
                while (new DatasetIterator().hasNext()) {
                    i++;
                }
                return i;
            }
        }

        public Dataset(Attributes attributes) {
            this.f22563c = attributes;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final Set entrySet() {
            return new EntrySet();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final Object put(Object obj, Object obj2) {
            String str;
            String str2 = (String) obj2;
            String C = android.support.v4.media.a.C("data-", (String) obj);
            Attributes attributes = this.f22563c;
            if (attributes.hasKey(C)) {
                str = attributes.get(C);
            } else {
                str = null;
            }
            attributes.put(C, str2);
            return str;
        }
    }

    public static boolean m(String str) {
        if (str.length() <= 1 || str.charAt(0) != '/') {
            return false;
        }
        return true;
    }

    public final void a(String str, Serializable serializable) {
        c(this.f22561c + 1);
        String[] strArr = this.f;
        int i = this.f22561c;
        strArr[i] = str;
        this.g[i] = serializable;
        this.f22561c = i + 1;
    }

    public Attributes add(String str, String str2) {
        a(str, str2);
        return this;
    }

    public void addAll(Attributes attributes) {
        boolean z;
        int size = attributes.size();
        if (size != 0) {
            c(this.f22561c + size);
            if (this.f22561c != 0) {
                z = true;
            } else {
                z = false;
            }
            Iterator<Attribute> it = attributes.iterator();
            while (it.hasNext()) {
                Attribute next = it.next();
                if (z) {
                    put(next);
                } else {
                    a(next.getKey(), next.getValue());
                }
            }
        }
    }

    public List<Attribute> asList() {
        ArrayList arrayList = new ArrayList(this.f22561c);
        for (int i = 0; i < this.f22561c; i++) {
            String str = this.f[i];
            if (!m(str)) {
                arrayList.add(new Attribute(str, (String) this.g[i], this));
            }
        }
        return DesugarCollections.unmodifiableList(arrayList);
    }

    public Attribute attribute(String str) {
        String str2;
        int i = i(str);
        if (i == -1) {
            return null;
        }
        Object obj = this.g[i];
        if (obj == null) {
            str2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        } else {
            str2 = (String) obj;
        }
        return new Attribute(str, str2, this);
    }

    public final void c(int i) {
        boolean z;
        if (i >= this.f22561c) {
            z = true;
        } else {
            z = false;
        }
        Validate.isTrue(z);
        String[] strArr = this.f;
        int length = strArr.length;
        if (length >= i) {
            return;
        }
        int i2 = 3;
        if (length >= 3) {
            i2 = this.f22561c * 2;
        }
        if (i <= i2) {
            i = i2;
        }
        this.f = (String[]) Arrays.copyOf(strArr, i);
        this.g = Arrays.copyOf(this.g, i);
    }

    public Map<String, String> dataset() {
        return new Dataset(this);
    }

    public int deduplicate(ParseSettings parseSettings) {
        int i = 0;
        if (this.f22561c == 0) {
            return 0;
        }
        boolean preserveAttributeCase = parseSettings.preserveAttributeCase();
        int i2 = 0;
        while (i < this.f22561c) {
            String str = this.f[i];
            i++;
            int i3 = i;
            while (i3 < this.f22561c) {
                if ((preserveAttributeCase && str.equals(this.f[i3])) || (!preserveAttributeCase && str.equalsIgnoreCase(this.f[i3]))) {
                    i2++;
                    q(i3);
                    i3--;
                }
                i3++;
            }
        }
        return i2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Attributes attributes = (Attributes) obj;
        if (this.f22561c != attributes.f22561c) {
            return false;
        }
        for (int i = 0; i < this.f22561c; i++) {
            int i2 = attributes.i(this.f[i]);
            if (i2 == -1 || !Objects.equals(this.g[i], attributes.g[i2])) {
                return false;
            }
        }
        return true;
    }

    public final void g(QuietAppendable quietAppendable, Document.OutputSettings outputSettings) {
        String validKey;
        int i = this.f22561c;
        for (int i2 = 0; i2 < i; i2++) {
            String str = this.f[i2];
            if (!m(str) && (validKey = Attribute.getValidKey(str, outputSettings.syntax())) != null) {
                Attribute.a(validKey, (String) this.g[i2], quietAppendable.append(' '), outputSettings);
            }
        }
    }

    public String get(String str) {
        Object obj;
        int i = i(str);
        if (i == -1 || (obj = this.g[i]) == null) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        return (String) obj;
    }

    public String getIgnoreCase(String str) {
        Object obj;
        int k = k(str);
        if (k == -1 || (obj = this.g[k]) == null) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        return (String) obj;
    }

    public boolean hasDeclaredValueForKey(String str) {
        int i = i(str);
        if (i != -1 && this.g[i] != null) {
            return true;
        }
        return false;
    }

    public boolean hasDeclaredValueForKeyIgnoreCase(String str) {
        int k = k(str);
        if (k != -1 && this.g[k] != null) {
            return true;
        }
        return false;
    }

    public boolean hasKey(String str) {
        if (i(str) != -1) {
            return true;
        }
        return false;
    }

    public boolean hasKeyIgnoreCase(String str) {
        if (k(str) != -1) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(this.g) + (((this.f22561c * 31) + Arrays.hashCode(this.f)) * 31);
    }

    public String html() {
        StringBuilder borrowBuilder = StringUtil.borrowBuilder();
        g(QuietAppendable.wrap(borrowBuilder), new Document.OutputSettings());
        return StringUtil.releaseBuilder(borrowBuilder);
    }

    public final int i(String str) {
        Validate.notNull(str);
        for (int i = 0; i < this.f22561c; i++) {
            if (str.equals(this.f[i])) {
                return i;
            }
        }
        return -1;
    }

    public boolean isEmpty() {
        if (size() == 0) {
            return true;
        }
        return false;
    }

    @Override // java.lang.Iterable
    public Iterator<Attribute> iterator() {
        return new Iterator<Attribute>() { // from class: org.jsoup.nodes.Attributes.1

            /* renamed from: c, reason: collision with root package name */
            public int f22562c;
            public int f = 0;

            {
                this.f22562c = Attributes.this.f22561c;
            }

            @Override // java.util.Iterator
            public final boolean hasNext() {
                Attributes attributes = Attributes.this;
                if (attributes.f22561c == this.f22562c) {
                    while (true) {
                        int i = this.f;
                        if (i >= attributes.f22561c || !Attributes.m(attributes.f[i])) {
                            break;
                        }
                        this.f++;
                    }
                    if (this.f < attributes.f22561c) {
                        return true;
                    }
                    return false;
                }
                throw new ConcurrentModificationException("Use Iterator#remove() instead to remove attributes while iterating.");
            }

            @Override // java.util.Iterator
            public final Attribute next() {
                Attributes attributes = Attributes.this;
                int i = attributes.f22561c;
                if (i == this.f22562c) {
                    int i2 = this.f;
                    if (i2 < i) {
                        Attribute attribute = new Attribute(attributes.f[i2], (String) attributes.g[this.f], attributes);
                        this.f++;
                        return attribute;
                    }
                    throw new NoSuchElementException();
                }
                throw new ConcurrentModificationException("Use Iterator#remove() instead to remove attributes while iterating.");
            }

            @Override // java.util.Iterator
            public final void remove() {
                int i = this.f - 1;
                this.f = i;
                Attributes.this.q(i);
                this.f22562c--;
            }
        };
    }

    public final int k(String str) {
        Validate.notNull(str);
        for (int i = 0; i < this.f22561c; i++) {
            if (str.equalsIgnoreCase(this.f[i])) {
                return i;
            }
        }
        return -1;
    }

    public void normalize() {
        for (int i = 0; i < this.f22561c; i++) {
            String str = this.f[i];
            if (!m(str)) {
                this.f[i] = Normalizer.lowerCase(str);
            }
        }
    }

    public final void p(String str, String str2) {
        int k = k(str);
        if (k != -1) {
            this.g[k] = str2;
            if (!this.f[k].equals(str)) {
                this.f[k] = str;
                return;
            }
            return;
        }
        a(str, str2);
    }

    public Attributes put(String str, String str2) {
        Validate.notNull(str);
        int i = i(str);
        if (i != -1) {
            this.g[i] = str2;
            return this;
        }
        a(str, str2);
        return this;
    }

    public final void q(int i) {
        boolean z;
        if (i >= this.f22561c) {
            z = true;
        } else {
            z = false;
        }
        Validate.isFalse(z);
        int i2 = (this.f22561c - i) - 1;
        if (i2 > 0) {
            String[] strArr = this.f;
            int i3 = i + 1;
            System.arraycopy(strArr, i3, strArr, i, i2);
            Object[] objArr = this.g;
            System.arraycopy(objArr, i3, objArr, i, i2);
        }
        int i4 = this.f22561c - 1;
        this.f22561c = i4;
        this.f[i4] = null;
        this.g[i4] = null;
    }

    public final Map r() {
        int i = i(SharedConstants.UserDataKey);
        if (i == -1) {
            HashMap hashMap = new HashMap();
            a(SharedConstants.UserDataKey, hashMap);
            return hashMap;
        }
        return (Map) this.g[i];
    }

    public void remove(String str) {
        int i = i(str);
        if (i != -1) {
            q(i);
        }
    }

    public void removeIgnoreCase(String str) {
        int k = k(str);
        if (k != -1) {
            q(k);
        }
    }

    public int size() {
        if (this.f22561c == 0) {
            return 0;
        }
        int i = 0;
        for (int i2 = 0; i2 < this.f22561c; i2++) {
            if (!m(this.f[i2])) {
                i++;
            }
        }
        return i;
    }

    public Range.AttributeRange sourceRange(String str) {
        if (!hasKey(str)) {
            return Range.AttributeRange.f22581c;
        }
        Map map = (Map) userData(SharedConstants.AttrRangeKey);
        if (map == null) {
            return Range.AttributeRange.f22581c;
        }
        Range.AttributeRange attributeRange = (Range.AttributeRange) map.get(str);
        return attributeRange != null ? attributeRange : Range.AttributeRange.f22581c;
    }

    public String toString() {
        return html();
    }

    public Object userData(String str) {
        Validate.notNull(str);
        if (hasKey(SharedConstants.UserDataKey)) {
            return r().get(str);
        }
        return null;
    }

    public Attributes clone() {
        try {
            Attributes attributes = (Attributes) super.clone();
            attributes.f22561c = this.f22561c;
            attributes.f = (String[]) Arrays.copyOf(this.f, this.f22561c);
            attributes.g = Arrays.copyOf(this.g, this.f22561c);
            int i = i(SharedConstants.UserDataKey);
            if (i != -1) {
                this.g[i] = new HashMap((Map) this.g[i]);
            }
            return attributes;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    public Attributes put(String str, boolean z) {
        if (z) {
            p(str, null);
            return this;
        }
        remove(str);
        return this;
    }

    public Attributes userData(String str, Object obj) {
        Validate.notNull(str);
        if (obj == null && !hasKey(SharedConstants.UserDataKey)) {
            return this;
        }
        Map r = r();
        if (obj == null) {
            r.remove(str);
            return this;
        }
        r.put(str, obj);
        return this;
    }

    public Attributes sourceRange(String str, Range.AttributeRange attributeRange) {
        Validate.notNull(str);
        Validate.notNull(attributeRange);
        Map map = (Map) userData(SharedConstants.AttrRangeKey);
        if (map == null) {
            map = new HashMap();
            userData(SharedConstants.AttrRangeKey, map);
        }
        map.put(str, attributeRange);
        return this;
    }

    public Attributes put(Attribute attribute) {
        Validate.notNull(attribute);
        put(attribute.getKey(), attribute.getValue());
        attribute.g = this;
        return this;
    }
}
