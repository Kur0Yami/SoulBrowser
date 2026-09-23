package net.dankito.readability4j.processor;

import kotlin.Metadata;
import kotlin.text.Regex;
import net.dankito.readability4j.util.RegExUtil;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0016\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lnet/dankito/readability4j/processor/MetadataParser;", "Lnet/dankito/readability4j/processor/ProcessorBase;", "Readability4J"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public class MetadataParser extends ProcessorBase {
    public final RegExUtil b;

    public MetadataParser(RegExUtil regExUtil) {
        this.b = regExUtil;
    }

    public static int f(String str) {
        return new Regex("\\s+").split(str, 0).size();
    }
}
