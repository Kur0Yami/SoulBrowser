package org.apache.commons.text;

import j$.util.Objects;
import java.text.Format;
import java.text.MessageFormat;

/* loaded from: classes4.dex */
public class ExtendedMessageFormat extends MessageFormat {

    /* renamed from: c, reason: collision with root package name */
    public String f22463c;

    @Override // java.text.MessageFormat
    public final void applyPattern(String str) {
        super.applyPattern(str);
        this.f22463c = super.toPattern();
    }

    @Override // java.text.MessageFormat
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (super.equals(obj) && (obj instanceof ExtendedMessageFormat) && Objects.equals(this.f22463c, ((ExtendedMessageFormat) obj).f22463c)) {
            return true;
        }
        return false;
    }

    @Override // java.text.MessageFormat
    public final int hashCode() {
        return Objects.hash(null, this.f22463c) + (super.hashCode() * 31);
    }

    @Override // java.text.MessageFormat
    public final void setFormat(int i, Format format) {
        throw new UnsupportedOperationException();
    }

    @Override // java.text.MessageFormat
    public final void setFormatByArgumentIndex(int i, Format format) {
        throw new UnsupportedOperationException();
    }

    @Override // java.text.MessageFormat
    public final void setFormats(Format[] formatArr) {
        throw new UnsupportedOperationException();
    }

    @Override // java.text.MessageFormat
    public final void setFormatsByArgumentIndex(Format[] formatArr) {
        throw new UnsupportedOperationException();
    }

    @Override // java.text.MessageFormat
    public final String toPattern() {
        return this.f22463c;
    }
}
