package org.apache.commons.text.lookup;

import j$.util.Objects;
import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;

/* loaded from: classes4.dex */
final class ScriptStringLookup extends AbstractStringLookup {
    public static final ScriptStringLookup b = new Object();

    @Override // org.apache.commons.text.lookup.StringLookup
    public final String a(String str) {
        if (str == null) {
            return null;
        }
        String[] split2 = str.split(AbstractStringLookup.f22475a, 2);
        if (split2.length == 2) {
            String str2 = split2[0];
            String str3 = split2[1];
            try {
                ScriptEngine engineByName = new ScriptEngineManager().getEngineByName(str2);
                if (engineByName != null) {
                    return Objects.toString(engineByName.eval(str3), null);
                }
                throw new IllegalArgumentException("No script engine named " + str2);
            } catch (Exception e) {
                throw IllegalArgumentExceptions.a(e, "Error in script engine [%s] evaluating script [%s].", str2, str3);
            }
        }
        throw IllegalArgumentExceptions.b("Bad script key format [%s]; expected format is EngineName:Script.", str);
    }
}
