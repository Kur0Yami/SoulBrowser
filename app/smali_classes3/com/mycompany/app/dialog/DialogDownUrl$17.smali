.class Lcom/mycompany/app/dialog/DialogDownUrl$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogDownUrl;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownUrl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownUrl$17;->a:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownUrl$17;->a:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/mycompany/app/dialog/DialogDownUrl;->j2:Z

    .line 4
    .line 5
    iget v1, p1, Lcom/mycompany/app/dialog/DialogDownUrl;->k2:I

    .line 6
    .line 7
    iget-object v2, p1, Lcom/mycompany/app/dialog/DialogDownUrl;->i0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 8
    .line 9
    if-eqz v2, :cond_f

    .line 10
    .line 11
    iget-object v2, p1, Lcom/mycompany/app/dialog/DialogDownUrl;->b0:Landroid/content/Context;

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    goto/16 :goto_3

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyDialogBottom;->show()V

    .line 18
    .line 19
    .line 20
    iget v2, p1, Lcom/mycompany/app/dialog/DialogDownUrl;->p1:I

    .line 21
    .line 22
    if-nez v2, :cond_c

    .line 23
    .line 24
    iget-object v2, p1, Lcom/mycompany/app/dialog/DialogDownUrl;->s1:Lcom/mycompany/app/view/MyDialogLinear;

    .line 25
    .line 26
    if-eqz v2, :cond_c

    .line 27
    .line 28
    iget v2, p1, Lcom/mycompany/app/dialog/DialogDownUrl;->H1:I

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    if-ne v2, v3, :cond_3

    .line 32
    .line 33
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogDownUrl;->F0:Lcom/mycompany/app/view/MyCoverView;

    .line 34
    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    goto/16 :goto_2

    .line 38
    .line 39
    :cond_1
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogDownUrl;->I1:Ljava/util/ArrayList;

    .line 40
    .line 41
    iput-object v0, p1, Lcom/mycompany/app/dialog/DialogDownUrl;->K1:Ljava/util/List;

    .line 42
    .line 43
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogDownUrl;->l0:Lcom/mycompany/app/view/MyLineFrame;

    .line 44
    .line 45
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyLineFrame;->setLineDn(Z)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogDownUrl;->p0:Lcom/mycompany/app/view/MyLineLinear;

    .line 49
    .line 50
    const/16 v2, 0x8

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogDownUrl;->L0:Lcom/mycompany/app/view/MyLineLinear;

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogDownUrl;->F0:Lcom/mycompany/app/view/MyCoverView;

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 66
    .line 67
    if-nez v0, :cond_2

    .line 68
    .line 69
    goto/16 :goto_2

    .line 70
    .line 71
    :cond_2
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownUrl$41;

    .line 72
    .line 73
    invoke-direct {v2, p1}, Lcom/mycompany/app/dialog/DialogDownUrl$41;-><init>(Lcom/mycompany/app/dialog/DialogDownUrl;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    .line 78
    .line 79
    goto/16 :goto_2

    .line 80
    .line 81
    :cond_3
    iget v2, p1, Lcom/mycompany/app/dialog/DialogDownUrl;->r1:I

    .line 82
    .line 83
    const/16 v4, 0xd

    .line 84
    .line 85
    const-wide/16 v5, 0x1388

    .line 86
    .line 87
    if-ne v2, v4, :cond_6

    .line 88
    .line 89
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogDownUrl;->F0:Lcom/mycompany/app/view/MyCoverView;

    .line 90
    .line 91
    if-nez v0, :cond_4

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_4
    if-nez v0, :cond_5

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_5
    invoke-virtual {p1, v3}, Lcom/mycompany/app/dialog/DialogDownUrl;->f0(Z)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogDownUrl;->F0:Lcom/mycompany/app/view/MyCoverView;

    .line 101
    .line 102
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownUrl$33;

    .line 103
    .line 104
    invoke-direct {v2, p1}, Lcom/mycompany/app/dialog/DialogDownUrl$33;-><init>(Lcom/mycompany/app/dialog/DialogDownUrl;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v2, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 108
    .line 109
    .line 110
    :goto_0
    new-instance v0, Lcom/mycompany/app/dialog/DialogDownUrl$40;

    .line 111
    .line 112
    invoke-direct {v0, p1}, Lcom/mycompany/app/dialog/DialogDownUrl$40;-><init>(Lcom/mycompany/app/dialog/DialogDownUrl;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_6
    iget-object v2, p1, Lcom/mycompany/app/dialog/DialogDownUrl;->F0:Lcom/mycompany/app/view/MyCoverView;

    .line 120
    .line 121
    if-nez v2, :cond_7

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_7
    const/4 v2, 0x0

    .line 125
    if-eqz v0, :cond_8

    .line 126
    .line 127
    invoke-virtual {p1, v2}, Lcom/mycompany/app/dialog/DialogDownUrl;->Y(Z)V

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_8
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogDownUrl;->J1:Ljava/util/List;

    .line 132
    .line 133
    if-eqz v0, :cond_a

    .line 134
    .line 135
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    if-eqz v4, :cond_a

    .line 144
    .line 145
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    check-cast v4, Lcom/mycompany/app/web/WebViewActivity$FaceItem;

    .line 150
    .line 151
    iget-object v7, p1, Lcom/mycompany/app/dialog/DialogDownUrl;->T0:Ljava/lang/String;

    .line 152
    .line 153
    iget-object v4, v4, Lcom/mycompany/app/web/WebViewActivity$FaceItem;->a:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    if-eqz v4, :cond_9

    .line 160
    .line 161
    invoke-virtual {p1, v2}, Lcom/mycompany/app/dialog/DialogDownUrl;->Y(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .line 163
    .line 164
    goto :goto_2

    .line 165
    :catch_0
    :cond_a
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogDownUrl;->F0:Lcom/mycompany/app/view/MyCoverView;

    .line 166
    .line 167
    if-nez v0, :cond_b

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_b
    invoke-virtual {p1, v3}, Lcom/mycompany/app/dialog/DialogDownUrl;->f0(Z)V

    .line 171
    .line 172
    .line 173
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogDownUrl;->F0:Lcom/mycompany/app/view/MyCoverView;

    .line 174
    .line 175
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownUrl$33;

    .line 176
    .line 177
    invoke-direct {v2, p1}, Lcom/mycompany/app/dialog/DialogDownUrl$33;-><init>(Lcom/mycompany/app/dialog/DialogDownUrl;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v2, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 181
    .line 182
    .line 183
    :goto_1
    new-instance v0, Lcom/mycompany/app/dialog/DialogDownUrl$35;

    .line 184
    .line 185
    invoke-direct {v0, p1}, Lcom/mycompany/app/dialog/DialogDownUrl$35;-><init>(Lcom/mycompany/app/dialog/DialogDownUrl;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 189
    .line 190
    .line 191
    :cond_c
    :goto_2
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogDownUrl;->d0:Lcom/mycompany/app/view/MyAdFrame;

    .line 192
    .line 193
    if-eqz v0, :cond_d

    .line 194
    .line 195
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogDownUrl;->m0:Lcom/mycompany/app/view/MyRoundImage;

    .line 196
    .line 197
    const v0, -0x70708

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1, v0, v1}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 201
    .line 202
    .line 203
    goto :goto_3

    .line 204
    :cond_d
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogDownUrl;->T0:Ljava/lang/String;

    .line 205
    .line 206
    iput-object v0, p1, Lcom/mycompany/app/dialog/DialogDownUrl;->X0:Ljava/lang/String;

    .line 207
    .line 208
    iget-object v0, p1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 209
    .line 210
    if-nez v0, :cond_e

    .line 211
    .line 212
    goto :goto_3

    .line 213
    :cond_e
    new-instance v1, Lcom/mycompany/app/dialog/DialogDownUrl$18;

    .line 214
    .line 215
    invoke-direct {v1, p1}, Lcom/mycompany/app/dialog/DialogDownUrl$18;-><init>(Lcom/mycompany/app/dialog/DialogDownUrl;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 219
    .line 220
    .line 221
    :cond_f
    :goto_3
    return-void
.end method
