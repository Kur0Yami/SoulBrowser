package org.tukaani.xz;

/* loaded from: classes4.dex */
public class CorruptedInputException extends XZIOException {
    public CorruptedInputException() {
        super("Compressed data is corrupt");
    }
}
