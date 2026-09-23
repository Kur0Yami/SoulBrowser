.class Lcom/mycompany/app/main/MainListView2$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainListView2;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListView2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView2$13;->c:Lcom/mycompany/app/main/MainListView2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2$13;->c:Lcom/mycompany/app/main/MainListView2;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/main/MainListView2;->e:I

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/main/MainListView2;->n:Landroid/widget/FrameLayout;

    .line 6
    .line 7
    if-eqz v2, :cond_8

    .line 8
    .line 9
    iget-object v2, v0, Lcom/mycompany/app/main/MainListView2;->I:Landroid/widget/FrameLayout;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto/16 :goto_3

    .line 14
    .line 15
    :cond_0
    iget-object v3, v0, Lcom/mycompany/app/main/MainListView2;->H:Landroid/widget/RelativeLayout;

    .line 16
    .line 17
    const/4 v4, -0x1

    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    sget v5, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 21
    .line 22
    invoke-virtual {v3, v2, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 27
    .line 28
    sget v3, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 29
    .line 30
    sget v5, Lcom/mycompany/app/main/MainApp;->m1:I

    .line 31
    .line 32
    add-int/2addr v3, v5

    .line 33
    invoke-direct {v2, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 34
    .line 35
    .line 36
    const/16 v3, 0x50

    .line 37
    .line 38
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 39
    .line 40
    iget-object v3, v0, Lcom/mycompany/app/main/MainListView2;->n:Landroid/widget/FrameLayout;

    .line 41
    .line 42
    iget-object v4, v0, Lcom/mycompany/app/main/MainListView2;->I:Landroid/widget/FrameLayout;

    .line 43
    .line 44
    invoke-virtual {v3, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    iget-object v2, v0, Lcom/mycompany/app/main/MainListView2;->M:Lcom/mycompany/app/view/MyLineText;

    .line 48
    .line 49
    sget v3, Lnet/kaki87/soul2/testing/R$string;->delete:I

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 52
    .line 53
    .line 54
    iget-object v2, v0, Lcom/mycompany/app/main/MainListView2;->N:Lcom/mycompany/app/view/MyLineText;

    .line 55
    .line 56
    sget v3, Lnet/kaki87/soul2/testing/R$string;->move:I

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 59
    .line 60
    .line 61
    iget-object v2, v0, Lcom/mycompany/app/main/MainListView2;->O:Lcom/mycompany/app/view/MyLineText;

    .line 62
    .line 63
    sget v3, Lnet/kaki87/soul2/testing/R$string;->share:I

    .line 64
    .line 65
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 66
    .line 67
    .line 68
    iget-object v2, v0, Lcom/mycompany/app/main/MainListView2;->M:Lcom/mycompany/app/view/MyLineText;

    .line 69
    .line 70
    const/4 v3, 0x0

    .line 71
    if-eqz v2, :cond_2

    .line 72
    .line 73
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    iget-object v2, v0, Lcom/mycompany/app/main/MainListView2;->M:Lcom/mycompany/app/view/MyLineText;

    .line 77
    .line 78
    new-instance v4, Lcom/mycompany/app/main/MainListView2$14;

    .line 79
    .line 80
    invoke-direct {v4, v0}, Lcom/mycompany/app/main/MainListView2$14;-><init>(Lcom/mycompany/app/main/MainListView2;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    .line 85
    .line 86
    :cond_2
    iget-object v2, v0, Lcom/mycompany/app/main/MainListView2;->N:Lcom/mycompany/app/view/MyLineText;

    .line 87
    .line 88
    const/16 v4, 0x8

    .line 89
    .line 90
    const/16 v5, 0x25

    .line 91
    .line 92
    if-eqz v2, :cond_4

    .line 93
    .line 94
    if-ne v1, v5, :cond_3

    .line 95
    .line 96
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_3
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 101
    .line 102
    .line 103
    :goto_1
    iget-object v2, v0, Lcom/mycompany/app/main/MainListView2;->N:Lcom/mycompany/app/view/MyLineText;

    .line 104
    .line 105
    new-instance v6, Lcom/mycompany/app/main/MainListView2$15;

    .line 106
    .line 107
    invoke-direct {v6, v0}, Lcom/mycompany/app/main/MainListView2$15;-><init>(Lcom/mycompany/app/main/MainListView2;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    .line 112
    .line 113
    :cond_4
    iget-object v2, v0, Lcom/mycompany/app/main/MainListView2;->O:Lcom/mycompany/app/view/MyLineText;

    .line 114
    .line 115
    if-eqz v2, :cond_6

    .line 116
    .line 117
    if-ne v1, v5, :cond_5

    .line 118
    .line 119
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_5
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 124
    .line 125
    .line 126
    :goto_2
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView2;->O:Lcom/mycompany/app/view/MyLineText;

    .line 127
    .line 128
    new-instance v2, Lcom/mycompany/app/main/MainListView2$16;

    .line 129
    .line 130
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/MainListView2$16;-><init>(Lcom/mycompany/app/main/MainListView2;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    .line 135
    .line 136
    :cond_6
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView2;->g:Landroid/widget/RelativeLayout;

    .line 137
    .line 138
    if-nez v1, :cond_7

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_7
    new-instance v2, Lcom/mycompany/app/main/MainListView2$17;

    .line 142
    .line 143
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/MainListView2$17;-><init>(Lcom/mycompany/app/main/MainListView2;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 147
    .line 148
    .line 149
    :cond_8
    :goto_3
    return-void
.end method
