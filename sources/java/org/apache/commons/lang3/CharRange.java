package org.apache.commons.lang3;

import java.io.Serializable;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes4.dex */
final class CharRange implements Iterable<Character>, Serializable {

    /* renamed from: c, reason: collision with root package name */
    public final char f22339c;
    public final char f;
    public final boolean g;
    public transient String h;

    /* loaded from: classes4.dex */
    public static final class CharacterIterator implements Iterator<Character> {

        /* renamed from: c, reason: collision with root package name */
        public char f22340c;
        public final CharRange f;
        public boolean g;

        public CharacterIterator(CharRange charRange) {
            this.f = charRange;
            this.g = true;
            boolean z = charRange.g;
            char c2 = charRange.f22339c;
            if (z) {
                if (c2 == 0) {
                    char c3 = charRange.f;
                    if (c3 == 65535) {
                        this.g = false;
                        return;
                    } else {
                        this.f22340c = (char) (c3 + 1);
                        return;
                    }
                }
                this.f22340c = (char) 0;
                return;
            }
            this.f22340c = c2;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.g;
        }

        @Override // java.util.Iterator
        public final Character next() {
            if (this.g) {
                char c2 = this.f22340c;
                CharRange charRange = this.f;
                boolean z = charRange.g;
                char c3 = charRange.f;
                if (z) {
                    if (c2 == 65535) {
                        this.g = false;
                    } else {
                        int i = c2 + 1;
                        if (i == charRange.f22339c) {
                            if (c3 == 65535) {
                                this.g = false;
                            } else {
                                this.f22340c = (char) (c3 + 1);
                            }
                        } else {
                            this.f22340c = (char) i;
                        }
                    }
                } else if (c2 < c3) {
                    this.f22340c = (char) (c2 + 1);
                } else {
                    this.g = false;
                }
                return Character.valueOf(c2);
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public CharRange(char c2, char c3, boolean z) {
        if (c2 > c3) {
            c3 = c2;
            c2 = c3;
        }
        this.f22339c = c2;
        this.f = c3;
        this.g = z;
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof CharRange) {
                CharRange charRange = (CharRange) obj;
                if (this.f22339c == charRange.f22339c && this.f == charRange.f && this.g == charRange.g) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return (this.f * 7) + this.f22339c + 'S' + (this.g ? 1 : 0);
    }

    @Override // java.lang.Iterable
    public final Iterator<Character> iterator() {
        return new CharacterIterator(this);
    }

    public final String toString() {
        if (this.h == null) {
            StringBuilder sb = new StringBuilder(4);
            if (this.g) {
                sb.append('^');
            }
            char c2 = this.f22339c;
            sb.append(c2);
            char c3 = this.f;
            if (c2 != c3) {
                sb.append('-');
                sb.append(c3);
            }
            this.h = sb.toString();
        }
        return this.h;
    }
}
