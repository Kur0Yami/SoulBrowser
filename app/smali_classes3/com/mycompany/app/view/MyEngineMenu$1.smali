.class Lcom/mycompany/app/view/MyEngineMenu$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyEngineMenu;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyEngineMenu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyEngineMenu$1;->c:Lcom/mycompany/app/view/MyEngineMenu;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyEngineMenu$1;->c:Lcom/mycompany/app/view/MyEngineMenu;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/view/MyEngineMenu;->a:Lcom/mycompany/app/main/MainActivity;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_4

    .line 8
    .line 9
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->M5()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->r3()[Z

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    new-instance v4, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v4, v0, Lcom/mycompany/app/view/MyEngineMenu;->e:Ljava/util/ArrayList;

    .line 23
    .line 24
    sget-object v4, Lcom/mycompany/app/main/MainConst;->D:[I

    .line 25
    .line 26
    array-length v4, v4

    .line 27
    const/4 v5, 0x0

    .line 28
    :goto_0
    if-ge v5, v4, :cond_5

    .line 29
    .line 30
    iget-object v6, v0, Lcom/mycompany/app/view/MyEngineMenu;->a:Lcom/mycompany/app/main/MainActivity;

    .line 31
    .line 32
    if-nez v6, :cond_1

    .line 33
    .line 34
    goto/16 :goto_4

    .line 35
    .line 36
    :cond_1
    if-eqz v2, :cond_2

    .line 37
    .line 38
    sget-object v6, Lcom/mycompany/app/main/MainConst;->C:[I

    .line 39
    .line 40
    aget v6, v6, v5

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move v6, v5

    .line 44
    :goto_1
    if-ltz v6, :cond_4

    .line 45
    .line 46
    array-length v7, v3

    .line 47
    if-ge v6, v7, :cond_4

    .line 48
    .line 49
    aget-boolean v7, v3, v6

    .line 50
    .line 51
    if-nez v7, :cond_3

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_3
    new-instance v7, Lcom/mycompany/app/view/MyEngineAdapter$EngineItem;

    .line 55
    .line 56
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 57
    .line 58
    .line 59
    iput v6, v7, Lcom/mycompany/app/view/MyEngineAdapter$EngineItem;->a:I

    .line 60
    .line 61
    sget-object v8, Lcom/mycompany/app/main/MainConst;->E:[I

    .line 62
    .line 63
    aget v8, v8, v6

    .line 64
    .line 65
    iput v8, v7, Lcom/mycompany/app/view/MyEngineAdapter$EngineItem;->b:I

    .line 66
    .line 67
    sget-object v8, Lcom/mycompany/app/main/MainConst;->D:[I

    .line 68
    .line 69
    aget v6, v8, v6

    .line 70
    .line 71
    iput v6, v7, Lcom/mycompany/app/view/MyEngineAdapter$EngineItem;->d:I

    .line 72
    .line 73
    iget-object v6, v0, Lcom/mycompany/app/view/MyEngineMenu;->e:Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_5
    invoke-static {v1}, Lcom/mycompany/app/db/book/DbBookSearch;->i(Landroid/content/Context;)Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    if-eqz v2, :cond_c

    .line 86
    .line 87
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-nez v3, :cond_6

    .line 92
    .line 93
    goto/16 :goto_4

    .line 94
    .line 95
    :cond_6
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    if-eqz v4, :cond_c

    .line 108
    .line 109
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    check-cast v4, Lcom/mycompany/app/web/WebSearch$WebSchItem;

    .line 114
    .line 115
    if-nez v4, :cond_7

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_7
    iget-object v5, v0, Lcom/mycompany/app/view/MyEngineMenu;->a:Lcom/mycompany/app/main/MainActivity;

    .line 119
    .line 120
    if-nez v5, :cond_8

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_8
    iget-wide v5, v4, Lcom/mycompany/app/web/WebSearch$WebSchItem;->a:J

    .line 124
    .line 125
    long-to-int v5, v5

    .line 126
    add-int/lit8 v5, v5, 0x64

    .line 127
    .line 128
    iget v6, v4, Lcom/mycompany/app/web/WebSearch$WebSchItem;->d:I

    .line 129
    .line 130
    if-eqz v6, :cond_9

    .line 131
    .line 132
    new-instance v7, Lcom/mycompany/app/view/MyEngineAdapter$EngineItem;

    .line 133
    .line 134
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 135
    .line 136
    .line 137
    iput v5, v7, Lcom/mycompany/app/view/MyEngineAdapter$EngineItem;->a:I

    .line 138
    .line 139
    invoke-static {v6}, Lcom/mycompany/app/db/book/DbBookSearch;->e(I)I

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    iput v5, v7, Lcom/mycompany/app/view/MyEngineAdapter$EngineItem;->b:I

    .line 144
    .line 145
    iget-object v4, v4, Lcom/mycompany/app/web/WebSearch$WebSchItem;->b:Ljava/lang/String;

    .line 146
    .line 147
    iput-object v4, v7, Lcom/mycompany/app/view/MyEngineAdapter$EngineItem;->e:Ljava/lang/String;

    .line 148
    .line 149
    iget-object v4, v0, Lcom/mycompany/app/view/MyEngineMenu;->e:Ljava/util/ArrayList;

    .line 150
    .line 151
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_9
    iget-object v6, v4, Lcom/mycompany/app/web/WebSearch$WebSchItem;->c:Ljava/lang/String;

    .line 156
    .line 157
    invoke-static {v6}, Lcom/mycompany/app/db/book/DbBookSearch;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    invoke-static {v6}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 162
    .line 163
    .line 164
    move-result v7

    .line 165
    if-nez v7, :cond_b

    .line 166
    .line 167
    iget-wide v6, v4, Lcom/mycompany/app/web/WebSearch$WebSchItem;->a:J

    .line 168
    .line 169
    invoke-static {v1, v6, v7}, Lcom/mycompany/app/db/book/DbBookSearch;->d(Landroid/content/Context;J)Landroid/graphics/Bitmap;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    invoke-static {v6}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 174
    .line 175
    .line 176
    move-result v7

    .line 177
    if-nez v7, :cond_a

    .line 178
    .line 179
    new-instance v6, Lcom/mycompany/app/view/MyEngineAdapter$EngineItem;

    .line 180
    .line 181
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 182
    .line 183
    .line 184
    iput v5, v6, Lcom/mycompany/app/view/MyEngineAdapter$EngineItem;->a:I

    .line 185
    .line 186
    const/high16 v5, -0x10000

    .line 187
    .line 188
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbBookSearch;->e(I)I

    .line 189
    .line 190
    .line 191
    move-result v5

    .line 192
    iput v5, v6, Lcom/mycompany/app/view/MyEngineAdapter$EngineItem;->b:I

    .line 193
    .line 194
    iget-object v4, v4, Lcom/mycompany/app/web/WebSearch$WebSchItem;->b:Ljava/lang/String;

    .line 195
    .line 196
    iput-object v4, v6, Lcom/mycompany/app/view/MyEngineAdapter$EngineItem;->e:Ljava/lang/String;

    .line 197
    .line 198
    iget-object v4, v0, Lcom/mycompany/app/view/MyEngineMenu;->e:Ljava/util/ArrayList;

    .line 199
    .line 200
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    goto :goto_3

    .line 204
    :cond_a
    iget-object v7, v4, Lcom/mycompany/app/web/WebSearch$WebSchItem;->c:Ljava/lang/String;

    .line 205
    .line 206
    invoke-static {v7, v6}, Lcom/mycompany/app/db/book/DbBookSearch;->j(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 207
    .line 208
    .line 209
    :cond_b
    new-instance v7, Lcom/mycompany/app/view/MyEngineAdapter$EngineItem;

    .line 210
    .line 211
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 212
    .line 213
    .line 214
    iput v5, v7, Lcom/mycompany/app/view/MyEngineAdapter$EngineItem;->a:I

    .line 215
    .line 216
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .line 217
    .line 218
    invoke-direct {v5, v3, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 219
    .line 220
    .line 221
    iput-object v5, v7, Lcom/mycompany/app/view/MyEngineAdapter$EngineItem;->c:Landroid/graphics/drawable/BitmapDrawable;

    .line 222
    .line 223
    iget-object v4, v4, Lcom/mycompany/app/web/WebSearch$WebSchItem;->b:Ljava/lang/String;

    .line 224
    .line 225
    iput-object v4, v7, Lcom/mycompany/app/view/MyEngineAdapter$EngineItem;->e:Ljava/lang/String;

    .line 226
    .line 227
    iget-object v4, v0, Lcom/mycompany/app/view/MyEngineMenu;->e:Ljava/util/ArrayList;

    .line 228
    .line 229
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .line 231
    .line 232
    goto/16 :goto_3

    .line 233
    .line 234
    :catch_0
    :cond_c
    :goto_4
    iget-object v0, v0, Lcom/mycompany/app/view/MyEngineMenu;->b:Landroid/os/Handler;

    .line 235
    .line 236
    if-nez v0, :cond_d

    .line 237
    .line 238
    return-void

    .line 239
    :cond_d
    new-instance v1, Lcom/mycompany/app/view/MyEngineMenu$1$1;

    .line 240
    .line 241
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyEngineMenu$1$1;-><init>(Lcom/mycompany/app/view/MyEngineMenu$1;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 245
    .line 246
    .line 247
    return-void
.end method
