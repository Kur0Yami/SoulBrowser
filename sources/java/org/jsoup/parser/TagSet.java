package org.jsoup.parser;

import j$.util.Map;
import j$.util.Objects;
import j$.util.function.Consumer$CC;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.function.Consumer;
import org.jsoup.helper.Validate;
import org.jsoup.internal.Normalizer;
import org.jsoup.internal.SharedConstants;

/* loaded from: classes4.dex */
public class TagSet {
    public static final TagSet d;

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f22598a;
    public final TagSet b;

    /* renamed from: c, reason: collision with root package name */
    public ArrayList f22599c;

    static {
        String[] strArr = SharedConstants.FormSubmitTags;
        TagSet tagSet = new TagSet();
        final int i = 4;
        tagSet.b(Parser.NamespaceHtml, new String[]{"html", "head", "body", "frameset", "script", "noscript", "style", "meta", "link", "title", "frame", "noframes", "section", "nav", "aside", "hgroup", "header", "footer", "p", "h1", "h2", "h3", "h4", "h5", "h6", "br", "button", "ul", "ol", "pre", "div", "blockquote", "hr", "address", "figure", "figcaption", "form", "fieldset", "ins", "del", "dl", "dt", "dd", "li", "table", "caption", "thead", "tfoot", "tbody", "colgroup", "col", "tr", "th", "td", "video", "audio", "canvas", "details", "menu", "plaintext", "template", "article", "main", "center", "template", "dir", "applet", "marquee", "listing", "#root"}, new Consumer() { // from class: org.jsoup.parser.e
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                Tag tag = (Tag) obj;
                switch (i) {
                    case 0:
                        TagSet tagSet2 = TagSet.d;
                        tag.set(Tag.Data);
                        return;
                    case 1:
                        TagSet tagSet3 = TagSet.d;
                        tag.set(Tag.FormSubmittable);
                        return;
                    case 2:
                        TagSet tagSet4 = TagSet.d;
                        tag.set(Tag.Block);
                        return;
                    case 3:
                        TagSet tagSet5 = TagSet.d;
                        tag.set(0);
                        return;
                    case 4:
                        TagSet tagSet6 = TagSet.d;
                        tag.set(Tag.Block);
                        return;
                    case 5:
                        TagSet tagSet7 = TagSet.d;
                        tag.set(Tag.Block);
                        return;
                    case 6:
                        TagSet tagSet8 = TagSet.d;
                        tag.set(0);
                        return;
                    case 7:
                        TagSet tagSet9 = TagSet.d;
                        tag.set(Tag.Data);
                        return;
                    case 8:
                        TagSet tagSet10 = TagSet.d;
                        tag.set(0);
                        return;
                    case 9:
                        TagSet tagSet11 = TagSet.d;
                        tag.set(Tag.InlineContainer);
                        return;
                    case 10:
                        TagSet tagSet12 = TagSet.d;
                        tag.set(Tag.Void);
                        return;
                    case 11:
                        TagSet tagSet13 = TagSet.d;
                        tag.set(Tag.PreserveWhitespace);
                        return;
                    default:
                        TagSet tagSet14 = TagSet.d;
                        tag.set(Tag.RcData);
                        return;
                }
            }

            public /* synthetic */ Consumer andThen(Consumer consumer) {
                int i2 = i;
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
        final int i2 = 8;
        tagSet.b(Parser.NamespaceHtml, new String[]{"object", "base", "font", "tt", "i", "b", "u", "big", "small", "em", "strong", "dfn", "code", "samp", "kbd", "var", "cite", "abbr", "time", "acronym", "mark", "ruby", "rt", "rp", "rtc", "a", "img", "wbr", "map", "q", "sub", "sup", "bdo", "iframe", "embed", "span", "input", "select", "textarea", "label", "optgroup", "option", "legend", "datalist", "keygen", "output", "progress", "meter", "area", "param", "source", "track", "summary", "command", "device", "area", "basefont", "bgsound", "menuitem", "param", "source", "track", "data", "bdi", "s", "strike", "nobr", "rb"}, new Consumer() { // from class: org.jsoup.parser.e
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                Tag tag = (Tag) obj;
                switch (i2) {
                    case 0:
                        TagSet tagSet2 = TagSet.d;
                        tag.set(Tag.Data);
                        return;
                    case 1:
                        TagSet tagSet3 = TagSet.d;
                        tag.set(Tag.FormSubmittable);
                        return;
                    case 2:
                        TagSet tagSet4 = TagSet.d;
                        tag.set(Tag.Block);
                        return;
                    case 3:
                        TagSet tagSet5 = TagSet.d;
                        tag.set(0);
                        return;
                    case 4:
                        TagSet tagSet6 = TagSet.d;
                        tag.set(Tag.Block);
                        return;
                    case 5:
                        TagSet tagSet7 = TagSet.d;
                        tag.set(Tag.Block);
                        return;
                    case 6:
                        TagSet tagSet8 = TagSet.d;
                        tag.set(0);
                        return;
                    case 7:
                        TagSet tagSet9 = TagSet.d;
                        tag.set(Tag.Data);
                        return;
                    case 8:
                        TagSet tagSet10 = TagSet.d;
                        tag.set(0);
                        return;
                    case 9:
                        TagSet tagSet11 = TagSet.d;
                        tag.set(Tag.InlineContainer);
                        return;
                    case 10:
                        TagSet tagSet12 = TagSet.d;
                        tag.set(Tag.Void);
                        return;
                    case 11:
                        TagSet tagSet13 = TagSet.d;
                        tag.set(Tag.PreserveWhitespace);
                        return;
                    default:
                        TagSet tagSet14 = TagSet.d;
                        tag.set(Tag.RcData);
                        return;
                }
            }

            public /* synthetic */ Consumer andThen(Consumer consumer) {
                int i22 = i2;
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
        final int i3 = 9;
        tagSet.b(Parser.NamespaceHtml, new String[]{"title", "a", "p", "h1", "h2", "h3", "h4", "h5", "h6", "pre", "address", "li", "th", "td", "script", "style", "ins", "del", "s", "button"}, new Consumer() { // from class: org.jsoup.parser.e
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                Tag tag = (Tag) obj;
                switch (i3) {
                    case 0:
                        TagSet tagSet2 = TagSet.d;
                        tag.set(Tag.Data);
                        return;
                    case 1:
                        TagSet tagSet3 = TagSet.d;
                        tag.set(Tag.FormSubmittable);
                        return;
                    case 2:
                        TagSet tagSet4 = TagSet.d;
                        tag.set(Tag.Block);
                        return;
                    case 3:
                        TagSet tagSet5 = TagSet.d;
                        tag.set(0);
                        return;
                    case 4:
                        TagSet tagSet6 = TagSet.d;
                        tag.set(Tag.Block);
                        return;
                    case 5:
                        TagSet tagSet7 = TagSet.d;
                        tag.set(Tag.Block);
                        return;
                    case 6:
                        TagSet tagSet8 = TagSet.d;
                        tag.set(0);
                        return;
                    case 7:
                        TagSet tagSet9 = TagSet.d;
                        tag.set(Tag.Data);
                        return;
                    case 8:
                        TagSet tagSet10 = TagSet.d;
                        tag.set(0);
                        return;
                    case 9:
                        TagSet tagSet11 = TagSet.d;
                        tag.set(Tag.InlineContainer);
                        return;
                    case 10:
                        TagSet tagSet12 = TagSet.d;
                        tag.set(Tag.Void);
                        return;
                    case 11:
                        TagSet tagSet13 = TagSet.d;
                        tag.set(Tag.PreserveWhitespace);
                        return;
                    default:
                        TagSet tagSet14 = TagSet.d;
                        tag.set(Tag.RcData);
                        return;
                }
            }

            public /* synthetic */ Consumer andThen(Consumer consumer) {
                int i22 = i3;
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
        final int i4 = 10;
        tagSet.b(Parser.NamespaceHtml, new String[]{"meta", "link", "base", "frame", "img", "br", "wbr", "embed", "hr", "input", "keygen", "col", "command", "device", "area", "basefont", "bgsound", "menuitem", "param", "source", "track"}, new Consumer() { // from class: org.jsoup.parser.e
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                Tag tag = (Tag) obj;
                switch (i4) {
                    case 0:
                        TagSet tagSet2 = TagSet.d;
                        tag.set(Tag.Data);
                        return;
                    case 1:
                        TagSet tagSet3 = TagSet.d;
                        tag.set(Tag.FormSubmittable);
                        return;
                    case 2:
                        TagSet tagSet4 = TagSet.d;
                        tag.set(Tag.Block);
                        return;
                    case 3:
                        TagSet tagSet5 = TagSet.d;
                        tag.set(0);
                        return;
                    case 4:
                        TagSet tagSet6 = TagSet.d;
                        tag.set(Tag.Block);
                        return;
                    case 5:
                        TagSet tagSet7 = TagSet.d;
                        tag.set(Tag.Block);
                        return;
                    case 6:
                        TagSet tagSet8 = TagSet.d;
                        tag.set(0);
                        return;
                    case 7:
                        TagSet tagSet9 = TagSet.d;
                        tag.set(Tag.Data);
                        return;
                    case 8:
                        TagSet tagSet10 = TagSet.d;
                        tag.set(0);
                        return;
                    case 9:
                        TagSet tagSet11 = TagSet.d;
                        tag.set(Tag.InlineContainer);
                        return;
                    case 10:
                        TagSet tagSet12 = TagSet.d;
                        tag.set(Tag.Void);
                        return;
                    case 11:
                        TagSet tagSet13 = TagSet.d;
                        tag.set(Tag.PreserveWhitespace);
                        return;
                    default:
                        TagSet tagSet14 = TagSet.d;
                        tag.set(Tag.RcData);
                        return;
                }
            }

            public /* synthetic */ Consumer andThen(Consumer consumer) {
                int i22 = i4;
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
        final int i5 = 11;
        tagSet.b(Parser.NamespaceHtml, new String[]{"pre", "plaintext", "title", "textarea", "script"}, new Consumer() { // from class: org.jsoup.parser.e
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                Tag tag = (Tag) obj;
                switch (i5) {
                    case 0:
                        TagSet tagSet2 = TagSet.d;
                        tag.set(Tag.Data);
                        return;
                    case 1:
                        TagSet tagSet3 = TagSet.d;
                        tag.set(Tag.FormSubmittable);
                        return;
                    case 2:
                        TagSet tagSet4 = TagSet.d;
                        tag.set(Tag.Block);
                        return;
                    case 3:
                        TagSet tagSet5 = TagSet.d;
                        tag.set(0);
                        return;
                    case 4:
                        TagSet tagSet6 = TagSet.d;
                        tag.set(Tag.Block);
                        return;
                    case 5:
                        TagSet tagSet7 = TagSet.d;
                        tag.set(Tag.Block);
                        return;
                    case 6:
                        TagSet tagSet8 = TagSet.d;
                        tag.set(0);
                        return;
                    case 7:
                        TagSet tagSet9 = TagSet.d;
                        tag.set(Tag.Data);
                        return;
                    case 8:
                        TagSet tagSet10 = TagSet.d;
                        tag.set(0);
                        return;
                    case 9:
                        TagSet tagSet11 = TagSet.d;
                        tag.set(Tag.InlineContainer);
                        return;
                    case 10:
                        TagSet tagSet12 = TagSet.d;
                        tag.set(Tag.Void);
                        return;
                    case 11:
                        TagSet tagSet13 = TagSet.d;
                        tag.set(Tag.PreserveWhitespace);
                        return;
                    default:
                        TagSet tagSet14 = TagSet.d;
                        tag.set(Tag.RcData);
                        return;
                }
            }

            public /* synthetic */ Consumer andThen(Consumer consumer) {
                int i22 = i5;
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
        final int i6 = 12;
        tagSet.b(Parser.NamespaceHtml, new String[]{"title", "textarea"}, new Consumer() { // from class: org.jsoup.parser.e
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                Tag tag = (Tag) obj;
                switch (i6) {
                    case 0:
                        TagSet tagSet2 = TagSet.d;
                        tag.set(Tag.Data);
                        return;
                    case 1:
                        TagSet tagSet3 = TagSet.d;
                        tag.set(Tag.FormSubmittable);
                        return;
                    case 2:
                        TagSet tagSet4 = TagSet.d;
                        tag.set(Tag.Block);
                        return;
                    case 3:
                        TagSet tagSet5 = TagSet.d;
                        tag.set(0);
                        return;
                    case 4:
                        TagSet tagSet6 = TagSet.d;
                        tag.set(Tag.Block);
                        return;
                    case 5:
                        TagSet tagSet7 = TagSet.d;
                        tag.set(Tag.Block);
                        return;
                    case 6:
                        TagSet tagSet8 = TagSet.d;
                        tag.set(0);
                        return;
                    case 7:
                        TagSet tagSet9 = TagSet.d;
                        tag.set(Tag.Data);
                        return;
                    case 8:
                        TagSet tagSet10 = TagSet.d;
                        tag.set(0);
                        return;
                    case 9:
                        TagSet tagSet11 = TagSet.d;
                        tag.set(Tag.InlineContainer);
                        return;
                    case 10:
                        TagSet tagSet12 = TagSet.d;
                        tag.set(Tag.Void);
                        return;
                    case 11:
                        TagSet tagSet13 = TagSet.d;
                        tag.set(Tag.PreserveWhitespace);
                        return;
                    default:
                        TagSet tagSet14 = TagSet.d;
                        tag.set(Tag.RcData);
                        return;
                }
            }

            public /* synthetic */ Consumer andThen(Consumer consumer) {
                int i22 = i6;
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
        final int i7 = 0;
        tagSet.b(Parser.NamespaceHtml, new String[]{"iframe", "noembed", "noframes", "script", "style", "xmp"}, new Consumer() { // from class: org.jsoup.parser.e
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                Tag tag = (Tag) obj;
                switch (i7) {
                    case 0:
                        TagSet tagSet2 = TagSet.d;
                        tag.set(Tag.Data);
                        return;
                    case 1:
                        TagSet tagSet3 = TagSet.d;
                        tag.set(Tag.FormSubmittable);
                        return;
                    case 2:
                        TagSet tagSet4 = TagSet.d;
                        tag.set(Tag.Block);
                        return;
                    case 3:
                        TagSet tagSet5 = TagSet.d;
                        tag.set(0);
                        return;
                    case 4:
                        TagSet tagSet6 = TagSet.d;
                        tag.set(Tag.Block);
                        return;
                    case 5:
                        TagSet tagSet7 = TagSet.d;
                        tag.set(Tag.Block);
                        return;
                    case 6:
                        TagSet tagSet8 = TagSet.d;
                        tag.set(0);
                        return;
                    case 7:
                        TagSet tagSet9 = TagSet.d;
                        tag.set(Tag.Data);
                        return;
                    case 8:
                        TagSet tagSet10 = TagSet.d;
                        tag.set(0);
                        return;
                    case 9:
                        TagSet tagSet11 = TagSet.d;
                        tag.set(Tag.InlineContainer);
                        return;
                    case 10:
                        TagSet tagSet12 = TagSet.d;
                        tag.set(Tag.Void);
                        return;
                    case 11:
                        TagSet tagSet13 = TagSet.d;
                        tag.set(Tag.PreserveWhitespace);
                        return;
                    default:
                        TagSet tagSet14 = TagSet.d;
                        tag.set(Tag.RcData);
                        return;
                }
            }

            public /* synthetic */ Consumer andThen(Consumer consumer) {
                int i22 = i7;
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
        final int i8 = 1;
        tagSet.b(Parser.NamespaceHtml, strArr, new Consumer() { // from class: org.jsoup.parser.e
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                Tag tag = (Tag) obj;
                switch (i8) {
                    case 0:
                        TagSet tagSet2 = TagSet.d;
                        tag.set(Tag.Data);
                        return;
                    case 1:
                        TagSet tagSet3 = TagSet.d;
                        tag.set(Tag.FormSubmittable);
                        return;
                    case 2:
                        TagSet tagSet4 = TagSet.d;
                        tag.set(Tag.Block);
                        return;
                    case 3:
                        TagSet tagSet5 = TagSet.d;
                        tag.set(0);
                        return;
                    case 4:
                        TagSet tagSet6 = TagSet.d;
                        tag.set(Tag.Block);
                        return;
                    case 5:
                        TagSet tagSet7 = TagSet.d;
                        tag.set(Tag.Block);
                        return;
                    case 6:
                        TagSet tagSet8 = TagSet.d;
                        tag.set(0);
                        return;
                    case 7:
                        TagSet tagSet9 = TagSet.d;
                        tag.set(Tag.Data);
                        return;
                    case 8:
                        TagSet tagSet10 = TagSet.d;
                        tag.set(0);
                        return;
                    case 9:
                        TagSet tagSet11 = TagSet.d;
                        tag.set(Tag.InlineContainer);
                        return;
                    case 10:
                        TagSet tagSet12 = TagSet.d;
                        tag.set(Tag.Void);
                        return;
                    case 11:
                        TagSet tagSet13 = TagSet.d;
                        tag.set(Tag.PreserveWhitespace);
                        return;
                    default:
                        TagSet tagSet14 = TagSet.d;
                        tag.set(Tag.RcData);
                        return;
                }
            }

            public /* synthetic */ Consumer andThen(Consumer consumer) {
                int i22 = i8;
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
        final int i9 = 2;
        tagSet.b(Parser.NamespaceMathml, new String[]{"math"}, new Consumer() { // from class: org.jsoup.parser.e
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                Tag tag = (Tag) obj;
                switch (i9) {
                    case 0:
                        TagSet tagSet2 = TagSet.d;
                        tag.set(Tag.Data);
                        return;
                    case 1:
                        TagSet tagSet3 = TagSet.d;
                        tag.set(Tag.FormSubmittable);
                        return;
                    case 2:
                        TagSet tagSet4 = TagSet.d;
                        tag.set(Tag.Block);
                        return;
                    case 3:
                        TagSet tagSet5 = TagSet.d;
                        tag.set(0);
                        return;
                    case 4:
                        TagSet tagSet6 = TagSet.d;
                        tag.set(Tag.Block);
                        return;
                    case 5:
                        TagSet tagSet7 = TagSet.d;
                        tag.set(Tag.Block);
                        return;
                    case 6:
                        TagSet tagSet8 = TagSet.d;
                        tag.set(0);
                        return;
                    case 7:
                        TagSet tagSet9 = TagSet.d;
                        tag.set(Tag.Data);
                        return;
                    case 8:
                        TagSet tagSet10 = TagSet.d;
                        tag.set(0);
                        return;
                    case 9:
                        TagSet tagSet11 = TagSet.d;
                        tag.set(Tag.InlineContainer);
                        return;
                    case 10:
                        TagSet tagSet12 = TagSet.d;
                        tag.set(Tag.Void);
                        return;
                    case 11:
                        TagSet tagSet13 = TagSet.d;
                        tag.set(Tag.PreserveWhitespace);
                        return;
                    default:
                        TagSet tagSet14 = TagSet.d;
                        tag.set(Tag.RcData);
                        return;
                }
            }

            public /* synthetic */ Consumer andThen(Consumer consumer) {
                int i22 = i9;
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
        final int i10 = 3;
        tagSet.b(Parser.NamespaceMathml, new String[]{"mi", "mo", "msup", "mn", "mtext"}, new Consumer() { // from class: org.jsoup.parser.e
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                Tag tag = (Tag) obj;
                switch (i10) {
                    case 0:
                        TagSet tagSet2 = TagSet.d;
                        tag.set(Tag.Data);
                        return;
                    case 1:
                        TagSet tagSet3 = TagSet.d;
                        tag.set(Tag.FormSubmittable);
                        return;
                    case 2:
                        TagSet tagSet4 = TagSet.d;
                        tag.set(Tag.Block);
                        return;
                    case 3:
                        TagSet tagSet5 = TagSet.d;
                        tag.set(0);
                        return;
                    case 4:
                        TagSet tagSet6 = TagSet.d;
                        tag.set(Tag.Block);
                        return;
                    case 5:
                        TagSet tagSet7 = TagSet.d;
                        tag.set(Tag.Block);
                        return;
                    case 6:
                        TagSet tagSet8 = TagSet.d;
                        tag.set(0);
                        return;
                    case 7:
                        TagSet tagSet9 = TagSet.d;
                        tag.set(Tag.Data);
                        return;
                    case 8:
                        TagSet tagSet10 = TagSet.d;
                        tag.set(0);
                        return;
                    case 9:
                        TagSet tagSet11 = TagSet.d;
                        tag.set(Tag.InlineContainer);
                        return;
                    case 10:
                        TagSet tagSet12 = TagSet.d;
                        tag.set(Tag.Void);
                        return;
                    case 11:
                        TagSet tagSet13 = TagSet.d;
                        tag.set(Tag.PreserveWhitespace);
                        return;
                    default:
                        TagSet tagSet14 = TagSet.d;
                        tag.set(Tag.RcData);
                        return;
                }
            }

            public /* synthetic */ Consumer andThen(Consumer consumer) {
                int i22 = i10;
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
        final int i11 = 5;
        tagSet.b(Parser.NamespaceSvg, new String[]{"svg", "femerge", "femergenode"}, new Consumer() { // from class: org.jsoup.parser.e
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                Tag tag = (Tag) obj;
                switch (i11) {
                    case 0:
                        TagSet tagSet2 = TagSet.d;
                        tag.set(Tag.Data);
                        return;
                    case 1:
                        TagSet tagSet3 = TagSet.d;
                        tag.set(Tag.FormSubmittable);
                        return;
                    case 2:
                        TagSet tagSet4 = TagSet.d;
                        tag.set(Tag.Block);
                        return;
                    case 3:
                        TagSet tagSet5 = TagSet.d;
                        tag.set(0);
                        return;
                    case 4:
                        TagSet tagSet6 = TagSet.d;
                        tag.set(Tag.Block);
                        return;
                    case 5:
                        TagSet tagSet7 = TagSet.d;
                        tag.set(Tag.Block);
                        return;
                    case 6:
                        TagSet tagSet8 = TagSet.d;
                        tag.set(0);
                        return;
                    case 7:
                        TagSet tagSet9 = TagSet.d;
                        tag.set(Tag.Data);
                        return;
                    case 8:
                        TagSet tagSet10 = TagSet.d;
                        tag.set(0);
                        return;
                    case 9:
                        TagSet tagSet11 = TagSet.d;
                        tag.set(Tag.InlineContainer);
                        return;
                    case 10:
                        TagSet tagSet12 = TagSet.d;
                        tag.set(Tag.Void);
                        return;
                    case 11:
                        TagSet tagSet13 = TagSet.d;
                        tag.set(Tag.PreserveWhitespace);
                        return;
                    default:
                        TagSet tagSet14 = TagSet.d;
                        tag.set(Tag.RcData);
                        return;
                }
            }

            public /* synthetic */ Consumer andThen(Consumer consumer) {
                int i22 = i11;
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
        final int i12 = 6;
        tagSet.b(Parser.NamespaceSvg, new String[]{"text"}, new Consumer() { // from class: org.jsoup.parser.e
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                Tag tag = (Tag) obj;
                switch (i12) {
                    case 0:
                        TagSet tagSet2 = TagSet.d;
                        tag.set(Tag.Data);
                        return;
                    case 1:
                        TagSet tagSet3 = TagSet.d;
                        tag.set(Tag.FormSubmittable);
                        return;
                    case 2:
                        TagSet tagSet4 = TagSet.d;
                        tag.set(Tag.Block);
                        return;
                    case 3:
                        TagSet tagSet5 = TagSet.d;
                        tag.set(0);
                        return;
                    case 4:
                        TagSet tagSet6 = TagSet.d;
                        tag.set(Tag.Block);
                        return;
                    case 5:
                        TagSet tagSet7 = TagSet.d;
                        tag.set(Tag.Block);
                        return;
                    case 6:
                        TagSet tagSet8 = TagSet.d;
                        tag.set(0);
                        return;
                    case 7:
                        TagSet tagSet9 = TagSet.d;
                        tag.set(Tag.Data);
                        return;
                    case 8:
                        TagSet tagSet10 = TagSet.d;
                        tag.set(0);
                        return;
                    case 9:
                        TagSet tagSet11 = TagSet.d;
                        tag.set(Tag.InlineContainer);
                        return;
                    case 10:
                        TagSet tagSet12 = TagSet.d;
                        tag.set(Tag.Void);
                        return;
                    case 11:
                        TagSet tagSet13 = TagSet.d;
                        tag.set(Tag.PreserveWhitespace);
                        return;
                    default:
                        TagSet tagSet14 = TagSet.d;
                        tag.set(Tag.RcData);
                        return;
                }
            }

            public /* synthetic */ Consumer andThen(Consumer consumer) {
                int i22 = i12;
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
        final int i13 = 7;
        tagSet.b(Parser.NamespaceSvg, new String[]{"script"}, new Consumer() { // from class: org.jsoup.parser.e
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                Tag tag = (Tag) obj;
                switch (i13) {
                    case 0:
                        TagSet tagSet2 = TagSet.d;
                        tag.set(Tag.Data);
                        return;
                    case 1:
                        TagSet tagSet3 = TagSet.d;
                        tag.set(Tag.FormSubmittable);
                        return;
                    case 2:
                        TagSet tagSet4 = TagSet.d;
                        tag.set(Tag.Block);
                        return;
                    case 3:
                        TagSet tagSet5 = TagSet.d;
                        tag.set(0);
                        return;
                    case 4:
                        TagSet tagSet6 = TagSet.d;
                        tag.set(Tag.Block);
                        return;
                    case 5:
                        TagSet tagSet7 = TagSet.d;
                        tag.set(Tag.Block);
                        return;
                    case 6:
                        TagSet tagSet8 = TagSet.d;
                        tag.set(0);
                        return;
                    case 7:
                        TagSet tagSet9 = TagSet.d;
                        tag.set(Tag.Data);
                        return;
                    case 8:
                        TagSet tagSet10 = TagSet.d;
                        tag.set(0);
                        return;
                    case 9:
                        TagSet tagSet11 = TagSet.d;
                        tag.set(Tag.InlineContainer);
                        return;
                    case 10:
                        TagSet tagSet12 = TagSet.d;
                        tag.set(Tag.Void);
                        return;
                    case 11:
                        TagSet tagSet13 = TagSet.d;
                        tag.set(Tag.PreserveWhitespace);
                        return;
                    default:
                        TagSet tagSet14 = TagSet.d;
                        tag.set(Tag.RcData);
                        return;
                }
            }

            public /* synthetic */ Consumer andThen(Consumer consumer) {
                int i22 = i13;
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
        d = tagSet;
    }

    public TagSet() {
        this.f22598a = new HashMap();
        this.b = null;
    }

    public static TagSet Html() {
        return new TagSet(d);
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, java.util.function.Function] */
    public final void a(Tag tag) {
        ArrayList arrayList = this.f22599c;
        if (arrayList != null) {
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                ((Consumer) obj).accept(tag);
            }
        }
        ((Map) Map.EL.computeIfAbsent(this.f22598a, tag.f22597c, new Object())).put(tag.f, tag);
    }

    public TagSet add(Tag tag) {
        tag.set(Tag.Known);
        a(tag);
        return this;
    }

    public final void b(String str, String[] strArr, Consumer consumer) {
        for (String str2 : strArr) {
            Tag tag = get(str2, str);
            if (tag == null) {
                tag = new Tag(str2, str2, str);
                tag.h = 0;
                add(tag);
            }
            consumer.accept(tag);
        }
    }

    public final Tag c(String str, String str2, String str3, boolean z) {
        Validate.notNull(str);
        Validate.notNull(str3);
        String trim = str.trim();
        Validate.notEmpty(trim);
        Tag tag = get(trim, str3);
        if (tag != null) {
            return tag;
        }
        if (str2 == null) {
            ParseSettings parseSettings = ParseSettings.htmlDefault;
            str2 = Normalizer.normalize(trim);
        }
        if (!z) {
            trim = str2;
        }
        Tag tag2 = get(str2, str3);
        if (tag2 != null) {
            if (z && !trim.equals(str2)) {
                Tag clone = tag2.clone();
                clone.f = trim;
                a(clone);
                return clone;
            }
            return tag2;
        }
        Tag tag3 = new Tag(trim, str2, str3);
        a(tag3);
        return tag3;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof TagSet)) {
            return false;
        }
        return Objects.equals(this.f22598a, ((TagSet) obj).f22598a);
    }

    public Tag get(String str, String str2) {
        Tag tag;
        Tag tag2;
        Validate.notNull(str);
        Validate.notNull(str2);
        java.util.Map map = (java.util.Map) this.f22598a.get(str2);
        if (map != null && (tag2 = (Tag) map.get(str)) != null) {
            return tag2;
        }
        TagSet tagSet = this.b;
        if (tagSet != null && (tag = tagSet.get(str, str2)) != null) {
            Tag clone = tag.clone();
            a(clone);
            return clone;
        }
        return null;
    }

    public int hashCode() {
        return Objects.hashCode(this.f22598a);
    }

    public TagSet onNewTag(Consumer<Tag> consumer) {
        Validate.notNull(consumer);
        if (this.f22599c == null) {
            this.f22599c = new ArrayList();
        }
        this.f22599c.add(consumer);
        return this;
    }

    public Tag valueOf(String str, String str2, ParseSettings parseSettings) {
        return c(str, null, str2, parseSettings.preserveTagCase());
    }

    public Tag valueOf(String str, String str2) {
        return valueOf(str, str2, ParseSettings.preserveCase);
    }

    public TagSet(TagSet tagSet) {
        this.f22598a = new HashMap();
        this.b = tagSet;
    }
}
