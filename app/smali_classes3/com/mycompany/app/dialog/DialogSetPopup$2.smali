.class Lcom/mycompany/app/dialog/DialogSetPopup$2;
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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetPopup$2;->c:Lcom/mycompany/app/dialog/DialogSetPopup;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetPopup$2;->c:Lcom/mycompany/app/dialog/DialogSetPopup;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPopup;->e0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPopup;->b0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPopup;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 18
    .line 19
    const v2, -0x50506

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 23
    .line 24
    .line 25
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPopup;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 26
    .line 27
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back_dark:I

    .line 28
    .line 29
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 30
    .line 31
    .line 32
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPopup;->i0:Lcom/mycompany/app/view/MyLineText;

    .line 33
    .line 34
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back_dark:I

    .line 35
    .line 36
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 37
    .line 38
    .line 39
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPopup;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 42
    .line 43
    .line 44
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPopup;->i0:Lcom/mycompany/app/view/MyLineText;

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPopup;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 51
    .line 52
    const/high16 v2, -0x1000000

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    .line 56
    .line 57
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPopup;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 58
    .line 59
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back:I

    .line 60
    .line 61
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 62
    .line 63
    .line 64
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPopup;->i0:Lcom/mycompany/app/view/MyLineText;

    .line 65
    .line 66
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back:I

    .line 67
    .line 68
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 69
    .line 70
    .line 71
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPopup;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 72
    .line 73
    const v3, -0xe19938

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77
    .line 78
    .line 79
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPopup;->i0:Lcom/mycompany/app/view/MyLineText;

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    .line 83
    .line 84
    :goto_0
    new-instance v1, Lcom/mycompany/app/main/MainDragAdapter;

    .line 85
    .line 86
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetPopup;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 87
    .line 88
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetPopup;->g0:Lcom/mycompany/app/fragment/FragmentDragView;

    .line 89
    .line 90
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogSetPopup;->n0:Ljava/util/ArrayList;

    .line 91
    .line 92
    new-instance v5, Lcom/mycompany/app/dialog/DialogSetPopup$3;

    .line 93
    .line 94
    invoke-direct {v5, v0}, Lcom/mycompany/app/dialog/DialogSetPopup$3;-><init>(Lcom/mycompany/app/dialog/DialogSetPopup;)V

    .line 95
    .line 96
    .line 97
    const/4 v6, 0x0

    .line 98
    invoke-direct {v1, v2, v6, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 99
    .line 100
    .line 101
    iput-object v2, v1, Lcom/mycompany/app/main/MainDragAdapter;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 102
    .line 103
    iput-object v3, v1, Lcom/mycompany/app/main/MainDragAdapter;->f:Lcom/mycompany/app/fragment/FragmentDragView;

    .line 104
    .line 105
    iput-object v4, v1, Lcom/mycompany/app/main/MainDragAdapter;->g:Ljava/util/ArrayList;

    .line 106
    .line 107
    iput-object v5, v1, Lcom/mycompany/app/main/MainDragAdapter;->h:Lcom/mycompany/app/main/MainDragAdapter$MainDragListener;

    .line 108
    .line 109
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPopup;->j0:Lcom/mycompany/app/main/MainDragAdapter;

    .line 110
    .line 111
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetPopup;->g0:Lcom/mycompany/app/fragment/FragmentDragView;

    .line 112
    .line 113
    invoke-virtual {v2, v1}, Lcom/mycompany/app/drag/DragListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 114
    .line 115
    .line 116
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPopup;->g0:Lcom/mycompany/app/fragment/FragmentDragView;

    .line 117
    .line 118
    const/4 v2, 0x1

    .line 119
    invoke-virtual {v1, v2}, Lcom/mycompany/app/drag/DragListView;->setDragEnabled(Z)V

    .line 120
    .line 121
    .line 122
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPopup;->g0:Lcom/mycompany/app/fragment/FragmentDragView;

    .line 123
    .line 124
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetPopup$4;

    .line 125
    .line 126
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetPopup$4;-><init>(Lcom/mycompany/app/dialog/DialogSetPopup;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 130
    .line 131
    .line 132
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPopup;->g0:Lcom/mycompany/app/fragment/FragmentDragView;

    .line 133
    .line 134
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetPopup$5;

    .line 135
    .line 136
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetPopup$5;-><init>(Lcom/mycompany/app/dialog/DialogSetPopup;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v2}, Lcom/mycompany/app/drag/DragListView;->setDropListener(Lcom/mycompany/app/drag/DragListView$DropListener;)V

    .line 140
    .line 141
    .line 142
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPopup;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 143
    .line 144
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetPopup$6;

    .line 145
    .line 146
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetPopup$6;-><init>(Lcom/mycompany/app/dialog/DialogSetPopup;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    .line 151
    .line 152
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPopup;->i0:Lcom/mycompany/app/view/MyLineText;

    .line 153
    .line 154
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetPopup$7;

    .line 155
    .line 156
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetPopup$7;-><init>(Lcom/mycompany/app/dialog/DialogSetPopup;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    .line 161
    .line 162
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPopup;->e0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 163
    .line 164
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetPopup$8;

    .line 165
    .line 166
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetPopup$8;-><init>(Lcom/mycompany/app/dialog/DialogSetPopup;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 170
    .line 171
    .line 172
    :cond_2
    :goto_1
    return-void
.end method
