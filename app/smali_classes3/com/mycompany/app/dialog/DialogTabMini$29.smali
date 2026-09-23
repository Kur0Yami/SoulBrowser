.class Lcom/mycompany/app/dialog/DialogTabMini$29;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogDeleteItem$DelItemListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogTabMini;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMini;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMini$29;->a:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMini$29;->a:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->J0:Lcom/mycompany/app/dialog/DialogDeleteItem;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v1, Lcom/mycompany/app/dialog/DialogTabMini$29$1;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogTabMini$29$1;-><init>(Lcom/mycompany/app/dialog/DialogTabMini$29;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final b(Lcom/mycompany/app/view/MyRoundImage;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMini$29;->a:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->i1:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTabMini;->j1:Lcom/mycompany/app/web/WebTabAdapter;

    .line 6
    .line 7
    iget v3, v0, Lcom/mycompany/app/dialog/DialogTabMini;->k1:I

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogTabMini;->i1:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 11
    .line 12
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogTabMini;->j1:Lcom/mycompany/app/web/WebTabAdapter;

    .line 13
    .line 14
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogTabMini;->J0:Lcom/mycompany/app/dialog/DialogDeleteItem;

    .line 15
    .line 16
    if-nez v5, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogTabMini;->b0:Landroid/content/Context;

    .line 20
    .line 21
    if-nez v5, :cond_1

    .line 22
    .line 23
    :goto_0
    return-void

    .line 24
    :cond_1
    const/4 v5, 0x1

    .line 25
    if-nez v1, :cond_2

    .line 26
    .line 27
    if-ne v3, v5, :cond_2

    .line 28
    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/mycompany/app/web/WebTabAdapter;->F()Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    :cond_2
    const v2, -0x70708

    .line 36
    .line 37
    .line 38
    if-nez v1, :cond_4

    .line 39
    .line 40
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 41
    .line 42
    invoke-virtual {p1, v2, v1}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 43
    .line 44
    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMini;->b0:Landroid/content/Context;

    .line 54
    .line 55
    if-ne v3, v5, :cond_3

    .line 56
    .line 57
    sget v1, Lnet/kaki87/soul2/testing/R$string;->item:I

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    sget v1, Lnet/kaki87/soul2/testing/R$string;->items:I

    .line 61
    .line 62
    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_4
    iget-object v3, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 78
    .line 79
    const/4 v6, 0x0

    .line 80
    if-eqz v3, :cond_5

    .line 81
    .line 82
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-nez v3, :cond_5

    .line 87
    .line 88
    iget-object v3, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 89
    .line 90
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    check-cast v3, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_5
    move-object v3, v4

    .line 98
    :goto_2
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMini;->b0:Landroid/content/Context;

    .line 99
    .line 100
    invoke-static {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->q3(Landroid/content/Context;Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    if-eqz v3, :cond_6

    .line 105
    .line 106
    iget v1, v3, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->g:I

    .line 107
    .line 108
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 109
    .line 110
    invoke-static {v1, v2}, Lcom/mycompany/app/web/WebTabBarAdapter;->y(IZ)I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    invoke-virtual {p1, v6, v1}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 115
    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_6
    iget-object v3, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 119
    .line 120
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    if-eqz v3, :cond_7

    .line 125
    .line 126
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 127
    .line 128
    invoke-virtual {p1, v2, v1, v0, v4}, Lcom/mycompany/app/view/MyRoundImage;->p(IILjava/lang/String;Ljava/util/regex/Pattern;)V

    .line 129
    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_7
    iget-object v3, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 133
    .line 134
    const-string v7, "file:///"

    .line 135
    .line 136
    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    if-eqz v3, :cond_9

    .line 141
    .line 142
    const-string v2, "file:///android_asset/shortcut.html"

    .line 143
    .line 144
    iget-object v1, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 145
    .line 146
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-eqz v1, :cond_8

    .line 151
    .line 152
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_home_black_24:I

    .line 153
    .line 154
    invoke-virtual {p1, v6, v1}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 155
    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_8
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_offline_pin_black_24:I

    .line 159
    .line 160
    invoke-virtual {p1, v6, v1}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 161
    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_9
    iget-object v1, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 165
    .line 166
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->O1(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->n4(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    if-eqz v3, :cond_a

    .line 179
    .line 180
    invoke-virtual {p1, v5}, Lcom/mycompany/app/view/MyRoundImage;->setIconSmall(Z)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 184
    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_a
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 188
    .line 189
    invoke-virtual {p1, v2, v1, v0, v4}, Lcom/mycompany/app/view/MyRoundImage;->p(IILjava/lang/String;Ljava/util/regex/Pattern;)V

    .line 190
    .line 191
    .line 192
    :goto_3
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    .line 194
    .line 195
    return-void
.end method
