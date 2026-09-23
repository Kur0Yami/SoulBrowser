.class public Lcom/mycompany/app/dialog/DialogWebBookLoad;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogWebBookLoad$DialogTask;
    }
.end annotation


# instance fields
.field public A0:Ljava/util/ArrayList;

.field public B0:Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;

.field public C0:Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;

.field public D0:Lcom/mycompany/app/main/MainListLoader;

.field public E0:Z

.field public F0:Z

.field public a0:Landroid/content/Context;

.field public b0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

.field public c0:Ljava/lang/String;

.field public d0:Lcom/mycompany/app/view/MyDialogLinear;

.field public e0:Landroidx/appcompat/widget/AppCompatTextView;

.field public f0:Landroid/widget/LinearLayout;

.field public g0:Landroidx/appcompat/widget/AppCompatTextView;

.field public h0:Landroidx/appcompat/widget/AppCompatTextView;

.field public i0:Lcom/mycompany/app/view/MyRoundImage;

.field public j0:Landroidx/appcompat/widget/AppCompatTextView;

.field public k0:Landroidx/appcompat/widget/AppCompatTextView;

.field public l0:Landroidx/appcompat/widget/AppCompatTextView;

.field public m0:Lcom/mycompany/app/view/MyRoundImage;

.field public n0:Landroidx/appcompat/widget/AppCompatTextView;

.field public o0:Landroidx/appcompat/widget/AppCompatTextView;

.field public p0:Landroid/widget/FrameLayout;

.field public q0:Lcom/mycompany/app/view/MyButtonCheck;

.field public r0:Landroidx/appcompat/widget/AppCompatTextView;

.field public s0:Lcom/mycompany/app/view/MyCoverView;

.field public t0:Lcom/mycompany/app/view/MyLineText;

.field public u0:Landroidx/appcompat/widget/AppCompatTextView;

.field public v0:Lcom/mycompany/app/dialog/DialogWebBookLoad$DialogTask;

.field public w0:I

.field public x0:Z

.field public y0:Z

.field public z0:Ljava/util/ArrayList;


