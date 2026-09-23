.class Lcom/mycompany/app/web/WebViewActivity$92;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:J

.field public final synthetic f:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$92;->f:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/mycompany/app/web/WebViewActivity$92;->c:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    iget-wide v3, v0, Lcom/mycompany/app/web/WebViewActivity$92;->c:J

    .line 6
    .line 7
    cmp-long v1, v3, v1

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    sget v1, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$92;->f:Lcom/mycompany/app/web/WebViewActivity;

    .line 15
    .line 16
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->O2:Ljava/util/List;

    .line 17
    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    goto/16 :goto_7

    .line 21
    .line 22
    :cond_1
    iget-object v5, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 23
    .line 24
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookTmem;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookTmem;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    const/4 v6, 0x1

    .line 32
    const/4 v7, 0x0

    .line 33
    :try_start_0
    iget-object v5, v5, Lcom/mycompany/app/data/book/DataBookTmem;->c:Ljava/util/ArrayList;

    .line 34
    .line 35
    if-eqz v5, :cond_2

    .line 36
    .line 37
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    if-nez v5, :cond_2

    .line 42
    .line 43
    move v5, v6

    .line 44
    goto :goto_0

    .line 45
    :catch_0
    :cond_2
    move v5, v7

    .line 46
    :goto_0
    :try_start_1
    iget v8, v1, Lcom/mycompany/app/web/WebViewActivity;->P2:I

    .line 47
    .line 48
    add-int/lit8 v9, v8, -0x2

    .line 49
    .line 50
    add-int/lit8 v8, v8, 0x2

    .line 51
    .line 52
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 53
    .line 54
    .line 55
    move-result v10

    .line 56
    move v11, v7

    .line 57
    :goto_1
    if-ge v11, v10, :cond_10

    .line 58
    .line 59
    if-le v11, v9, :cond_3

    .line 60
    .line 61
    if-ge v11, v8, :cond_3

    .line 62
    .line 63
    goto/16 :goto_6

    .line 64
    .line 65
    :cond_3
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v12

    .line 69
    check-cast v12, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 70
    .line 71
    if-nez v12, :cond_4

    .line 72
    .line 73
    goto/16 :goto_6

    .line 74
    .line 75
    :cond_4
    iget-wide v13, v12, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->b:J

    .line 76
    .line 77
    cmp-long v13, v13, v3

    .line 78
    .line 79
    if-ltz v13, :cond_5

    .line 80
    .line 81
    goto/16 :goto_6

    .line 82
    .line 83
    :cond_5
    iget-object v13, v12, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->p:Lcom/mycompany/app/web/WebNestFrame;

    .line 84
    .line 85
    if-nez v13, :cond_6

    .line 86
    .line 87
    goto/16 :goto_6

    .line 88
    .line 89
    :cond_6
    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I

    .line 90
    .line 91
    .line 92
    move-result v14

    .line 93
    if-nez v14, :cond_8

    .line 94
    .line 95
    :cond_7
    :goto_2
    move v13, v6

    .line 96
    goto :goto_3

    .line 97
    :cond_8
    iget-object v13, v13, Lcom/mycompany/app/web/WebNestFrame;->o:Ljava/util/List;

    .line 98
    .line 99
    if-eqz v13, :cond_7

    .line 100
    .line 101
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    .line 102
    .line 103
    .line 104
    move-result v13

    .line 105
    if-eqz v13, :cond_9

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_9
    move v13, v7

    .line 109
    :goto_3
    if-eqz v13, :cond_a

    .line 110
    .line 111
    goto :goto_6

    .line 112
    :cond_a
    if-eqz v5, :cond_f

    .line 113
    .line 114
    iget-object v13, v12, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 115
    .line 116
    invoke-static {v13, v6}, Lcom/mycompany/app/main/MainUtil;->I1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v13

    .line 120
    iget-object v14, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 121
    .line 122
    invoke-static {v14}, Lcom/mycompany/app/data/book/DataBookTmem;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookTmem;

    .line 123
    .line 124
    .line 125
    move-result-object v14

    .line 126
    iget-object v15, v12, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 129
    .line 130
    .line 131
    :try_start_2
    iget-object v6, v14, Lcom/mycompany/app/data/book/DataBookTmem;->c:Ljava/util/ArrayList;

    .line 132
    .line 133
    if-eqz v6, :cond_d

    .line 134
    .line 135
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    if-eqz v6, :cond_b

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_b
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    if-nez v6, :cond_c

    .line 147
    .line 148
    iget-object v6, v14, Lcom/mycompany/app/data/book/DataBookTmem;->c:Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v6

    .line 154
    if-eqz v6, :cond_c

    .line 155
    .line 156
    const/4 v6, 0x1

    .line 157
    goto :goto_5

    .line 158
    :cond_c
    invoke-static {v15}, Lcom/mycompany/app/main/MainUtil;->S6(Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 163
    .line 164
    .line 165
    move-result v13

    .line 166
    if-eqz v13, :cond_e

    .line 167
    .line 168
    :catch_1
    :cond_d
    :goto_4
    move v6, v7

    .line 169
    goto :goto_5

    .line 170
    :cond_e
    iget-object v13, v14, Lcom/mycompany/app/data/book/DataBookTmem;->c:Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 176
    :goto_5
    if-eqz v6, :cond_f

    .line 177
    .line 178
    goto :goto_6

    .line 179
    :cond_f
    :try_start_3
    iget-object v6, v12, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->p:Lcom/mycompany/app/web/WebNestFrame;

    .line 180
    .line 181
    invoke-virtual {v6, v7}, Lcom/mycompany/app/web/WebNestFrame;->setBlankView(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 182
    .line 183
    .line 184
    :goto_6
    add-int/lit8 v11, v11, 0x1

    .line 185
    .line 186
    const/4 v6, 0x1

    .line 187
    goto/16 :goto_1

    .line 188
    .line 189
    :catch_2
    :cond_10
    :goto_7
    return-void
.end method
