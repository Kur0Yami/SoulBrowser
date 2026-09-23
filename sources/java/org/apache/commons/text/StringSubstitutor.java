package org.apache.commons.text;

import org.apache.commons.text.matcher.StringMatcher;
import org.apache.commons.text.matcher.StringMatcherFactory;

/* loaded from: classes4.dex */
public class StringSubstitutor {

    /* renamed from: a, reason: collision with root package name */
    public static final StringMatcher f22471a = StringMatcherFactory.a("${");
    public static final StringMatcher b = StringMatcherFactory.a("}");

    /* renamed from: c, reason: collision with root package name */
    public static final StringMatcher f22472c = StringMatcherFactory.a(":-");

    /* loaded from: classes4.dex */
    public static final class Result {
        public final String toString() {
            return "Result [altered=false, lengthChange=0]";
        }
    }

    public final String toString() {
        return "StringSubstitutor [disableSubstitutionInValues=false, enableSubstitutionInVariables=false, enableUndefinedVariableException=false, escapeChar=\u0000, prefixMatcher=null, preserveEscapes=false, suffixMatcher=null, valueDelimiterMatcher=null, variableResolver=null]";
    }
}
