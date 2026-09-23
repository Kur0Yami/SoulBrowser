package org.apache.commons.lang3.arch;

/* loaded from: classes4.dex */
public class Processor {

    /* renamed from: a, reason: collision with root package name */
    public final Arch f22363a;
    public final Type b;

    /* loaded from: classes4.dex */
    public enum Arch {
        BIT_32("32-bit"),
        BIT_64("64-bit"),
        /* JADX INFO: Fake field, exist only in values array */
        UNKNOWN("Unknown");


        /* renamed from: c, reason: collision with root package name */
        public final String f22364c;

        Arch(String str) {
            this.f22364c = str;
        }
    }

    /* loaded from: classes4.dex */
    public enum Type {
        AARCH_64("AArch64"),
        X86("x86"),
        IA_64("IA-64"),
        PPC("PPC"),
        RISC_V("RISC-V"),
        /* JADX INFO: Fake field, exist only in values array */
        UNKNOWN("Unknown");


        /* renamed from: c, reason: collision with root package name */
        public final String f22365c;

        Type(String str) {
            this.f22365c = str;
        }
    }

    public Processor(Arch arch, Type type) {
        this.f22363a = arch;
        this.b = type;
    }

    public final String toString() {
        return this.b.f22365c + ' ' + this.f22363a.f22364c;
    }
}
