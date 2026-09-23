.class Lcom/mycompany/app/dialog/DialogListGdrive$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogListGdrive;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogListGdrive;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogListGdrive$2;->c:Lcom/mycompany/app/dialog/DialogListGdrive;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogListGdrive$2;->c:Lcom/mycompany/app/dialog/DialogListGdrive;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->B:Lcom/mycompany/app/view/MyMainRelative;

    .line 4
    .line 5
    if-eqz v1, :cond_3

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->x:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->w:Lcom/mycompany/app/setting/SettingBackup;

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    goto/16 :goto_1

    .line 18
    .line 19
    :cond_1
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->C:Lcom/mycompany/app/view/MyButtonImage;

    .line 24
    .line 25
    const v2, -0xc0c0c1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 29
    .line 30
    .line 31
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->C:Lcom/mycompany/app/view/MyButtonImage;

    .line 32
    .line 33
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_dark_24:I

    .line 34
    .line 35
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 36
    .line 37
    .line 38
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->D:Landroidx/appcompat/widget/AppCompatTextView;

    .line 39
    .line 40
    const v3, -0x50506

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44
    .line 45
    .line 46
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->E:Lcom/mycompany/app/view/MyButtonImage;

    .line 47
    .line 48
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_refresh_dark_20:I

    .line 49
    .line 50
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 51
    .line 52
    .line 53
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->E:Lcom/mycompany/app/view/MyButtonImage;

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 56
    .line 57
    .line 58
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 59
    .line 60
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_more_vert_dark_20:I

    .line 61
    .line 62
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 63
    .line 64
    .line 65
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 68
    .line 69
    .line 70
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->G:Lcom/mycompany/app/view/MyRecyclerView;

    .line 71
    .line 72
    const v2, -0xdededf

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->C:Lcom/mycompany/app/view/MyButtonImage;

    .line 80
    .line 81
    const/high16 v2, 0x21000000

    .line 82
    .line 83
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 84
    .line 85
    .line 86
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->C:Lcom/mycompany/app/view/MyButtonImage;

    .line 87
    .line 88
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_black_24:I

    .line 89
    .line 90
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 91
    .line 92
    .line 93
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->D:Landroidx/appcompat/widget/AppCompatTextView;

    .line 94
    .line 95
    const/high16 v3, -0x1000000

    .line 96
    .line 97
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    .line 99
    .line 100
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->E:Lcom/mycompany/app/view/MyButtonImage;

    .line 101
    .line 102
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_refresh_black_20:I

    .line 103
    .line 104
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 105
    .line 106
    .line 107
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->E:Lcom/mycompany/app/view/MyButtonImage;

    .line 108
    .line 109
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 110
    .line 111
    .line 112
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 113
    .line 114
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_more_vert_black_20:I

    .line 115
    .line 116
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 117
    .line 118
    .line 119
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 120
    .line 121
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 122
    .line 123
    .line 124
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->G:Lcom/mycompany/app/view/MyRecyclerView;

    .line 125
    .line 126
    const/4 v2, -0x1

    .line 127
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 128
    .line 129
    .line 130
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->B:Lcom/mycompany/app/view/MyMainRelative;

    .line 131
    .line 132
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyMainRelative;->setWindow(Landroid/view/Window;)V

    .line 137
    .line 138
    .line 139
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->w:Lcom/mycompany/app/setting/SettingBackup;

    .line 140
    .line 141
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->B:Lcom/mycompany/app/view/MyMainRelative;

    .line 142
    .line 143
    const/4 v3, 0x1

    .line 144
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/main/MainActivity;->n0(Landroid/view/View;Z)V

    .line 145
    .line 146
    .line 147
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->C:Lcom/mycompany/app/view/MyButtonImage;

    .line 148
    .line 149
    new-instance v2, Lcom/mycompany/app/dialog/DialogListGdrive$3;

    .line 150
    .line 151
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogListGdrive$3;-><init>(Lcom/mycompany/app/dialog/DialogListGdrive;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    .line 156
    .line 157
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->E:Lcom/mycompany/app/view/MyButtonImage;

    .line 158
    .line 159
    new-instance v2, Lcom/mycompany/app/dialog/DialogListGdrive$4;

    .line 160
    .line 161
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogListGdrive$4;-><init>(Lcom/mycompany/app/dialog/DialogListGdrive;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    .line 166
    .line 167
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 168
    .line 169
    new-instance v2, Lcom/mycompany/app/dialog/DialogListGdrive$5;

    .line 170
    .line 171
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogListGdrive$5;-><init>(Lcom/mycompany/app/dialog/DialogListGdrive;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    .line 176
    .line 177
    new-instance v1, Lcom/mycompany/app/view/MyManagerLinear;

    .line 178
    .line 179
    invoke-direct {v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 180
    .line 181
    .line 182
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->H:Lcom/mycompany/app/view/MyManagerLinear;

    .line 183
    .line 184
    new-instance v1, Lcom/mycompany/app/gdrive/GdriveAdapter;

    .line 185
    .line 186
    new-instance v2, Lcom/mycompany/app/dialog/DialogListGdrive$6;

    .line 187
    .line 188
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogListGdrive$6;-><init>(Lcom/mycompany/app/dialog/DialogListGdrive;)V

    .line 189
    .line 190
    .line 191
    invoke-direct {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 192
    .line 193
    .line 194
    iput-object v2, v1, Lcom/mycompany/app/gdrive/GdriveAdapter;->e:Lcom/mycompany/app/gdrive/GdriveAdapter$GdriveListener;

    .line 195
    .line 196
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->I:Lcom/mycompany/app/gdrive/GdriveAdapter;

    .line 197
    .line 198
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->G:Lcom/mycompany/app/view/MyRecyclerView;

    .line 199
    .line 200
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->H:Lcom/mycompany/app/view/MyManagerLinear;

    .line 201
    .line 202
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 203
    .line 204
    .line 205
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->G:Lcom/mycompany/app/view/MyRecyclerView;

    .line 206
    .line 207
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->I:Lcom/mycompany/app/gdrive/GdriveAdapter;

    .line 208
    .line 209
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 210
    .line 211
    .line 212
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->G:Lcom/mycompany/app/view/MyRecyclerView;

    .line 213
    .line 214
    new-instance v2, Lcom/mycompany/app/dialog/DialogListGdrive$7;

    .line 215
    .line 216
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogListGdrive$7;-><init>(Lcom/mycompany/app/dialog/DialogListGdrive;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->j(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 220
    .line 221
    .line 222
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->L:Lcom/mycompany/app/view/MyScrollBar;

    .line 223
    .line 224
    new-instance v2, Lcom/mycompany/app/dialog/DialogListGdrive$8;

    .line 225
    .line 226
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogListGdrive$8;-><init>(Lcom/mycompany/app/dialog/DialogListGdrive;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyScrollBar;->setListener(Lcom/mycompany/app/view/MyScrollBar$ScrollBarListener;)V

    .line 230
    .line 231
    .line 232
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->B:Lcom/mycompany/app/view/MyMainRelative;

    .line 233
    .line 234
    new-instance v2, Lcom/mycompany/app/dialog/DialogListGdrive$9;

    .line 235
    .line 236
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogListGdrive$9;-><init>(Lcom/mycompany/app/dialog/DialogListGdrive;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogNormal;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 240
    .line 241
    .line 242
    :cond_3
    :goto_1
    return-void
.end method
