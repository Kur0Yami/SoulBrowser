package org.apache.commons.compress.archivers.zip;

import java.util.concurrent.Callable;
import org.apache.commons.compress.parallel.ScatterGatherBackingStoreSupplier;

/* loaded from: classes4.dex */
public class ParallelScatterZipCreator {

    /* renamed from: org.apache.commons.compress.archivers.zip.ParallelScatterZipCreator$1, reason: invalid class name */
    /* loaded from: classes4.dex */
    public class AnonymousClass1 extends ThreadLocal<ScatterZipOutputStream> {
        @Override // java.lang.ThreadLocal
        public final ScatterZipOutputStream initialValue() {
            throw null;
        }
    }

    /* renamed from: org.apache.commons.compress.archivers.zip.ParallelScatterZipCreator$2, reason: invalid class name */
    /* loaded from: classes4.dex */
    class AnonymousClass2 implements Callable<Object> {
        @Override // java.util.concurrent.Callable
        public final Object call() {
            throw null;
        }
    }

    /* loaded from: classes4.dex */
    public static class DefaultBackingStoreSupplier implements ScatterGatherBackingStoreSupplier {
    }
}
