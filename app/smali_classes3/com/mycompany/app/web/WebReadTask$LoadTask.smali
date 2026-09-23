.class Lcom/mycompany/app/web/WebReadTask$LoadTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/web/WebReadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebReadTask;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/web/WebReadTask$LoadTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/mycompany/app/web/WebReadTask;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object p1, p1, Lcom/mycompany/app/web/WebReadTask;->g:Ljava/lang/String;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/mycompany/app/web/WebReadTask$LoadTask;->f:Ljava/lang/String;

    .line 23
    .line 24
    iput-object p2, p0, Lcom/mycompany/app/web/WebReadTask$LoadTask;->g:Ljava/lang/String;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebReadTask$LoadTask;->f:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/web/WebReadTask$LoadTask;->e:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_5

    .line 8
    .line 9
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/mycompany/app/web/WebReadTask;

    .line 14
    .line 15
    if-eqz v1, :cond_b

    .line 16
    .line 17
    iget-boolean v2, v1, Lcom/mycompany/app/web/WebReadTask;->e:Z

    .line 18
    .line 19
    iget-boolean v3, p0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 20
    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    goto/16 :goto_5

    .line 24
    .line 25
    :cond_1
    const/4 v3, 0x0

    .line 26
    :try_start_0
    iget-object v4, p0, Lcom/mycompany/app/web/WebReadTask$LoadTask;->g:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v4, v0}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    .line 29
    .line 30
    .line 31
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-object v4, v3

    .line 34
    :goto_0
    :try_start_1
    invoke-static {v4}, Lcom/mycompany/app/web/WebReadTask;->s(Lorg/jsoup/nodes/Document;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-static {v5}, Lcom/mycompany/app/main/MainUtil;->n6(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    const/4 v7, 0x0

    .line 43
    if-eqz v6, :cond_4

    .line 44
    .line 45
    iput-boolean v7, v1, Lcom/mycompany/app/web/WebReadTask;->f:Z

    .line 46
    .line 47
    iget-object v0, v1, Lcom/mycompany/app/web/WebReadTask;->c:Lcom/mycompany/app/web/WebReadTask$WebReadListener;

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    invoke-interface {v0}, Lcom/mycompany/app/web/WebReadTask$WebReadListener;->c()V

    .line 52
    .line 53
    .line 54
    :cond_2
    const-string v0, "https://www.youtube.com/watch?v=sb_read_"

    .line 55
    .line 56
    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    const/16 v0, 0x28

    .line 63
    .line 64
    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {v1, v4, v0}, Lcom/mycompany/app/web/WebReadTask;->g(Lcom/mycompany/app/web/WebReadTask;Lorg/jsoup/nodes/Document;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :goto_1
    move-object v9, v0

    .line 72
    goto :goto_2

    .line 73
    :cond_3
    invoke-static {v5}, Lcom/mycompany/app/main/MainUtil;->x4(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {v1, v4, v0}, Lcom/mycompany/app/web/WebReadTask;->f(Lcom/mycompany/app/web/WebReadTask;Lorg/jsoup/nodes/Document;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :goto_2
    invoke-static {v1}, Lcom/mycompany/app/web/WebReadTask;->e(Lcom/mycompany/app/web/WebReadTask;)Ljava/util/ArrayList;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    iput-object v5, p0, Lcom/mycompany/app/web/WebReadTask$LoadTask;->i:Ljava/util/ArrayList;

    .line 86
    .line 87
    iget-boolean v6, v1, Lcom/mycompany/app/web/WebReadTask;->e:Z

    .line 88
    .line 89
    iget v10, v1, Lcom/mycompany/app/web/WebReadTask;->m:I

    .line 90
    .line 91
    const/4 v7, 0x1

    .line 92
    const/4 v8, 0x0

    .line 93
    invoke-static/range {v5 .. v10}, Lcom/mycompany/app/web/WebReadTask;->h(Ljava/util/ArrayList;ZZZLjava/lang/String;I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    iput-object v0, p0, Lcom/mycompany/app/web/WebReadTask$LoadTask;->h:Ljava/lang/String;

    .line 98
    .line 99
    if-eqz v2, :cond_b

    .line 100
    .line 101
    iget-object v0, p0, Lcom/mycompany/app/web/WebReadTask$LoadTask;->i:Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-static {v0}, Lcom/mycompany/app/web/WebReadTask;->i(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    iput-object v0, p0, Lcom/mycompany/app/web/WebReadTask$LoadTask;->i:Ljava/util/ArrayList;

    .line 108
    .line 109
    goto/16 :goto_5

    .line 110
    .line 111
    :cond_4
    iget-object v5, v1, Lcom/mycompany/app/web/WebReadTask;->j:Ljava/lang/String;

    .line 112
    .line 113
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    if-eqz v5, :cond_5

    .line 118
    .line 119
    invoke-static {v4, v7}, Lcom/mycompany/app/web/WebReadTask;->n(Lorg/jsoup/nodes/Document;Z)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    if-nez v6, :cond_5

    .line 128
    .line 129
    iput-object v5, v1, Lcom/mycompany/app/web/WebReadTask;->j:Ljava/lang/String;

    .line 130
    .line 131
    iget-object v6, v1, Lcom/mycompany/app/web/WebReadTask;->c:Lcom/mycompany/app/web/WebReadTask$WebReadListener;

    .line 132
    .line 133
    if-eqz v6, :cond_5

    .line 134
    .line 135
    invoke-interface {v6, v5}, Lcom/mycompany/app/web/WebReadTask$WebReadListener;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 136
    .line 137
    .line 138
    :cond_5
    :try_start_2
    new-instance v5, Lnet/dankito/readability4j/Readability4J;

    .line 139
    .line 140
    invoke-direct {v5, v0, v4}, Lnet/dankito/readability4j/Readability4J;-><init>(Ljava/lang/String;Lorg/jsoup/nodes/Document;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v5}, Lnet/dankito/readability4j/Readability4J;->a()Lnet/dankito/readability4j/Article;

    .line 144
    .line 145
    .line 146
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 147
    :try_start_3
    iget-object v5, v1, Lcom/mycompany/app/web/WebReadTask;->i:Ljava/lang/String;

    .line 148
    .line 149
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    if-eqz v5, :cond_6

    .line 154
    .line 155
    iget-object v5, v0, Lnet/dankito/readability4j/Article;->a:Ljava/lang/String;

    .line 156
    .line 157
    iput-object v5, v1, Lcom/mycompany/app/web/WebReadTask;->i:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :catch_1
    move-object v0, v3

    .line 161
    :catch_2
    :cond_6
    :goto_3
    if-eqz v2, :cond_7

    .line 162
    .line 163
    :try_start_4
    invoke-static {v1, v0}, Lcom/mycompany/app/web/WebReadTask;->c(Lcom/mycompany/app/web/WebReadTask;Lnet/dankito/readability4j/Article;)Ljava/util/ArrayList;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    iput-object v5, p0, Lcom/mycompany/app/web/WebReadTask$LoadTask;->i:Ljava/util/ArrayList;

    .line 168
    .line 169
    iget-boolean v8, v1, Lcom/mycompany/app/web/WebReadTask;->f:Z

    .line 170
    .line 171
    const/4 v9, 0x0

    .line 172
    const/4 v10, 0x0

    .line 173
    const/4 v6, 0x1

    .line 174
    const/4 v7, 0x0

    .line 175
    invoke-static/range {v5 .. v10}, Lcom/mycompany/app/web/WebReadTask;->h(Ljava/util/ArrayList;ZZZLjava/lang/String;I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    iput-object v0, p0, Lcom/mycompany/app/web/WebReadTask$LoadTask;->h:Ljava/lang/String;

    .line 180
    .line 181
    iget-object v0, p0, Lcom/mycompany/app/web/WebReadTask$LoadTask;->i:Ljava/util/ArrayList;

    .line 182
    .line 183
    invoke-static {v0}, Lcom/mycompany/app/web/WebReadTask;->i(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    iput-object v0, p0, Lcom/mycompany/app/web/WebReadTask$LoadTask;->i:Ljava/util/ArrayList;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 188
    .line 189
    goto :goto_5

    .line 190
    :cond_7
    :try_start_5
    const-string v2, "meta[name=theme-color]"

    .line 191
    .line 192
    invoke-virtual {v4, v2}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    if-eqz v2, :cond_a

    .line 197
    .line 198
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    .line 199
    .line 200
    .line 201
    move-result v4

    .line 202
    if-nez v4, :cond_8

    .line 203
    .line 204
    goto :goto_4

    .line 205
    :cond_8
    invoke-virtual {v2}, Lorg/jsoup/select/Nodes;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 210
    .line 211
    .line 212
    move-result v4

    .line 213
    if-eqz v4, :cond_9

    .line 214
    .line 215
    goto :goto_4

    .line 216
    :cond_9
    const-string v4, "<meta"

    .line 217
    .line 218
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 219
    .line 220
    .line 221
    move-result v4

    .line 222
    if-eqz v4, :cond_a

    .line 223
    .line 224
    const-string v4, ">"

    .line 225
    .line 226
    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 227
    .line 228
    .line 229
    move-result v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 230
    if-eqz v4, :cond_a

    .line 231
    .line 232
    move-object v3, v2

    .line 233
    :catch_3
    :cond_a
    :goto_4
    :try_start_6
    invoke-static {v1, v0, v3}, Lcom/mycompany/app/web/WebReadTask;->b(Lcom/mycompany/app/web/WebReadTask;Lnet/dankito/readability4j/Article;Ljava/lang/String;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    iput-object v0, p0, Lcom/mycompany/app/web/WebReadTask$LoadTask;->h:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 238
    .line 239
    :catch_4
    :cond_b
    :goto_5
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebReadTask$LoadTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/mycompany/app/web/WebReadTask;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    iput-object v1, v0, Lcom/mycompany/app/web/WebReadTask;->n:Lcom/mycompany/app/web/WebReadTask$LoadTask;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/mycompany/app/web/WebReadTask;->c:Lcom/mycompany/app/web/WebReadTask$WebReadListener;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-interface {v0}, Lcom/mycompany/app/web/WebReadTask$WebReadListener;->a()V

    .line 23
    .line 24
    .line 25
    :cond_2
    :goto_0
    return-void
.end method

.method public final e()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebReadTask$LoadTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/mycompany/app/web/WebReadTask;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    iput-object v1, v0, Lcom/mycompany/app/web/WebReadTask;->n:Lcom/mycompany/app/web/WebReadTask$LoadTask;

    .line 17
    .line 18
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebReadTask;->d:Z

    .line 19
    .line 20
    if-eqz v1, :cond_6

    .line 21
    .line 22
    iget-object v1, p0, Lcom/mycompany/app/web/WebReadTask$LoadTask;->i:Ljava/util/ArrayList;

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/4 v2, 0x3

    .line 31
    if-ge v1, v2, :cond_6

    .line 32
    .line 33
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/web/WebReadTask;->t:Lcom/mycompany/app/web/WebNestView;

    .line 34
    .line 35
    if-nez v1, :cond_3

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    iget v1, v0, Lcom/mycompany/app/web/WebReadTask;->x:I

    .line 39
    .line 40
    const/4 v2, 0x2

    .line 41
    if-lt v1, v2, :cond_4

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    iput v1, v0, Lcom/mycompany/app/web/WebReadTask;->x:I

    .line 47
    .line 48
    iget-object v1, v0, Lcom/mycompany/app/web/WebReadTask;->r:Lcom/mycompany/app/web/WebReadTask$ReadWebListener;

    .line 49
    .line 50
    if-eqz v1, :cond_5

    .line 51
    .line 52
    invoke-interface {v1}, Lcom/mycompany/app/web/WebReadTask$ReadWebListener;->b()V

    .line 53
    .line 54
    .line 55
    :cond_5
    iget-object v1, v0, Lcom/mycompany/app/web/WebReadTask;->t:Lcom/mycompany/app/web/WebNestView;

    .line 56
    .line 57
    new-instance v2, Lcom/mycompany/app/web/WebReadTask$9;

    .line 58
    .line 59
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebReadTask$9;-><init>(Lcom/mycompany/app/web/WebReadTask;)V

    .line 60
    .line 61
    .line 62
    const-wide/16 v3, 0xc8

    .line 63
    .line 64
    invoke-virtual {v1, v2, v3, v4}, Lcom/mycompany/app/web/WebNestView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_6
    :goto_0
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebReadTask;->A()V

    .line 69
    .line 70
    .line 71
    iget-object v1, v0, Lcom/mycompany/app/web/WebReadTask;->c:Lcom/mycompany/app/web/WebReadTask$WebReadListener;

    .line 72
    .line 73
    if-eqz v1, :cond_7

    .line 74
    .line 75
    iget-object v0, v0, Lcom/mycompany/app/web/WebReadTask;->i:Ljava/lang/String;

    .line 76
    .line 77
    iget-object v2, p0, Lcom/mycompany/app/web/WebReadTask$LoadTask;->h:Ljava/lang/String;

    .line 78
    .line 79
    iget-object v3, p0, Lcom/mycompany/app/web/WebReadTask$LoadTask;->i:Ljava/util/ArrayList;

    .line 80
    .line 81
    iget-object v4, p0, Lcom/mycompany/app/web/WebReadTask$LoadTask;->f:Ljava/lang/String;

    .line 82
    .line 83
    invoke-interface {v1, v4, v0, v2, v3}, Lcom/mycompany/app/web/WebReadTask$WebReadListener;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 84
    .line 85
    .line 86
    :cond_7
    :goto_1
    return-void
.end method
