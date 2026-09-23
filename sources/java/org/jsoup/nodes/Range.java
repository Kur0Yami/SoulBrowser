package org.jsoup.nodes;

import j$.util.Objects;
import org.jsoup.internal.StringUtil;

/* loaded from: classes4.dex */
public class Range {

    /* renamed from: c, reason: collision with root package name */
    public static final Position f22579c;
    public static final Range d;

    /* renamed from: a, reason: collision with root package name */
    public final Position f22580a;
    public final Position b;

    /* loaded from: classes4.dex */
    public static class AttributeRange {

        /* renamed from: c, reason: collision with root package name */
        public static final AttributeRange f22581c;

        /* renamed from: a, reason: collision with root package name */
        public final Range f22582a;
        public final Range b;

        static {
            Range range = Range.d;
            f22581c = new AttributeRange(range, range);
        }

        public AttributeRange(Range range, Range range2) {
            this.f22582a = range;
            this.b = range2;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            AttributeRange attributeRange = (AttributeRange) obj;
            if (!this.f22582a.equals(attributeRange.f22582a)) {
                return false;
            }
            return this.b.equals(attributeRange.b);
        }

        public int hashCode() {
            return Objects.hash(this.f22582a, this.b);
        }

        public Range nameRange() {
            return this.f22582a;
        }

        public String toString() {
            StringBuilder borrowBuilder = StringUtil.borrowBuilder();
            borrowBuilder.append(this.f22582a);
            borrowBuilder.append('=');
            borrowBuilder.append(this.b);
            return StringUtil.releaseBuilder(borrowBuilder);
        }

        public Range valueRange() {
            return this.b;
        }
    }

    /* loaded from: classes4.dex */
    public static class Position {

        /* renamed from: a, reason: collision with root package name */
        public final int f22583a;
        public final int b;

        /* renamed from: c, reason: collision with root package name */
        public final int f22584c;

        public Position(int i, int i2, int i3) {
            this.f22583a = i;
            this.b = i2;
            this.f22584c = i3;
        }

        public int columnNumber() {
            return this.f22584c;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                Position position = (Position) obj;
                if (this.f22583a == position.f22583a && this.b == position.b && this.f22584c == position.f22584c) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return Objects.hash(Integer.valueOf(this.f22583a), Integer.valueOf(this.b), Integer.valueOf(this.f22584c));
        }

        public boolean isTracked() {
            if (this != Range.f22579c) {
                return true;
            }
            return false;
        }

        public int lineNumber() {
            return this.b;
        }

        public int pos() {
            return this.f22583a;
        }

        public String toString() {
            return this.b + "," + this.f22584c + ":" + this.f22583a;
        }
    }

    static {
        Position position = new Position(-1, -1, -1);
        f22579c = position;
        d = new Range(position, position);
    }

    public Range(Position position, Position position2) {
        this.f22580a = position;
        this.b = position2;
    }

    public Position end() {
        return this.b;
    }

    public int endPos() {
        return this.b.f22583a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Range range = (Range) obj;
        if (!this.f22580a.equals(range.f22580a)) {
            return false;
        }
        return this.b.equals(range.b);
    }

    public int hashCode() {
        return Objects.hash(this.f22580a, this.b);
    }

    public boolean isImplicit() {
        if (!isTracked()) {
            return false;
        }
        return this.f22580a.equals(this.b);
    }

    public boolean isTracked() {
        if (this != d) {
            return true;
        }
        return false;
    }

    public Position start() {
        return this.f22580a;
    }

    public int startPos() {
        return this.f22580a.f22583a;
    }

    public String toString() {
        return this.f22580a + "-" + this.b;
    }
}