# direct methods
.method public static B(Lcom/mycompany/app/dialog/DialogWebBookLoad;Ljava/lang/String;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->a0:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "UTF-8"

    .line 18
    .line 19
    invoke-static {v1, v2, p1}, Lorg/jsoup/Jsoup;->parse(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const/4 v3, 0x0

    .line 32
    move v4, v3

    .line 33
    :goto_0
    if-ge v4, v2, :cond_1

    .line 34
    .line 35
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    add-int/lit8 v4, v4, 0x1

    .line 40
    .line 41
    check-cast v5, Lorg/jsoup/nodes/Element;

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogWebBookLoad;->E()Z

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    if-eqz v6, :cond_0

    .line 48
    .line 49
    return v3

    .line 50
    :cond_0
    const-string v6, ""

    .line 51
    .line 52
    invoke-virtual {p0, v6, v5}, Lcom/mycompany/app/dialog/DialogWebBookLoad;->D(Ljava/lang/String;Lorg/jsoup/nodes/Element;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catch_0
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->y0:Z

    .line 57
    .line 58
    :catch_1
    :cond_1
    if-eqz v1, :cond_2

    .line 59
    .line 60
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 61
    .line 62
    .line 63
    :catch_2
    :cond_2
    return v0
.end method


# virtual methods
.method public final C(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->v0:Lcom/mycompany/app/dialog/DialogWebBookLoad$DialogTask;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->v0:Lcom/mycompany/app/dialog/DialogWebBookLoad$DialogTask;

    .line 10
    .line 11
    new-instance v0, Lcom/mycompany/app/dialog/DialogWebBookLoad$DialogTask;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1}, Lcom/mycompany/app/dialog/DialogWebBookLoad$DialogTask;-><init>(Lcom/mycompany/app/dialog/DialogWebBookLoad;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->v0:Lcom/mycompany/app/dialog/DialogWebBookLoad$DialogTask;

    .line 17
    .line 18
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->a0:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final D(Ljava/lang/String;Lorg/jsoup/nodes/Element;)V
    .locals 7

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    goto/16 :goto_2

    .line 4
    .line 5
    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "<h3"

    .line 10
    .line 11
    const-string v2, "/"

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v0, :cond_5

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-nez v4, :cond_5

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    :goto_0
    if-ge v3, p2, :cond_10

    .line 27
    .line 28
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    add-int/lit8 v3, v3, 0x1

    .line 33
    .line 34
    check-cast v4, Lorg/jsoup/nodes/Element;

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogWebBookLoad;->E()Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_1

    .line 41
    .line 42
    goto/16 :goto_2

    .line 43
    .line 44
    :cond_1
    invoke-virtual {v4}, Lorg/jsoup/nodes/Node;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    if-nez v6, :cond_4

    .line 53
    .line 54
    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-eqz v5, :cond_4

    .line 59
    .line 60
    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-nez v6, :cond_4

    .line 69
    .line 70
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    if-eqz v6, :cond_2

    .line 75
    .line 76
    invoke-static {v2, v5}, Landroid/support/v4/media/a;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    goto :goto_1

    .line 81
    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    if-eqz v6, :cond_3

    .line 86
    .line 87
    invoke-static {p1, v5}, Landroid/support/v4/media/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    goto :goto_1

    .line 92
    :cond_3
    invoke-static {p1, v2, v5}, Landroid/support/v4/media/a;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    :cond_4
    :goto_1
    invoke-virtual {p0, p1, v4}, Lcom/mycompany/app/dialog/DialogWebBookLoad;->D(Ljava/lang/String;Lorg/jsoup/nodes/Element;)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_5
    invoke-virtual {p2}, Lorg/jsoup/nodes/Node;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-eqz v4, :cond_6

    .line 109
    .line 110
    goto/16 :goto_2

    .line 111
    .line 112
    :cond_6
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_b

    .line 117
    .line 118
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 119
    .line 120
    .line 121
    move-result p2

    .line 122
    if-eqz p2, :cond_7

    .line 123
    .line 124
    goto/16 :goto_2

    .line 125
    .line 126
    :cond_7
    const/16 p2, 0x2f

    .line 127
    .line 128
    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(I)I

    .line 129
    .line 130
    .line 131
    move-result p2

    .line 132
    if-ltz p2, :cond_10

    .line 133
    .line 134
    const/4 v0, 0x1

    .line 135
    add-int/2addr p2, v0

    .line 136
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-lt p2, v1, :cond_8

    .line 141
    .line 142
    goto/16 :goto_2

    .line 143
    .line 144
    :cond_8
    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-eqz v2, :cond_9

    .line 153
    .line 154
    goto/16 :goto_2

    .line 155
    .line 156
    :cond_9
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 161
    .line 162
    .line 163
    move-result p2

    .line 164
    if-eqz p2, :cond_a

    .line 165
    .line 166
    goto/16 :goto_2

    .line 167
    .line 168
    :cond_a
    new-instance p2, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;

    .line 169
    .line 170
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 171
    .line 172
    .line 173
    iput-boolean v0, p2, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->b:Z

    .line 174
    .line 175
    iput-object v1, p2, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->c:Ljava/lang/String;

    .line 176
    .line 177
    iput-object p1, p2, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->e:Ljava/lang/String;

    .line 178
    .line 179
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->z0:Ljava/util/ArrayList;

    .line 180
    .line 181
    if-eqz p1, :cond_10

    .line 182
    .line 183
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    return-void

    .line 187
    :cond_b
    const-string v1, "<a"

    .line 188
    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-eqz v0, :cond_10

    .line 194
    .line 195
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    if-eqz v0, :cond_c

    .line 200
    .line 201
    move-object p1, v2

    .line 202
    :cond_c
    const-string v0, "href"

    .line 203
    .line 204
    invoke-virtual {p2, v0}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    if-eqz v1, :cond_d

    .line 213
    .line 214
    goto :goto_2

    .line 215
    :cond_d
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->A0:Ljava/util/ArrayList;

    .line 216
    .line 217
    if-eqz v1, :cond_10

    .line 218
    .line 219
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    if-eqz v1, :cond_e

    .line 224
    .line 225
    goto :goto_2

    .line 226
    :cond_e
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->A0:Ljava/util/ArrayList;

    .line 227
    .line 228
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    new-instance v1, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;

    .line 232
    .line 233
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 234
    .line 235
    .line 236
    iput-boolean v3, v1, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->b:Z

    .line 237
    .line 238
    iput-object p1, v1, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->c:Ljava/lang/String;

    .line 239
    .line 240
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    iput-object p1, v1, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->e:Ljava/lang/String;

    .line 245
    .line 246
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->d:Ljava/lang/String;

    .line 247
    .line 248
    const-string p1, "icon"

    .line 249
    .line 250
    invoke-virtual {p2, p1}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    iput-object p1, v1, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->f:Ljava/lang/String;

    .line 255
    .line 256
    iget-object p1, v1, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->e:Ljava/lang/String;

    .line 257
    .line 258
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 259
    .line 260
    .line 261
    move-result p1

    .line 262
    if-eqz p1, :cond_f

    .line 263
    .line 264
    iget-object p1, v1, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->d:Ljava/lang/String;

    .line 265
    .line 266
    invoke-static {p1, v3}, Lcom/mycompany/app/main/MainUtil;->H1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    iput-object p1, v1, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->e:Ljava/lang/String;

    .line 271
    .line 272
    :cond_f
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->z0:Ljava/util/ArrayList;

    .line 273
    .line 274
    if-eqz p1, :cond_10

    .line 275
    .line 276
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    :cond_10
    :goto_2
    return-void
.end method

.method public final E()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->F0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->v0:Lcom/mycompany/app/dialog/DialogWebBookLoad$DialogTask;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-boolean v0, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    :goto_0
    const/4 v0, 0x1

    .line 15
    return v0

    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method public final F()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->u0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->v0:Lcom/mycompany/app/dialog/DialogWebBookLoad$DialogTask;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->u0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 15
    .line 16
    sget v1, Lnet/kaki87/soul2/testing/R$string;->canceling:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->u0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 22
    .line 23
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    const v1, -0x7f7f80

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const v1, -0x252526

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->F0:Z

    .line 39
    .line 40
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->v0:Lcom/mycompany/app/dialog/DialogWebBookLoad$DialogTask;

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    iput-boolean v0, v1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 45
    .line 46
    :cond_2
    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->v0:Lcom/mycompany/app/dialog/DialogWebBookLoad$DialogTask;

    .line 48
    .line 49
    return-void

    .line 50
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogWebBookLoad;->dismiss()V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final cancel()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogWebBookLoad;->F()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final dismiss()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->a0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->v0:Lcom/mycompany/app/dialog/DialogWebBookLoad$DialogTask;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    iput-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 15
    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->v0:Lcom/mycompany/app/dialog/DialogWebBookLoad$DialogTask;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 27
    .line 28
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->D0:Lcom/mycompany/app/main/MainListLoader;

    .line 29
    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/mycompany/app/main/MainListLoader;->f()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->D0:Lcom/mycompany/app/main/MainListLoader;

    .line 36
    .line 37
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 38
    .line 39
    if-eqz v1, :cond_4

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyRoundImage;->k()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 45
    .line 46
    :cond_4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->m0:Lcom/mycompany/app/view/MyRoundImage;

    .line 47
    .line 48
    if-eqz v1, :cond_5

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyRoundImage;->k()V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->m0:Lcom/mycompany/app/view/MyRoundImage;

    .line 54
    .line 55
    :cond_5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->q0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 56
    .line 57
    if-eqz v1, :cond_6

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyButtonCheck;->l()V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->q0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 63
    .line 64
    :cond_6
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->s0:Lcom/mycompany/app/view/MyCoverView;

    .line 65
    .line 66
    if-eqz v1, :cond_7

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyCoverView;->i()V

    .line 69
    .line 70
    .line 71
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->s0:Lcom/mycompany/app/view/MyCoverView;

    .line 72
    .line 73
    :cond_7
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->t0:Lcom/mycompany/app/view/MyLineText;

    .line 74
    .line 75
    if-eqz v1, :cond_8

    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 78
    .line 79
    .line 80
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->t0:Lcom/mycompany/app/view/MyLineText;

    .line 81
    .line 82
    :cond_8
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->a0:Landroid/content/Context;

    .line 83
    .line 84
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->b0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 85
    .line 86
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->c0:Ljava/lang/String;

    .line 87
    .line 88
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 89
    .line 90
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->f0:Landroid/widget/LinearLayout;

    .line 91
    .line 92
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 93
    .line 94
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 95
    .line 96
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 97
    .line 98
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 99
    .line 100
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 101
    .line 102
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 103
    .line 104
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->o0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 105
    .line 106
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->p0:Landroid/widget/FrameLayout;

    .line 107
    .line 108
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 109
    .line 110
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->u0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 111
    .line 112
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->z0:Ljava/util/ArrayList;

    .line 113
    .line 114
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->A0:Ljava/util/ArrayList;

    .line 115
    .line 116
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->B0:Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;

    .line 117
    .line 118
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->C0:Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;

    .line 119
    .line 120
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 121
    .line 122
    .line 123
    return-void
.end method
