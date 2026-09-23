.class Lcom/mycompany/app/main/MainListView$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainListView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView$24;->c:Lcom/mycompany/app/main/MainListView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView$24;->c:Lcom/mycompany/app/main/MainListView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView;->w:Landroid/widget/FrameLayout;

    .line 4
    .line 5
    if-eqz v1, :cond_a

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView;->R:Landroid/widget/FrameLayout;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :cond_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 14
    .line 15
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 16
    .line 17
    sget v3, Lcom/mycompany/app/main/MainApp;->m1:I

    .line 18
    .line 19
    add-int/2addr v2, v3

    .line 20
    const/4 v3, -0x1

    .line 21
    invoke-direct {v1, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 22
    .line 23
    .line 24
    const/16 v2, 0x50

    .line 25
    .line 26
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 27
    .line 28
    iget-object v2, v0, Lcom/mycompany/app/main/MainListView;->w:Landroid/widget/FrameLayout;

    .line 29
    .line 30
    iget-object v3, v0, Lcom/mycompany/app/main/MainListView;->R:Landroid/widget/FrameLayout;

    .line 31
    .line 32
    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView;->V:Lcom/mycompany/app/view/MyLineText;

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView;->V:Lcom/mycompany/app/view/MyLineText;

    .line 44
    .line 45
    new-instance v3, Lcom/mycompany/app/main/MainListView$25;

    .line 46
    .line 47
    invoke-direct {v3, v0}, Lcom/mycompany/app/main/MainListView$25;-><init>(Lcom/mycompany/app/main/MainListView;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView;->W:Lcom/mycompany/app/view/MyLineText;

    .line 54
    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView;->W:Lcom/mycompany/app/view/MyLineText;

    .line 61
    .line 62
    new-instance v3, Lcom/mycompany/app/main/MainListView$26;

    .line 63
    .line 64
    invoke-direct {v3, v0}, Lcom/mycompany/app/main/MainListView$26;-><init>(Lcom/mycompany/app/main/MainListView;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView;->X:Lcom/mycompany/app/view/MyLineText;

    .line 71
    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView;->X:Lcom/mycompany/app/view/MyLineText;

    .line 78
    .line 79
    new-instance v3, Lcom/mycompany/app/main/MainListView$27;

    .line 80
    .line 81
    invoke-direct {v3, v0}, Lcom/mycompany/app/main/MainListView$27;-><init>(Lcom/mycompany/app/main/MainListView;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    .line 86
    .line 87
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView;->Y:Lcom/mycompany/app/view/MyLineText;

    .line 88
    .line 89
    if-eqz v1, :cond_4

    .line 90
    .line 91
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 92
    .line 93
    .line 94
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView;->Y:Lcom/mycompany/app/view/MyLineText;

    .line 95
    .line 96
    new-instance v3, Lcom/mycompany/app/main/MainListView$28;

    .line 97
    .line 98
    invoke-direct {v3, v0}, Lcom/mycompany/app/main/MainListView$28;-><init>(Lcom/mycompany/app/main/MainListView;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    .line 103
    .line 104
    :cond_4
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView;->Z:Lcom/mycompany/app/view/MyLineText;

    .line 105
    .line 106
    if-eqz v1, :cond_5

    .line 107
    .line 108
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 109
    .line 110
    .line 111
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView;->Z:Lcom/mycompany/app/view/MyLineText;

    .line 112
    .line 113
    new-instance v3, Lcom/mycompany/app/main/MainListView$29;

    .line 114
    .line 115
    invoke-direct {v3, v0}, Lcom/mycompany/app/main/MainListView$29;-><init>(Lcom/mycompany/app/main/MainListView;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    .line 120
    .line 121
    :cond_5
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView;->a0:Lcom/mycompany/app/view/MyLineText;

    .line 122
    .line 123
    if-eqz v1, :cond_6

    .line 124
    .line 125
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 126
    .line 127
    .line 128
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView;->a0:Lcom/mycompany/app/view/MyLineText;

    .line 129
    .line 130
    new-instance v3, Lcom/mycompany/app/main/MainListView$30;

    .line 131
    .line 132
    invoke-direct {v3, v0}, Lcom/mycompany/app/main/MainListView$30;-><init>(Lcom/mycompany/app/main/MainListView;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    .line 137
    .line 138
    :cond_6
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView;->b0:Lcom/mycompany/app/view/MyLineText;

    .line 139
    .line 140
    if-eqz v1, :cond_8

    .line 141
    .line 142
    iget v3, v0, Lcom/mycompany/app/main/MainListView;->d:I

    .line 143
    .line 144
    const/4 v4, 0x1

    .line 145
    if-ne v3, v4, :cond_7

    .line 146
    .line 147
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 148
    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_7
    const/16 v2, 0x8

    .line 152
    .line 153
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 154
    .line 155
    .line 156
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView;->b0:Lcom/mycompany/app/view/MyLineText;

    .line 157
    .line 158
    new-instance v2, Lcom/mycompany/app/main/MainListView$31;

    .line 159
    .line 160
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/MainListView$31;-><init>(Lcom/mycompany/app/main/MainListView;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    .line 165
    .line 166
    :cond_8
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView;->h:Landroid/widget/RelativeLayout;

    .line 167
    .line 168
    if-nez v1, :cond_9

    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_9
    new-instance v2, Lcom/mycompany/app/main/MainListView$32;

    .line 172
    .line 173
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/MainListView$32;-><init>(Lcom/mycompany/app/main/MainListView;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 177
    .line 178
    .line 179
    :cond_a
    :goto_1
    return-void
.end method
