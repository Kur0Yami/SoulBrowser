.class public Lorg/apache/commons/text/StringEscapeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/text/StringEscapeUtils$Builder;,
        Lorg/apache/commons/text/StringEscapeUtils$XsiUnescaper;
    }
.end annotation


# static fields
.field public static final a:Lorg/apache/commons/text/translate/AggregateTranslator;

.field public static final b:Lorg/apache/commons/text/translate/AggregateTranslator;

.field public static final c:Lorg/apache/commons/text/translate/AggregateTranslator;

.field public static final d:Lorg/apache/commons/text/translate/AggregateTranslator;


# direct methods
.method static constructor <clinit>()V
    .locals 28

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    const-string v1, "\""

    const-string v2, "\\\""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    const-string v3, "\\"

    const-string v4, "\\\\"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v5, Lorg/apache/commons/text/translate/AggregateTranslator;

    new-instance v6, Lorg/apache/commons/text/translate/LookupTranslator;

    .line 5
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    new-instance v0, Lorg/apache/commons/text/translate/LookupTranslator;

    sget-object v7, Lorg/apache/commons/text/translate/EntityArrays;->i:Ljava/util/Map;

    invoke-direct {v0, v7}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    .line 6
    new-instance v8, Lorg/apache/commons/text/translate/JavaUnicodeEscaper;

    const/16 v9, 0x7f

    .line 7
    invoke-direct {v8, v9}, Lorg/apache/commons/text/translate/UnicodeEscaper;-><init>(I)V

    const/4 v10, 0x3

    .line 8
    new-array v11, v10, [Lorg/apache/commons/text/translate/CharSequenceTranslator;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    const/4 v6, 0x1

    aput-object v0, v11, v6

    const/4 v0, 0x2

    aput-object v8, v11, v0

    invoke-direct {v5, v11}, Lorg/apache/commons/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/text/translate/CharSequenceTranslator;)V

    .line 9
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 10
    const-string v8, "\'"

    const-string v11, "\\\'"

    invoke-virtual {v5, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {v5, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-string v13, "/"

    const-string v14, "\\/"

    invoke-virtual {v5, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v15, Lorg/apache/commons/text/translate/AggregateTranslator;

    move/from16 v16, v12

    new-instance v12, Lorg/apache/commons/text/translate/LookupTranslator;

    .line 15
    invoke-static {v5}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    invoke-direct {v12, v5}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    new-instance v5, Lorg/apache/commons/text/translate/LookupTranslator;

    invoke-direct {v5, v7}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    move/from16 v17, v0

    .line 16
    new-instance v0, Lorg/apache/commons/text/translate/JavaUnicodeEscaper;

    .line 17
    invoke-direct {v0, v9}, Lorg/apache/commons/text/translate/UnicodeEscaper;-><init>(I)V

    move/from16 v18, v6

    .line 18
    new-array v6, v10, [Lorg/apache/commons/text/translate/CharSequenceTranslator;

    aput-object v12, v6, v16

    aput-object v5, v6, v18

    aput-object v0, v6, v17

    invoke-direct {v15, v6}, Lorg/apache/commons/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/text/translate/CharSequenceTranslator;)V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance v5, Lorg/apache/commons/text/translate/AggregateTranslator;

    new-instance v6, Lorg/apache/commons/text/translate/LookupTranslator;

    .line 24
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    new-instance v0, Lorg/apache/commons/text/translate/LookupTranslator;

    invoke-direct {v0, v7}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    .line 25
    new-instance v7, Lorg/apache/commons/text/translate/JavaUnicodeEscaper;

    const/16 v12, 0x7e

    .line 26
    invoke-direct {v7, v12}, Lorg/apache/commons/text/translate/UnicodeEscaper;-><init>(I)V

    .line 27
    new-array v12, v10, [Lorg/apache/commons/text/translate/CharSequenceTranslator;

    aput-object v6, v12, v16

    aput-object v0, v12, v18

    aput-object v7, v12, v17

    invoke-direct {v5, v12}, Lorg/apache/commons/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/text/translate/CharSequenceTranslator;)V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 29
    const-string v5, "\u0000"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v7, "\u0001"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string v7, "\u0002"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v7, "\u0003"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v7, "\u0004"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v7, "\u0005"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v7, "\u0006"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v7, "\u0007"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v7, "\u0008"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v7, "\u000b"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v12, "\u000c"

    invoke-virtual {v0, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v13, "\u000e"

    invoke-virtual {v0, v13, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v13, "\u000f"

    invoke-virtual {v0, v13, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v13, "\u0010"

    invoke-virtual {v0, v13, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v13, "\u0011"

    invoke-virtual {v0, v13, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v13, "\u0012"

    invoke-virtual {v0, v13, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v13, "\u0013"

    invoke-virtual {v0, v13, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v13, "\u0014"

    invoke-virtual {v0, v13, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v13, "\u0015"

    invoke-virtual {v0, v13, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v13, "\u0016"

    invoke-virtual {v0, v13, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v13, "\u0017"

    invoke-virtual {v0, v13, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v13, "\u0018"

    invoke-virtual {v0, v13, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v13, "\u0019"

    invoke-virtual {v0, v13, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v13, "\u001a"

    invoke-virtual {v0, v13, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v13, "\u001b"

    invoke-virtual {v0, v13, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v13, "\u001c"

    invoke-virtual {v0, v13, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v13, "\u001d"

    invoke-virtual {v0, v13, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v13, "\u001e"

    invoke-virtual {v0, v13, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v13, "\u001f"

    invoke-virtual {v0, v13, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v13, "\ufffe"

    invoke-virtual {v0, v13, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v14, "\uffff"

    invoke-virtual {v0, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    new-instance v15, Lorg/apache/commons/text/translate/AggregateTranslator;

    move/from16 v19, v10

    new-instance v10, Lorg/apache/commons/text/translate/LookupTranslator;

    sget-object v9, Lorg/apache/commons/text/translate/EntityArrays;->e:Ljava/util/Map;

    invoke-direct {v10, v9}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    move-object/from16 v21, v0

    new-instance v0, Lorg/apache/commons/text/translate/LookupTranslator;

    move-object/from16 v22, v10

    sget-object v10, Lorg/apache/commons/text/translate/EntityArrays;->g:Ljava/util/Map;

    invoke-direct {v0, v10}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    move-object/from16 v23, v0

    new-instance v0, Lorg/apache/commons/text/translate/LookupTranslator;

    move-object/from16 v24, v8

    .line 61
    invoke-static/range {v21 .. v21}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    invoke-direct {v0, v8}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    .line 62
    new-instance v8, Lorg/apache/commons/text/translate/NumericEntityEscaper;

    move-object/from16 v21, v0

    const/16 v0, 0x84

    move-object/from16 v25, v11

    const/16 v11, 0x7f

    invoke-direct {v8, v11, v0}, Lorg/apache/commons/text/translate/NumericEntityEscaper;-><init>(II)V

    .line 63
    new-instance v11, Lorg/apache/commons/text/translate/NumericEntityEscaper;

    const/16 v0, 0x86

    move-object/from16 v26, v8

    const/16 v8, 0x9f

    invoke-direct {v11, v0, v8}, Lorg/apache/commons/text/translate/NumericEntityEscaper;-><init>(II)V

    .line 64
    new-instance v27, Lorg/apache/commons/text/translate/UnicodeUnpairedSurrogateRemover;

    .line 65
    invoke-direct/range {v27 .. v27}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    .line 66
    new-array v8, v0, [Lorg/apache/commons/text/translate/CharSequenceTranslator;

    aput-object v22, v8, v16

    aput-object v23, v8, v18

    aput-object v21, v8, v17

    aput-object v26, v8, v19

    move/from16 v21, v0

    const/4 v0, 0x4

    aput-object v11, v8, v0

    const/4 v11, 0x5

    aput-object v27, v8, v11

    invoke-direct {v15, v8}, Lorg/apache/commons/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/text/translate/CharSequenceTranslator;)V

    sput-object v15, Lorg/apache/commons/text/StringEscapeUtils;->a:Lorg/apache/commons/text/translate/AggregateTranslator;

    .line 67
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 68
    invoke-virtual {v8, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v5, "&#11;"

    invoke-virtual {v8, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v5, "&#12;"

    invoke-virtual {v8, v12, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-virtual {v8, v13, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-virtual {v8, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    new-instance v5, Lorg/apache/commons/text/translate/AggregateTranslator;

    new-instance v7, Lorg/apache/commons/text/translate/LookupTranslator;

    invoke-direct {v7, v9}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    new-instance v12, Lorg/apache/commons/text/translate/LookupTranslator;

    invoke-direct {v12, v10}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    new-instance v10, Lorg/apache/commons/text/translate/LookupTranslator;

    .line 74
    invoke-static {v8}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    invoke-direct {v10, v8}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    .line 75
    new-instance v8, Lorg/apache/commons/text/translate/NumericEntityEscaper;

    const/16 v13, 0x8

    move/from16 v14, v18

    invoke-direct {v8, v14, v13}, Lorg/apache/commons/text/translate/NumericEntityEscaper;-><init>(II)V

    .line 76
    new-instance v14, Lorg/apache/commons/text/translate/NumericEntityEscaper;

    const/16 v15, 0xe

    move/from16 v22, v11

    const/16 v11, 0x1f

    invoke-direct {v14, v15, v11}, Lorg/apache/commons/text/translate/NumericEntityEscaper;-><init>(II)V

    .line 77
    new-instance v11, Lorg/apache/commons/text/translate/NumericEntityEscaper;

    const/16 v15, 0x7f

    move/from16 v20, v0

    const/16 v0, 0x84

    invoke-direct {v11, v15, v0}, Lorg/apache/commons/text/translate/NumericEntityEscaper;-><init>(II)V

    .line 78
    new-instance v0, Lorg/apache/commons/text/translate/NumericEntityEscaper;

    const/16 v13, 0x9f

    const/16 v15, 0x86

    invoke-direct {v0, v15, v13}, Lorg/apache/commons/text/translate/NumericEntityEscaper;-><init>(II)V

    .line 79
    new-instance v13, Lorg/apache/commons/text/translate/UnicodeUnpairedSurrogateRemover;

    .line 80
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    const/16 v15, 0x8

    .line 81
    new-array v15, v15, [Lorg/apache/commons/text/translate/CharSequenceTranslator;

    aput-object v7, v15, v16

    const/16 v18, 0x1

    aput-object v12, v15, v18

    aput-object v10, v15, v17

    aput-object v8, v15, v19

    aput-object v14, v15, v20

    aput-object v11, v15, v22

    aput-object v0, v15, v21

    const/4 v0, 0x7

    aput-object v13, v15, v0

    invoke-direct {v5, v15}, Lorg/apache/commons/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/text/translate/CharSequenceTranslator;)V

    .line 82
    new-instance v0, Lorg/apache/commons/text/translate/AggregateTranslator;

    new-instance v5, Lorg/apache/commons/text/translate/LookupTranslator;

    invoke-direct {v5, v9}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    new-instance v7, Lorg/apache/commons/text/translate/LookupTranslator;

    sget-object v8, Lorg/apache/commons/text/translate/EntityArrays;->a:Ljava/util/Map;

    invoke-direct {v7, v8}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    move/from16 v10, v17

    new-array v11, v10, [Lorg/apache/commons/text/translate/CharSequenceTranslator;

    aput-object v5, v11, v16

    const/16 v18, 0x1

    aput-object v7, v11, v18

    invoke-direct {v0, v11}, Lorg/apache/commons/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/text/translate/CharSequenceTranslator;)V

    .line 83
    new-instance v0, Lorg/apache/commons/text/translate/AggregateTranslator;

    new-instance v5, Lorg/apache/commons/text/translate/LookupTranslator;

    invoke-direct {v5, v9}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    new-instance v7, Lorg/apache/commons/text/translate/LookupTranslator;

    invoke-direct {v7, v8}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    new-instance v8, Lorg/apache/commons/text/translate/LookupTranslator;

    sget-object v9, Lorg/apache/commons/text/translate/EntityArrays;->c:Ljava/util/Map;

    invoke-direct {v8, v9}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    move/from16 v9, v19

    new-array v10, v9, [Lorg/apache/commons/text/translate/CharSequenceTranslator;

    aput-object v5, v10, v16

    const/16 v18, 0x1

    aput-object v7, v10, v18

    const/16 v17, 0x2

    aput-object v8, v10, v17

    invoke-direct {v0, v10}, Lorg/apache/commons/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/apache/commons/text/StringEscapeUtils;->b:Lorg/apache/commons/text/translate/AggregateTranslator;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 85
    const-string v5, "|"

    const-string v7, "\\|"

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v5, "&"

    const-string v7, "\\&"

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v5, ";"

    const-string v7, "\\;"

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v5, "<"

    const-string v7, "\\<"

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v5, ">"

    const-string v7, "\\>"

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v5, "("

    const-string v7, "\\("

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v5, ")"

    const-string v7, "\\)"

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v5, "$"

    const-string v7, "\\$"

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v5, "`"

    const-string v7, "\\`"

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v24

    move-object/from16 v7, v25

    .line 96
    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v8, " "

    const-string v9, "\\ "

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v8, "\t"

    const-string v9, "\\\t"

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v8, "\r\n"

    invoke-virtual {v0, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v8, "\n"

    invoke-virtual {v0, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v8, "*"

    const-string v9, "\\*"

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v8, "?"

    const-string v9, "\\?"

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v8, "["

    const-string v9, "\\["

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v8, "#"

    const-string v9, "\\#"

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v8, "~"

    const-string v9, "\\~"

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v8, "="

    const-string v9, "\\="

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v8, "%"

    const-string v9, "\\%"

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-instance v8, Lorg/apache/commons/text/translate/LookupTranslator;

    .line 109
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {v8, v0}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 111
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    new-instance v1, Lorg/apache/commons/text/translate/AggregateTranslator;

    new-instance v2, Lorg/apache/commons/text/translate/OctalUnescaper;

    .line 116
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v3, Lorg/apache/commons/text/translate/UnicodeUnescaper;

    .line 118
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v4, Lorg/apache/commons/text/translate/LookupTranslator;

    sget-object v5, Lorg/apache/commons/text/translate/EntityArrays;->j:Ljava/util/Map;

    invoke-direct {v4, v5}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    new-instance v5, Lorg/apache/commons/text/translate/LookupTranslator;

    .line 120
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {v5, v0}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    move/from16 v0, v20

    new-array v6, v0, [Lorg/apache/commons/text/translate/CharSequenceTranslator;

    aput-object v2, v6, v16

    const/16 v18, 0x1

    aput-object v3, v6, v18

    const/16 v17, 0x2

    aput-object v4, v6, v17

    const/16 v19, 0x3

    aput-object v5, v6, v19

    invoke-direct {v1, v6}, Lorg/apache/commons/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/text/translate/CharSequenceTranslator;)V

    sput-object v1, Lorg/apache/commons/text/StringEscapeUtils;->c:Lorg/apache/commons/text/translate/AggregateTranslator;

    .line 121
    new-instance v0, Lorg/apache/commons/text/translate/AggregateTranslator;

    new-instance v1, Lorg/apache/commons/text/translate/LookupTranslator;

    sget-object v2, Lorg/apache/commons/text/translate/EntityArrays;->f:Ljava/util/Map;

    invoke-direct {v1, v2}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    new-instance v3, Lorg/apache/commons/text/translate/LookupTranslator;

    sget-object v4, Lorg/apache/commons/text/translate/EntityArrays;->b:Ljava/util/Map;

    invoke-direct {v3, v4}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    new-instance v5, Lorg/apache/commons/text/translate/NumericEntityUnescaper;

    move/from16 v6, v16

    new-array v7, v6, [Lorg/apache/commons/text/translate/NumericEntityUnescaper$OPTION;

    invoke-direct {v5, v7}, Lorg/apache/commons/text/translate/NumericEntityUnescaper;-><init>([Lorg/apache/commons/text/translate/NumericEntityUnescaper$OPTION;)V

    const/4 v9, 0x3

    new-array v7, v9, [Lorg/apache/commons/text/translate/CharSequenceTranslator;

    aput-object v1, v7, v6

    const/16 v18, 0x1

    aput-object v3, v7, v18

    const/16 v17, 0x2

    aput-object v5, v7, v17

    invoke-direct {v0, v7}, Lorg/apache/commons/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/text/translate/CharSequenceTranslator;)V

    .line 122
    new-instance v0, Lorg/apache/commons/text/translate/AggregateTranslator;

    new-instance v1, Lorg/apache/commons/text/translate/LookupTranslator;

    invoke-direct {v1, v2}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    new-instance v3, Lorg/apache/commons/text/translate/LookupTranslator;

    invoke-direct {v3, v4}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    new-instance v4, Lorg/apache/commons/text/translate/LookupTranslator;

    sget-object v5, Lorg/apache/commons/text/translate/EntityArrays;->d:Ljava/util/Map;

    invoke-direct {v4, v5}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    new-instance v5, Lorg/apache/commons/text/translate/NumericEntityUnescaper;

    const/4 v6, 0x0

    new-array v7, v6, [Lorg/apache/commons/text/translate/NumericEntityUnescaper$OPTION;

    invoke-direct {v5, v7}, Lorg/apache/commons/text/translate/NumericEntityUnescaper;-><init>([Lorg/apache/commons/text/translate/NumericEntityUnescaper$OPTION;)V

    const/4 v7, 0x4

    new-array v7, v7, [Lorg/apache/commons/text/translate/CharSequenceTranslator;

    aput-object v1, v7, v6

    const/16 v18, 0x1

    aput-object v3, v7, v18

    const/16 v17, 0x2

    aput-object v4, v7, v17

    const/4 v9, 0x3

    aput-object v5, v7, v9

    invoke-direct {v0, v7}, Lorg/apache/commons/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/text/translate/CharSequenceTranslator;)V

    .line 123
    new-instance v0, Lorg/apache/commons/text/translate/AggregateTranslator;

    new-instance v1, Lorg/apache/commons/text/translate/LookupTranslator;

    invoke-direct {v1, v2}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    new-instance v2, Lorg/apache/commons/text/translate/LookupTranslator;

    sget-object v3, Lorg/apache/commons/text/translate/EntityArrays;->h:Ljava/util/Map;

    invoke-direct {v2, v3}, Lorg/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    new-instance v3, Lorg/apache/commons/text/translate/NumericEntityUnescaper;

    const/4 v6, 0x0

    new-array v4, v6, [Lorg/apache/commons/text/translate/NumericEntityUnescaper$OPTION;

    invoke-direct {v3, v4}, Lorg/apache/commons/text/translate/NumericEntityUnescaper;-><init>([Lorg/apache/commons/text/translate/NumericEntityUnescaper$OPTION;)V

    new-array v4, v9, [Lorg/apache/commons/text/translate/CharSequenceTranslator;

    aput-object v1, v4, v6

    const/16 v18, 0x1

    aput-object v2, v4, v18

    const/16 v17, 0x2

    aput-object v3, v4, v17

    invoke-direct {v0, v4}, Lorg/apache/commons/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/apache/commons/text/StringEscapeUtils;->d:Lorg/apache/commons/text/translate/AggregateTranslator;

    return-void
.end method
