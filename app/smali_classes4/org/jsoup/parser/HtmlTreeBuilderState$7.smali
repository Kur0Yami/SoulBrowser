.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$7;
.super Lorg/jsoup/parser/HtmlTreeBuilderState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/HtmlTreeBuilderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "InBody"

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final d(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState$25;->a:[I

    iget-object v4, v1, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const-string v4, "h5"

    const-string v5, "h4"

    const-string v7, "h3"

    const-string v9, "h2"

    const-string v11, "h1"

    const-string v13, "dt"

    const-string v14, "dd"

    const-string v15, "p"

    const-string v6, "li"

    const-string v12, "br"

    sget-object v10, Lorg/jsoup/parser/HtmlTreeBuilderState;->h:Lorg/jsoup/parser/HtmlTreeBuilderState$4;

    sget-object v8, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->i:[Ljava/lang/String;

    move/from16 v19, v3

    const-string v3, "template"

    move-object/from16 v20, v10

    sget-object v10, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->l:[Ljava/lang/String;

    move-object/from16 v21, v8

    const-string v8, "body"

    move-object/from16 v22, v10

    sget-object v10, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->p:[Ljava/lang/String;

    move-object/from16 v24, v3

    const/16 v25, 0x1

    const/4 v3, 0x0

    packed-switch v19, :pswitch_data_0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected state: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jsoup/helper/Validate;->wtf(Ljava/lang/String;)V

    return v25

    .line 3
    :pswitch_0
    iget-object v3, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->u:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 5
    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState;->v:Lorg/jsoup/parser/HtmlTreeBuilderState$18;

    .line 6
    invoke-virtual {v3, v1, v2}, Lorg/jsoup/parser/HtmlTreeBuilderState$18;->d(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v1

    return v1

    .line 7
    :cond_0
    invoke-virtual {v2, v10}, Lorg/jsoup/parser/HtmlTreeBuilder;->U([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v25

    :cond_1
    :goto_0
    move-object v3, v0

    goto/16 :goto_28

    .line 9
    :pswitch_1
    check-cast v1, Lorg/jsoup/parser/Token$Character;

    .line 10
    iget-object v4, v1, Lorg/jsoup/parser/Token$Character;->d:Lorg/jsoup/parser/TokenData;

    invoke-virtual {v4}, Lorg/jsoup/parser/TokenData;->e()Ljava/lang/String;

    move-result-object v4

    .line 11
    sget-object v5, Lorg/jsoup/parser/HtmlTreeBuilderState;->C:Ljava/lang/String;

    .line 12
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 13
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v3

    .line 14
    :cond_2
    iget-boolean v4, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->x:Z

    if-eqz v4, :cond_3

    .line 15
    invoke-static {v1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->a(Lorg/jsoup/parser/Token;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 16
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->Y()V

    .line 17
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->K(Lorg/jsoup/parser/Token$Character;)V

    return v25

    .line 18
    :cond_3
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->Y()V

    .line 19
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->K(Lorg/jsoup/parser/Token$Character;)V

    .line 20
    iput-boolean v3, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->x:Z

    return v25

    :pswitch_2
    move/from16 v19, v3

    .line 21
    move-object v3, v1

    check-cast v3, Lorg/jsoup/parser/Token$EndTag;

    .line 22
    invoke-virtual {v3}, Lorg/jsoup/parser/Token$Tag;->m()Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v26

    sparse-switch v26, :sswitch_data_0

    :goto_1
    move-object/from16 v4, v24

    :goto_2
    const/4 v6, -0x1

    goto/16 :goto_4

    :sswitch_0
    const-string v4, "sarcasm"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    const/16 v6, 0x10

    goto :goto_3

    :sswitch_1
    const-string v4, "span"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    const/16 v6, 0xf

    goto :goto_3

    :sswitch_2
    const-string v4, "html"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_1

    :cond_6
    const/16 v6, 0xe

    goto :goto_3

    :sswitch_3
    const-string v4, "form"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_1

    :cond_7
    const/16 v6, 0xd

    goto :goto_3

    :sswitch_4
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_1

    :cond_8
    const/16 v6, 0xc

    goto :goto_3

    :sswitch_5
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_1

    :cond_9
    const/16 v6, 0xb

    goto :goto_3

    :sswitch_6
    const-string v4, "h6"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_1

    :cond_a
    const/16 v6, 0xa

    goto :goto_3

    :sswitch_7
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    goto :goto_1

    :cond_b
    const/16 v6, 0x9

    :goto_3
    move-object/from16 v4, v24

    goto/16 :goto_4

    :sswitch_8
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    goto :goto_1

    :cond_c
    move-object/from16 v4, v24

    const/16 v6, 0x8

    goto/16 :goto_4

    :sswitch_9
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    goto :goto_1

    :cond_d
    move-object/from16 v4, v24

    const/4 v6, 0x7

    goto :goto_4

    :sswitch_a
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    goto/16 :goto_1

    :cond_e
    move-object/from16 v4, v24

    const/4 v6, 0x6

    goto :goto_4

    :sswitch_b
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    goto/16 :goto_1

    :cond_f
    move-object/from16 v4, v24

    const/4 v6, 0x5

    goto :goto_4

    :sswitch_c
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    goto/16 :goto_1

    :cond_10
    move-object/from16 v4, v24

    const/4 v6, 0x4

    goto :goto_4

    :sswitch_d
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    goto/16 :goto_1

    :cond_11
    move-object/from16 v4, v24

    const/4 v6, 0x3

    goto :goto_4

    :sswitch_e
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    goto/16 :goto_1

    :cond_12
    move-object/from16 v4, v24

    const/4 v6, 0x2

    goto :goto_4

    :sswitch_f
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    goto/16 :goto_1

    :cond_13
    move-object/from16 v4, v24

    move/from16 v6, v25

    goto :goto_4

    :sswitch_10
    move-object/from16 v4, v24

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    goto/16 :goto_2

    :cond_14
    move/from16 v6, v19

    .line 24
    :goto_4
    sget-object v5, Lorg/jsoup/parser/HtmlTreeBuilder;->B:[Ljava/lang/String;

    sget-object v7, Lorg/jsoup/parser/HtmlTreeBuilderState;->w:Lorg/jsoup/parser/HtmlTreeBuilderState$19;

    const-string v9, "http://www.w3.org/1999/xhtml"

    packed-switch v6, :pswitch_data_1

    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->q:[Ljava/lang/String;

    invoke-static {v1, v4}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 25
    iget-object v3, v3, Lorg/jsoup/parser/Token$Tag;->e:Ljava/lang/String;

    .line 26
    invoke-virtual {v2}, Lorg/jsoup/parser/TreeBuilder;->b()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v2}, Lorg/jsoup/parser/TreeBuilder;->b()Lorg/jsoup/nodes/Element;

    move-result-object v1

    .line 27
    iget-object v4, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->t:Ljava/util/ArrayList;

    invoke-static {v4, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->T(Ljava/util/ArrayList;Lorg/jsoup/nodes/Element;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 28
    invoke-virtual {v2}, Lorg/jsoup/parser/TreeBuilder;->l()Lorg/jsoup/nodes/Element;

    return v25

    :cond_15
    move/from16 v1, v19

    :goto_5
    const/16 v10, 0x8

    if-lt v1, v10, :cond_16

    :goto_6
    move/from16 v3, v25

    goto/16 :goto_c

    :cond_16
    add-int/lit8 v1, v1, 0x1

    .line 29
    iget-object v4, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->t:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_7
    if-ltz v4, :cond_19

    .line 30
    iget-object v5, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->t:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/nodes/Element;

    if-nez v5, :cond_17

    goto :goto_8

    .line 31
    :cond_17
    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    goto :goto_9

    :cond_18
    add-int/lit8 v4, v4, -0x1

    goto :goto_7

    :cond_19
    :goto_8
    const/4 v5, 0x0

    :goto_9
    if-nez v5, :cond_1a

    .line 32
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->e(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v3

    goto :goto_c

    .line 33
    :cond_1a
    iget-object v4, v2, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->T(Ljava/util/ArrayList;Lorg/jsoup/nodes/Element;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 34
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 35
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->Z(Lorg/jsoup/nodes/Element;)V

    goto :goto_6

    .line 36
    :cond_1b
    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->G(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 37
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    move/from16 v3, v19

    goto :goto_c

    .line 38
    :cond_1c
    invoke-virtual {v2}, Lorg/jsoup/parser/TreeBuilder;->b()Lorg/jsoup/nodes/Element;

    move-result-object v4

    if-eq v4, v5, :cond_1d

    .line 39
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 40
    :cond_1d
    iget-object v4, v2, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1f

    :cond_1e
    add-int/lit8 v6, v6, 0x1

    .line 42
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_1f

    .line 43
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jsoup/nodes/Element;

    .line 44
    invoke-static {v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->R(Lorg/jsoup/nodes/Element;)Z

    move-result v11

    if-eqz v11, :cond_1e

    goto :goto_a

    :cond_1f
    const/4 v7, 0x0

    :goto_a
    if-nez v7, :cond_21

    .line 45
    :goto_b
    invoke-virtual {v2}, Lorg/jsoup/parser/TreeBuilder;->b()Lorg/jsoup/nodes/Element;

    move-result-object v1

    if-eq v1, v5, :cond_20

    .line 46
    invoke-virtual {v2}, Lorg/jsoup/parser/TreeBuilder;->l()Lorg/jsoup/nodes/Element;

    goto :goto_b

    .line 47
    :cond_20
    invoke-virtual {v2}, Lorg/jsoup/parser/TreeBuilder;->l()Lorg/jsoup/nodes/Element;

    .line 48
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->Z(Lorg/jsoup/nodes/Element;)V

    goto/16 :goto_6

    .line 49
    :cond_21
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->t(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object v4

    if-nez v4, :cond_22

    .line 50
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_6

    :goto_c
    return v3

    :cond_22
    move/from16 v6, v19

    .line 51
    :goto_d
    iget-object v11, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->t:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v6, v11, :cond_24

    .line 52
    iget-object v11, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->t:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-ne v5, v11, :cond_23

    goto :goto_e

    :cond_23
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_24
    const/4 v6, -0x1

    :goto_e
    move-object v12, v7

    move-object v13, v12

    move/from16 v11, v19

    :goto_f
    add-int/lit8 v11, v11, 0x1

    .line 53
    iget-object v14, v2, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    invoke-static {v14, v12}, Lorg/jsoup/parser/HtmlTreeBuilder;->T(Ljava/util/ArrayList;Lorg/jsoup/nodes/Element;)Z

    move-result v14

    if-nez v14, :cond_25

    .line 54
    invoke-virtual {v12}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v12

    goto :goto_10

    .line 55
    :cond_25
    invoke-virtual {v2, v12}, Lorg/jsoup/parser/HtmlTreeBuilder;->t(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object v12

    :goto_10
    if-eqz v12, :cond_26

    .line 56
    invoke-virtual {v12, v8}, Lorg/jsoup/nodes/Node;->nameIs(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_27

    :cond_26
    move/from16 v16, v1

    goto/16 :goto_16

    :cond_27
    if-ne v12, v5, :cond_28

    :goto_11
    move/from16 v16, v1

    goto/16 :goto_17

    :cond_28
    const/4 v14, 0x3

    if-le v11, v14, :cond_29

    .line 57
    iget-object v15, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->t:Ljava/util/ArrayList;

    invoke-static {v15, v12}, Lorg/jsoup/parser/HtmlTreeBuilder;->T(Ljava/util/ArrayList;Lorg/jsoup/nodes/Element;)Z

    move-result v15

    if-eqz v15, :cond_29

    .line 58
    invoke-virtual {v2, v12}, Lorg/jsoup/parser/HtmlTreeBuilder;->Z(Lorg/jsoup/nodes/Element;)V

    goto :goto_11

    .line 59
    :cond_29
    iget-object v15, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->t:Ljava/util/ArrayList;

    invoke-static {v15, v12}, Lorg/jsoup/parser/HtmlTreeBuilder;->T(Ljava/util/ArrayList;Lorg/jsoup/nodes/Element;)Z

    move-result v15

    if-nez v15, :cond_2a

    .line 60
    invoke-virtual {v2, v12}, Lorg/jsoup/parser/HtmlTreeBuilder;->a0(Lorg/jsoup/nodes/Element;)V

    goto :goto_f

    .line 61
    :cond_2a
    iget-object v15, v2, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    invoke-static {v15, v12}, Lorg/jsoup/parser/HtmlTreeBuilder;->T(Ljava/util/ArrayList;Lorg/jsoup/nodes/Element;)Z

    move-result v15

    if-nez v15, :cond_2b

    .line 62
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 63
    invoke-virtual {v2, v12}, Lorg/jsoup/parser/HtmlTreeBuilder;->Z(Lorg/jsoup/nodes/Element;)V

    goto :goto_11

    .line 64
    :cond_2b
    new-instance v15, Lorg/jsoup/nodes/Element;

    invoke-virtual {v12}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v14

    move/from16 v16, v1

    sget-object v1, Lorg/jsoup/parser/ParseSettings;->preserveCase:Lorg/jsoup/parser/ParseSettings;

    invoke-virtual {v2, v10, v14, v9, v1}, Lorg/jsoup/parser/TreeBuilder;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;

    move-result-object v1

    .line 65
    iget-object v10, v2, Lorg/jsoup/parser/TreeBuilder;->f:Ljava/lang/String;

    .line 66
    invoke-direct {v15, v1, v10}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;)V

    .line 67
    iget-object v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->t:Ljava/util/ArrayList;

    .line 68
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v10

    const/4 v14, -0x1

    if-eq v10, v14, :cond_2c

    move/from16 v17, v25

    goto :goto_12

    :cond_2c
    move/from16 v17, v19

    .line 69
    :goto_12
    invoke-static/range {v17 .. v17}, Lorg/jsoup/helper/Validate;->isTrue(Z)V

    .line 70
    invoke-virtual {v1, v10, v15}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v1, v2, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    .line 72
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v10

    if-eq v10, v14, :cond_2d

    move/from16 v12, v25

    goto :goto_13

    :cond_2d
    move/from16 v12, v19

    .line 73
    :goto_13
    invoke-static {v12}, Lorg/jsoup/helper/Validate;->isTrue(Z)V

    .line 74
    invoke-virtual {v1, v10, v15}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-ne v13, v7, :cond_30

    move/from16 v1, v19

    .line 75
    :goto_14
    iget-object v6, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->t:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_2f

    .line 76
    iget-object v6, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->t:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v15, v6, :cond_2e

    goto :goto_15

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_2f
    const/4 v1, -0x1

    :goto_15
    add-int/lit8 v1, v1, 0x1

    move v6, v1

    .line 77
    :cond_30
    invoke-virtual {v15, v13}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    move-object v12, v15

    move-object v13, v12

    move/from16 v1, v16

    const/16 v10, 0x8

    goto/16 :goto_f

    .line 78
    :goto_16
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 79
    :goto_17
    invoke-virtual {v4, v13}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 80
    new-instance v1, Lorg/jsoup/nodes/Element;

    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v4

    .line 81
    iget-object v10, v2, Lorg/jsoup/parser/TreeBuilder;->f:Ljava/lang/String;

    .line 82
    invoke-direct {v1, v4, v10}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v4

    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v10

    invoke-virtual {v4, v10}, Lorg/jsoup/nodes/Attributes;->addAll(Lorg/jsoup/nodes/Attributes;)V

    .line 84
    invoke-virtual {v7}, Lorg/jsoup/nodes/Node;->childNodes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_31

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/jsoup/nodes/Node;

    .line 85
    invoke-virtual {v1, v10}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    goto :goto_18

    .line 86
    :cond_31
    invoke-virtual {v7, v1}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 87
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->Z(Lorg/jsoup/nodes/Element;)V

    .line 88
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->u(Lorg/jsoup/nodes/Element;)V

    .line 89
    :try_start_0
    iget-object v4, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->t:Ljava/util/ArrayList;

    invoke-virtual {v4, v6, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_19

    .line 90
    :catch_0
    iget-object v4, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->t:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    :goto_19
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->a0(Lorg/jsoup/nodes/Element;)V

    .line 92
    iget-object v4, v2, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v10, -0x1

    if-eq v4, v10, :cond_32

    move/from16 v5, v25

    goto :goto_1a

    :cond_32
    move/from16 v5, v19

    .line 93
    :goto_1a
    invoke-static {v5}, Lorg/jsoup/helper/Validate;->isTrue(Z)V

    .line 94
    iget-object v5, v2, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v5, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move/from16 v1, v16

    goto/16 :goto_5

    .line 95
    :cond_33
    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->o:[Ljava/lang/String;

    invoke-static {v1, v3}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 96
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->G(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 97
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v19

    :cond_34
    move/from16 v3, v19

    .line 98
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->D(Z)V

    .line 99
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/TreeBuilder;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_35

    .line 100
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 101
    :cond_35
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->V(Ljava/lang/String;)V

    return v25

    :cond_36
    move-object/from16 v3, v22

    .line 102
    invoke-static {v1, v3}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 103
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->G(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 104
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->G(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_37

    .line 105
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    const/4 v3, 0x0

    return v3

    :cond_37
    const/4 v3, 0x0

    .line 106
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->D(Z)V

    .line 107
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/TreeBuilder;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_38

    .line 108
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 109
    :cond_38
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->V(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->v()V

    return v25

    .line 111
    :cond_39
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->e(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v1

    return v1

    .line 112
    :pswitch_3
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->e(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v1

    return v1

    .line 113
    :pswitch_4
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->S(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 114
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    const/16 v19, 0x0

    return v19

    .line 115
    :cond_3a
    invoke-virtual {v2, v10}, Lorg/jsoup/parser/HtmlTreeBuilder;->U([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 116
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 117
    :cond_3b
    iput-object v7, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->n:Lorg/jsoup/parser/HtmlTreeBuilderState;

    move-object/from16 v1, p1

    .line 118
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->m(Lorg/jsoup/parser/Token;)Z

    move-result v1

    return v1

    .line 119
    :pswitch_5
    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->S(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 120
    iget-object v3, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->r:Lorg/jsoup/nodes/FormElement;

    const/4 v4, 0x0

    .line 121
    iput-object v4, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->r:Lorg/jsoup/nodes/FormElement;

    if-eqz v3, :cond_3c

    .line 122
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->G(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3d

    :cond_3c
    const/4 v4, 0x0

    goto :goto_1b

    :cond_3d
    const/4 v4, 0x0

    .line 123
    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->D(Z)V

    .line 124
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/TreeBuilder;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 125
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 126
    :cond_3e
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->a0(Lorg/jsoup/nodes/Element;)V

    return v25

    .line 127
    :goto_1b
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v4

    :cond_3f
    const/4 v4, 0x0

    .line 128
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->G(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_40

    .line 129
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v4

    .line 130
    :cond_40
    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->D(Z)V

    .line 131
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/TreeBuilder;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_41

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 132
    :cond_41
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->V(Ljava/lang/String;)V

    return v25

    :pswitch_6
    move/from16 v4, v19

    .line 133
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->G(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 134
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v4

    .line 135
    :cond_42
    invoke-virtual {v2, v10}, Lorg/jsoup/parser/HtmlTreeBuilder;->U([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 136
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 137
    :cond_43
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->E(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v2, v1, v4}, Lorg/jsoup/parser/TreeBuilder;->s(Lorg/jsoup/nodes/Node;Z)V

    .line 138
    iput-object v7, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->n:Lorg/jsoup/parser/HtmlTreeBuilderState;

    return v25

    :pswitch_7
    move/from16 v4, v19

    .line 139
    iget-object v3, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->A:[Ljava/lang/String;

    aput-object v1, v3, v4

    .line 140
    sget-object v6, Lorg/jsoup/parser/HtmlTreeBuilder;->E:[Ljava/lang/String;

    invoke-virtual {v2, v3, v5, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->I([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_44

    .line 141
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v4

    .line 142
    :cond_44
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->C(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/TreeBuilder;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_45

    .line 144
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 145
    :cond_45
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->V(Ljava/lang/String;)V

    return v25

    :pswitch_8
    move-object/from16 v3, v21

    const/4 v4, 0x0

    .line 146
    invoke-virtual {v2, v3, v5, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->I([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_46

    .line 147
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    const/16 v19, 0x0

    return v19

    .line 148
    :cond_46
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->C(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/TreeBuilder;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_47

    .line 150
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 151
    :cond_47
    iget-object v1, v2, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1c
    if-ltz v1, :cond_1

    .line 152
    invoke-virtual {v2}, Lorg/jsoup/parser/TreeBuilder;->l()Lorg/jsoup/nodes/Element;

    move-result-object v4

    .line 153
    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_48

    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/parser/Tag;->namespace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    goto/16 :goto_0

    :cond_48
    add-int/lit8 v1, v1, -0x1

    goto :goto_1c

    .line 154
    :pswitch_9
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->G(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_49

    .line 155
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    const/16 v19, 0x0

    return v19

    .line 156
    :cond_49
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->C(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/TreeBuilder;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4a

    .line 158
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 159
    :cond_4a
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->V(Ljava/lang/String;)V

    return v25

    .line 160
    :pswitch_a
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 161
    invoke-virtual {v2, v12}, Lorg/jsoup/parser/TreeBuilder;->o(Ljava/lang/String;)V

    return v19

    .line 162
    :pswitch_b
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->F(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4b

    .line 163
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 164
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/TreeBuilder;->o(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->m(Lorg/jsoup/parser/Token;)Z

    move-result v1

    return v1

    .line 166
    :cond_4b
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->C(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/TreeBuilder;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4c

    .line 168
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 169
    :cond_4c
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->V(Ljava/lang/String;)V

    return v25

    :pswitch_c
    move-object/from16 v1, p1

    move-object/from16 v3, v20

    .line 170
    invoke-virtual {v3, v1, v2}, Lorg/jsoup/parser/HtmlTreeBuilderState$4;->d(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    return v25

    :pswitch_d
    move-object/from16 v10, v20

    move-object/from16 v27, v21

    move-object/from16 v3, v22

    move-object/from16 v28, v24

    const/16 v18, 0x3

    .line 171
    move-object v0, v1

    check-cast v0, Lorg/jsoup/parser/Token$StartTag;

    .line 172
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Tag;->m()Ljava/lang/String;

    move-result-object v3

    .line 173
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v20

    sparse-switch v20, :sswitch_data_1

    :goto_1d
    const/16 v23, -0x1

    goto/16 :goto_1f

    :sswitch_11
    const-string v4, "noembed"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4d

    goto :goto_1d

    :cond_4d
    const/16 v4, 0x36

    goto/16 :goto_1e

    :sswitch_12
    const-string v4, "plaintext"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4e

    goto :goto_1d

    :cond_4e
    const/16 v4, 0x35

    goto/16 :goto_1e

    :sswitch_13
    const-string v4, "listing"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4f

    goto :goto_1d

    :cond_4f
    const/16 v4, 0x34

    goto/16 :goto_1e

    :sswitch_14
    const-string v4, "table"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_50

    goto :goto_1d

    :cond_50
    const/16 v4, 0x33

    goto/16 :goto_1e

    :sswitch_15
    const-string v4, "small"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_51

    goto :goto_1d

    :cond_51
    const/16 v4, 0x32

    goto/16 :goto_1e

    :sswitch_16
    const-string v4, "input"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_52

    goto :goto_1d

    :cond_52
    const/16 v4, 0x31

    goto/16 :goto_1e

    :sswitch_17
    const-string v4, "image"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_53

    goto :goto_1d

    :cond_53
    const/16 v4, 0x30

    goto/16 :goto_1e

    :sswitch_18
    const-string v4, "embed"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_54

    goto :goto_1d

    :cond_54
    const/16 v4, 0x2f

    goto/16 :goto_1e

    :sswitch_19
    const-string v4, "span"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_55

    goto :goto_1d

    :cond_55
    const/16 v4, 0x2e

    goto/16 :goto_1e

    :sswitch_1a
    const-string v4, "nobr"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_56

    goto/16 :goto_1d

    :cond_56
    const/16 v4, 0x2d

    goto/16 :goto_1e

    :sswitch_1b
    const-string v4, "math"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_57

    goto/16 :goto_1d

    :cond_57
    const/16 v4, 0x2c

    goto/16 :goto_1e

    :sswitch_1c
    const-string v4, "html"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_58

    goto/16 :goto_1d

    :cond_58
    const/16 v4, 0x2b

    goto/16 :goto_1e

    :sswitch_1d
    const-string v4, "form"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_59

    goto/16 :goto_1d

    :cond_59
    const/16 v4, 0x2a

    goto/16 :goto_1e

    :sswitch_1e
    const-string v4, "font"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5a

    goto/16 :goto_1d

    :cond_5a
    const/16 v4, 0x29

    goto/16 :goto_1e

    :sswitch_1f
    const-string v4, "code"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5b

    goto/16 :goto_1d

    :cond_5b
    const/16 v4, 0x28

    goto/16 :goto_1e

    :sswitch_20
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5c

    goto/16 :goto_1d

    :cond_5c
    const/16 v4, 0x27

    goto/16 :goto_1e

    :sswitch_21
    const-string v4, "area"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5d

    goto/16 :goto_1d

    :cond_5d
    const/16 v4, 0x26

    goto/16 :goto_1e

    :sswitch_22
    const-string v4, "xmp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5e

    goto/16 :goto_1d

    :cond_5e
    const/16 v4, 0x25

    goto/16 :goto_1e

    :sswitch_23
    const-string v4, "wbr"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5f

    goto/16 :goto_1d

    :cond_5f
    const/16 v4, 0x24

    goto/16 :goto_1e

    :sswitch_24
    const-string v4, "svg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_60

    goto/16 :goto_1d

    :cond_60
    const/16 v4, 0x23

    goto/16 :goto_1e

    :sswitch_25
    const-string v4, "rtc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_61

    goto/16 :goto_1d

    :cond_61
    const/16 v4, 0x22

    goto/16 :goto_1e

    :sswitch_26
    const-string v4, "pre"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_62

    goto/16 :goto_1d

    :cond_62
    const/16 v4, 0x21

    goto/16 :goto_1e

    :sswitch_27
    const-string v4, "img"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_63

    goto/16 :goto_1d

    :cond_63
    const/16 v4, 0x20

    goto/16 :goto_1e

    :sswitch_28
    const-string v4, "big"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_64

    goto/16 :goto_1d

    :cond_64
    const/16 v4, 0x1f

    goto/16 :goto_1e

    :sswitch_29
    const-string v4, "tt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_65

    goto/16 :goto_1d

    :cond_65
    const/16 v4, 0x1e

    goto/16 :goto_1e

    :sswitch_2a
    const-string v4, "rt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_66

    goto/16 :goto_1d

    :cond_66
    const/16 v4, 0x1d

    goto/16 :goto_1e

    :sswitch_2b
    const-string v4, "rp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_67

    goto/16 :goto_1d

    :cond_67
    const/16 v4, 0x1c

    goto/16 :goto_1e

    :sswitch_2c
    const-string v4, "rb"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_68

    goto/16 :goto_1d

    :cond_68
    const/16 v4, 0x1b

    goto/16 :goto_1e

    :sswitch_2d
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_69

    goto/16 :goto_1d

    :cond_69
    const/16 v4, 0x1a

    goto/16 :goto_1e

    :sswitch_2e
    const-string v4, "hr"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6a

    goto/16 :goto_1d

    :cond_6a
    const/16 v4, 0x19

    goto/16 :goto_1e

    :sswitch_2f
    const-string v4, "h6"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6b

    goto/16 :goto_1d

    :cond_6b
    const/16 v4, 0x18

    goto/16 :goto_1e

    :sswitch_30
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6c

    goto/16 :goto_1d

    :cond_6c
    const/16 v4, 0x17

    goto/16 :goto_1e

    :sswitch_31
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6d

    goto/16 :goto_1d

    :cond_6d
    const/16 v4, 0x16

    goto/16 :goto_1e

    :sswitch_32
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6e

    goto/16 :goto_1d

    :cond_6e
    const/16 v4, 0x15

    goto/16 :goto_1e

    :sswitch_33
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6f

    goto/16 :goto_1d

    :cond_6f
    const/16 v4, 0x14

    goto/16 :goto_1e

    :sswitch_34
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_70

    goto/16 :goto_1d

    :cond_70
    const/16 v4, 0x13

    goto/16 :goto_1e

    :sswitch_35
    const-string v4, "em"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_71

    goto/16 :goto_1d

    :cond_71
    const/16 v4, 0x12

    goto/16 :goto_1e

    :sswitch_36
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_72

    goto/16 :goto_1d

    :cond_72
    const/16 v4, 0x11

    goto/16 :goto_1e

    :sswitch_37
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_73

    goto/16 :goto_1d

    :cond_73
    const/16 v4, 0x10

    goto :goto_1e

    :sswitch_38
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_74

    goto/16 :goto_1d

    :cond_74
    const/16 v4, 0xf

    goto :goto_1e

    :sswitch_39
    const-string v4, "u"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_75

    goto/16 :goto_1d

    :cond_75
    const/16 v4, 0xe

    goto :goto_1e

    :sswitch_3a
    const-string v4, "s"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_76

    goto/16 :goto_1d

    :cond_76
    const/16 v4, 0xd

    goto :goto_1e

    :sswitch_3b
    const-string v4, "i"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_77

    goto/16 :goto_1d

    :cond_77
    const/16 v4, 0xc

    goto :goto_1e

    :sswitch_3c
    const-string v4, "b"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_78

    goto/16 :goto_1d

    :cond_78
    const/16 v4, 0xb

    goto :goto_1e

    :sswitch_3d
    const-string v4, "a"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_79

    goto/16 :goto_1d

    :cond_79
    const/16 v4, 0xa

    goto :goto_1e

    :sswitch_3e
    const-string v4, "optgroup"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7a

    goto/16 :goto_1d

    :cond_7a
    const/16 v4, 0x9

    :goto_1e
    move/from16 v23, v4

    goto/16 :goto_1f

    :sswitch_3f
    const-string v4, "strong"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7b

    goto/16 :goto_1d

    :cond_7b
    const/16 v23, 0x8

    goto/16 :goto_1f

    :sswitch_40
    const-string v4, "strike"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7c

    goto/16 :goto_1d

    :cond_7c
    const/16 v23, 0x7

    goto :goto_1f

    :sswitch_41
    const-string v4, "select"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7d

    goto/16 :goto_1d

    :cond_7d
    const/16 v23, 0x6

    goto :goto_1f

    :sswitch_42
    const-string v4, "textarea"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7e

    goto/16 :goto_1d

    :cond_7e
    const/16 v23, 0x5

    goto :goto_1f

    :sswitch_43
    const-string v4, "option"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7f

    goto/16 :goto_1d

    :cond_7f
    const/16 v23, 0x4

    goto :goto_1f

    :sswitch_44
    const-string v4, "keygen"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_80

    goto/16 :goto_1d

    :cond_80
    move/from16 v23, v18

    goto :goto_1f

    :sswitch_45
    const-string v4, "iframe"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_81

    goto/16 :goto_1d

    :cond_81
    const/16 v23, 0x2

    goto :goto_1f

    :sswitch_46
    const-string v4, "button"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_82

    goto/16 :goto_1d

    :cond_82
    move/from16 v23, v25

    goto :goto_1f

    :sswitch_47
    const-string v4, "frameset"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_83

    goto/16 :goto_1d

    :cond_83
    const/16 v23, 0x0

    .line 174
    :goto_1f
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->j:[Ljava/lang/String;

    sget-object v5, Lorg/jsoup/parser/HtmlTreeBuilderState;->m:Lorg/jsoup/parser/HtmlTreeBuilderState$9;

    const-string v7, "ruby"

    packed-switch v23, :pswitch_data_2

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/TreeBuilder;->r(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/parser/Tag;

    move-result-object v4

    .line 175
    invoke-virtual {v4}, Lorg/jsoup/parser/Tag;->b()Lorg/jsoup/parser/TokeniserState;

    move-result-object v5

    if-eqz v5, :cond_84

    .line 176
    invoke-static {v0, v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilderState;->b(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;Lorg/jsoup/parser/TokeniserState;)V

    return v25

    .line 177
    :cond_84
    invoke-virtual {v4}, Lorg/jsoup/parser/Tag;->isKnownTag()Z

    move-result v4

    if-nez v4, :cond_85

    .line 178
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->N(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    return v25

    .line 179
    :cond_85
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->h:[Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_87

    .line 180
    invoke-virtual {v2, v15}, Lorg/jsoup/parser/HtmlTreeBuilder;->F(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_86

    invoke-virtual {v2, v15}, Lorg/jsoup/parser/TreeBuilder;->n(Ljava/lang/String;)Z

    .line 181
    :cond_86
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->N(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    return v25

    .line 182
    :cond_87
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->g:[Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_88

    .line 183
    invoke-virtual {v10, v1, v2}, Lorg/jsoup/parser/HtmlTreeBuilderState$4;->d(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v0

    return v0

    :cond_88
    move-object/from16 v1, v22

    .line 184
    invoke-static {v3, v1}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 185
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->Y()V

    .line 186
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->N(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 187
    iget-object v0, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->t:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    .line 188
    iput-boolean v4, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->x:Z

    return v25

    :cond_89
    const/4 v4, 0x0

    .line 189
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->m:[Ljava/lang/String;

    invoke-static {v3, v1}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 190
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->O(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    return v25

    .line 191
    :cond_8a
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->n:[Ljava/lang/String;

    invoke-static {v3, v1}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8b

    move-object/from16 v3, p0

    .line 192
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v4

    :cond_8b
    move-object/from16 v3, p0

    .line 193
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->Y()V

    .line 194
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->N(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    return v25

    :pswitch_e
    move-object/from16 v3, p0

    .line 195
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/TreeBuilder;->r(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/parser/Tag;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/parser/Tag;->b()Lorg/jsoup/parser/TokeniserState;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->b(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;Lorg/jsoup/parser/TokeniserState;)V

    return v25

    :pswitch_f
    move-object/from16 v3, p0

    .line 196
    invoke-virtual {v2, v15}, Lorg/jsoup/parser/HtmlTreeBuilder;->F(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 197
    invoke-virtual {v2, v15}, Lorg/jsoup/parser/TreeBuilder;->n(Ljava/lang/String;)Z

    .line 198
    :cond_8c
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->N(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 199
    iget-object v0, v2, Lorg/jsoup/parser/TreeBuilder;->c:Lorg/jsoup/parser/Tokeniser;

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->k:Lorg/jsoup/parser/TokeniserState$7;

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/Tokeniser;->o(Lorg/jsoup/parser/TokeniserState;)V

    return v25

    :pswitch_10
    move-object/from16 v3, p0

    .line 200
    iget-object v1, v2, Lorg/jsoup/parser/TreeBuilder;->d:Lorg/jsoup/nodes/Document;

    .line 201
    invoke-virtual {v1}, Lorg/jsoup/nodes/Document;->quirksMode()Lorg/jsoup/nodes/Document$QuirksMode;

    move-result-object v1

    sget-object v4, Lorg/jsoup/nodes/Document$QuirksMode;->quirks:Lorg/jsoup/nodes/Document$QuirksMode;

    if-eq v1, v4, :cond_8d

    invoke-virtual {v2, v15}, Lorg/jsoup/parser/HtmlTreeBuilder;->F(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 202
    invoke-virtual {v2, v15}, Lorg/jsoup/parser/TreeBuilder;->n(Ljava/lang/String;)Z

    .line 203
    :cond_8d
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->N(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    const/4 v4, 0x0

    .line 204
    iput-boolean v4, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->x:Z

    .line 205
    iput-object v5, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->n:Lorg/jsoup/parser/HtmlTreeBuilderState;

    return v25

    :pswitch_11
    move-object/from16 v3, p0

    const/4 v4, 0x0

    .line 206
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->Y()V

    .line 207
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->O(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 208
    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hidden"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ac

    .line 209
    iput-boolean v4, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->x:Z

    return v25

    :pswitch_12
    move-object/from16 v3, p0

    .line 210
    const-string v1, "svg"

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->E(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    if-nez v1, :cond_8e

    .line 211
    const-string v1, "img"

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/Token$Tag;->k(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->m(Lorg/jsoup/parser/Token;)Z

    move-result v0

    return v0

    .line 212
    :cond_8e
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->N(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    return v25

    :pswitch_13
    move-object/from16 v3, p0

    .line 213
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->Y()V

    .line 214
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->N(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    return v25

    :pswitch_14
    move-object/from16 v3, p0

    .line 215
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->Y()V

    .line 216
    const-string v1, "nobr"

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->G(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8f

    .line 217
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 218
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/TreeBuilder;->n(Ljava/lang/String;)Z

    .line 219
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->Y()V

    .line 220
    :cond_8f
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->N(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 221
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->u(Lorg/jsoup/nodes/Element;)V

    .line 222
    iget-object v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->t:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v25

    :pswitch_15
    move-object/from16 v3, p0

    .line 223
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->Y()V

    .line 224
    const-string v1, "http://www.w3.org/1998/Math/MathML"

    invoke-virtual {v2, v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->P(Lorg/jsoup/parser/Token$StartTag;Ljava/lang/String;)V

    return v25

    :pswitch_16
    move-object/from16 v3, p0

    .line 225
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    move-object/from16 v4, v28

    .line 226
    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->S(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_91

    :cond_90
    :goto_20
    const/16 v19, 0x0

    goto/16 :goto_2b

    .line 227
    :cond_91
    iget-object v1, v2, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    .line 228
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_ac

    .line 229
    iget-object v1, v2, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    const/4 v5, 0x0

    .line 230
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    .line 231
    invoke-static {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->c(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/nodes/Element;)V

    return v25

    :pswitch_17
    move-object/from16 v3, p0

    move-object/from16 v4, v28

    const/4 v5, 0x0

    .line 232
    iget-object v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->r:Lorg/jsoup/nodes/FormElement;

    if-eqz v1, :cond_92

    .line 233
    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->S(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_92

    .line 234
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v5

    .line 235
    :cond_92
    invoke-virtual {v2, v15}, Lorg/jsoup/parser/HtmlTreeBuilder;->F(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_94

    .line 236
    invoke-virtual {v2, v15}, Lorg/jsoup/parser/HtmlTreeBuilder;->C(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v2}, Lorg/jsoup/parser/TreeBuilder;->b()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_93

    .line 238
    iget-object v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->n:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 239
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 240
    :cond_93
    invoke-virtual {v2, v15}, Lorg/jsoup/parser/HtmlTreeBuilder;->V(Ljava/lang/String;)V

    :cond_94
    move/from16 v1, v25

    .line 241
    invoke-virtual {v2, v0, v1, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->Q(Lorg/jsoup/parser/Token$StartTag;ZZ)V

    return v1

    :pswitch_18
    move-object/from16 v3, p0

    move/from16 v1, v25

    move-object/from16 v4, v28

    .line 242
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 243
    iget-object v5, v2, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    .line 244
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eq v6, v1, :cond_90

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_95

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/nodes/Element;

    invoke-virtual {v5, v8}, Lorg/jsoup/nodes/Node;->nameIs(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_90

    :cond_95
    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->S(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_96

    goto :goto_20

    :cond_96
    const/4 v4, 0x0

    .line 245
    iput-boolean v4, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->x:Z

    .line 246
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->E(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    if-eqz v1, :cond_97

    .line 247
    invoke-static {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->c(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/nodes/Element;)V

    const/16 v25, 0x1

    return v25

    :cond_97
    const/16 v25, 0x1

    goto/16 :goto_28

    :pswitch_19
    move-object/from16 v3, p0

    .line 248
    invoke-virtual {v2, v15}, Lorg/jsoup/parser/HtmlTreeBuilder;->F(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_98

    .line 249
    invoke-virtual {v2, v15}, Lorg/jsoup/parser/TreeBuilder;->n(Ljava/lang/String;)Z

    .line 250
    :cond_98
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->Y()V

    const/4 v4, 0x0

    .line 251
    iput-boolean v4, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->x:Z

    .line 252
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/TreeBuilder;->r(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/parser/Tag;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/parser/Tag;->b()Lorg/jsoup/parser/TokeniserState;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->b(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;Lorg/jsoup/parser/TokeniserState;)V

    const/16 v25, 0x1

    return v25

    :pswitch_1a
    move-object/from16 v3, p0

    .line 253
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->Y()V

    .line 254
    const-string v1, "http://www.w3.org/2000/svg"

    invoke-virtual {v2, v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->P(Lorg/jsoup/parser/Token$StartTag;Ljava/lang/String;)V

    return v25

    :pswitch_1b
    move-object/from16 v3, p0

    .line 255
    invoke-virtual {v2, v15}, Lorg/jsoup/parser/HtmlTreeBuilder;->F(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_99

    .line 256
    invoke-virtual {v2, v15}, Lorg/jsoup/parser/TreeBuilder;->n(Ljava/lang/String;)Z

    .line 257
    :cond_99
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->N(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 258
    iget-object v0, v2, Lorg/jsoup/parser/TreeBuilder;->b:Lorg/jsoup/parser/CharacterReader;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/CharacterReader;->m(Ljava/lang/String;)Z

    const/4 v4, 0x0

    .line 259
    iput-boolean v4, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->x:Z

    return v25

    :pswitch_1c
    move-object/from16 v3, p0

    .line 260
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->G(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 261
    const-string v1, "rtc"

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->C(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/TreeBuilder;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9a

    invoke-virtual {v2, v7}, Lorg/jsoup/parser/TreeBuilder;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9a

    .line 263
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 264
    :cond_9a
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->N(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    const/16 v25, 0x1

    return v25

    :pswitch_1d
    move-object/from16 v3, p0

    .line 265
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->G(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9b

    const/4 v5, 0x0

    .line 266
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->D(Z)V

    .line 267
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/TreeBuilder;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9b

    .line 268
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 269
    :cond_9b
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->N(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    return v25

    :pswitch_1e
    move-object/from16 v3, p0

    const/4 v5, 0x0

    .line 270
    iput-boolean v5, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->x:Z

    .line 271
    iget-object v1, v2, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    .line 272
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_21
    if-lez v5, :cond_9e

    .line 273
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jsoup/nodes/Element;

    .line 274
    invoke-virtual {v7, v6}, Lorg/jsoup/nodes/Node;->nameIs(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9c

    .line 275
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/TreeBuilder;->n(Ljava/lang/String;)Z

    goto :goto_22

    .line 276
    :cond_9c
    invoke-static {v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->R(Lorg/jsoup/nodes/Element;)Z

    move-result v8

    if-eqz v8, :cond_9d

    invoke-virtual {v7}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9d

    goto :goto_22

    :cond_9d
    add-int/lit8 v5, v5, -0x1

    goto :goto_21

    .line 277
    :cond_9e
    :goto_22
    invoke-virtual {v2, v15}, Lorg/jsoup/parser/HtmlTreeBuilder;->F(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 278
    invoke-virtual {v2, v15}, Lorg/jsoup/parser/TreeBuilder;->n(Ljava/lang/String;)Z

    .line 279
    :cond_9f
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->N(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    const/16 v25, 0x1

    return v25

    :pswitch_1f
    move-object/from16 v3, p0

    .line 280
    invoke-virtual {v2, v15}, Lorg/jsoup/parser/HtmlTreeBuilder;->F(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a0

    .line 281
    invoke-virtual {v2, v15}, Lorg/jsoup/parser/TreeBuilder;->n(Ljava/lang/String;)Z

    .line 282
    :cond_a0
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->O(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    const/4 v4, 0x0

    .line 283
    iput-boolean v4, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->x:Z

    return v25

    :pswitch_20
    move-object/from16 v3, p0

    .line 284
    invoke-virtual {v2, v15}, Lorg/jsoup/parser/HtmlTreeBuilder;->F(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 285
    invoke-virtual {v2, v15}, Lorg/jsoup/parser/TreeBuilder;->n(Ljava/lang/String;)Z

    .line 286
    :cond_a1
    invoke-virtual {v2}, Lorg/jsoup/parser/TreeBuilder;->b()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v4, v27

    invoke-static {v1, v4}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a2

    .line 287
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 288
    invoke-virtual {v2}, Lorg/jsoup/parser/TreeBuilder;->l()Lorg/jsoup/nodes/Element;

    .line 289
    :cond_a2
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->N(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    const/16 v25, 0x1

    return v25

    :pswitch_21
    move-object/from16 v3, p0

    const/4 v5, 0x0

    .line 290
    iput-boolean v5, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->x:Z

    .line 291
    iget-object v1, v2, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    .line 292
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v6, v5, -0x1

    const/16 v7, 0x18

    if-lt v6, v7, :cond_a3

    add-int/lit8 v5, v5, -0x19

    goto :goto_23

    :cond_a3
    const/4 v5, 0x0

    :goto_23
    if-lt v6, v5, :cond_a6

    .line 293
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jsoup/nodes/Element;

    .line 294
    invoke-virtual {v7}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->k:[Ljava/lang/String;

    invoke-static {v8, v9}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a4

    .line 295
    invoke-virtual {v7}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/TreeBuilder;->n(Ljava/lang/String;)Z

    goto :goto_24

    .line 296
    :cond_a4
    invoke-static {v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->R(Lorg/jsoup/nodes/Element;)Z

    move-result v8

    if-eqz v8, :cond_a5

    invoke-virtual {v7}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a5

    goto :goto_24

    :cond_a5
    add-int/lit8 v6, v6, -0x1

    goto :goto_23

    .line 297
    :cond_a6
    :goto_24
    invoke-virtual {v2, v15}, Lorg/jsoup/parser/HtmlTreeBuilder;->F(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a7

    .line 298
    invoke-virtual {v2, v15}, Lorg/jsoup/parser/TreeBuilder;->n(Ljava/lang/String;)Z

    .line 299
    :cond_a7
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->N(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    const/16 v25, 0x1

    return v25

    :pswitch_22
    const/4 v4, 0x0

    move-object/from16 v3, p0

    .line 300
    iget-object v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->t:Ljava/util/ArrayList;

    .line 301
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_25
    const-string v5, "a"

    if-ltz v1, :cond_aa

    .line 302
    iget-object v6, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->t:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jsoup/nodes/Element;

    if-nez v6, :cond_a8

    goto :goto_26

    .line 303
    :cond_a8
    invoke-virtual {v6, v5}, Lorg/jsoup/nodes/Node;->nameIs(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a9

    move-object v10, v6

    goto :goto_27

    :cond_a9
    add-int/lit8 v1, v1, -0x1

    goto :goto_25

    :cond_aa
    :goto_26
    move-object v10, v4

    :goto_27
    if-eqz v10, :cond_ab

    .line 304
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 305
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/TreeBuilder;->n(Ljava/lang/String;)Z

    .line 306
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->E(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    if-eqz v1, :cond_ab

    .line 307
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->Z(Lorg/jsoup/nodes/Element;)V

    .line 308
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->a0(Lorg/jsoup/nodes/Element;)V

    .line 309
    :cond_ab
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->Y()V

    .line 310
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->N(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 311
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->u(Lorg/jsoup/nodes/Element;)V

    .line 312
    iget-object v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->t:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v25, 0x1

    return v25

    :pswitch_23
    move-object/from16 v3, p0

    .line 313
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->Y()V

    .line 314
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->N(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 315
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->u(Lorg/jsoup/nodes/Element;)V

    .line 316
    iget-object v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->t:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v25

    :pswitch_24
    move-object/from16 v3, p0

    .line 317
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->Y()V

    .line 318
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->N(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    const/4 v4, 0x0

    .line 319
    iput-boolean v4, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->x:Z

    .line 320
    iget-boolean v0, v0, Lorg/jsoup/parser/Token$Tag;->f:Z

    if-eqz v0, :cond_ad

    :cond_ac
    :goto_28
    return v25

    .line 321
    :cond_ad
    iget-object v0, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->n:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 322
    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ae

    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState;->o:Lorg/jsoup/parser/HtmlTreeBuilderState$11;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ae

    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState;->q:Lorg/jsoup/parser/HtmlTreeBuilderState$13;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ae

    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState;->r:Lorg/jsoup/parser/HtmlTreeBuilderState$14;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ae

    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState;->s:Lorg/jsoup/parser/HtmlTreeBuilderState$15;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_af

    :cond_ae
    const/4 v4, 0x1

    goto :goto_29

    .line 323
    :cond_af
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->t:Lorg/jsoup/parser/HtmlTreeBuilderState$16;

    .line 324
    iput-object v0, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->n:Lorg/jsoup/parser/HtmlTreeBuilderState;

    const/4 v4, 0x1

    return v4

    .line 325
    :goto_29
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->u:Lorg/jsoup/parser/HtmlTreeBuilderState$17;

    .line 326
    iput-object v0, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->n:Lorg/jsoup/parser/HtmlTreeBuilderState;

    return v4

    :pswitch_25
    move-object/from16 v3, p0

    move/from16 v4, v25

    const/4 v5, 0x0

    .line 327
    iput-boolean v5, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->x:Z

    .line 328
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/TreeBuilder;->r(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/parser/Tag;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/parser/Tag;->b()Lorg/jsoup/parser/TokeniserState;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->b(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;Lorg/jsoup/parser/TokeniserState;)V

    return v4

    :pswitch_26
    move-object/from16 v3, p0

    move/from16 v4, v25

    .line 329
    const-string v1, "option"

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/TreeBuilder;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b0

    .line 330
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/TreeBuilder;->n(Ljava/lang/String;)Z

    .line 331
    :cond_b0
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->Y()V

    .line 332
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->N(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    return v4

    :pswitch_27
    move-object/from16 v3, p0

    move/from16 v4, v25

    .line 333
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->Y()V

    .line 334
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->O(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    const/4 v5, 0x0

    .line 335
    iput-boolean v5, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->x:Z

    return v4

    :pswitch_28
    move-object/from16 v3, p0

    move/from16 v4, v25

    const/4 v5, 0x0

    .line 336
    iput-boolean v5, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->x:Z

    .line 337
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/TreeBuilder;->r(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/parser/Tag;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/parser/Tag;->b()Lorg/jsoup/parser/TokeniserState;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->b(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;Lorg/jsoup/parser/TokeniserState;)V

    return v4

    :pswitch_29
    move-object/from16 v3, p0

    move/from16 v4, v25

    .line 338
    const-string v1, "button"

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->F(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b1

    .line 339
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 340
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/TreeBuilder;->n(Ljava/lang/String;)Z

    .line 341
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->m(Lorg/jsoup/parser/Token;)Z

    return v4

    .line 342
    :cond_b1
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->Y()V

    .line 343
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->N(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    const/4 v5, 0x0

    .line 344
    iput-boolean v5, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->x:Z

    return v4

    :pswitch_2a
    move-object/from16 v3, p0

    move/from16 v4, v25

    .line 345
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 346
    iget-object v1, v2, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    .line 347
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v5, v4, :cond_90

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x2

    if-le v5, v7, :cond_b2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/nodes/Element;

    invoke-virtual {v5, v8}, Lorg/jsoup/nodes/Node;->nameIs(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b2

    goto/16 :goto_20

    .line 348
    :cond_b2
    iget-boolean v5, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->x:Z

    if-nez v5, :cond_b3

    goto/16 :goto_20

    .line 349
    :cond_b3
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/nodes/Element;

    .line 350
    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v6

    if-eqz v6, :cond_b4

    .line 351
    invoke-virtual {v5}, Lorg/jsoup/nodes/Node;->remove()V

    .line 352
    :cond_b4
    :goto_2a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v4, :cond_b5

    .line 353
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2a

    .line 354
    :cond_b5
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->N(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 355
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->x:Lorg/jsoup/parser/HtmlTreeBuilderState$20;

    .line 356
    iput-object v0, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->n:Lorg/jsoup/parser/HtmlTreeBuilderState;

    return v4

    :goto_2b
    return v19

    :pswitch_2b
    move/from16 v19, v3

    move-object v3, v0

    .line 357
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v19

    :pswitch_2c
    move-object v3, v0

    move/from16 v4, v25

    .line 358
    move-object v0, v1

    check-cast v0, Lorg/jsoup/parser/Token$Comment;

    .line 359
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->M(Lorg/jsoup/parser/Token$Comment;)V

    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_2b
        :pswitch_d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x4ec53386 -> :sswitch_10
        0x70 -> :sswitch_f
        0xc50 -> :sswitch_e
        0xc80 -> :sswitch_d
        0xc90 -> :sswitch_c
        0xcc9 -> :sswitch_b
        0xcca -> :sswitch_a
        0xccb -> :sswitch_9
        0xccc -> :sswitch_8
        0xccd -> :sswitch_7
        0xcce -> :sswitch_6
        0xd7d -> :sswitch_5
        0x2e39a2 -> :sswitch_4
        0x300cc4 -> :sswitch_3
        0x3107ab -> :sswitch_2
        0x35f74a -> :sswitch_1
        0x6f67a51c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x620c002b -> :sswitch_47
        -0x521dd8ce -> :sswitch_46
        -0x47007d5c -> :sswitch_45
        -0x43a19f6f -> :sswitch_44
        -0x3c35778b -> :sswitch_43
        -0x3bcc48c6 -> :sswitch_42
        -0x3600cb04 -> :sswitch_41
        -0x352aa04e -> :sswitch_40
        -0x352a8969 -> :sswitch_3f
        -0x4d08054 -> :sswitch_3e
        0x61 -> :sswitch_3d
        0x62 -> :sswitch_3c
        0x69 -> :sswitch_3b
        0x73 -> :sswitch_3a
        0x75 -> :sswitch_39
        0xc50 -> :sswitch_38
        0xc80 -> :sswitch_37
        0xc90 -> :sswitch_36
        0xca8 -> :sswitch_35
        0xcc9 -> :sswitch_34
        0xcca -> :sswitch_33
        0xccb -> :sswitch_32
        0xccc -> :sswitch_31
        0xccd -> :sswitch_30
        0xcce -> :sswitch_2f
        0xd0a -> :sswitch_2e
        0xd7d -> :sswitch_2d
        0xe30 -> :sswitch_2c
        0xe3e -> :sswitch_2b
        0xe42 -> :sswitch_2a
        0xe80 -> :sswitch_29
        0x17d00 -> :sswitch_28
        0x197c3 -> :sswitch_27
        0x1b2a3 -> :sswitch_26
        0x1ba61 -> :sswitch_25
        0x1be64 -> :sswitch_24
        0x1cb07 -> :sswitch_23
        0x1d01b -> :sswitch_22
        0x2dd08d -> :sswitch_21
        0x2e39a2 -> :sswitch_20
        0x2eaded -> :sswitch_1f
        0x300c4f -> :sswitch_1e
        0x300cc4 -> :sswitch_1d
        0x3107ab -> :sswitch_1c
        0x330708 -> :sswitch_1b
        0x33add1 -> :sswitch_1a
        0x35f74a -> :sswitch_19
        0x5c24ed9 -> :sswitch_18
        0x5faa95b -> :sswitch_17
        0x5fb57ca -> :sswitch_16
        0x6879507 -> :sswitch_15
        0x6903bce -> :sswitch_14
        0xad8ba84 -> :sswitch_13
        0x759d29f7 -> :sswitch_12
        0x7e19b1b8 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_23
        :pswitch_26
        :pswitch_22
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_27
        :pswitch_21
        :pswitch_21
        :pswitch_23
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1c
        :pswitch_23
        :pswitch_23
        :pswitch_27
        :pswitch_1b
        :pswitch_1d
        :pswitch_1a
        :pswitch_27
        :pswitch_19
        :pswitch_27
        :pswitch_18
        :pswitch_23
        :pswitch_23
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_27
        :pswitch_12
        :pswitch_11
        :pswitch_23
        :pswitch_10
        :pswitch_1b
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method

.method public final e(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    check-cast p1, Lorg/jsoup/parser/Token$EndTag;

    .line 5
    .line 6
    iget-object p1, p1, Lorg/jsoup/parser/Token$Tag;->e:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v0, p2, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->E(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 18
    .line 19
    .line 20
    return v2

    .line 21
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v3, 0x1

    .line 26
    sub-int/2addr v1, v3

    .line 27
    :goto_0
    if-ltz v1, :cond_4

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Lorg/jsoup/nodes/Element;

    .line 34
    .line 35
    invoke-virtual {v4, p1}, Lorg/jsoup/nodes/Node;->nameIs(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_2

    .line 40
    .line 41
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->C(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/TreeBuilder;->c(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_1

    .line 49
    .line 50
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->V(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return v3

    .line 57
    :cond_2
    invoke-static {v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->R(Lorg/jsoup/nodes/Element;)Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_3

    .line 62
    .line 63
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 64
    .line 65
    .line 66
    return v2

    .line 67
    :cond_3
    add-int/lit8 v1, v1, -0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    return v3
.end method
