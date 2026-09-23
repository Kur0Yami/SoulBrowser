.class Lcom/mycompany/app/image/ImageViewPageScroll$48;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogListBook$ListBookListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/image/ImageViewPageScroll;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewPageScroll;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewPageScroll$48;->a:Lcom/mycompany/app/image/ImageViewPageScroll;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(ILcom/mycompany/app/main/MainItem$ChildItem;I)V
    .locals 10

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageScroll$48;->a:Lcom/mycompany/app/image/ImageViewPageScroll;

    .line 2
    .line 3
    const/4 p3, 0x1

    .line 4
    iput-boolean p3, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->j0:Z

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/mycompany/app/image/ImageViewPageScroll;->y0()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object p1, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->b:Landroid/content/Context;

    .line 18
    .line 19
    sget p2, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 20
    .line 21
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    iget-object v0, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v1, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->w:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_6

    .line 34
    .line 35
    iget-object v0, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->E:Lcom/mycompany/app/compress/Compress;

    .line 36
    .line 37
    if-eqz v0, :cond_5

    .line 38
    .line 39
    iget v0, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->x:I

    .line 40
    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    iget v1, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->t:I

    .line 45
    .line 46
    iget v2, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->y:I

    .line 47
    .line 48
    if-ne v1, v2, :cond_2

    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    if-ltz v1, :cond_4

    .line 52
    .line 53
    if-lt v1, v0, :cond_3

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    iput v1, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->y:I

    .line 57
    .line 58
    iget p2, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->u:I

    .line 59
    .line 60
    iput p2, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->z:I

    .line 61
    .line 62
    invoke-virtual {p1, p3}, Lcom/mycompany/app/image/ImageViewPageScroll;->W0(Z)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_4
    :goto_0
    iget-object p1, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->b:Landroid/content/Context;

    .line 67
    .line 68
    sget p2, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 69
    .line 70
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_5
    :goto_1
    iget-object p1, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->b:Landroid/content/Context;

    .line 75
    .line 76
    sget p2, Lnet/kaki87/soul2/testing/R$string;->no_image:I

    .line 77
    .line 78
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_6
    const/4 v0, 0x0

    .line 83
    invoke-virtual {p1, v0}, Lcom/mycompany/app/image/ImageViewPageScroll;->o0(Z)V

    .line 84
    .line 85
    .line 86
    iget v1, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->v:I

    .line 87
    .line 88
    if-ne v1, p3, :cond_7

    .line 89
    .line 90
    iget-object v2, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->b:Landroid/content/Context;

    .line 91
    .line 92
    iget-object v3, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->w:Ljava/lang/String;

    .line 93
    .line 94
    iget p3, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->x:I

    .line 95
    .line 96
    int-to-long v4, p3

    .line 97
    iget p3, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->y:I

    .line 98
    .line 99
    int-to-long v6, p3

    .line 100
    iget v8, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->z:I

    .line 101
    .line 102
    invoke-static/range {v2 .. v8}, Lcom/mycompany/app/db/DbAlbum;->e(Landroid/content/Context;Ljava/lang/String;JJI)V

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_7
    const/4 v2, 0x2

    .line 107
    if-ne v1, v2, :cond_8

    .line 108
    .line 109
    iget-object v3, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->b:Landroid/content/Context;

    .line 110
    .line 111
    iget-object v4, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->w:Ljava/lang/String;

    .line 112
    .line 113
    iget p3, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->x:I

    .line 114
    .line 115
    int-to-long v5, p3

    .line 116
    iget p3, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->y:I

    .line 117
    .line 118
    int-to-long v7, p3

    .line 119
    iget v9, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->z:I

    .line 120
    .line 121
    invoke-static/range {v3 .. v9}, Lcom/mycompany/app/db/DbPdf;->f(Landroid/content/Context;Ljava/lang/String;JJI)V

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_8
    const/4 v2, 0x3

    .line 126
    if-ne v1, v2, :cond_9

    .line 127
    .line 128
    iget-object v3, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->b:Landroid/content/Context;

    .line 129
    .line 130
    iget-object v4, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->w:Ljava/lang/String;

    .line 131
    .line 132
    iget p3, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->x:I

    .line 133
    .line 134
    int-to-long v5, p3

    .line 135
    iget p3, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->y:I

    .line 136
    .line 137
    int-to-long v7, p3

    .line 138
    iget v9, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->z:I

    .line 139
    .line 140
    invoke-static/range {v3 .. v9}, Lcom/mycompany/app/db/DbCmp;->f(Landroid/content/Context;Ljava/lang/String;JJI)V

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_9
    const/16 v2, 0xc

    .line 145
    .line 146
    if-ne v1, v2, :cond_a

    .line 147
    .line 148
    iput p3, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->v:I

    .line 149
    .line 150
    iget-object v1, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->S:Lcom/mycompany/app/image/ImageViewControl;

    .line 151
    .line 152
    if-eqz v1, :cond_a

    .line 153
    .line 154
    invoke-virtual {v1, p3}, Lcom/mycompany/app/image/ImageViewControl;->setIconType(I)V

    .line 155
    .line 156
    .line 157
    :cond_a
    :goto_2
    iput-boolean v0, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->k:Z

    .line 158
    .line 159
    const/4 p3, 0x0

    .line 160
    iput-object p3, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->m:Ljava/lang/String;

    .line 161
    .line 162
    iput-boolean v0, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->n:Z

    .line 163
    .line 164
    iput v0, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->p:I

    .line 165
    .line 166
    invoke-virtual {p1}, Lcom/mycompany/app/image/ImageViewPageScroll;->U0()V

    .line 167
    .line 168
    .line 169
    iget-object p3, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 170
    .line 171
    iput-object p3, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->u:Ljava/lang/String;

    .line 172
    .line 173
    iget p3, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 174
    .line 175
    iput p3, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->t:I

    .line 176
    .line 177
    iget-object p3, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 178
    .line 179
    iput-object p3, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->w:Ljava/lang/String;

    .line 180
    .line 181
    iget p3, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->t:I

    .line 182
    .line 183
    iput p3, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->y:I

    .line 184
    .line 185
    iget p2, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->u:I

    .line 186
    .line 187
    iput p2, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->z:I

    .line 188
    .line 189
    iput v0, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->x:I

    .line 190
    .line 191
    invoke-virtual {p1, v0}, Lcom/mycompany/app/image/ImageViewPageScroll;->j0(Z)V

    .line 192
    .line 193
    .line 194
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageScroll$48;->a:Lcom/mycompany/app/image/ImageViewPageScroll;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->E:Lcom/mycompany/app/compress/Compress;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget v1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->x:I

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->e0:Lcom/mycompany/app/image/ImageViewPageScroll$BookTask;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    iput-boolean v2, v1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 18
    .line 19
    :cond_1
    const/4 v1, 0x0

    .line 20
    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->e0:Lcom/mycompany/app/image/ImageViewPageScroll$BookTask;

    .line 21
    .line 22
    new-instance v1, Lcom/mycompany/app/image/ImageViewPageScroll$BookTask;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Lcom/mycompany/app/image/ImageViewPageScroll$BookTask;-><init>(Lcom/mycompany/app/image/ImageViewPageScroll;)V

    .line 25
    .line 26
    .line 27
    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->e0:Lcom/mycompany/app/image/ImageViewPageScroll$BookTask;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->b:Landroid/content/Context;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    :goto_0
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->b:Landroid/content/Context;

    .line 36
    .line 37
    sget v1, Lnet/kaki87/soul2/testing/R$string;->no_image:I

    .line 38
    .line 39
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
