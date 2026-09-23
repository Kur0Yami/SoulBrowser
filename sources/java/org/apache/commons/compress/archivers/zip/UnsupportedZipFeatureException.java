package org.apache.commons.compress.archivers.zip;

import java.util.zip.ZipException;

/* loaded from: classes4.dex */
public class UnsupportedZipFeatureException extends ZipException {

    /* loaded from: classes4.dex */
    public static class Feature {
        public static final Feature b = new Feature("encryption");

        /* renamed from: c, reason: collision with root package name */
        public static final Feature f22293c = new Feature("compression method");

        /* renamed from: a, reason: collision with root package name */
        public final String f22294a;

        public Feature(String str) {
            this.f22294a = str;
        }

        public final String toString() {
            return this.f22294a;
        }
    }

    public UnsupportedZipFeatureException(Feature feature, ZipArchiveEntry zipArchiveEntry) {
        super("unsupported feature " + feature + " used in entry " + zipArchiveEntry.getName());
    }
}
