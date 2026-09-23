.class Lcom/mycompany/app/dialog/DialogViewRead$WebAppInterface$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mycompany/app/dialog/DialogViewRead$WebAppInterface;->onObserDet(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewRead$WebAppInterface;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewRead$WebAppInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$WebAppInterface$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$WebAppInterface;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewRead$WebAppInterface$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$WebAppInterface;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewRead$WebAppInterface;->a:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->g:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_6

    .line 10
    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogViewRead;->R()V

    .line 12
    .line 13
    .line 14
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->c:Z

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->U1:Landroid/view/View;

    .line 20
    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_2
    if-nez v1, :cond_3

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_3
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 28
    .line 29
    if-eqz v2, :cond_4

    .line 30
    .line 31
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->trans_logo_short_back_dark:I

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_4
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->trans_logo_short_back_color:I

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 40
    .line 41
    .line 42
    :goto_0
    iget v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->c2:I

    .line 43
    .line 44
    const/4 v2, 0x3

    .line 45
    if-ne v1, v2, :cond_5

    .line 46
    .line 47
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->d2:Z

    .line 48
    .line 49
    if-eqz v1, :cond_5

    .line 50
    .line 51
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->U1:Landroid/view/View;

    .line 52
    .line 53
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_6

    .line 58
    .line 59
    const/4 v1, 0x0

    .line 60
    iput v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->j2:I

    .line 61
    .line 62
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogViewRead;->U1:Landroid/view/View;

    .line 63
    .line 64
    const/high16 v3, 0x3f800000    # 1.0f

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 67
    .line 68
    .line 69
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogViewRead;->U1:Landroid/view/View;

    .line 70
    .line 71
    const/4 v3, 0x0

    .line 72
    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 73
    .line 74
    .line 75
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogViewRead;->U1:Landroid/view/View;

    .line 76
    .line 77
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->U1:Landroid/view/View;

    .line 82
    .line 83
    const/16 v2, 0x8

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    :cond_6
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->X1:Lcom/mycompany/app/web/WebTransControl;

    .line 89
    .line 90
    if-nez v1, :cond_7

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_7
    iget v2, v0, Lcom/mycompany/app/dialog/DialogViewRead;->c2:I

    .line 94
    .line 95
    iget-boolean v3, v0, Lcom/mycompany/app/dialog/DialogViewRead;->d2:Z

    .line 96
    .line 97
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogViewRead;->e2:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {v1, v4, v2, v3}, Lcom/mycompany/app/web/WebTransControl;->f(Ljava/lang/String;IZ)V

    .line 100
    .line 101
    .line 102
    :goto_2
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->Y0:Z

    .line 103
    .line 104
    if-eqz v1, :cond_8

    .line 105
    .line 106
    invoke-static {v0}, Lcom/mycompany/app/dialog/DialogViewRead;->F(Lcom/mycompany/app/dialog/DialogViewRead;)V

    .line 107
    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_8
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogViewRead;->G0()V

    .line 111
    .line 112
    .line 113
    :goto_3
    iget v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->c2:I

    .line 114
    .line 115
    const/4 v2, 0x1

    .line 116
    if-ne v1, v2, :cond_9

    .line 117
    .line 118
    goto :goto_6

    .line 119
    :cond_9
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->f2:Ljava/lang/String;

    .line 120
    .line 121
    const/4 v2, 0x0

    .line 122
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogViewRead;->f2:Ljava/lang/String;

    .line 123
    .line 124
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-nez v2, :cond_b

    .line 129
    .line 130
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-eqz v2, :cond_a

    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_a
    new-instance v2, Lcom/mycompany/app/dialog/DialogViewRead$98;

    .line 138
    .line 139
    invoke-direct {v2, v0, v1}, Lcom/mycompany/app/dialog/DialogViewRead$98;-><init>(Lcom/mycompany/app/dialog/DialogViewRead;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v2}, Lcom/mycompany/app/dialog/DialogViewRead;->k0(Ljava/lang/Runnable;)V

    .line 143
    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_b
    sget-object v1, Lcom/mycompany/app/pref/PrefAlbum;->y:Ljava/lang/String;

    .line 147
    .line 148
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-eqz v1, :cond_c

    .line 153
    .line 154
    goto :goto_4

    .line 155
    :cond_c
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->y:Lcom/mycompany/app/web/WebNestView;

    .line 156
    .line 157
    if-nez v1, :cond_d

    .line 158
    .line 159
    goto :goto_4

    .line 160
    :cond_d
    new-instance v2, Lcom/mycompany/app/dialog/DialogViewRead$95;

    .line 161
    .line 162
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogViewRead$95;-><init>(Lcom/mycompany/app/dialog/DialogViewRead;)V

    .line 163
    .line 164
    .line 165
    const-string v3, "document.cookie"

    .line 166
    .line 167
    invoke-virtual {v1, v3, v2}, Lcom/mycompany/app/web/WebNestView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 168
    .line 169
    .line 170
    :goto_4
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->g:Landroid/content/Context;

    .line 171
    .line 172
    if-nez v1, :cond_e

    .line 173
    .line 174
    goto :goto_5

    .line 175
    :cond_e
    invoke-static {v1}, Lcom/mycompany/app/data/DataTrans;->a(Landroid/content/Context;)Lcom/mycompany/app/data/DataTrans;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-virtual {v1}, Lcom/mycompany/app/data/DataTrans;->b()Z

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    if-eqz v1, :cond_f

    .line 184
    .line 185
    goto :goto_5

    .line 186
    :cond_f
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->y:Lcom/mycompany/app/web/WebNestView;

    .line 187
    .line 188
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->M3(Landroid/webkit/WebView;)V

    .line 189
    .line 190
    .line 191
    :goto_5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->g2:Ljava/lang/String;

    .line 192
    .line 193
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    if-nez v1, :cond_10

    .line 198
    .line 199
    :goto_6
    return-void

    .line 200
    :cond_10
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewRead;->y:Lcom/mycompany/app/web/WebNestView;

    .line 201
    .line 202
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->N7(Landroid/webkit/WebView;)V

    .line 203
    .line 204
    .line 205
    return-void
.end method
