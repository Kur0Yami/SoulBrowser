.class Lcom/mycompany/app/dialog/DialogWebView$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogWebView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebView$12;->c:Lcom/mycompany/app/dialog/DialogWebView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZtwo;->e0:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogWebView$12;->c:Lcom/mycompany/app/dialog/DialogWebView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-boolean v0, v2, Lcom/mycompany/app/dialog/DialogWebView;->j1:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    sput-boolean v1, Lcom/mycompany/app/pref/PrefZtwo;->e0:Z

    .line 13
    .line 14
    iget-object v0, v2, Lcom/mycompany/app/dialog/DialogWebView;->c0:Landroid/content/Context;

    .line 15
    .line 16
    const/16 v3, 0x10

    .line 17
    .line 18
    const-string v4, "mNotiMenu"

    .line 19
    .line 20
    invoke-static {v3, v0, v4, v1}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    iget-object v0, v2, Lcom/mycompany/app/dialog/DialogWebView;->R0:Lcom/mycompany/app/view/MyButtonImage;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setNoti(Z)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v0, v2, Lcom/mycompany/app/dialog/DialogWebView;->b0:Lcom/mycompany/app/main/MainActivity;

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object v0, v2, Lcom/mycompany/app/dialog/DialogWebView;->f1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    if-eqz v0, :cond_3

    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    iput-object v3, v2, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 46
    .line 47
    .line 48
    iput-object v3, v2, Lcom/mycompany/app/dialog/DialogWebView;->f1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 49
    .line 50
    :cond_3
    if-nez p1, :cond_4

    .line 51
    .line 52
    :goto_0
    return-void

    .line 53
    :cond_4
    new-instance v8, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    iget v0, v2, Lcom/mycompany/app/dialog/DialogWebView;->g0:I

    .line 59
    .line 60
    const/4 v3, 0x2

    .line 61
    const/4 v4, 0x1

    .line 62
    if-ne v0, v4, :cond_5

    .line 63
    .line 64
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 65
    .line 66
    sget v5, Lnet/kaki87/soul2/testing/R$string;->only_image:I

    .line 67
    .line 68
    invoke-direct {v0, v1, v5}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 75
    .line 76
    sget v1, Lnet/kaki87/soul2/testing/R$string;->image_list:I

    .line 77
    .line 78
    invoke-direct {v0, v4, v1}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 85
    .line 86
    sget v1, Lnet/kaki87/soul2/testing/R$string;->pop_allow:I

    .line 87
    .line 88
    invoke-direct {v0, v3, v1}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_5
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 96
    .line 97
    sget v4, Lnet/kaki87/soul2/testing/R$string;->trans_auto:I

    .line 98
    .line 99
    sget-boolean v5, Lcom/mycompany/app/pref/PrefRead;->N:Z

    .line 100
    .line 101
    const/16 v6, 0x64

    .line 102
    .line 103
    invoke-direct {v0, v6, v4, v1, v5}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIIZ)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 110
    .line 111
    sget-object v1, Lcom/mycompany/app/main/MainConst;->h:[I

    .line 112
    .line 113
    aget v4, v1, v3

    .line 114
    .line 115
    invoke-direct {v0, v3, v4}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 122
    .line 123
    const/4 v3, 0x5

    .line 124
    aget v4, v1, v3

    .line 125
    .line 126
    invoke-direct {v0, v3, v4}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    sget-boolean v0, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 133
    .line 134
    const/4 v3, 0x6

    .line 135
    if-eqz v0, :cond_6

    .line 136
    .line 137
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 138
    .line 139
    sget v4, Lnet/kaki87/soul2/testing/R$string;->normal_tab:I

    .line 140
    .line 141
    invoke-direct {v0, v3, v4}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_6
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 149
    .line 150
    aget v4, v1, v3

    .line 151
    .line 152
    invoke-direct {v0, v3, v4}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    :goto_1
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 169
    .line 170
    const/4 v3, 0x7

    .line 171
    aget v4, v1, v3

    .line 172
    .line 173
    invoke-direct {v0, v3, v4}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 180
    .line 181
    const/16 v3, 0x8

    .line 182
    .line 183
    aget v1, v1, v3

    .line 184
    .line 185
    invoke-direct {v0, v3, v1}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 192
    .line 193
    const/16 v1, 0x65

    .line 194
    .line 195
    sget v3, Lnet/kaki87/soul2/testing/R$string;->block_area:I

    .line 196
    .line 197
    invoke-direct {v0, v1, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    :goto_2
    new-instance v4, Lcom/mycompany/app/view/MyPopupMenu;

    .line 204
    .line 205
    iget-object v5, v2, Lcom/mycompany/app/dialog/DialogWebView;->b0:Lcom/mycompany/app/main/MainActivity;

    .line 206
    .line 207
    iget-object v6, v2, Lcom/mycompany/app/dialog/DialogWebView;->o0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 208
    .line 209
    sget-boolean v9, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 210
    .line 211
    new-instance v10, Lcom/mycompany/app/dialog/DialogWebView$37;

    .line 212
    .line 213
    invoke-direct {v10, v2}, Lcom/mycompany/app/dialog/DialogWebView$37;-><init>(Lcom/mycompany/app/dialog/DialogWebView;)V

    .line 214
    .line 215
    .line 216
    move-object v7, p1

    .line 217
    invoke-direct/range {v4 .. v10}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 218
    .line 219
    .line 220
    iput-object v4, v2, Lcom/mycompany/app/dialog/DialogWebView;->f1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 221
    .line 222
    iput-object v4, v2, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 223
    .line 224
    return-void
.end method
