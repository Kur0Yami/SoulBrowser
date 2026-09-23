.class Lcom/mycompany/app/dialog/DialogWebVie2$WebAppInterface$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mycompany/app/dialog/DialogWebVie2$WebAppInterface;->onObserDet(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogWebVie2$WebAppInterface;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebVie2$WebAppInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebVie2$WebAppInterface$1;->c:Lcom/mycompany/app/dialog/DialogWebVie2$WebAppInterface;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2$WebAppInterface$1;->c:Lcom/mycompany/app/dialog/DialogWebVie2$WebAppInterface;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebVie2$WebAppInterface;->a:Lcom/mycompany/app/dialog/DialogWebVie2;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->c0:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_5

    .line 10
    .line 11
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->q0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->U0:Landroid/view/View;

    .line 17
    .line 18
    if-nez v1, :cond_2

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_2
    sget v2, Lcom/mycompany/app/pref/PrefZone;->y:I

    .line 22
    .line 23
    const/4 v3, 0x3

    .line 24
    if-ne v2, v3, :cond_3

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 31
    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    const/16 v2, 0x53

    .line 35
    .line 36
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 37
    .line 38
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->U0:Landroid/view/View;

    .line 39
    .line 40
    if-nez v1, :cond_4

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_4
    iget-boolean v2, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->g0:Z

    .line 44
    .line 45
    if-eqz v2, :cond_5

    .line 46
    .line 47
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->trans_logo_short_back_dark:I

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_5
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->trans_logo_short_back_color:I

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 56
    .line 57
    .line 58
    :goto_0
    iget v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->Y0:I

    .line 59
    .line 60
    if-ne v1, v3, :cond_6

    .line 61
    .line 62
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->Z0:Z

    .line 63
    .line 64
    if-eqz v1, :cond_6

    .line 65
    .line 66
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->U0:Landroid/view/View;

    .line 67
    .line 68
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_7

    .line 73
    .line 74
    const/4 v1, 0x0

    .line 75
    iput v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->e1:I

    .line 76
    .line 77
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->U0:Landroid/view/View;

    .line 78
    .line 79
    const/high16 v3, 0x3f800000    # 1.0f

    .line 80
    .line 81
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 82
    .line 83
    .line 84
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->U0:Landroid/view/View;

    .line 85
    .line 86
    const/4 v3, 0x0

    .line 87
    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 88
    .line 89
    .line 90
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->U0:Landroid/view/View;

    .line 91
    .line 92
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_6
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->U0:Landroid/view/View;

    .line 97
    .line 98
    const/16 v2, 0x8

    .line 99
    .line 100
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 101
    .line 102
    .line 103
    :cond_7
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->V0:Lcom/mycompany/app/web/WebTransControl;

    .line 104
    .line 105
    if-nez v1, :cond_8

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_8
    iget v2, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->Y0:I

    .line 109
    .line 110
    iget-boolean v3, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->Z0:Z

    .line 111
    .line 112
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->a1:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v1, v4, v2, v3}, Lcom/mycompany/app/web/WebTransControl;->f(Ljava/lang/String;IZ)V

    .line 115
    .line 116
    .line 117
    :goto_2
    iget v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->Y0:I

    .line 118
    .line 119
    const/4 v2, 0x1

    .line 120
    if-ne v1, v2, :cond_9

    .line 121
    .line 122
    goto :goto_5

    .line 123
    :cond_9
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->b1:Ljava/lang/String;

    .line 124
    .line 125
    const/4 v3, 0x0

    .line 126
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->b1:Ljava/lang/String;

    .line 127
    .line 128
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-nez v3, :cond_b

    .line 133
    .line 134
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->X0:Z

    .line 135
    .line 136
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-eqz v2, :cond_a

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_a
    new-instance v2, Lcom/mycompany/app/dialog/DialogWebVie2$25;

    .line 144
    .line 145
    invoke-direct {v2, v0, v1}, Lcom/mycompany/app/dialog/DialogWebVie2$25;-><init>(Lcom/mycompany/app/dialog/DialogWebVie2;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 149
    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_b
    sget-object v1, Lcom/mycompany/app/pref/PrefAlbum;->y:Ljava/lang/String;

    .line 153
    .line 154
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    if-eqz v1, :cond_c

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_c
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->y0:Lcom/mycompany/app/web/WebNestView;

    .line 162
    .line 163
    if-nez v1, :cond_d

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_d
    new-instance v2, Lcom/mycompany/app/dialog/DialogWebVie2$22;

    .line 167
    .line 168
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogWebVie2$22;-><init>(Lcom/mycompany/app/dialog/DialogWebVie2;)V

    .line 169
    .line 170
    .line 171
    const-string v3, "document.cookie"

    .line 172
    .line 173
    invoke-virtual {v1, v3, v2}, Lcom/mycompany/app/web/WebNestView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 174
    .line 175
    .line 176
    :goto_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->c0:Landroid/content/Context;

    .line 177
    .line 178
    if-nez v1, :cond_e

    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_e
    invoke-static {v1}, Lcom/mycompany/app/data/DataTrans;->a(Landroid/content/Context;)Lcom/mycompany/app/data/DataTrans;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {v1}, Lcom/mycompany/app/data/DataTrans;->b()Z

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    if-eqz v1, :cond_f

    .line 190
    .line 191
    goto :goto_4

    .line 192
    :cond_f
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->y0:Lcom/mycompany/app/web/WebNestView;

    .line 193
    .line 194
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->M3(Landroid/webkit/WebView;)V

    .line 195
    .line 196
    .line 197
    :goto_4
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->c1:Ljava/lang/String;

    .line 198
    .line 199
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    if-nez v1, :cond_10

    .line 204
    .line 205
    :goto_5
    return-void

    .line 206
    :cond_10
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->y0:Lcom/mycompany/app/web/WebNestView;

    .line 207
    .line 208
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->N7(Landroid/webkit/WebView;)V

    .line 209
    .line 210
    .line 211
    return-void
.end method
