.class final Lorg/apache/commons/text/lookup/XmlEncoderStringLookup;
.super Lorg/apache/commons/text/lookup/AbstractStringLookup;
.source "SourceFile"


# static fields
.field public static final b:Lorg/apache/commons/text/lookup/XmlEncoderStringLookup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/text/lookup/XmlEncoderStringLookup;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/apache/commons/text/lookup/XmlEncoderStringLookup;->b:Lorg/apache/commons/text/lookup/XmlEncoderStringLookup;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/text/StringEscapeUtils;->a:Lorg/apache/commons/text/translate/AggregateTranslator;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/apache/commons/text/translate/CharSequenceTranslator;->b(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
