package com.google.gson.internal;

import com.google.gson.JsonElement;
import com.google.gson.JsonNull;
import com.google.gson.internal.bind.TypeAdapters;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.MalformedJsonException;
import j$.util.Objects;
import java.io.EOFException;
import java.io.IOException;
import java.io.Writer;

/* loaded from: classes3.dex */
public final class Streams {

    /* loaded from: classes3.dex */
    public static final class AppendableWriter extends Writer {

        /* renamed from: c, reason: collision with root package name */
        public final StringBuilder f12695c;
        public final CurrentWrite f = new Object();

        /* loaded from: classes3.dex */
        public static class CurrentWrite implements CharSequence {

            /* renamed from: c, reason: collision with root package name */
            public char[] f12696c;
            public String f;

            @Override // java.lang.CharSequence
            public final char charAt(int i) {
                return this.f12696c[i];
            }

            @Override // java.lang.CharSequence
            public final int length() {
                return this.f12696c.length;
            }

            @Override // java.lang.CharSequence
            public final CharSequence subSequence(int i, int i2) {
                return new String(this.f12696c, i, i2 - i);
            }

            @Override // java.lang.CharSequence
            public final String toString() {
                if (this.f == null) {
                    this.f = new String(this.f12696c);
                }
                return this.f;
            }
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.gson.internal.Streams$AppendableWriter$CurrentWrite, java.lang.Object] */
        public AppendableWriter(StringBuilder sb) {
            this.f12695c = sb;
        }

        @Override // java.io.Writer, java.lang.Appendable
        public final Writer append(CharSequence charSequence) {
            this.f12695c.append(charSequence);
            return this;
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
        }

        @Override // java.io.Writer, java.io.Flushable
        public final void flush() {
        }

        @Override // java.io.Writer
        public final void write(int i) {
            this.f12695c.append((char) i);
        }

        @Override // java.io.Writer, java.lang.Appendable
        public final Appendable append(CharSequence charSequence) {
            this.f12695c.append(charSequence);
            return this;
        }

        @Override // java.io.Writer
        public final void write(String str, int i, int i2) {
            Objects.requireNonNull(str);
            this.f12695c.append((CharSequence) str, i, i2 + i);
        }

        @Override // java.io.Writer, java.lang.Appendable
        public final Writer append(CharSequence charSequence, int i, int i2) {
            this.f12695c.append(charSequence, i, i2);
            return this;
        }

        @Override // java.io.Writer, java.lang.Appendable
        public final Appendable append(CharSequence charSequence, int i, int i2) {
            this.f12695c.append(charSequence, i, i2);
            return this;
        }

        @Override // java.io.Writer
        public final void write(char[] cArr, int i, int i2) {
            CurrentWrite currentWrite = this.f;
            currentWrite.f12696c = cArr;
            currentWrite.f = null;
            this.f12695c.append((CharSequence) currentWrite, i, i2 + i);
        }
    }

    public static JsonElement a(JsonReader jsonReader) {
        boolean z;
        try {
            try {
                jsonReader.W();
                z = false;
            } catch (EOFException e) {
                e = e;
                z = true;
            }
            try {
                return (JsonElement) TypeAdapters.z.b(jsonReader);
            } catch (EOFException e2) {
                e = e2;
                if (z) {
                    return JsonNull.f12670c;
                }
                throw new RuntimeException(e);
            }
        } catch (MalformedJsonException e3) {
            throw new RuntimeException(e3);
        } catch (IOException e4) {
            throw new RuntimeException(e4);
        } catch (NumberFormatException e5) {
            throw new RuntimeException(e5);
        }
    }

    public static Writer b(StringBuilder sb) {
        return new AppendableWriter(sb);
    }
}
