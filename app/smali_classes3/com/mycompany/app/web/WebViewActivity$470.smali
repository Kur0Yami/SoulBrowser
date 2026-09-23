.class Lcom/mycompany/app/web/WebViewActivity$470;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogDeleteItem$DelItemListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$470;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$470;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->E3:Lcom/mycompany/app/dialog/DialogDeleteItem;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->G3:Lcom/mycompany/app/quick/QuickSubView;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/mycompany/app/quick/QuickSubView;->b()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->C3:Lcom/mycompany/app/quick/QuickSchEdit;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v1, :cond_3

    .line 21
    .line 22
    iget-object v1, v1, Lcom/mycompany/app/quick/QuickSchEdit;->i:Lcom/mycompany/app/quick/QuickView;

    .line 23
    .line 24
    if-nez v1, :cond_2

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    invoke-virtual {v1}, Lcom/mycompany/app/quick/QuickView;->j()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    goto :goto_1

    .line 32
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 33
    .line 34
    if-eqz v1, :cond_5

    .line 35
    .line 36
    iget-object v1, v1, Lcom/mycompany/app/web/WebNestView;->Z0:Lcom/mycompany/app/quick/QuickView;

    .line 37
    .line 38
    if-nez v1, :cond_4

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_4
    invoke-virtual {v1}, Lcom/mycompany/app/quick/QuickView;->j()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    goto :goto_1

    .line 46
    :cond_5
    :goto_0
    move v1, v2

    .line 47
    :goto_1
    if-eqz v1, :cond_6

    .line 48
    .line 49
    :goto_2
    return-void

    .line 50
    :cond_6
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->p4()V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final b(Lcom/mycompany/app/view/MyRoundImage;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$470;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->fm:Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 4
    .line 5
    iget v2, v0, Lcom/mycompany/app/web/WebViewActivity;->gm:I

    .line 6
    .line 7
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->E3:Lcom/mycompany/app/dialog/DialogDeleteItem;

    .line 8
    .line 9
    if-nez v3, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v3, 0x1

    .line 13
    const v4, -0x70708

    .line 14
    .line 15
    .line 16
    if-nez v1, :cond_2

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    if-le v2, v3, :cond_1

    .line 27
    .line 28
    sget v2, Lnet/kaki87/soul2/testing/R$string;->items:I

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    sget v2, Lnet/kaki87/soul2/testing/R$string;->item:I

    .line 32
    .line 33
    :goto_0
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 41
    .line 42
    invoke-virtual {p1, v4, v0}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    iget-boolean v5, v1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->c:Z

    .line 54
    .line 55
    const/4 v6, 0x0

    .line 56
    if-eqz v5, :cond_3

    .line 57
    .line 58
    iget-object v5, v1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->l:Ljava/util/List;

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    move-object v5, v6

    .line 62
    :goto_1
    if-eqz v5, :cond_5

    .line 63
    .line 64
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    if-nez v7, :cond_5

    .line 69
    .line 70
    sget-boolean v6, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 71
    .line 72
    sget-boolean v7, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 73
    .line 74
    if-eqz v7, :cond_4

    .line 75
    .line 76
    const v4, -0xafafb0

    .line 77
    .line 78
    .line 79
    :cond_4
    invoke-virtual {p1, v3, v4, v5, v6}, Lcom/mycompany/app/view/MyRoundImage;->B(IILjava/util/List;Z)V

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_5
    iget v5, v1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->h:I

    .line 84
    .line 85
    if-eqz v5, :cond_7

    .line 86
    .line 87
    if-eq v5, v4, :cond_7

    .line 88
    .line 89
    iget-boolean v3, v1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->c:Z

    .line 90
    .line 91
    if-eqz v3, :cond_6

    .line 92
    .line 93
    const/4 v3, 0x0

    .line 94
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbBookQuick;->f(I)I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    invoke-virtual {p1, v3, v4}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_6
    sget v3, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 103
    .line 104
    mul-int/lit8 v3, v3, 0x3

    .line 105
    .line 106
    int-to-float v3, v3

    .line 107
    invoke-virtual {p1, v3}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 108
    .line 109
    .line 110
    iget v3, v1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->h:I

    .line 111
    .line 112
    iget-object v4, v1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->g:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {p1, v3, v4, v6}, Lcom/mycompany/app/view/MyRoundImage;->t(ILjava/lang/String;Ljava/util/regex/Pattern;)V

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_7
    iget-object v5, v1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->d:Ljava/lang/String;

    .line 119
    .line 120
    sget-boolean v7, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 121
    .line 122
    invoke-static {v5, v7}, Lcom/mycompany/app/main/MainListLoader;->c(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    invoke-static {v5}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    if-eqz v7, :cond_8

    .line 131
    .line 132
    invoke-virtual {p1, v3}, Lcom/mycompany/app/view/MyRoundImage;->setIconSmall(Z)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, v5}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_8
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 140
    .line 141
    iget-object v5, v1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->g:Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {p1, v4, v3, v5, v6}, Lcom/mycompany/app/view/MyRoundImage;->p(IILjava/lang/String;Ljava/util/regex/Pattern;)V

    .line 144
    .line 145
    .line 146
    :goto_2
    iget-object p1, v1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->f:Ljava/lang/String;

    .line 147
    .line 148
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    if-nez p1, :cond_9

    .line 153
    .line 154
    iget-object p1, v1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->f:Ljava/lang/String;

    .line 155
    .line 156
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    sget v1, Lnet/kaki87/soul2/testing/R$string;->item:I

    .line 169
    .line 170
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    .line 183
    .line 184
    return-void
.end method
