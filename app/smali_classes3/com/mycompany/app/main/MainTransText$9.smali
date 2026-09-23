.class Lcom/mycompany/app/main/MainTransText$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainTransText;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainTransText;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainTransText$9;->c:Lcom/mycompany/app/main/MainTransText;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTransText$9;->c:Lcom/mycompany/app/main/MainTransText;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainTransText;->v:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lcom/mycompany/app/main/MainTransText;->v:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v3, 0x5

    .line 9
    const/4 v4, 0x1

    .line 10
    const/4 v5, 0x0

    .line 11
    :try_start_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v6

    .line 15
    if-eqz v6, :cond_0

    .line 16
    .line 17
    goto/16 :goto_6

    .line 18
    .line 19
    :cond_0
    iget-object v6, v0, Lcom/mycompany/app/main/MainTransText;->o:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v1, v6}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    .line 22
    .line 23
    .line 24
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-object v1, v2

    .line 27
    :goto_0
    if-nez v1, :cond_1

    .line 28
    .line 29
    goto/16 :goto_6

    .line 30
    .line 31
    :cond_1
    const-string v6, "div"

    .line 32
    .line 33
    invoke-virtual {v1, v6}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-eqz v1, :cond_c

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    if-nez v6, :cond_2

    .line 44
    .line 45
    goto/16 :goto_6

    .line 46
    .line 47
    :cond_2
    iget v6, v0, Lcom/mycompany/app/main/MainTransText;->q:I

    .line 48
    .line 49
    if-ge v6, v3, :cond_3

    .line 50
    .line 51
    move v6, v4

    .line 52
    goto :goto_1

    .line 53
    :cond_3
    move v6, v5

    .line 54
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    move v8, v5

    .line 59
    :cond_4
    :goto_2
    if-ge v8, v7, :cond_b

    .line 60
    .line 61
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    add-int/lit8 v8, v8, 0x1

    .line 66
    .line 67
    check-cast v9, Lorg/jsoup/nodes/Element;

    .line 68
    .line 69
    if-nez v9, :cond_5

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_5
    invoke-virtual {v9}, Lorg/jsoup/nodes/Element;->id()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v10

    .line 76
    invoke-static {v10}, Lcom/mycompany/app/main/MainUtil;->H6(Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v10

    .line 80
    iget-object v11, v0, Lcom/mycompany/app/main/MainTransText;->e:Ljava/util/List;

    .line 81
    .line 82
    if-eqz v11, :cond_7

    .line 83
    .line 84
    if-ltz v10, :cond_7

    .line 85
    .line 86
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 87
    .line 88
    .line 89
    move-result v12

    .line 90
    if-lt v10, v12, :cond_6

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_6
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v10

    .line 97
    check-cast v10, Lcom/mycompany/app/web/WebReadTask$ReadItem;

    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_7
    :goto_3
    move-object v10, v2

    .line 101
    :goto_4
    if-nez v10, :cond_8

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_8
    const-string v11, "p"

    .line 105
    .line 106
    invoke-virtual {v9, v11}, Lorg/jsoup/nodes/Element;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 107
    .line 108
    .line 109
    move-result-object v9

    .line 110
    const/4 v11, 0x2

    .line 111
    if-nez v9, :cond_9

    .line 112
    .line 113
    goto :goto_5

    .line 114
    :cond_9
    invoke-virtual {v9}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v12

    .line 118
    iput-object v12, v10, Lcom/mycompany/app/web/WebReadTask$ReadItem;->h:Ljava/lang/String;

    .line 119
    .line 120
    const-string v12, "font"

    .line 121
    .line 122
    invoke-virtual {v9, v12}, Lorg/jsoup/nodes/Element;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 123
    .line 124
    .line 125
    move-result-object v9

    .line 126
    if-nez v9, :cond_a

    .line 127
    .line 128
    iput v4, v10, Lcom/mycompany/app/web/WebReadTask$ReadItem;->i:I

    .line 129
    .line 130
    goto :goto_5

    .line 131
    :cond_a
    iput v11, v10, Lcom/mycompany/app/web/WebReadTask$ReadItem;->i:I

    .line 132
    .line 133
    :goto_5
    iget v9, v10, Lcom/mycompany/app/web/WebReadTask$ReadItem;->i:I

    .line 134
    .line 135
    if-eq v9, v11, :cond_4

    .line 136
    .line 137
    move v5, v4

    .line 138
    if-eqz v6, :cond_4

    .line 139
    .line 140
    :cond_b
    xor-int/2addr v5, v4

    .line 141
    :cond_c
    :goto_6
    if-nez v5, :cond_e

    .line 142
    .line 143
    iget v1, v0, Lcom/mycompany/app/main/MainTransText;->q:I

    .line 144
    .line 145
    if-ge v1, v3, :cond_e

    .line 146
    .line 147
    add-int/2addr v1, v4

    .line 148
    iput v1, v0, Lcom/mycompany/app/main/MainTransText;->q:I

    .line 149
    .line 150
    iget-object v0, v0, Lcom/mycompany/app/main/MainTransText;->g:Lcom/mycompany/app/view/MyWebSafe;

    .line 151
    .line 152
    if-nez v0, :cond_d

    .line 153
    .line 154
    goto :goto_7

    .line 155
    :cond_d
    new-instance v1, Lcom/mycompany/app/main/MainTransText$9$1;

    .line 156
    .line 157
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/MainTransText$9$1;-><init>(Lcom/mycompany/app/main/MainTransText$9;)V

    .line 158
    .line 159
    .line 160
    const-wide/16 v2, 0x64

    .line 161
    .line 162
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 163
    .line 164
    .line 165
    return-void

    .line 166
    :cond_e
    iget-object v0, v0, Lcom/mycompany/app/main/MainTransText;->g:Lcom/mycompany/app/view/MyWebSafe;

    .line 167
    .line 168
    if-nez v0, :cond_f

    .line 169
    .line 170
    :goto_7
    return-void

    .line 171
    :cond_f
    new-instance v1, Lcom/mycompany/app/main/MainTransText$9$2;

    .line 172
    .line 173
    invoke-direct {v1, p0, v5}, Lcom/mycompany/app/main/MainTransText$9$2;-><init>(Lcom/mycompany/app/main/MainTransText$9;Z)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 177
    .line 178
    .line 179
    return-void
.end method
