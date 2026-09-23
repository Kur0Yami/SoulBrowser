package org.apache.commons.lang3;

import j$.util.stream.Stream;
import java.util.HashMap;
import org.apache.commons.lang3.arch.Processor;

/* loaded from: classes4.dex */
public class ArchUtils {

    /* renamed from: a, reason: collision with root package name */
    public static final HashMap f22335a = new HashMap();

    static {
        Processor.Arch arch = Processor.Arch.BIT_32;
        Processor.Type type = Processor.Type.X86;
        a(new Processor(arch, type), "x86", "i386", "i486", "i586", "i686", "pentium");
        Processor.Arch arch2 = Processor.Arch.BIT_64;
        a(new Processor(arch2, type), "x86_64", "amd64", "em64t", "universal");
        Processor.Type type2 = Processor.Type.IA_64;
        a(new Processor(arch, type2), "ia64_32", "ia64n");
        a(new Processor(arch2, type2), "ia64", "ia64w");
        Processor.Type type3 = Processor.Type.PPC;
        a(new Processor(arch, type3), "ppc", "power", "powerpc", "power_pc", "power_rs");
        a(new Processor(arch2, type3), "ppc64", "power64", "powerpc64", "power_pc64", "power_rs64");
        a(new Processor(arch2, Processor.Type.AARCH_64), "aarch64");
        Processor.Type type4 = Processor.Type.RISC_V;
        a(new Processor(arch, type4), "riscv32");
        a(new Processor(arch2, type4), "riscv64");
    }

    public static void a(Processor processor, String... strArr) {
        Stream.CC.of(strArr).forEach(new d(1, processor));
    }
}
