.class Lcom/mycompany/app/dialog/DialogSetItem$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetItem;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetItem$2;->c:Lcom/mycompany/app/dialog/DialogSetItem;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetItem$2;->c:Lcom/mycompany/app/dialog/DialogSetItem;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetItem;->g0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 4
    .line 5
    if-eqz v1, :cond_3

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetItem;->a0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetItem;->k0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 14
    .line 15
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->r7(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 19
    .line 20
    const/4 v2, -0x1

    .line 21
    const v3, -0xdededf

    .line 22
    .line 23
    .line 24
    const/high16 v4, -0x1000000

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetItem;->g0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 29
    .line 30
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 31
    .line 32
    .line 33
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetItem;->h0:Lcom/mycompany/app/view/MyEditPure;

    .line 34
    .line 35
    const v4, -0x50506

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 39
    .line 40
    .line 41
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetItem;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 42
    .line 43
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_cancel_dark_18:I

    .line 44
    .line 45
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 46
    .line 47
    .line 48
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetItem;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 49
    .line 50
    const v5, -0xc0c0c1

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 54
    .line 55
    .line 56
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetItem;->k0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 57
    .line 58
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 59
    .line 60
    .line 61
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetItem;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 62
    .line 63
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back_dark:I

    .line 64
    .line 65
    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 66
    .line 67
    .line 68
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetItem;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 69
    .line 70
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetItem;->g0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 75
    .line 76
    const v5, -0x70708

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 80
    .line 81
    .line 82
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetItem;->h0:Lcom/mycompany/app/view/MyEditPure;

    .line 83
    .line 84
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    .line 86
    .line 87
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetItem;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 88
    .line 89
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_cancel_black_18:I

    .line 90
    .line 91
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 92
    .line 93
    .line 94
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetItem;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 95
    .line 96
    const v5, -0x1f1f20

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 100
    .line 101
    .line 102
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetItem;->k0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 103
    .line 104
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 105
    .line 106
    .line 107
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetItem;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 108
    .line 109
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back:I

    .line 110
    .line 111
    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 112
    .line 113
    .line 114
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetItem;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 115
    .line 116
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    .line 118
    .line 119
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetItem;->j0:Lcom/mycompany/app/view/MyRoundView;

    .line 120
    .line 121
    sget-boolean v4, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 122
    .line 123
    if-eqz v4, :cond_2

    .line 124
    .line 125
    move v2, v3

    .line 126
    :cond_2
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyRoundView;->setBackColor(I)V

    .line 127
    .line 128
    .line 129
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetItem;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 130
    .line 131
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetItem$3;

    .line 132
    .line 133
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetItem$3;-><init>(Lcom/mycompany/app/dialog/DialogSetItem;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    .line 138
    .line 139
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetItem;->h0:Lcom/mycompany/app/view/MyEditPure;

    .line 140
    .line 141
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetItem$4;

    .line 142
    .line 143
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetItem$4;-><init>(Lcom/mycompany/app/dialog/DialogSetItem;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 147
    .line 148
    .line 149
    new-instance v1, Lcom/mycompany/app/view/MyManagerLinear;

    .line 150
    .line 151
    const/4 v2, 0x1

    .line 152
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 153
    .line 154
    .line 155
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogSetItem;->p0:Lcom/mycompany/app/view/MyManagerLinear;

    .line 156
    .line 157
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetItem;->k0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 158
    .line 159
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 160
    .line 161
    .line 162
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetItem;->k0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 163
    .line 164
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetItem$5;

    .line 165
    .line 166
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetItem$5;-><init>(Lcom/mycompany/app/dialog/DialogSetItem;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->t(Lcom/mycompany/app/view/MyRecyclerView;Lcom/mycompany/app/view/MyDialogBottom$BotListListener;)V

    .line 170
    .line 171
    .line 172
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetItem;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 173
    .line 174
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetItem$6;

    .line 175
    .line 176
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetItem$6;-><init>(Lcom/mycompany/app/dialog/DialogSetItem;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    .line 181
    .line 182
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetItem;->g0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 183
    .line 184
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetItem$7;

    .line 185
    .line 186
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetItem$7;-><init>(Lcom/mycompany/app/dialog/DialogSetItem;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->f(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 190
    .line 191
    .line 192
    :cond_3
    :goto_1
    return-void
.end method
