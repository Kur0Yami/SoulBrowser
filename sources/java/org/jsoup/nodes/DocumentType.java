package org.jsoup.nodes;

import kotlin.text.Typography;
import org.jsoup.helper.Validate;
import org.jsoup.internal.QuietAppendable;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Document;

/* loaded from: classes4.dex */
public class DocumentType extends LeafNode {
    public static final String PUBLIC_KEY = "PUBLIC";
    public static final String SYSTEM_KEY = "SYSTEM";

    public DocumentType(String str, String str2, String str3) {
        super(str);
        Validate.notNull(str2);
        Validate.notNull(str3);
        attributes().add("name", str).add("publicId", str2).add("systemId", str3);
        if (v("publicId")) {
            attributes().add("pubSysKey", PUBLIC_KEY);
        } else if (v("systemId")) {
            attributes().add("pubSysKey", SYSTEM_KEY);
        }
    }

    public String name() {
        return attr("name");
    }

    @Override // org.jsoup.nodes.Node
    public String nodeName() {
        return "#doctype";
    }

    @Override // org.jsoup.nodes.Node
    public final void p(QuietAppendable quietAppendable, Document.OutputSettings outputSettings) {
        if (outputSettings.syntax() == Document.OutputSettings.Syntax.html && !v("publicId") && !v("systemId")) {
            quietAppendable.append("<!doctype");
        } else {
            quietAppendable.append("<!DOCTYPE");
        }
        if (v("name")) {
            quietAppendable.append(" ").append(attr("name"));
        }
        if (v("pubSysKey")) {
            quietAppendable.append(" ").append(attr("pubSysKey"));
        }
        if (v("publicId")) {
            quietAppendable.append(" \"").append(attr("publicId")).append(Typography.quote);
        }
        if (v("systemId")) {
            quietAppendable.append(" \"").append(attr("systemId")).append(Typography.quote);
        }
        quietAppendable.append(Typography.greater);
    }

    public String publicId() {
        return attr("publicId");
    }

    public void setPubSysKey(String str) {
        if (str != null) {
            attr("pubSysKey", str);
        }
    }

    public String systemId() {
        return attr("systemId");
    }

    public final boolean v(String str) {
        return !StringUtil.isBlank(attr(str));
    }
}
