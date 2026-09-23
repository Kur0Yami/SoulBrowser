.class Lcom/mycompany/app/dialog/DialogSetPopup$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetPopup;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetPopup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetPopup$1;->c:Lcom/mycompany/app/dialog/DialogSetPopup;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetPopup$1;->c:Lcom/mycompany/app/dialog/DialogSetPopup;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPopup;->b0:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_0

    .line 8
    .line 9
    :cond_0
    const/4 v2, 0x1

    .line 10
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->q(Landroid/content/Context;I)Lcom/mycompany/app/view/MyDialogLinear;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    new-instance v4, Lcom/mycompany/app/view/MyLineText;

    .line 15
    .line 16
    invoke-direct {v4, v1}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    sget v5, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    invoke-virtual {v4, v5, v6, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 23
    .line 24
    .line 25
    const v5, 0x800013

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 32
    .line 33
    .line 34
    const/high16 v5, 0x41800000    # 16.0f

    .line 35
    .line 36
    invoke-virtual {v4, v2, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 37
    .line 38
    .line 39
    sget v7, Lnet/kaki87/soul2/testing/R$string;->edit:I

    .line 40
    .line 41
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    .line 42
    .line 43
    .line 44
    sget v7, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 45
    .line 46
    invoke-virtual {v4, v7}, Lcom/mycompany/app/view/MyLineText;->q(I)V

    .line 47
    .line 48
    .line 49
    sget v7, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 50
    .line 51
    const/4 v8, -0x1

    .line 52
    invoke-virtual {v3, v4, v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 53
    .line 54
    .line 55
    const/4 v7, 0x2

    .line 56
    const/4 v9, 0x0

    .line 57
    invoke-static {v1, v9, v7}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->m(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroidx/core/widget/NestedScrollView;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 62
    .line 63
    invoke-direct {v10, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 64
    .line 65
    .line 66
    const/high16 v11, 0x3f800000    # 1.0f

    .line 67
    .line 68
    iput v11, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 69
    .line 70
    invoke-virtual {v3, v7, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    .line 72
    .line 73
    new-instance v10, Landroid/widget/FrameLayout;

    .line 74
    .line 75
    invoke-direct {v10, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 76
    .line 77
    .line 78
    const/4 v12, -0x2

    .line 79
    invoke-virtual {v7, v10, v8, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 80
    .line 81
    .line 82
    iget-object v7, v0, Lcom/mycompany/app/dialog/DialogSetPopup;->n0:Ljava/util/ArrayList;

    .line 83
    .line 84
    if-eqz v7, :cond_1

    .line 85
    .line 86
    iget-object v7, v0, Lcom/mycompany/app/dialog/DialogSetPopup;->b0:Landroid/content/Context;

    .line 87
    .line 88
    const/high16 v12, 0x42500000    # 52.0f

    .line 89
    .line 90
    invoke-static {v7, v12}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    iget-object v12, v0, Lcom/mycompany/app/dialog/DialogSetPopup;->n0:Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 97
    .line 98
    .line 99
    move-result v12

    .line 100
    int-to-float v12, v12

    .line 101
    mul-float/2addr v7, v12

    .line 102
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 103
    .line 104
    .line 105
    move-result v12

    .line 106
    :cond_1
    new-instance v7, Lcom/mycompany/app/fragment/FragmentDragView;

    .line 107
    .line 108
    invoke-direct {v7, v1}, Lcom/mycompany/app/drag/DragListView;-><init>(Landroid/content/Context;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v7}, Lcom/mycompany/app/fragment/FragmentDragView;->v()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v7, v9}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v7, v2}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v7, v6}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 121
    .line 122
    .line 123
    new-instance v13, Landroid/graphics/drawable/ColorDrawable;

    .line 124
    .line 125
    invoke-direct {v13, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v7, v13}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v10, v7, v8, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 132
    .line 133
    .line 134
    new-instance v10, Lcom/mycompany/app/view/MyLineLinear;

    .line 135
    .line 136
    invoke-direct {v10, v1}, Lcom/mycompany/app/view/MyLineLinear;-><init>(Landroid/content/Context;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v10, v6}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v10, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 143
    .line 144
    .line 145
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 146
    .line 147
    invoke-virtual {v10, v12}, Lcom/mycompany/app/view/MyLineLinear;->setLinePad(I)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v10, v2}, Lcom/mycompany/app/view/MyLineLinear;->setLineUp(Z)V

    .line 151
    .line 152
    .line 153
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 154
    .line 155
    invoke-static {v3, v10, v8, v12, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->s(Lcom/mycompany/app/view/MyDialogLinear;Lcom/mycompany/app/view/MyLineLinear;IILandroid/content/Context;)Lcom/mycompany/app/view/MyLineText;

    .line 156
    .line 157
    .line 158
    move-result-object v12

    .line 159
    const/16 v13, 0x11

    .line 160
    .line 161
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v12, v2, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 165
    .line 166
    .line 167
    sget v14, Lnet/kaki87/soul2/testing/R$string;->reset:I

    .line 168
    .line 169
    invoke-static {v12, v14, v1, v6, v8}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->f(Lcom/mycompany/app/view/MyLineText;ILandroid/content/Context;II)Landroid/widget/LinearLayout$LayoutParams;

    .line 170
    .line 171
    .line 172
    move-result-object v14

    .line 173
    iput v11, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 174
    .line 175
    invoke-static {v10, v12, v14, v1, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->l(Lcom/mycompany/app/view/MyLineLinear;Lcom/mycompany/app/view/MyLineText;Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatTextView;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1, v2, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 183
    .line 184
    .line 185
    sget v2, Lnet/kaki87/soul2/testing/R$string;->apply:I

    .line 186
    .line 187
    invoke-static {v1, v2, v6, v8}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->e(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/LinearLayout$LayoutParams;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    iput v11, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 192
    .line 193
    invoke-virtual {v10, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    .line 195
    .line 196
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogSetPopup;->e0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 197
    .line 198
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogSetPopup;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 199
    .line 200
    iput-object v7, v0, Lcom/mycompany/app/dialog/DialogSetPopup;->g0:Lcom/mycompany/app/fragment/FragmentDragView;

    .line 201
    .line 202
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPopup;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 203
    .line 204
    iput-object v12, v0, Lcom/mycompany/app/dialog/DialogSetPopup;->i0:Lcom/mycompany/app/view/MyLineText;

    .line 205
    .line 206
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 207
    .line 208
    if-nez v1, :cond_2

    .line 209
    .line 210
    :goto_0
    return-void

    .line 211
    :cond_2
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetPopup$2;

    .line 212
    .line 213
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetPopup$2;-><init>(Lcom/mycompany/app/dialog/DialogSetPopup;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 217
    .line 218
    .line 219
    return-void
.end method
