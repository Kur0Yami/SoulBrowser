package org.apache.commons.text.similarity;

import j$.util.Objects;

/* loaded from: classes4.dex */
final class SimilarityCharacterInput implements SimilarityInput<Character> {

    /* renamed from: a, reason: collision with root package name */
    public final CharSequence f22506a;

    public SimilarityCharacterInput(CharSequence charSequence) {
        if (charSequence != null) {
            this.f22506a = charSequence;
            return;
        }
        throw new IllegalArgumentException("CharSequence");
    }

    @Override // org.apache.commons.text.similarity.SimilarityInput
    public final Character a(int i) {
        return Character.valueOf(this.f22506a.charAt(i));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || SimilarityCharacterInput.class != obj.getClass()) {
            return false;
        }
        return Objects.equals(this.f22506a, ((SimilarityCharacterInput) obj).f22506a);
    }

    public final int hashCode() {
        return Objects.hash(this.f22506a);
    }

    @Override // org.apache.commons.text.similarity.SimilarityInput
    public final int length() {
        return this.f22506a.length();
    }

    public final String toString() {
        return this.f22506a.toString();
    }
}
