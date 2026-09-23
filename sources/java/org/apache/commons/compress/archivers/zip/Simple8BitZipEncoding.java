package org.apache.commons.compress.archivers.zip;

import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class Simple8BitZipEncoding implements ZipEncoding {

    /* renamed from: a, reason: collision with root package name */
    public final char[] f22289a;
    public final List b;

    /* loaded from: classes4.dex */
    public static final class Simple8BitChar implements Comparable<Simple8BitChar> {

        /* renamed from: c, reason: collision with root package name */
        public final char f22290c;
        public final byte f;

        public Simple8BitChar(byte b, char c2) {
            this.f = b;
            this.f22290c = c2;
        }

        @Override // java.lang.Comparable
        public final int compareTo(Simple8BitChar simple8BitChar) {
            return this.f22290c - simple8BitChar.f22290c;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof Simple8BitChar) {
                Simple8BitChar simple8BitChar = (Simple8BitChar) obj;
                if (this.f22290c == simple8BitChar.f22290c && this.f == simple8BitChar.f) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return this.f22290c;
        }

        public final String toString() {
            return "0x" + Integer.toHexString(65535 & this.f22290c) + "->0x" + Integer.toHexString(this.f & UByte.MAX_VALUE);
        }
    }

    public Simple8BitZipEncoding(char[] cArr) {
        char[] cArr2 = (char[]) cArr.clone();
        this.f22289a = cArr2;
        ArrayList arrayList = new ArrayList(cArr2.length);
        byte b = ByteCompanionObject.MAX_VALUE;
        for (char c2 : cArr2) {
            b = (byte) (b + 1);
            arrayList.add(new Simple8BitChar(b, c2));
        }
        try {
            Collections.sort(arrayList);
        } catch (Exception unused) {
        }
        this.b = DesugarCollections.unmodifiableList(arrayList);
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipEncoding
    public final String a(byte[] bArr) {
        char c2;
        char[] cArr = new char[bArr.length];
        for (int i = 0; i < bArr.length; i++) {
            byte b = bArr[i];
            if (b >= 0) {
                c2 = (char) b;
            } else {
                c2 = this.f22289a[b + ByteCompanionObject.MIN_VALUE];
            }
            cArr[i] = c2;
        }
        return new String(cArr);
    }
}
