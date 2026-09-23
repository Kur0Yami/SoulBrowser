.class public Lorg/apache/commons/lang3/SystemUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Lorg/apache/commons/lang3/JavaVersion;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 30

    .line 1
    const-string v0, "file.encoding"

    sget-object v1, Lorg/apache/commons/lang3/function/Suppliers;->a:Lorg/apache/commons/lang3/builder/a;

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/SystemProperties;->a(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 2
    const-string v0, "file.separator"

    .line 3
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/SystemProperties;->a(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 4
    const-string v0, "java.awt.fonts"

    .line 5
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/SystemProperties;->a(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 6
    const-string v0, "java.awt.graphicsenv"

    .line 7
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/SystemProperties;->a(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 8
    const-string v0, "java.awt.headless"

    .line 9
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/SystemProperties;->a(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 10
    const-string v0, "java.awt.printerjob"

    .line 11
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/SystemProperties;->a(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 12
    const-string v0, "java.class.path"

    .line 13
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/SystemProperties;->a(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 14
    const-string v0, "java.class.version"

    .line 15
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/SystemProperties;->a(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 16
    const-string v0, "java.compiler"

    .line 17
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/SystemProperties;->a(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 18
    const-string v0, "java.endorsed.dirs"

    .line 19
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/SystemProperties;->a(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 20
    const-string v0, "java.ext.dirs"

    .line 21
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/SystemProperties;->a(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 22
    const-string v0, "java.home"

    .line 23
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/SystemProperties;->a(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 24
    const-string v0, "java.io.tmpdir"

    .line 25
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/SystemProperties;->a(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 26
    const-string v0, "java.library.path"

    .line 27
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/SystemProperties;->a(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 28
    const-string v0, "java.runtime.name"

    .line 29
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/SystemProperties;->a(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 30
    const-string v0, "java.runtime.version"

    .line 31
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/SystemProperties;->a(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 32
    const-string v0, "java.specification.name"

    .line 33
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/SystemProperties;->a(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 34
    const-string v0, "java.specification.vendor"

    .line 35
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/SystemProperties;->a(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 36
    const-string v0, "java.specification.version"

    .line 37
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/SystemProperties;->a(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    .line 38
    sput-object v0, Lorg/apache/commons/lang3/SystemUtils;->a:Ljava/lang/String;

    .line 39
    sget-object v2, Lorg/apache/commons/lang3/JavaVersion;->G:Lorg/apache/commons/lang3/JavaVersion;

    const-string v3, "1.2"

    const-string v4, "1.1"

    const-string v5, "25"

    const-string v6, "24"

    const-string v7, "23"

    const-string v8, "22"

    const-string v9, "21"

    const-string v10, "20"

    const-string v11, "19"

    const-string v12, "18"

    const-string v13, "17"

    const-string v15, "16"

    const-string v14, "10"

    move-object/from16 v16, v2

    const-string v2, "15"

    move-object/from16 v17, v1

    const-string v1, "14"

    move-object/from16 v18, v14

    const-string v14, "13"

    move-object/from16 v19, v14

    const-string v14, "12"

    move-object/from16 v20, v14

    const-string v14, "11"

    move-object/from16 v21, v14

    const-string v14, "9"

    const/16 v22, 0x0

    if-nez v0, :cond_0

    move-object/from16 v26, v2

    move-object/from16 v25, v3

    move-object/from16 v23, v14

    move-object/from16 v14, v19

    move-object/from16 v2, v22

    move-object/from16 v19, v1

    goto/16 :goto_8

    .line 40
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v23

    const/16 v24, 0x1

    const/16 v25, -0x1

    sparse-switch v23, :sswitch_data_0

    move-object/from16 v29, v19

    move-object/from16 v19, v1

    move-object v1, v14

    move-object/from16 v14, v29

    goto/16 :goto_6

    :sswitch_0
    move-object/from16 v23, v14

    const-string v14, "1.8"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v25, 0x19

    goto/16 :goto_1

    :sswitch_1
    move-object/from16 v23, v14

    const-string v14, "1.7"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v25, 0x18

    goto/16 :goto_1

    :sswitch_2
    move-object/from16 v23, v14

    const-string v14, "1.6"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v25, 0x17

    goto/16 :goto_1

    :sswitch_3
    move-object/from16 v23, v14

    const-string v14, "1.5"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v25, 0x16

    goto/16 :goto_1

    :sswitch_4
    move-object/from16 v23, v14

    const-string v14, "1.4"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v25, 0x15

    goto/16 :goto_1

    :sswitch_5
    move-object/from16 v23, v14

    const-string v14, "1.3"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v25, 0x14

    goto/16 :goto_1

    :sswitch_6
    move-object/from16 v23, v14

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v25, 0x13

    goto/16 :goto_1

    :sswitch_7
    move-object/from16 v23, v14

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v25, 0x12

    goto/16 :goto_1

    :sswitch_8
    move-object/from16 v23, v14

    const-string v14, "0.9"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v25, 0x11

    goto/16 :goto_1

    :sswitch_9
    move-object/from16 v23, v14

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v25, 0x10

    goto/16 :goto_1

    :sswitch_a
    move-object/from16 v23, v14

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v25, 0xf

    goto/16 :goto_1

    :sswitch_b
    move-object/from16 v23, v14

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v25, 0xe

    goto/16 :goto_1

    :sswitch_c
    move-object/from16 v23, v14

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v25, 0xd

    goto/16 :goto_1

    :sswitch_d
    move-object/from16 v23, v14

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v25, 0xc

    goto/16 :goto_1

    :sswitch_e
    move-object/from16 v23, v14

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_f

    goto :goto_0

    :cond_f
    const/16 v25, 0xb

    goto :goto_1

    :sswitch_f
    move-object/from16 v23, v14

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_10

    goto :goto_0

    :cond_10
    const/16 v25, 0xa

    goto :goto_1

    :sswitch_10
    move-object/from16 v23, v14

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_11

    goto :goto_0

    :cond_11
    const/16 v25, 0x9

    goto :goto_1

    :sswitch_11
    move-object/from16 v23, v14

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_12

    goto :goto_0

    :cond_12
    const/16 v25, 0x8

    goto :goto_1

    :sswitch_12
    move-object/from16 v23, v14

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_13

    goto :goto_0

    :cond_13
    move-object/from16 v14, v19

    const/16 v25, 0x7

    goto :goto_2

    :sswitch_13
    move-object/from16 v23, v14

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_14

    goto :goto_0

    :cond_14
    const/16 v25, 0x6

    goto :goto_1

    :sswitch_14
    move-object/from16 v23, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_15

    :goto_0
    goto :goto_1

    :cond_15
    const/16 v25, 0x5

    :goto_1
    move-object/from16 v14, v19

    goto :goto_2

    :sswitch_15
    move-object/from16 v23, v14

    move-object/from16 v14, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_16

    goto :goto_2

    :cond_16
    const/16 v25, 0x4

    :goto_2
    move-object/from16 v19, v1

    goto :goto_5

    :sswitch_16
    move-object/from16 v23, v14

    move-object/from16 v14, v19

    move-object/from16 v19, v1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_17

    goto :goto_3

    :cond_17
    const/16 v25, 0x3

    :goto_3
    move-object/from16 v20, v1

    goto :goto_5

    :sswitch_17
    move-object/from16 v23, v14

    move-object/from16 v14, v19

    move-object/from16 v19, v1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_18

    goto :goto_4

    :cond_18
    const/16 v25, 0x2

    :goto_4
    move-object/from16 v21, v1

    goto :goto_5

    :sswitch_18
    move-object/from16 v23, v14

    move-object/from16 v14, v19

    move-object/from16 v19, v1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_19

    move-object/from16 v18, v1

    :goto_5
    move-object/from16 v1, v23

    goto :goto_6

    :cond_19
    move-object/from16 v18, v1

    move-object/from16 v1, v23

    move/from16 v25, v24

    goto :goto_6

    :sswitch_19
    move-object/from16 v29, v19

    move-object/from16 v19, v1

    move-object v1, v14

    move-object/from16 v14, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_1a

    goto :goto_6

    :cond_1a
    const/16 v25, 0x0

    :goto_6
    packed-switch v25, :pswitch_data_0

    move-object/from16 v23, v1

    .line 41
    invoke-static {v0}, Lorg/apache/commons/lang3/JavaVersion;->a(Ljava/lang/String;)F

    move-result v1

    move-object/from16 v26, v2

    move-object/from16 v25, v3

    float-to-double v2, v1

    const-wide/high16 v27, 0x3ff0000000000000L    # 1.0

    sub-double v2, v2, v27

    cmpg-double v2, v2, v27

    if-gez v2, :cond_1b

    const/16 v1, 0x2e

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 43
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    .line 44
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const v1, 0x3f666666    # 0.9f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1c

    :goto_7
    move-object/from16 v2, v16

    goto/16 :goto_8

    :cond_1b
    const/high16 v0, 0x41200000    # 10.0f

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1c

    goto :goto_7

    :cond_1c
    move-object/from16 v2, v22

    goto/16 :goto_8

    :pswitch_0
    move-object/from16 v23, v1

    move-object/from16 v26, v2

    move-object/from16 v25, v3

    .line 45
    sget-object v2, Lorg/apache/commons/lang3/JavaVersion;->o:Lorg/apache/commons/lang3/JavaVersion;

    goto/16 :goto_8

    :pswitch_1
    move-object/from16 v23, v1

    move-object/from16 v26, v2

    move-object/from16 v25, v3

    .line 46
    sget-object v2, Lorg/apache/commons/lang3/JavaVersion;->n:Lorg/apache/commons/lang3/JavaVersion;

    goto/16 :goto_8

    :pswitch_2
    move-object/from16 v23, v1

    move-object/from16 v26, v2

    move-object/from16 v25, v3

    .line 47
    sget-object v2, Lorg/apache/commons/lang3/JavaVersion;->m:Lorg/apache/commons/lang3/JavaVersion;

    goto/16 :goto_8

    :pswitch_3
    move-object/from16 v23, v1

    move-object/from16 v26, v2

    move-object/from16 v25, v3

    .line 48
    sget-object v2, Lorg/apache/commons/lang3/JavaVersion;->l:Lorg/apache/commons/lang3/JavaVersion;

    goto/16 :goto_8

    :pswitch_4
    move-object/from16 v23, v1

    move-object/from16 v26, v2

    move-object/from16 v25, v3

    .line 49
    sget-object v2, Lorg/apache/commons/lang3/JavaVersion;->k:Lorg/apache/commons/lang3/JavaVersion;

    goto/16 :goto_8

    :pswitch_5
    move-object/from16 v23, v1

    move-object/from16 v26, v2

    move-object/from16 v25, v3

    .line 50
    sget-object v2, Lorg/apache/commons/lang3/JavaVersion;->j:Lorg/apache/commons/lang3/JavaVersion;

    goto/16 :goto_8

    :pswitch_6
    move-object/from16 v23, v1

    move-object/from16 v26, v2

    move-object/from16 v25, v3

    .line 51
    sget-object v2, Lorg/apache/commons/lang3/JavaVersion;->i:Lorg/apache/commons/lang3/JavaVersion;

    goto/16 :goto_8

    :pswitch_7
    move-object/from16 v23, v1

    move-object/from16 v26, v2

    move-object/from16 v25, v3

    .line 52
    sget-object v2, Lorg/apache/commons/lang3/JavaVersion;->h:Lorg/apache/commons/lang3/JavaVersion;

    goto/16 :goto_8

    :pswitch_8
    move-object/from16 v23, v1

    move-object/from16 v26, v2

    move-object/from16 v25, v3

    .line 53
    sget-object v2, Lorg/apache/commons/lang3/JavaVersion;->g:Lorg/apache/commons/lang3/JavaVersion;

    goto/16 :goto_8

    :pswitch_9
    move-object/from16 v23, v1

    move-object/from16 v26, v2

    move-object/from16 v25, v3

    .line 54
    sget-object v2, Lorg/apache/commons/lang3/JavaVersion;->F:Lorg/apache/commons/lang3/JavaVersion;

    goto/16 :goto_8

    :pswitch_a
    move-object/from16 v23, v1

    move-object/from16 v26, v2

    move-object/from16 v25, v3

    .line 55
    sget-object v2, Lorg/apache/commons/lang3/JavaVersion;->E:Lorg/apache/commons/lang3/JavaVersion;

    goto/16 :goto_8

    :pswitch_b
    move-object/from16 v23, v1

    move-object/from16 v26, v2

    move-object/from16 v25, v3

    .line 56
    sget-object v2, Lorg/apache/commons/lang3/JavaVersion;->D:Lorg/apache/commons/lang3/JavaVersion;

    goto/16 :goto_8

    :pswitch_c
    move-object/from16 v23, v1

    move-object/from16 v26, v2

    move-object/from16 v25, v3

    .line 57
    sget-object v2, Lorg/apache/commons/lang3/JavaVersion;->C:Lorg/apache/commons/lang3/JavaVersion;

    goto/16 :goto_8

    :pswitch_d
    move-object/from16 v23, v1

    move-object/from16 v26, v2

    move-object/from16 v25, v3

    .line 58
    sget-object v2, Lorg/apache/commons/lang3/JavaVersion;->B:Lorg/apache/commons/lang3/JavaVersion;

    goto/16 :goto_8

    :pswitch_e
    move-object/from16 v23, v1

    move-object/from16 v26, v2

    move-object/from16 v25, v3

    .line 59
    sget-object v2, Lorg/apache/commons/lang3/JavaVersion;->A:Lorg/apache/commons/lang3/JavaVersion;

    goto/16 :goto_8

    :pswitch_f
    move-object/from16 v23, v1

    move-object/from16 v26, v2

    move-object/from16 v25, v3

    .line 60
    sget-object v2, Lorg/apache/commons/lang3/JavaVersion;->z:Lorg/apache/commons/lang3/JavaVersion;

    goto/16 :goto_8

    :pswitch_10
    move-object/from16 v23, v1

    move-object/from16 v26, v2

    move-object/from16 v25, v3

    .line 61
    sget-object v2, Lorg/apache/commons/lang3/JavaVersion;->y:Lorg/apache/commons/lang3/JavaVersion;

    goto :goto_8

    :pswitch_11
    move-object/from16 v23, v1

    move-object/from16 v26, v2

    move-object/from16 v25, v3

    .line 62
    sget-object v2, Lorg/apache/commons/lang3/JavaVersion;->x:Lorg/apache/commons/lang3/JavaVersion;

    goto :goto_8

    :pswitch_12
    move-object/from16 v23, v1

    move-object/from16 v26, v2

    move-object/from16 v25, v3

    .line 63
    sget-object v2, Lorg/apache/commons/lang3/JavaVersion;->w:Lorg/apache/commons/lang3/JavaVersion;

    goto :goto_8

    :pswitch_13
    move-object/from16 v23, v1

    move-object/from16 v26, v2

    move-object/from16 v25, v3

    .line 64
    sget-object v2, Lorg/apache/commons/lang3/JavaVersion;->v:Lorg/apache/commons/lang3/JavaVersion;

    goto :goto_8

    :pswitch_14
    move-object/from16 v23, v1

    move-object/from16 v26, v2

    move-object/from16 v25, v3

    .line 65
    sget-object v2, Lorg/apache/commons/lang3/JavaVersion;->u:Lorg/apache/commons/lang3/JavaVersion;

    goto :goto_8

    :pswitch_15
    move-object/from16 v23, v1

    move-object/from16 v26, v2

    move-object/from16 v25, v3

    .line 66
    sget-object v2, Lorg/apache/commons/lang3/JavaVersion;->t:Lorg/apache/commons/lang3/JavaVersion;

    goto :goto_8

    :pswitch_16
    move-object/from16 v23, v1

    move-object/from16 v26, v2

    move-object/from16 v25, v3

    .line 67
    sget-object v2, Lorg/apache/commons/lang3/JavaVersion;->s:Lorg/apache/commons/lang3/JavaVersion;

    goto :goto_8

    :pswitch_17
    move-object/from16 v23, v1

    move-object/from16 v26, v2

    move-object/from16 v25, v3

    .line 68
    sget-object v2, Lorg/apache/commons/lang3/JavaVersion;->r:Lorg/apache/commons/lang3/JavaVersion;

    goto :goto_8

    :pswitch_18
    move-object/from16 v23, v1

    move-object/from16 v26, v2

    move-object/from16 v25, v3

    .line 69
    sget-object v2, Lorg/apache/commons/lang3/JavaVersion;->q:Lorg/apache/commons/lang3/JavaVersion;

    goto :goto_8

    :pswitch_19
    move-object/from16 v23, v1

    move-object/from16 v26, v2

    move-object/from16 v25, v3

    .line 70
    sget-object v2, Lorg/apache/commons/lang3/JavaVersion;->p:Lorg/apache/commons/lang3/JavaVersion;

    .line 71
    :goto_8
    sput-object v2, Lorg/apache/commons/lang3/SystemUtils;->b:Lorg/apache/commons/lang3/JavaVersion;

    .line 72
    const-string v0, "java.util.prefs.PreferencesFactory"

    move-object/from16 v1, v17

    .line 73
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/SystemProperties;->a(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 74
    const-string v0, "java.vendor"

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/SystemProperties;->a(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 75
    const-string v2, "java.vendor.url"

    .line 76
    invoke-static {v2, v1}, Lorg/apache/commons/lang3/SystemProperties;->a(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 77
    const-string v2, "java.version"

    .line 78
    invoke-static {v2, v1}, Lorg/apache/commons/lang3/SystemProperties;->a(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 79
    const-string v2, "java.vm.info"

    .line 80
    invoke-static {v2, v1}, Lorg/apache/commons/lang3/SystemProperties;->a(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 81
    const-string v2, "java.vm.name"

    .line 82
    invoke-static {v2, v1}, Lorg/apache/commons/lang3/SystemProperties;->a(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 83
    const-string v2, "java.vm.specification.name"

    .line 84
    invoke-static {v2, v1}, Lorg/apache/commons/lang3/SystemProperties;->a(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 85
    const-string v2, "java.vm.specification.vendor"

    .line 86
    invoke-static {v2, v1}, Lorg/apache/commons/lang3/SystemProperties;->a(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 87
    const-string v2, "java.vm.specification.version"

    .line 88
    invoke-static {v2, v1}, Lorg/apache/commons/lang3/SystemProperties;->a(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 89
    const-string v2, "java.vm.vendor"

    .line 90
    invoke-static {v2, v1}, Lorg/apache/commons/lang3/SystemProperties;->a(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 91
    const-string v2, "java.vm.version"

    .line 92
    invoke-static {v2, v1}, Lorg/apache/commons/lang3/SystemProperties;->a(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 93
    const-string v2, "line.separator"

    .line 94
    invoke-static {v2, v1}, Lorg/apache/commons/lang3/SystemProperties;->a(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 95
    const-string v2, "os.arch"

    .line 96
    invoke-static {v2, v1}, Lorg/apache/commons/lang3/SystemProperties;->a(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 97
    const-string v2, "os.name"

    .line 98
    invoke-static {v2, v1}, Lorg/apache/commons/lang3/SystemProperties;->a(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v2

    .line 99
    sput-object v2, Lorg/apache/commons/lang3/SystemUtils;->c:Ljava/lang/String;

    .line 100
    const-string v3, "os.version"

    .line 101
    invoke-static {v3, v1}, Lorg/apache/commons/lang3/SystemProperties;->a(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v3

    .line 102
    sput-object v3, Lorg/apache/commons/lang3/SystemUtils;->d:Ljava/lang/String;

    .line 103
    const-string v3, "path.separator"

    .line 104
    invoke-static {v3, v1}, Lorg/apache/commons/lang3/SystemProperties;->a(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 105
    new-instance v3, Lorg/apache/commons/lang3/g;

    move-object/from16 v16, v4

    const/4 v4, 0x7

    invoke-direct {v3, v4}, Lorg/apache/commons/lang3/g;-><init>(I)V

    const-string v4, "user.country"

    invoke-static {v4, v3}, Lorg/apache/commons/lang3/SystemProperties;->a(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 106
    const-string v3, "user.dir"

    .line 107
    invoke-static {v3, v1}, Lorg/apache/commons/lang3/SystemProperties;->a(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 108
    const-string v3, "user.home"

    .line 109
    invoke-static {v3, v1}, Lorg/apache/commons/lang3/SystemProperties;->a(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 110
    const-string v3, "user.language"

    .line 111
    invoke-static {v3, v1}, Lorg/apache/commons/lang3/SystemProperties;->a(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 112
    const-string v3, "user.name"

    .line 113
    invoke-static {v3, v1}, Lorg/apache/commons/lang3/SystemProperties;->a(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 114
    const-string v3, "user.timezone"

    .line 115
    invoke-static {v3, v1}, Lorg/apache/commons/lang3/SystemProperties;->a(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 116
    invoke-static/range {v16 .. v16}, Lorg/apache/commons/lang3/SystemUtils;->a(Ljava/lang/String;)V

    .line 117
    invoke-static/range {v25 .. v25}, Lorg/apache/commons/lang3/SystemUtils;->a(Ljava/lang/String;)V

    .line 118
    const-string v3, "1.3"

    invoke-static {v3}, Lorg/apache/commons/lang3/SystemUtils;->a(Ljava/lang/String;)V

    .line 119
    const-string v3, "1.4"

    invoke-static {v3}, Lorg/apache/commons/lang3/SystemUtils;->a(Ljava/lang/String;)V

    .line 120
    const-string v3, "1.5"

    invoke-static {v3}, Lorg/apache/commons/lang3/SystemUtils;->a(Ljava/lang/String;)V

    .line 121
    const-string v3, "1.6"

    invoke-static {v3}, Lorg/apache/commons/lang3/SystemUtils;->a(Ljava/lang/String;)V

    .line 122
    const-string v3, "1.7"

    invoke-static {v3}, Lorg/apache/commons/lang3/SystemUtils;->a(Ljava/lang/String;)V

    .line 123
    const-string v3, "1.8"

    invoke-static {v3}, Lorg/apache/commons/lang3/SystemUtils;->a(Ljava/lang/String;)V

    .line 124
    invoke-static/range {v23 .. v23}, Lorg/apache/commons/lang3/SystemUtils;->a(Ljava/lang/String;)V

    .line 125
    invoke-static/range {v23 .. v23}, Lorg/apache/commons/lang3/SystemUtils;->a(Ljava/lang/String;)V

    .line 126
    invoke-static/range {v18 .. v18}, Lorg/apache/commons/lang3/SystemUtils;->a(Ljava/lang/String;)V

    .line 127
    invoke-static/range {v21 .. v21}, Lorg/apache/commons/lang3/SystemUtils;->a(Ljava/lang/String;)V

    .line 128
    invoke-static/range {v20 .. v20}, Lorg/apache/commons/lang3/SystemUtils;->a(Ljava/lang/String;)V

    .line 129
    invoke-static {v14}, Lorg/apache/commons/lang3/SystemUtils;->a(Ljava/lang/String;)V

    .line 130
    invoke-static/range {v19 .. v19}, Lorg/apache/commons/lang3/SystemUtils;->a(Ljava/lang/String;)V

    .line 131
    invoke-static/range {v26 .. v26}, Lorg/apache/commons/lang3/SystemUtils;->a(Ljava/lang/String;)V

    .line 132
    invoke-static {v15}, Lorg/apache/commons/lang3/SystemUtils;->a(Ljava/lang/String;)V

    .line 133
    invoke-static {v13}, Lorg/apache/commons/lang3/SystemUtils;->a(Ljava/lang/String;)V

    .line 134
    invoke-static {v12}, Lorg/apache/commons/lang3/SystemUtils;->a(Ljava/lang/String;)V

    .line 135
    invoke-static {v11}, Lorg/apache/commons/lang3/SystemUtils;->a(Ljava/lang/String;)V

    .line 136
    invoke-static {v10}, Lorg/apache/commons/lang3/SystemUtils;->a(Ljava/lang/String;)V

    .line 137
    invoke-static {v9}, Lorg/apache/commons/lang3/SystemUtils;->a(Ljava/lang/String;)V

    .line 138
    invoke-static {v8}, Lorg/apache/commons/lang3/SystemUtils;->a(Ljava/lang/String;)V

    .line 139
    invoke-static {v7}, Lorg/apache/commons/lang3/SystemUtils;->a(Ljava/lang/String;)V

    .line 140
    invoke-static {v6}, Lorg/apache/commons/lang3/SystemUtils;->a(Ljava/lang/String;)V

    .line 141
    invoke-static {v5}, Lorg/apache/commons/lang3/SystemUtils;->a(Ljava/lang/String;)V

    .line 142
    const-string v3, "26"

    invoke-static {v3}, Lorg/apache/commons/lang3/SystemUtils;->a(Ljava/lang/String;)V

    .line 143
    const-string v3, "AIX"

    .line 144
    invoke-static {v2, v3}, Lorg/apache/commons/lang3/SystemUtils;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 145
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/SystemProperties;->a(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    .line 146
    const-string v4, "Android"

    const/4 v5, 0x0

    .line 147
    invoke-static {v0, v4, v5}, Lorg/apache/commons/lang3/CharSequenceUtils;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    .line 148
    const-string v0, "HP-UX"

    .line 149
    invoke-static {v2, v0}, Lorg/apache/commons/lang3/SystemUtils;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 150
    const-string v4, "OS/400"

    invoke-static {v4}, Lorg/apache/commons/lang3/SystemUtils;->c(Ljava/lang/String;)V

    .line 151
    const-string v4, "Irix"

    .line 152
    invoke-static {v2, v4}, Lorg/apache/commons/lang3/SystemUtils;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 153
    const-string v5, "Linux"

    .line 154
    invoke-static {v2, v5}, Lorg/apache/commons/lang3/SystemUtils;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 155
    const-string v6, "Mac"

    invoke-static {v6}, Lorg/apache/commons/lang3/SystemUtils;->c(Ljava/lang/String;)V

    .line 156
    const-string v6, "Mac OS X"

    invoke-static {v2, v6}, Lorg/apache/commons/lang3/SystemUtils;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 157
    const-string v7, "10.0"

    invoke-static {v7}, Lorg/apache/commons/lang3/SystemUtils;->b(Ljava/lang/String;)V

    .line 158
    const-string v7, "10.1"

    invoke-static {v7}, Lorg/apache/commons/lang3/SystemUtils;->b(Ljava/lang/String;)V

    .line 159
    const-string v7, "10.2"

    invoke-static {v7}, Lorg/apache/commons/lang3/SystemUtils;->b(Ljava/lang/String;)V

    .line 160
    const-string v7, "10.3"

    invoke-static {v7}, Lorg/apache/commons/lang3/SystemUtils;->b(Ljava/lang/String;)V

    .line 161
    const-string v7, "10.4"

    invoke-static {v7}, Lorg/apache/commons/lang3/SystemUtils;->b(Ljava/lang/String;)V

    .line 162
    const-string v7, "10.5"

    invoke-static {v7}, Lorg/apache/commons/lang3/SystemUtils;->b(Ljava/lang/String;)V

    .line 163
    const-string v7, "10.6"

    invoke-static {v7}, Lorg/apache/commons/lang3/SystemUtils;->b(Ljava/lang/String;)V

    .line 164
    const-string v7, "10.7"

    invoke-static {v7}, Lorg/apache/commons/lang3/SystemUtils;->b(Ljava/lang/String;)V

    .line 165
    const-string v7, "10.8"

    invoke-static {v7}, Lorg/apache/commons/lang3/SystemUtils;->b(Ljava/lang/String;)V

    .line 166
    const-string v7, "10.9"

    invoke-static {v7}, Lorg/apache/commons/lang3/SystemUtils;->b(Ljava/lang/String;)V

    .line 167
    const-string v7, "10.10"

    invoke-static {v7}, Lorg/apache/commons/lang3/SystemUtils;->b(Ljava/lang/String;)V

    .line 168
    const-string v7, "10.11"

    invoke-static {v7}, Lorg/apache/commons/lang3/SystemUtils;->b(Ljava/lang/String;)V

    .line 169
    const-string v7, "10.12"

    invoke-static {v7}, Lorg/apache/commons/lang3/SystemUtils;->b(Ljava/lang/String;)V

    .line 170
    const-string v7, "10.13"

    invoke-static {v7}, Lorg/apache/commons/lang3/SystemUtils;->b(Ljava/lang/String;)V

    .line 171
    const-string v7, "10.14"

    invoke-static {v7}, Lorg/apache/commons/lang3/SystemUtils;->b(Ljava/lang/String;)V

    .line 172
    const-string v7, "10.15"

    invoke-static {v7}, Lorg/apache/commons/lang3/SystemUtils;->b(Ljava/lang/String;)V

    .line 173
    invoke-static/range {v21 .. v21}, Lorg/apache/commons/lang3/SystemUtils;->b(Ljava/lang/String;)V

    .line 174
    invoke-static/range {v20 .. v20}, Lorg/apache/commons/lang3/SystemUtils;->b(Ljava/lang/String;)V

    .line 175
    invoke-static {v14}, Lorg/apache/commons/lang3/SystemUtils;->b(Ljava/lang/String;)V

    .line 176
    invoke-static/range {v19 .. v19}, Lorg/apache/commons/lang3/SystemUtils;->b(Ljava/lang/String;)V

    .line 177
    invoke-static/range {v26 .. v26}, Lorg/apache/commons/lang3/SystemUtils;->b(Ljava/lang/String;)V

    .line 178
    const-string v7, "FreeBSD"

    .line 179
    invoke-static {v2, v7}, Lorg/apache/commons/lang3/SystemUtils;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 180
    const-string v8, "OpenBSD"

    .line 181
    invoke-static {v2, v8}, Lorg/apache/commons/lang3/SystemUtils;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 182
    const-string v9, "NetBSD"

    .line 183
    invoke-static {v2, v9}, Lorg/apache/commons/lang3/SystemUtils;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    .line 184
    const-string v10, "Netware"

    invoke-static {v10}, Lorg/apache/commons/lang3/SystemUtils;->c(Ljava/lang/String;)V

    .line 185
    const-string v10, "OS/2"

    invoke-static {v10}, Lorg/apache/commons/lang3/SystemUtils;->c(Ljava/lang/String;)V

    .line 186
    const-string v10, "Solaris"

    .line 187
    invoke-static {v2, v10}, Lorg/apache/commons/lang3/SystemUtils;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    .line 188
    const-string v11, "SunOS"

    .line 189
    invoke-static {v2, v11}, Lorg/apache/commons/lang3/SystemUtils;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 190
    const-string v0, "Windows"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->c(Ljava/lang/String;)V

    .line 191
    const-string v0, "Windows 2000"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->c(Ljava/lang/String;)V

    .line 192
    const-string v0, "Windows 2003"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->c(Ljava/lang/String;)V

    .line 193
    const-string v0, "Windows Server 2008"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->c(Ljava/lang/String;)V

    .line 194
    const-string v0, "Windows Server 2012"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->c(Ljava/lang/String;)V

    .line 195
    const-string v0, "Windows 95"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->c(Ljava/lang/String;)V

    .line 196
    const-string v0, "Windows 98"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->c(Ljava/lang/String;)V

    .line 197
    const-string v0, "Windows Me"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->c(Ljava/lang/String;)V

    .line 198
    const-string v0, "Windows NT"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->c(Ljava/lang/String;)V

    .line 199
    const-string v0, "Windows XP"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->c(Ljava/lang/String;)V

    .line 200
    const-string v0, "Windows Vista"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->c(Ljava/lang/String;)V

    .line 201
    const-string v0, "Windows 7"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->c(Ljava/lang/String;)V

    .line 202
    const-string v0, "Windows 8"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->c(Ljava/lang/String;)V

    .line 203
    const-string v0, "Windows 10"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->c(Ljava/lang/String;)V

    .line 204
    const-string v0, "Windows 11"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->c(Ljava/lang/String;)V

    .line 205
    const-string v0, "z/OS"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->c(Ljava/lang/String;)V

    .line 206
    const-string v0, "awt.toolkit"

    .line 207
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/SystemProperties;->a(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x39 -> :sswitch_19
        0x61f -> :sswitch_18
        0x620 -> :sswitch_17
        0x621 -> :sswitch_16
        0x622 -> :sswitch_15
        0x623 -> :sswitch_14
        0x624 -> :sswitch_13
        0x625 -> :sswitch_12
        0x626 -> :sswitch_11
        0x627 -> :sswitch_10
        0x628 -> :sswitch_f
        0x63e -> :sswitch_e
        0x63f -> :sswitch_d
        0x640 -> :sswitch_c
        0x641 -> :sswitch_b
        0x642 -> :sswitch_a
        0x643 -> :sswitch_9
        0xb9fb -> :sswitch_8
        0xbdb4 -> :sswitch_7
        0xbdb5 -> :sswitch_6
        0xbdb6 -> :sswitch_5
        0xbdb7 -> :sswitch_4
        0xbdb8 -> :sswitch_3
        0xbdb9 -> :sswitch_2
        0xbdba -> :sswitch_1
        0xbdbb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/lang3/SystemUtils;->a:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lorg/apache/commons/lang3/SystemUtils;->c:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    sget-object v1, Lorg/apache/commons/lang3/SystemUtils;->d:Ljava/lang/String;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const-string v2, "Mac OS X"

    .line 11
    .line 12
    invoke-static {v0, v2}, Lorg/apache/commons/lang3/SystemUtils;->d(Ljava/lang/String;Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->c(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    sget-object v0, Lorg/apache/commons/lang3/JavaVersion;->g:Lorg/apache/commons/lang3/JavaVersion;

    .line 26
    .line 27
    sget-object v0, Lorg/apache/commons/lang3/RegExUtils;->a:Ljava/util/regex/Pattern;

    .line 28
    .line 29
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/4 v1, 0x0

    .line 38
    :goto_0
    array-length v2, p0

    .line 39
    array-length v3, v0

    .line 40
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-ge v1, v2, :cond_3

    .line 45
    .line 46
    aget-object v2, p0, v1

    .line 47
    .line 48
    aget-object v3, v0, v1

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-nez v2, :cond_2

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    :goto_1
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/lang3/SystemUtils;->c:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0, p0}, Lorg/apache/commons/lang3/SystemUtils;->d(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-le v1, v2, :cond_1

    .line 14
    .line 15
    :goto_0
    return v0

    .line 16
    :cond_1
    const/4 v2, 0x1

    .line 17
    invoke-static {p0, v2, v0, p1, v1}, Lorg/apache/commons/lang3/CharSequenceUtils;->b(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;I)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method
