package com.google.common.base;

import com.google.common.base.Splitter;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final /* synthetic */ class a implements Splitter.Strategy {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f12194a;
    public final /* synthetic */ Object b;

    public /* synthetic */ a(int i, Object obj) {
        this.f12194a = i;
        this.b = obj;
    }

    @Override // com.google.common.base.Splitter.Strategy
    public final Iterator a(final Splitter splitter, final CharSequence charSequence) {
        switch (this.f12194a) {
            case 0:
                final String str = (String) this.b;
                return 
                /*  JADX ERROR: Method code generation error
                    jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x0018: RETURN 
                      (wrap:com.google.common.base.Splitter$SplittingIterator:0x0015: CONSTRUCTOR 
                      (r3v0 'splitter' com.google.common.base.Splitter A[DONT_INLINE])
                      (r4v0 'charSequence' java.lang.CharSequence A[DONT_INLINE])
                      (r0v2 'str' java.lang.String A[DONT_INLINE])
                     A[MD:(com.google.common.base.Splitter, java.lang.CharSequence, java.lang.String):void (m), WRAPPED] (LINE:22) call: com.google.common.base.Splitter.2.<init>(com.google.common.base.Splitter, java.lang.CharSequence, java.lang.String):void type: CONSTRUCTOR)
                     (LINE:22) in method: com.google.common.base.a.a(com.google.common.base.Splitter, java.lang.CharSequence):java.util.Iterator, file: classes3.dex
                    	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:310)
                    	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:273)
                    	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:94)
                    	at jadx.core.dex.nodes.IBlock.generate(IBlock.java:15)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                    	at jadx.core.codegen.RegionGen.makeSwitch(RegionGen.java:267)
                    	at jadx.core.dex.regions.SwitchRegion.generate(SwitchRegion.java:84)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:297)
                    	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:276)
                    	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:406)
                    	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:335)
                    	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:301)
                    	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:184)
                    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
                    	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                    	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:261)
                    Caused by: jadx.core.utils.exceptions.JadxRuntimeException: Expected class to be processed at this point, class: com.google.common.base.Splitter, state: NOT_LOADED
                    	at jadx.core.dex.nodes.ClassNode.ensureProcessed(ClassNode.java:304)
                    	at jadx.core.codegen.InsnGen.inlineAnonymousConstructor(InsnGen.java:781)
                    	at jadx.core.codegen.InsnGen.makeConstructor(InsnGen.java:730)
                    	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:418)
                    	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:145)
                    	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:121)
                    	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:108)
                    	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:368)
                    	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:303)
                    	... 21 more
                    */
                /*
                    this = this;
                    int r0 = r2.f12194a
                    switch(r0) {
                        case 0: goto Lf;
                        default: goto L5;
                    }
                L5:
                    java.lang.Object r0 = r2.b
                    com.google.common.base.CharMatcher r0 = (com.google.common.base.CharMatcher) r0
                    com.google.common.base.Splitter$1 r1 = new com.google.common.base.Splitter$1
                    r1.<init>(r3, r4, r0)
                    return r1
                Lf:
                    java.lang.Object r0 = r2.b
                    java.lang.String r0 = (java.lang.String) r0
                    com.google.common.base.Splitter$2 r1 = new com.google.common.base.Splitter$2
                    r1.<init>(r3, r4, r0)
                    return r1
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.common.base.a.a(com.google.common.base.Splitter, java.lang.CharSequence):java.util.Iterator");
            }
        }
