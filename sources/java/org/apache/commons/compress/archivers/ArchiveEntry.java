package org.apache.commons.compress.archivers;

/* loaded from: classes4.dex */
public interface ArchiveEntry {
    String getName();

    long getSize();

    boolean isDirectory();
}
