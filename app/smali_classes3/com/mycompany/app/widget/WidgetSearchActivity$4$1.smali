.class Lcom/mycompany/app/widget/WidgetSearchActivity$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/widget/WidgetSearchActivity$4;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/widget/WidgetSearchActivity$4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity$4$1;->c:Lcom/mycompany/app/widget/WidgetSearchActivity$4;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity$4$1;->c:Lcom/mycompany/app/widget/WidgetSearchActivity$4;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$4;->c:Lcom/mycompany/app/widget/WidgetSearchActivity;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/widget/WidgetSearchActivity;->f1:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/widget/WidgetSearchActivity;->m1:Lcom/mycompany/app/view/MyAddrView;

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    goto/16 :goto_0

    .line 16
    .line 17
    :cond_1
    iget-boolean v1, v0, Lcom/mycompany/app/widget/WidgetSearchActivity;->s1:Z

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    goto/16 :goto_0

    .line 22
    .line 23
    :cond_2
    const/4 v1, 0x1

    .line 24
    iput-boolean v1, v0, Lcom/mycompany/app/widget/WidgetSearchActivity;->s1:Z

    .line 25
    .line 26
    sget-object v2, Lcom/mycompany/app/pref/PrefMain;->H:Ljava/lang/String;

    .line 27
    .line 28
    iput-object v2, v0, Lcom/mycompany/app/widget/WidgetSearchActivity;->D1:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v2, v0, Lcom/mycompany/app/widget/WidgetSearchActivity;->n1:Lcom/mycompany/app/view/MyIconView;

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-virtual {v2, v3, v1}, Lcom/mycompany/app/view/MyIconView;->v(ZZ)V

    .line 34
    .line 35
    .line 36
    iget-object v2, v0, Lcom/mycompany/app/widget/WidgetSearchActivity;->o1:Lcom/mycompany/app/view/MyIconView;

    .line 37
    .line 38
    invoke-virtual {v2, v3, v1}, Lcom/mycompany/app/view/MyIconView;->v(ZZ)V

    .line 39
    .line 40
    .line 41
    iget-object v2, v0, Lcom/mycompany/app/widget/WidgetSearchActivity;->p1:Lcom/mycompany/app/view/MyIconView;

    .line 42
    .line 43
    invoke-virtual {v2, v3, v1}, Lcom/mycompany/app/view/MyIconView;->v(ZZ)V

    .line 44
    .line 45
    .line 46
    iget-object v2, v0, Lcom/mycompany/app/widget/WidgetSearchActivity;->q1:Lcom/mycompany/app/view/MyIconView;

    .line 47
    .line 48
    invoke-virtual {v2, v3, v1}, Lcom/mycompany/app/view/MyIconView;->v(ZZ)V

    .line 49
    .line 50
    .line 51
    iget-object v2, v0, Lcom/mycompany/app/widget/WidgetSearchActivity;->m1:Lcom/mycompany/app/view/MyAddrView;

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    iget-object v2, v0, Lcom/mycompany/app/widget/WidgetSearchActivity;->m1:Lcom/mycompany/app/view/MyAddrView;

    .line 57
    .line 58
    sget-object v4, Lcom/mycompany/app/pref/PrefMain;->H:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v4}, Lcom/mycompany/app/main/MainUtil;->a2(Ljava/lang/String;)[I

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyAddrView;->a([I)V

    .line 65
    .line 66
    .line 67
    iget-object v2, v0, Lcom/mycompany/app/widget/WidgetSearchActivity;->m1:Lcom/mycompany/app/view/MyAddrView;

    .line 68
    .line 69
    new-instance v4, Lcom/mycompany/app/widget/WidgetSearchActivity$5;

    .line 70
    .line 71
    invoke-direct {v4, v0}, Lcom/mycompany/app/widget/WidgetSearchActivity$5;-><init>(Lcom/mycompany/app/widget/WidgetSearchActivity;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyAddrView;->setListener(Lcom/mycompany/app/view/MyBarView$BarListener;)V

    .line 75
    .line 76
    .line 77
    iget-object v2, v0, Lcom/mycompany/app/widget/WidgetSearchActivity;->n1:Lcom/mycompany/app/view/MyIconView;

    .line 78
    .line 79
    invoke-virtual {v2}, Lcom/mycompany/app/view/MyIconView;->w()V

    .line 80
    .line 81
    .line 82
    iget-object v2, v0, Lcom/mycompany/app/widget/WidgetSearchActivity;->n1:Lcom/mycompany/app/view/MyIconView;

    .line 83
    .line 84
    new-instance v4, Lcom/mycompany/app/widget/WidgetSearchActivity$6;

    .line 85
    .line 86
    invoke-direct {v4, v0}, Lcom/mycompany/app/widget/WidgetSearchActivity$6;-><init>(Lcom/mycompany/app/widget/WidgetSearchActivity;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    .line 91
    .line 92
    iget-object v2, v0, Lcom/mycompany/app/widget/WidgetSearchActivity;->o1:Lcom/mycompany/app/view/MyIconView;

    .line 93
    .line 94
    new-instance v4, Lcom/mycompany/app/widget/WidgetSearchActivity$7;

    .line 95
    .line 96
    invoke-direct {v4, v0}, Lcom/mycompany/app/widget/WidgetSearchActivity$7;-><init>(Lcom/mycompany/app/widget/WidgetSearchActivity;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    .line 101
    .line 102
    iget-object v2, v0, Lcom/mycompany/app/widget/WidgetSearchActivity;->p1:Lcom/mycompany/app/view/MyIconView;

    .line 103
    .line 104
    new-instance v4, Lcom/mycompany/app/widget/WidgetSearchActivity$8;

    .line 105
    .line 106
    invoke-direct {v4, v0}, Lcom/mycompany/app/widget/WidgetSearchActivity$8;-><init>(Lcom/mycompany/app/widget/WidgetSearchActivity;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    .line 111
    .line 112
    iget-object v2, v0, Lcom/mycompany/app/widget/WidgetSearchActivity;->q1:Lcom/mycompany/app/view/MyIconView;

    .line 113
    .line 114
    new-instance v4, Lcom/mycompany/app/widget/WidgetSearchActivity$9;

    .line 115
    .line 116
    invoke-direct {v4, v0}, Lcom/mycompany/app/widget/WidgetSearchActivity$9;-><init>(Lcom/mycompany/app/widget/WidgetSearchActivity;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    .line 121
    .line 122
    iget-object v2, v0, Lcom/mycompany/app/widget/WidgetSearchActivity;->r1:Lcom/mycompany/app/view/MyEditAuto;

    .line 123
    .line 124
    iput-object v0, v2, Lcom/mycompany/app/view/MyEditAuto;->A:Lcom/mycompany/app/main/MainActivity;

    .line 125
    .line 126
    new-instance v4, Landroid/widget/ListPopupWindow;

    .line 127
    .line 128
    const/4 v5, 0x0

    .line 129
    invoke-direct {v4, v0, v5, v3}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 130
    .line 131
    .line 132
    iput-object v4, v2, Lcom/mycompany/app/view/MyEditAuto;->B:Landroid/widget/ListPopupWindow;

    .line 133
    .line 134
    const/4 v3, -0x1

    .line 135
    invoke-virtual {v4, v3}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 136
    .line 137
    .line 138
    iget-object v4, v2, Lcom/mycompany/app/view/MyEditAuto;->B:Landroid/widget/ListPopupWindow;

    .line 139
    .line 140
    const/4 v6, -0x2

    .line 141
    invoke-virtual {v4, v6}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    .line 142
    .line 143
    .line 144
    iget-object v4, v2, Lcom/mycompany/app/view/MyEditAuto;->B:Landroid/widget/ListPopupWindow;

    .line 145
    .line 146
    invoke-virtual {v4, v5}, Landroid/widget/ListPopupWindow;->setListSelector(Landroid/graphics/drawable/Drawable;)V

    .line 147
    .line 148
    .line 149
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 150
    .line 151
    const/16 v7, 0x1e

    .line 152
    .line 153
    if-ge v4, v7, :cond_3

    .line 154
    .line 155
    iget-object v4, v2, Lcom/mycompany/app/view/MyEditAuto;->B:Landroid/widget/ListPopupWindow;

    .line 156
    .line 157
    const/16 v7, 0x10

    .line 158
    .line 159
    invoke-virtual {v4, v7}, Landroid/widget/ListPopupWindow;->setSoftInputMode(I)V

    .line 160
    .line 161
    .line 162
    :cond_3
    iget-object v2, v2, Lcom/mycompany/app/view/MyEditAuto;->B:Landroid/widget/ListPopupWindow;

    .line 163
    .line 164
    invoke-virtual {v2, v1}, Landroid/widget/ListPopupWindow;->setPromptPosition(I)V

    .line 165
    .line 166
    .line 167
    iget-object v2, v0, Lcom/mycompany/app/widget/WidgetSearchActivity;->r1:Lcom/mycompany/app/view/MyEditAuto;

    .line 168
    .line 169
    iget-object v4, v0, Lcom/mycompany/app/widget/WidgetSearchActivity;->m1:Lcom/mycompany/app/view/MyAddrView;

    .line 170
    .line 171
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyEditAuto;->setDropDownAnchor(Landroid/view/View;)V

    .line 172
    .line 173
    .line 174
    iget-object v2, v0, Lcom/mycompany/app/widget/WidgetSearchActivity;->r1:Lcom/mycompany/app/view/MyEditAuto;

    .line 175
    .line 176
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyEditAuto;->setDropDownWidth(I)V

    .line 177
    .line 178
    .line 179
    iget-object v2, v0, Lcom/mycompany/app/widget/WidgetSearchActivity;->r1:Lcom/mycompany/app/view/MyEditAuto;

    .line 180
    .line 181
    invoke-virtual {v2, v6}, Lcom/mycompany/app/view/MyEditAuto;->setDropDownHeight(I)V

    .line 182
    .line 183
    .line 184
    iget-object v2, v0, Lcom/mycompany/app/widget/WidgetSearchActivity;->r1:Lcom/mycompany/app/view/MyEditAuto;

    .line 185
    .line 186
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    .line 187
    .line 188
    const/high16 v6, 0x1000000

    .line 189
    .line 190
    invoke-direct {v4, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyEditAuto;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 194
    .line 195
    .line 196
    iget-object v2, v0, Lcom/mycompany/app/widget/WidgetSearchActivity;->r1:Lcom/mycompany/app/view/MyEditAuto;

    .line 197
    .line 198
    const/16 v4, 0x11

    .line 199
    .line 200
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setInputType(I)V

    .line 201
    .line 202
    .line 203
    iget-object v2, v0, Lcom/mycompany/app/widget/WidgetSearchActivity;->r1:Lcom/mycompany/app/view/MyEditAuto;

    .line 204
    .line 205
    iget-object v4, v0, Lcom/mycompany/app/widget/WidgetSearchActivity;->G1:Lcom/mycompany/app/view/MyEditAuto$KeyBackListener;

    .line 206
    .line 207
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyEditAuto;->setOldKeyListener(Lcom/mycompany/app/view/MyEditAuto$KeyBackListener;)V

    .line 208
    .line 209
    .line 210
    iget-object v2, v0, Lcom/mycompany/app/widget/WidgetSearchActivity;->r1:Lcom/mycompany/app/view/MyEditAuto;

    .line 211
    .line 212
    new-instance v4, Lcom/mycompany/app/widget/WidgetSearchActivity$10;

    .line 213
    .line 214
    invoke-direct {v4, v0}, Lcom/mycompany/app/widget/WidgetSearchActivity$10;-><init>(Lcom/mycompany/app/widget/WidgetSearchActivity;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyEditAuto;->setEditAutoListener(Lcom/mycompany/app/view/MyEditAuto$EditAutoListener;)V

    .line 218
    .line 219
    .line 220
    iget-object v2, v0, Lcom/mycompany/app/widget/WidgetSearchActivity;->r1:Lcom/mycompany/app/view/MyEditAuto;

    .line 221
    .line 222
    new-instance v4, Lcom/mycompany/app/widget/WidgetSearchActivity$11;

    .line 223
    .line 224
    invoke-direct {v4, v0}, Lcom/mycompany/app/widget/WidgetSearchActivity$11;-><init>(Lcom/mycompany/app/widget/WidgetSearchActivity;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 228
    .line 229
    .line 230
    iget-object v2, v0, Lcom/mycompany/app/widget/WidgetSearchActivity;->r1:Lcom/mycompany/app/view/MyEditAuto;

    .line 231
    .line 232
    invoke-virtual {v2, v3, v5}, Lcom/mycompany/app/view/MyEditAuto;->i(ILjava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0}, Lcom/mycompany/app/widget/WidgetSearchActivity;->H0()V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0, v1}, Lcom/mycompany/app/widget/WidgetSearchActivity;->I0(Z)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0}, Lcom/mycompany/app/widget/WidgetSearchActivity;->G0()V

    .line 242
    .line 243
    .line 244
    :goto_0
    iget-object v0, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 245
    .line 246
    if-nez v0, :cond_4

    .line 247
    .line 248
    :goto_1
    return-void

    .line 249
    :cond_4
    new-instance v1, Lcom/mycompany/app/widget/WidgetSearchActivity$4$1$1;

    .line 250
    .line 251
    invoke-direct {v1, p0}, Lcom/mycompany/app/widget/WidgetSearchActivity$4$1$1;-><init>(Lcom/mycompany/app/widget/WidgetSearchActivity$4$1;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 255
    .line 256
    .line 257
    return-void
.end method
