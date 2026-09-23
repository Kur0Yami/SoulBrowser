.class public Lorg/apache/commons/lang3/StringEscapeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/StringEscapeUtils$CsvEscaper;,
        Lorg/apache/commons/lang3/StringEscapeUtils$CsvUnescaper;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final a:Lorg/apache/commons/lang3/text/translate/AggregateTranslator;


# direct methods
.method static constructor <clinit>()V
    .locals 31

    .line 1
    new-instance v0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    const/4 v1, 0x2

    new-array v2, v1, [[Ljava/lang/String;

    const-string v3, "\""

    const-string v4, "\\\""

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v2, v6

    const-string v5, "\\"

    const-string v7, "\\\\"

    filled-new-array {v5, v7}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v2, v9

    invoke-direct {v0, v2}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    new-instance v2, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 2
    sget-object v8, Lorg/apache/commons/lang3/text/translate/EntityArrays;->i:[[Ljava/lang/String;

    invoke-virtual {v8}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[Ljava/lang/String;

    .line 3
    invoke-direct {v2, v10}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    new-array v10, v9, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    aput-object v2, v10, v6

    .line 4
    new-array v2, v1, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 5
    aput-object v0, v2, v6

    .line 6
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    .line 7
    invoke-static {v10, v6, v2, v9, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    invoke-direct {v0, v2}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    .line 9
    new-instance v2, Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;

    .line 10
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 11
    new-array v10, v9, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    aput-object v2, v10, v6

    .line 12
    new-array v2, v1, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 13
    aput-object v0, v2, v6

    .line 14
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    .line 15
    invoke-static {v10, v6, v2, v9, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    invoke-direct {v0, v2}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    .line 17
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    new-instance v2, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    const/4 v10, 0x4

    new-array v11, v10, [[Ljava/lang/String;

    const-string v12, "\'"

    const-string v13, "\\\'"

    filled-new-array {v12, v13}, [Ljava/lang/String;

    move-result-object v14

    aput-object v14, v11, v6

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v14

    aput-object v14, v11, v9

    filled-new-array {v5, v7}, [Ljava/lang/String;

    move-result-object v14

    aput-object v14, v11, v1

    const-string v14, "/"

    const-string v15, "\\/"

    filled-new-array {v14, v15}, [Ljava/lang/String;

    move-result-object v16

    move/from16 v17, v6

    const/4 v6, 0x3

    aput-object v16, v11, v6

    invoke-direct {v2, v11}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    new-instance v11, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 18
    invoke-virtual {v8}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v16

    move/from16 v18, v10

    move-object/from16 v10, v16

    check-cast v10, [[Ljava/lang/String;

    .line 19
    invoke-direct {v11, v10}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    .line 20
    new-instance v10, Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;

    .line 21
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    move/from16 v16, v9

    .line 22
    new-array v9, v6, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    aput-object v2, v9, v17

    aput-object v11, v9, v16

    aput-object v10, v9, v1

    invoke-direct {v0, v9}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    .line 23
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    new-instance v2, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    new-array v9, v6, [[Ljava/lang/String;

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v17

    filled-new-array {v5, v7}, [Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v16

    filled-new-array {v14, v15}, [Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v1

    invoke-direct {v2, v9}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    new-instance v9, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 24
    invoke-virtual {v8}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[Ljava/lang/String;

    .line 25
    invoke-direct {v9, v8}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    .line 26
    new-instance v8, Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;

    .line 27
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 28
    new-array v10, v6, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    aput-object v2, v10, v17

    aput-object v9, v10, v16

    aput-object v8, v10, v1

    invoke-direct {v0, v10}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->a:Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    .line 29
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    new-instance v2, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 30
    sget-object v8, Lorg/apache/commons/lang3/text/translate/EntityArrays;->e:[[Ljava/lang/String;

    invoke-virtual {v8}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[Ljava/lang/String;

    .line 31
    invoke-direct {v2, v9}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    new-instance v9, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 32
    sget-object v10, Lorg/apache/commons/lang3/text/translate/EntityArrays;->g:[[Ljava/lang/String;

    invoke-virtual {v10}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[Ljava/lang/String;

    .line 33
    invoke-direct {v9, v11}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    new-array v11, v1, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    aput-object v2, v11, v17

    aput-object v9, v11, v16

    invoke-direct {v0, v11}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    .line 34
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    new-instance v2, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 35
    invoke-virtual {v8}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[Ljava/lang/String;

    .line 36
    invoke-direct {v2, v9}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    new-instance v9, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 37
    invoke-virtual {v10}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[Ljava/lang/String;

    .line 38
    invoke-direct {v9, v11}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    new-instance v11, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    const/16 v14, 0x1f

    new-array v15, v14, [[Ljava/lang/String;

    move/from16 v19, v6

    const-string v6, "\u0000"

    move/from16 v20, v1

    const-string v1, ""

    filled-new-array {v6, v1}, [Ljava/lang/String;

    move-result-object v21

    aput-object v21, v15, v17

    const-string v14, "\u0001"

    filled-new-array {v14, v1}, [Ljava/lang/String;

    move-result-object v14

    aput-object v14, v15, v16

    const-string v14, "\u0002"

    filled-new-array {v14, v1}, [Ljava/lang/String;

    move-result-object v14

    aput-object v14, v15, v20

    const-string v14, "\u0003"

    filled-new-array {v14, v1}, [Ljava/lang/String;

    move-result-object v14

    aput-object v14, v15, v19

    const-string v14, "\u0004"

    filled-new-array {v14, v1}, [Ljava/lang/String;

    move-result-object v14

    aput-object v14, v15, v18

    const-string v14, "\u0005"

    filled-new-array {v14, v1}, [Ljava/lang/String;

    move-result-object v14

    move-object/from16 v22, v2

    const/4 v2, 0x5

    aput-object v14, v15, v2

    const-string v14, "\u0006"

    filled-new-array {v14, v1}, [Ljava/lang/String;

    move-result-object v14

    move/from16 v23, v2

    const/4 v2, 0x6

    aput-object v14, v15, v2

    const-string v14, "\u0007"

    filled-new-array {v14, v1}, [Ljava/lang/String;

    move-result-object v14

    const/16 v24, 0x7

    aput-object v14, v15, v24

    const-string v14, "\u0008"

    filled-new-array {v14, v1}, [Ljava/lang/String;

    move-result-object v14

    const/16 v2, 0x8

    aput-object v14, v15, v2

    const-string v14, "\u000b"

    filled-new-array {v14, v1}, [Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x9

    aput-object v26, v15, v27

    const-string v2, "\u000c"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0xa

    aput-object v27, v15, v28

    move-object/from16 v27, v8

    const-string v8, "\u000e"

    filled-new-array {v8, v1}, [Ljava/lang/String;

    move-result-object v8

    const/16 v28, 0xb

    aput-object v8, v15, v28

    const-string v8, "\u000f"

    filled-new-array {v8, v1}, [Ljava/lang/String;

    move-result-object v8

    const/16 v28, 0xc

    aput-object v8, v15, v28

    const-string v8, "\u0010"

    filled-new-array {v8, v1}, [Ljava/lang/String;

    move-result-object v8

    const/16 v28, 0xd

    aput-object v8, v15, v28

    const-string v8, "\u0011"

    filled-new-array {v8, v1}, [Ljava/lang/String;

    move-result-object v8

    const/16 v28, 0xe

    aput-object v8, v15, v28

    const-string v8, "\u0012"

    filled-new-array {v8, v1}, [Ljava/lang/String;

    move-result-object v8

    const/16 v28, 0xf

    aput-object v8, v15, v28

    const-string v8, "\u0013"

    filled-new-array {v8, v1}, [Ljava/lang/String;

    move-result-object v8

    const/16 v28, 0x10

    aput-object v8, v15, v28

    const-string v8, "\u0014"

    filled-new-array {v8, v1}, [Ljava/lang/String;

    move-result-object v8

    const/16 v28, 0x11

    aput-object v8, v15, v28

    const-string v8, "\u0015"

    filled-new-array {v8, v1}, [Ljava/lang/String;

    move-result-object v8

    const/16 v28, 0x12

    aput-object v8, v15, v28

    const-string v8, "\u0016"

    filled-new-array {v8, v1}, [Ljava/lang/String;

    move-result-object v8

    const/16 v28, 0x13

    aput-object v8, v15, v28

    const-string v8, "\u0017"

    filled-new-array {v8, v1}, [Ljava/lang/String;

    move-result-object v8

    const/16 v28, 0x14

    aput-object v8, v15, v28

    const-string v8, "\u0018"

    filled-new-array {v8, v1}, [Ljava/lang/String;

    move-result-object v8

    const/16 v28, 0x15

    aput-object v8, v15, v28

    const-string v8, "\u0019"

    filled-new-array {v8, v1}, [Ljava/lang/String;

    move-result-object v8

    const/16 v28, 0x16

    aput-object v8, v15, v28

    const-string v8, "\u001a"

    filled-new-array {v8, v1}, [Ljava/lang/String;

    move-result-object v8

    const/16 v28, 0x17

    aput-object v8, v15, v28

    const-string v8, "\u001b"

    filled-new-array {v8, v1}, [Ljava/lang/String;

    move-result-object v8

    const/16 v28, 0x18

    aput-object v8, v15, v28

    const-string v8, "\u001c"

    filled-new-array {v8, v1}, [Ljava/lang/String;

    move-result-object v8

    const/16 v28, 0x19

    aput-object v8, v15, v28

    const-string v8, "\u001d"

    filled-new-array {v8, v1}, [Ljava/lang/String;

    move-result-object v8

    const/16 v28, 0x1a

    aput-object v8, v15, v28

    const-string v8, "\u001e"

    filled-new-array {v8, v1}, [Ljava/lang/String;

    move-result-object v8

    const/16 v28, 0x1b

    aput-object v8, v15, v28

    const-string v8, "\u001f"

    filled-new-array {v8, v1}, [Ljava/lang/String;

    move-result-object v8

    const/16 v28, 0x1c

    aput-object v8, v15, v28

    const-string v8, "\ufffe"

    filled-new-array {v8, v1}, [Ljava/lang/String;

    move-result-object v8

    const/16 v28, 0x1d

    aput-object v8, v15, v28

    const-string v8, "\uffff"

    filled-new-array {v8, v1}, [Ljava/lang/String;

    move-result-object v8

    const/16 v28, 0x1e

    aput-object v8, v15, v28

    invoke-direct {v11, v15}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    .line 39
    new-instance v8, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;

    const/16 v15, 0x7f

    move-object/from16 v28, v9

    const/16 v9, 0x84

    invoke-direct {v8, v15, v9}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;-><init>(II)V

    .line 40
    new-instance v9, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;

    const/16 v15, 0x86

    move-object/from16 v29, v8

    const/16 v8, 0x9f

    invoke-direct {v9, v15, v8}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;-><init>(II)V

    .line 41
    new-instance v30, Lorg/apache/commons/lang3/text/translate/UnicodeUnpairedSurrogateRemover;

    .line 42
    invoke-direct/range {v30 .. v30}, Ljava/lang/Object;-><init>()V

    const/4 v8, 0x6

    .line 43
    new-array v15, v8, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    aput-object v22, v15, v17

    aput-object v28, v15, v16

    aput-object v11, v15, v20

    aput-object v29, v15, v19

    aput-object v9, v15, v18

    aput-object v30, v15, v23

    invoke-direct {v0, v15}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    .line 44
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    new-instance v8, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 45
    invoke-virtual/range {v27 .. v27}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[Ljava/lang/String;

    .line 46
    invoke-direct {v8, v9}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    new-instance v9, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 47
    invoke-virtual {v10}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[Ljava/lang/String;

    .line 48
    invoke-direct {v9, v10}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    new-instance v10, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    move/from16 v11, v23

    new-array v15, v11, [[Ljava/lang/String;

    filled-new-array {v6, v1}, [Ljava/lang/String;

    move-result-object v6

    aput-object v6, v15, v17

    const-string v6, "&#11;"

    filled-new-array {v14, v6}, [Ljava/lang/String;

    move-result-object v6

    aput-object v6, v15, v16

    const-string v6, "&#12;"

    filled-new-array {v2, v6}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v15, v20

    const-string v2, "\ufffe"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v15, v19

    const-string v2, "\uffff"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v15, v18

    invoke-direct {v10, v15}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    .line 49
    new-instance v2, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;

    move/from16 v6, v16

    const/16 v11, 0x8

    invoke-direct {v2, v6, v11}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;-><init>(II)V

    .line 50
    new-instance v6, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;

    const/16 v14, 0xe

    const/16 v15, 0x1f

    invoke-direct {v6, v14, v15}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;-><init>(II)V

    .line 51
    new-instance v14, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;

    const/16 v11, 0x84

    const/16 v15, 0x7f

    invoke-direct {v14, v15, v11}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;-><init>(II)V

    .line 52
    new-instance v11, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;

    move-object/from16 v21, v2

    const/16 v2, 0x9f

    const/16 v15, 0x86

    invoke-direct {v11, v15, v2}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;-><init>(II)V

    .line 53
    new-instance v2, Lorg/apache/commons/lang3/text/translate/UnicodeUnpairedSurrogateRemover;

    .line 54
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const/16 v15, 0x8

    .line 55
    new-array v15, v15, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    aput-object v8, v15, v17

    const/16 v16, 0x1

    aput-object v9, v15, v16

    aput-object v10, v15, v20

    aput-object v21, v15, v19

    aput-object v6, v15, v18

    const/16 v23, 0x5

    aput-object v14, v15, v23

    const/16 v25, 0x6

    aput-object v11, v15, v25

    aput-object v2, v15, v24

    invoke-direct {v0, v15}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    .line 56
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    new-instance v2, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 57
    invoke-virtual/range {v27 .. v27}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[Ljava/lang/String;

    .line 58
    invoke-direct {v2, v6}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    new-instance v6, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 59
    sget-object v8, Lorg/apache/commons/lang3/text/translate/EntityArrays;->a:[[Ljava/lang/String;

    invoke-virtual {v8}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[Ljava/lang/String;

    .line 60
    invoke-direct {v6, v9}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    move/from16 v9, v20

    new-array v10, v9, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    aput-object v2, v10, v17

    const/16 v16, 0x1

    aput-object v6, v10, v16

    invoke-direct {v0, v10}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    .line 61
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    new-instance v2, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 62
    invoke-virtual/range {v27 .. v27}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[Ljava/lang/String;

    .line 63
    invoke-direct {v2, v6}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    new-instance v6, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 64
    invoke-virtual {v8}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[Ljava/lang/String;

    .line 65
    invoke-direct {v6, v8}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    new-instance v8, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 66
    sget-object v9, Lorg/apache/commons/lang3/text/translate/EntityArrays;->c:[[Ljava/lang/String;

    invoke-virtual {v9}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[Ljava/lang/String;

    .line 67
    invoke-direct {v8, v9}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    move/from16 v9, v19

    new-array v10, v9, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    aput-object v2, v10, v17

    const/16 v16, 0x1

    aput-object v6, v10, v16

    const/16 v20, 0x2

    aput-object v8, v10, v20

    invoke-direct {v0, v10}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    .line 68
    new-instance v0, Lorg/apache/commons/lang3/StringEscapeUtils$CsvEscaper;

    .line 69
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    new-instance v2, Lorg/apache/commons/lang3/text/translate/OctalUnescaper;

    .line 70
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v6, Lorg/apache/commons/lang3/text/translate/UnicodeUnescaper;

    .line 72
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v8, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 74
    sget-object v9, Lorg/apache/commons/lang3/text/translate/EntityArrays;->j:[[Ljava/lang/String;

    invoke-virtual {v9}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[Ljava/lang/String;

    .line 75
    invoke-direct {v8, v9}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    new-instance v9, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    move/from16 v10, v18

    new-array v11, v10, [[Ljava/lang/String;

    filled-new-array {v7, v5}, [Ljava/lang/String;

    move-result-object v7

    aput-object v7, v11, v17

    filled-new-array {v4, v3}, [Ljava/lang/String;

    move-result-object v3

    const/16 v16, 0x1

    aput-object v3, v11, v16

    filled-new-array {v13, v12}, [Ljava/lang/String;

    move-result-object v3

    const/16 v20, 0x2

    aput-object v3, v11, v20

    filled-new-array {v5, v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v19, 0x3

    aput-object v1, v11, v19

    invoke-direct {v9, v11}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    new-array v1, v10, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    aput-object v2, v1, v17

    aput-object v6, v1, v16

    aput-object v8, v1, v20

    aput-object v9, v1, v19

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    .line 76
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    new-instance v1, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 77
    sget-object v2, Lorg/apache/commons/lang3/text/translate/EntityArrays;->f:[[Ljava/lang/String;

    invoke-virtual {v2}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Ljava/lang/String;

    .line 78
    invoke-direct {v1, v3}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    new-instance v3, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 79
    sget-object v4, Lorg/apache/commons/lang3/text/translate/EntityArrays;->b:[[Ljava/lang/String;

    invoke-virtual {v4}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Ljava/lang/String;

    .line 80
    invoke-direct {v3, v5}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    new-instance v5, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;

    move/from16 v6, v17

    new-array v7, v6, [Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    invoke-direct {v5, v7}, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;-><init>([Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;)V

    const/4 v9, 0x3

    new-array v7, v9, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    aput-object v1, v7, v6

    const/16 v16, 0x1

    aput-object v3, v7, v16

    const/16 v20, 0x2

    aput-object v5, v7, v20

    invoke-direct {v0, v7}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    .line 81
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    new-instance v1, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 82
    invoke-virtual {v2}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Ljava/lang/String;

    .line 83
    invoke-direct {v1, v3}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    new-instance v3, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 84
    invoke-virtual {v4}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Ljava/lang/String;

    .line 85
    invoke-direct {v3, v4}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    new-instance v4, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 86
    sget-object v5, Lorg/apache/commons/lang3/text/translate/EntityArrays;->d:[[Ljava/lang/String;

    invoke-virtual {v5}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Ljava/lang/String;

    .line 87
    invoke-direct {v4, v5}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    new-instance v5, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;

    const/4 v6, 0x0

    new-array v7, v6, [Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    invoke-direct {v5, v7}, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;-><init>([Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;)V

    const/4 v10, 0x4

    new-array v7, v10, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    aput-object v1, v7, v6

    const/16 v16, 0x1

    aput-object v3, v7, v16

    const/16 v20, 0x2

    aput-object v4, v7, v20

    const/16 v19, 0x3

    aput-object v5, v7, v19

    invoke-direct {v0, v7}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    .line 88
    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    new-instance v1, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 89
    invoke-virtual {v2}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Ljava/lang/String;

    .line 90
    invoke-direct {v1, v2}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    new-instance v2, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    .line 91
    sget-object v3, Lorg/apache/commons/lang3/text/translate/EntityArrays;->h:[[Ljava/lang/String;

    invoke-virtual {v3}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Ljava/lang/String;

    .line 92
    invoke-direct {v2, v3}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    new-instance v3, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;

    const/4 v6, 0x0

    new-array v4, v6, [Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    invoke-direct {v3, v4}, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;-><init>([Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;)V

    const/4 v9, 0x3

    new-array v4, v9, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    aput-object v1, v4, v6

    const/16 v16, 0x1

    aput-object v2, v4, v16

    const/16 v20, 0x2

    aput-object v3, v4, v20

    invoke-direct {v0, v4}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    .line 93
    new-instance v0, Lorg/apache/commons/lang3/StringEscapeUtils$CsvUnescaper;

    return-void
.end method

.method public static final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    sget-object v0, Lorg/apache/commons/lang3/StringEscapeUtils;->a:Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    return-object p0

    .line 10
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    mul-int/lit8 v2, v2, 0x2

    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/io/StringWriter;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const/4 v3, 0x0

    .line 26
    move v4, v3

    .line 27
    :cond_1
    :goto_0
    if-ge v4, v2, :cond_4

    .line 28
    .line 29
    invoke-virtual {v0, p0, v4, v1}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;->a(Ljava/lang/CharSequence;ILjava/io/StringWriter;)I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-nez v5, :cond_3

    .line 34
    .line 35
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    invoke-virtual {v1, v5}, Ljava/io/Writer;->write(I)V

    .line 40
    .line 41
    .line 42
    add-int/lit8 v6, v4, 0x1

    .line 43
    .line 44
    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_2

    .line 49
    .line 50
    if-ge v6, v2, :cond_2

    .line 51
    .line 52
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    if-eqz v7, :cond_2

    .line 61
    .line 62
    invoke-virtual {v1, v5}, Ljava/io/Writer;->write(I)V

    .line 63
    .line 64
    .line 65
    add-int/lit8 v4, v4, 0x2

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    move v4, v6

    .line 69
    goto :goto_0

    .line 70
    :cond_3
    move v6, v3

    .line 71
    :goto_1
    if-ge v6, v5, :cond_1

    .line 72
    .line 73
    invoke-static {p0, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    add-int/2addr v4, v7

    .line 82
    add-int/lit8 v6, v6, 0x1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_4
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    return-object p0

    .line 90
    :catch_0
    move-exception p0

    .line 91
    new-instance v0, Ljava/io/UncheckedIOException;

    .line 92
    .line 93
    invoke-direct {v0, p0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    .line 94
    .line 95
    .line 96
    throw v0
.end method
