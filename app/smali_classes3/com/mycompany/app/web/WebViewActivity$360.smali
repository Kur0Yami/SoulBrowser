.class Lcom/mycompany/app/web/WebViewActivity$360;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$360;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity$360;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget v1, v2, Lcom/mycompany/app/web/WebViewActivity;->Gk:I

    .line 6
    .line 7
    iget-object v3, v2, Lcom/mycompany/app/web/WebViewActivity;->Hk:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v6, v2, Lcom/mycompany/app/web/WebViewActivity;->Ik:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v7, v2, Lcom/mycompany/app/web/WebViewActivity;->Jk:Ljava/lang/String;

    .line 12
    .line 13
    iget-wide v8, v2, Lcom/mycompany/app/web/WebViewActivity;->Kk:J

    .line 14
    .line 15
    iget v10, v2, Lcom/mycompany/app/web/WebViewActivity;->Lk:I

    .line 16
    .line 17
    iget-object v4, v2, Lcom/mycompany/app/web/WebViewActivity;->Mk:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v12, v2, Lcom/mycompany/app/web/WebViewActivity;->Nk:Ljava/util/List;

    .line 20
    .line 21
    iget v13, v2, Lcom/mycompany/app/web/WebViewActivity;->Ok:I

    .line 22
    .line 23
    iget-object v5, v2, Lcom/mycompany/app/web/WebViewActivity;->Pk:Ljava/util/ArrayList;

    .line 24
    .line 25
    iget-boolean v11, v2, Lcom/mycompany/app/web/WebViewActivity;->Qk:Z

    .line 26
    .line 27
    move-object v14, v5

    .line 28
    iget-object v5, v2, Lcom/mycompany/app/web/WebViewActivity;->Rk:Ljava/lang/String;

    .line 29
    .line 30
    move v15, v11

    .line 31
    iget v11, v2, Lcom/mycompany/app/web/WebViewActivity;->Sk:I

    .line 32
    .line 33
    move-object/from16 v16, v14

    .line 34
    .line 35
    iget-object v14, v2, Lcom/mycompany/app/web/WebViewActivity;->Tk:Ljava/util/List;

    .line 36
    .line 37
    move/from16 v17, v15

    .line 38
    .line 39
    iget-boolean v15, v2, Lcom/mycompany/app/web/WebViewActivity;->Uk:Z

    .line 40
    .line 41
    move/from16 v18, v15

    .line 42
    .line 43
    const/4 v15, 0x0

    .line 44
    iput-object v15, v2, Lcom/mycompany/app/web/WebViewActivity;->Hk:Ljava/lang/String;

    .line 45
    .line 46
    iput-object v15, v2, Lcom/mycompany/app/web/WebViewActivity;->Ik:Ljava/lang/String;

    .line 47
    .line 48
    iput-object v15, v2, Lcom/mycompany/app/web/WebViewActivity;->Jk:Ljava/lang/String;

    .line 49
    .line 50
    iput-object v15, v2, Lcom/mycompany/app/web/WebViewActivity;->Mk:Ljava/lang/String;

    .line 51
    .line 52
    iput-object v15, v2, Lcom/mycompany/app/web/WebViewActivity;->Nk:Ljava/util/List;

    .line 53
    .line 54
    iput-object v15, v2, Lcom/mycompany/app/web/WebViewActivity;->Pk:Ljava/util/ArrayList;

    .line 55
    .line 56
    iput-object v15, v2, Lcom/mycompany/app/web/WebViewActivity;->Rk:Ljava/lang/String;

    .line 57
    .line 58
    iput-object v15, v2, Lcom/mycompany/app/web/WebViewActivity;->Tk:Ljava/util/List;

    .line 59
    .line 60
    iget-object v15, v2, Lcom/mycompany/app/web/WebViewActivity;->p6:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 61
    .line 62
    if-eqz v15, :cond_0

    .line 63
    .line 64
    goto/16 :goto_3

    .line 65
    .line 66
    :cond_0
    invoke-virtual {v2}, Lcom/mycompany/app/web/WebViewActivity;->U3()V

    .line 67
    .line 68
    .line 69
    const/4 v15, 0x0

    .line 70
    invoke-virtual {v2, v15}, Lcom/mycompany/app/web/WebViewActivity;->L9(Z)V

    .line 71
    .line 72
    .line 73
    move-object/from16 v19, v16

    .line 74
    .line 75
    move/from16 v16, v1

    .line 76
    .line 77
    new-instance v1, Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 78
    .line 79
    new-instance v15, Lcom/mycompany/app/web/WebViewActivity$361;

    .line 80
    .line 81
    invoke-direct {v15, v2}, Lcom/mycompany/app/web/WebViewActivity$361;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 82
    .line 83
    .line 84
    move/from16 v20, v17

    .line 85
    .line 86
    move-object/from16 v17, v15

    .line 87
    .line 88
    const/4 v15, 0x0

    .line 89
    const/4 v0, 0x0

    .line 90
    invoke-direct/range {v1 .. v17}, Lcom/mycompany/app/dialog/DialogDownUrl;-><init>(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/util/List;ILjava/util/List;ZILcom/mycompany/app/dialog/DialogDownUrl$DownUrlListener;)V

    .line 91
    .line 92
    .line 93
    iput-object v1, v2, Lcom/mycompany/app/web/WebViewActivity;->p6:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 94
    .line 95
    const/4 v3, 0x1

    .line 96
    if-ne v11, v3, :cond_1

    .line 97
    .line 98
    iget-object v0, v2, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 99
    .line 100
    iget-object v4, v2, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 101
    .line 102
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->u1:Landroid/view/ViewGroup;

    .line 103
    .line 104
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->v1:Lcom/mycompany/app/web/WebNestView;

    .line 105
    .line 106
    iput v3, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->t1:I

    .line 107
    .line 108
    goto/16 :goto_2

    .line 109
    .line 110
    :cond_1
    const/4 v4, 0x2

    .line 111
    if-ne v11, v4, :cond_4

    .line 112
    .line 113
    iget-object v5, v2, Lcom/mycompany/app/web/WebViewActivity;->R5:Lcom/mycompany/app/web/WebVideoFrame;

    .line 114
    .line 115
    if-eqz v5, :cond_2

    .line 116
    .line 117
    iget-object v0, v2, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 118
    .line 119
    iget-object v5, v2, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 120
    .line 121
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->u1:Landroid/view/ViewGroup;

    .line 122
    .line 123
    iput-object v5, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->v1:Lcom/mycompany/app/web/WebNestView;

    .line 124
    .line 125
    iput v3, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->w1:I

    .line 126
    .line 127
    iput v4, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->t1:I

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_2
    if-eqz v18, :cond_3

    .line 131
    .line 132
    iget-object v0, v2, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 133
    .line 134
    iget-object v5, v2, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 135
    .line 136
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->u1:Landroid/view/ViewGroup;

    .line 137
    .line 138
    iput-object v5, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->v1:Lcom/mycompany/app/web/WebNestView;

    .line 139
    .line 140
    iput v4, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->w1:I

    .line 141
    .line 142
    iput v4, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->t1:I

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_3
    iget-object v5, v2, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 146
    .line 147
    iput-object v5, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->u1:Landroid/view/ViewGroup;

    .line 148
    .line 149
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->v1:Lcom/mycompany/app/web/WebNestView;

    .line 150
    .line 151
    const/4 v0, 0x0

    .line 152
    iput v0, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->w1:I

    .line 153
    .line 154
    iput v4, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->t1:I

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_4
    if-eqz v12, :cond_5

    .line 158
    .line 159
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-nez v0, :cond_5

    .line 164
    .line 165
    iget-object v0, v2, Lcom/mycompany/app/web/WebViewActivity;->p6:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 166
    .line 167
    iget-object v1, v2, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 168
    .line 169
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->u1:Landroid/view/ViewGroup;

    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_5
    if-eqz v19, :cond_7

    .line 173
    .line 174
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-nez v0, :cond_7

    .line 179
    .line 180
    iget-object v0, v2, Lcom/mycompany/app/web/WebViewActivity;->p6:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 181
    .line 182
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    .line 184
    .line 185
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    if-nez v1, :cond_6

    .line 190
    .line 191
    iput v3, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->H1:I

    .line 192
    .line 193
    :goto_0
    move-object/from16 v14, v19

    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_6
    const/4 v1, 0x0

    .line 197
    iput v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->H1:I

    .line 198
    .line 199
    goto :goto_0

    .line 200
    :goto_1
    iput-object v14, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->I1:Ljava/util/ArrayList;

    .line 201
    .line 202
    goto :goto_2

    .line 203
    :cond_7
    const/4 v1, 0x0

    .line 204
    if-eqz v20, :cond_9

    .line 205
    .line 206
    iget-object v0, v2, Lcom/mycompany/app/web/WebViewActivity;->p6:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 207
    .line 208
    if-eqz v20, :cond_8

    .line 209
    .line 210
    iput v4, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->H1:I

    .line 211
    .line 212
    goto :goto_2

    .line 213
    :cond_8
    iput v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->H1:I

    .line 214
    .line 215
    :cond_9
    :goto_2
    iget-object v0, v2, Lcom/mycompany/app/web/WebViewActivity;->p6:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 216
    .line 217
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$362;

    .line 218
    .line 219
    invoke-direct {v1, v2}, Lcom/mycompany/app/web/WebViewActivity$362;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 220
    .line 221
    .line 222
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->W0:Lcom/mycompany/app/dialog/DialogDownUrl$DownPosterListener;

    .line 223
    .line 224
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$363;

    .line 225
    .line 226
    invoke-direct {v1, v2}, Lcom/mycompany/app/web/WebViewActivity$363;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 230
    .line 231
    .line 232
    iget-object v0, v2, Lcom/mycompany/app/web/WebViewActivity;->R5:Lcom/mycompany/app/web/WebVideoFrame;

    .line 233
    .line 234
    if-eqz v0, :cond_a

    .line 235
    .line 236
    iget-object v0, v2, Lcom/mycompany/app/web/WebViewActivity;->p6:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 237
    .line 238
    iput-boolean v3, v0, Lcom/mycompany/app/view/MyDialogBottom;->E:Z

    .line 239
    .line 240
    :cond_a
    :goto_3
    return-void
.end method
