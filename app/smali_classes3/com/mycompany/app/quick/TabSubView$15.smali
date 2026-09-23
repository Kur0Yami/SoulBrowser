.class Lcom/mycompany/app/quick/TabSubView$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/image/ImageSizeListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/quick/TabSubView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/TabSubView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/TabSubView$15;->a:Lcom/mycompany/app/quick/TabSubView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;II)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/quick/TabSubView$15;->a:Lcom/mycompany/app/quick/TabSubView;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/mycompany/app/quick/TabSubView;->Q:Lcom/mycompany/app/view/MySnackbar;

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/mycompany/app/view/MySnackbar;->p()V

    .line 8
    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    iput-object p2, p1, Lcom/mycompany/app/quick/TabSubView;->Q:Lcom/mycompany/app/view/MySnackbar;

    .line 12
    .line 13
    :cond_0
    invoke-virtual {p1}, Lcom/mycompany/app/quick/TabSubView;->f()V

    .line 14
    .line 15
    .line 16
    iget-boolean p2, p1, Lcom/mycompany/app/quick/TabSubView;->R:Z

    .line 17
    .line 18
    sget-boolean p3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 19
    .line 20
    if-eq p2, p3, :cond_3

    .line 21
    .line 22
    iput-boolean p3, p1, Lcom/mycompany/app/quick/TabSubView;->R:Z

    .line 23
    .line 24
    iget-object p2, p1, Lcom/mycompany/app/quick/TabSubView;->r:Landroid/widget/RelativeLayout;

    .line 25
    .line 26
    if-nez p2, :cond_1

    .line 27
    .line 28
    goto/16 :goto_1

    .line 29
    .line 30
    :cond_1
    const v0, -0x50506

    .line 31
    .line 32
    .line 33
    const/high16 v1, -0x1000000

    .line 34
    .line 35
    if-eqz p3, :cond_2

    .line 36
    .line 37
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 38
    .line 39
    .line 40
    iget-object p2, p1, Lcom/mycompany/app/quick/TabSubView;->s:Landroidx/appcompat/widget/AppCompatTextView;

    .line 41
    .line 42
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43
    .line 44
    .line 45
    iget-object p2, p1, Lcom/mycompany/app/quick/TabSubView;->t:Lcom/mycompany/app/view/MyButtonCheck;

    .line 46
    .line 47
    sget p3, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_dark_24:I

    .line 48
    .line 49
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_dark_24:I

    .line 50
    .line 51
    invoke-virtual {p2, p3, v0}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 52
    .line 53
    .line 54
    iget-object p2, p1, Lcom/mycompany/app/quick/TabSubView;->t:Lcom/mycompany/app/view/MyButtonCheck;

    .line 55
    .line 56
    const p3, -0xc0c0c1

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, p3}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 60
    .line 61
    .line 62
    iget-object p2, p1, Lcom/mycompany/app/quick/TabSubView;->v:Landroid/view/View;

    .line 63
    .line 64
    sget p3, Lnet/kaki87/soul2/testing/R$drawable;->round_top_left_b:I

    .line 65
    .line 66
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 67
    .line 68
    .line 69
    iget-object p2, p1, Lcom/mycompany/app/quick/TabSubView;->w:Landroid/view/View;

    .line 70
    .line 71
    sget p3, Lnet/kaki87/soul2/testing/R$drawable;->round_top_right_b:I

    .line 72
    .line 73
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 74
    .line 75
    .line 76
    iget-object p2, p1, Lcom/mycompany/app/quick/TabSubView;->x:Landroid/view/View;

    .line 77
    .line 78
    sget p3, Lnet/kaki87/soul2/testing/R$drawable;->round_bot_left_b:I

    .line 79
    .line 80
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 81
    .line 82
    .line 83
    iget-object p2, p1, Lcom/mycompany/app/quick/TabSubView;->y:Landroid/view/View;

    .line 84
    .line 85
    sget p3, Lnet/kaki87/soul2/testing/R$drawable;->round_bot_right_b:I

    .line 86
    .line 87
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 88
    .line 89
    .line 90
    iget-object p2, p1, Lcom/mycompany/app/quick/TabSubView;->z:Landroidx/appcompat/widget/AppCompatTextView;

    .line 91
    .line 92
    sget p3, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back_black:I

    .line 93
    .line 94
    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 95
    .line 96
    .line 97
    iget-object p2, p1, Lcom/mycompany/app/quick/TabSubView;->A:Lcom/mycompany/app/view/MyRecyclerView;

    .line 98
    .line 99
    const p3, -0x4f4f50

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, p3}, Lcom/mycompany/app/view/MyRecyclerView;->t0(I)V

    .line 103
    .line 104
    .line 105
    iget-object p2, p1, Lcom/mycompany/app/quick/TabSubView;->A:Lcom/mycompany/app/view/MyRecyclerView;

    .line 106
    .line 107
    const p3, -0xdededf

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_2
    const p3, -0x70708

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 118
    .line 119
    .line 120
    iget-object p2, p1, Lcom/mycompany/app/quick/TabSubView;->s:Landroidx/appcompat/widget/AppCompatTextView;

    .line 121
    .line 122
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    .line 124
    .line 125
    iget-object p2, p1, Lcom/mycompany/app/quick/TabSubView;->t:Lcom/mycompany/app/view/MyButtonCheck;

    .line 126
    .line 127
    sget p3, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_black_24:I

    .line 128
    .line 129
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_black_24:I

    .line 130
    .line 131
    invoke-virtual {p2, p3, v2}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 132
    .line 133
    .line 134
    iget-object p2, p1, Lcom/mycompany/app/quick/TabSubView;->t:Lcom/mycompany/app/view/MyButtonCheck;

    .line 135
    .line 136
    const/high16 p3, 0x21000000

    .line 137
    .line 138
    invoke-virtual {p2, p3}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 139
    .line 140
    .line 141
    iget-object p2, p1, Lcom/mycompany/app/quick/TabSubView;->v:Landroid/view/View;

    .line 142
    .line 143
    sget p3, Lnet/kaki87/soul2/testing/R$drawable;->round_top_left_g:I

    .line 144
    .line 145
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 146
    .line 147
    .line 148
    iget-object p2, p1, Lcom/mycompany/app/quick/TabSubView;->w:Landroid/view/View;

    .line 149
    .line 150
    sget p3, Lnet/kaki87/soul2/testing/R$drawable;->round_top_right_g:I

    .line 151
    .line 152
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 153
    .line 154
    .line 155
    iget-object p2, p1, Lcom/mycompany/app/quick/TabSubView;->x:Landroid/view/View;

    .line 156
    .line 157
    sget p3, Lnet/kaki87/soul2/testing/R$drawable;->round_bot_left_g:I

    .line 158
    .line 159
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 160
    .line 161
    .line 162
    iget-object p2, p1, Lcom/mycompany/app/quick/TabSubView;->y:Landroid/view/View;

    .line 163
    .line 164
    sget p3, Lnet/kaki87/soul2/testing/R$drawable;->round_bot_right_g:I

    .line 165
    .line 166
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 167
    .line 168
    .line 169
    iget-object p2, p1, Lcom/mycompany/app/quick/TabSubView;->z:Landroidx/appcompat/widget/AppCompatTextView;

    .line 170
    .line 171
    sget p3, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back_gray:I

    .line 172
    .line 173
    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 174
    .line 175
    .line 176
    iget-object p2, p1, Lcom/mycompany/app/quick/TabSubView;->A:Lcom/mycompany/app/view/MyRecyclerView;

    .line 177
    .line 178
    invoke-virtual {p2, v1}, Lcom/mycompany/app/view/MyRecyclerView;->t0(I)V

    .line 179
    .line 180
    .line 181
    iget-object p2, p1, Lcom/mycompany/app/quick/TabSubView;->A:Lcom/mycompany/app/view/MyRecyclerView;

    .line 182
    .line 183
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 184
    .line 185
    .line 186
    :goto_0
    invoke-virtual {p1}, Lcom/mycompany/app/quick/TabSubView;->l()V

    .line 187
    .line 188
    .line 189
    iget-object p1, p1, Lcom/mycompany/app/quick/TabSubView;->D:Lcom/mycompany/app/web/WebTabAdapter;

    .line 190
    .line 191
    if-eqz p1, :cond_3

    .line 192
    .line 193
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 194
    .line 195
    .line 196
    :cond_3
    :goto_1
    return-void
.end method
