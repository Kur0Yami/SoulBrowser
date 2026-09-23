.class Lcom/mycompany/app/dialog/DialogViewRead$50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewRead;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewRead;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$50;->c:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefRead;->j:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewRead$50;->c:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->U:Lcom/mycompany/app/view/MyFadeFrame;

    .line 8
    .line 9
    if-nez v1, :cond_2

    .line 10
    .line 11
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->c:Z

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto/16 :goto_0

    .line 16
    .line 17
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->f:Lcom/mycompany/app/main/MainActivity;

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    goto/16 :goto_0

    .line 22
    .line 23
    :cond_1
    new-instance v2, Lcom/mycompany/app/view/MyFadeFrame;

    .line 24
    .line 25
    invoke-direct {v2, v1}, Lcom/mycompany/app/view/MyFadeFrame;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    sget v3, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 29
    .line 30
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 31
    .line 32
    .line 33
    new-instance v3, Landroid/widget/FrameLayout;

    .line 34
    .line 35
    invoke-direct {v3, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 39
    .line 40
    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 41
    .line 42
    .line 43
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->round_guide_16:I

    .line 44
    .line 45
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 46
    .line 47
    .line 48
    const/high16 v4, 0x43040000    # 132.0f

    .line 49
    .line 50
    invoke-static {v1, v4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    float-to-int v4, v4

    .line 55
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 56
    .line 57
    const/4 v6, -0x2

    .line 58
    invoke-direct {v5, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 59
    .line 60
    .line 61
    const/16 v4, 0x11

    .line 62
    .line 63
    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 64
    .line 65
    invoke-virtual {v2, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    .line 67
    .line 68
    new-instance v4, Landroid/view/View;

    .line 69
    .line 70
    invoke-direct {v4, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 71
    .line 72
    .line 73
    const/high16 v5, 0x42a80000    # 84.0f

    .line 74
    .line 75
    invoke-static {v1, v5}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    float-to-int v5, v5

    .line 80
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 81
    .line 82
    invoke-direct {v7, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 83
    .line 84
    .line 85
    const/4 v5, 0x1

    .line 86
    iput v5, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 87
    .line 88
    invoke-virtual {v3, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    .line 90
    .line 91
    new-instance v7, Landroidx/appcompat/widget/AppCompatTextView;

    .line 92
    .line 93
    const/4 v8, 0x0

    .line 94
    invoke-direct {v7, v1, v8}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    .line 96
    .line 97
    const/high16 v8, 0x41800000    # 16.0f

    .line 98
    .line 99
    invoke-virtual {v7, v5, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 100
    .line 101
    .line 102
    const/4 v8, -0x1

    .line 103
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    .line 105
    .line 106
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 107
    .line 108
    invoke-direct {v9, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 109
    .line 110
    .line 111
    const/high16 v6, 0x42b80000    # 92.0f

    .line 112
    .line 113
    invoke-static {v1, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    float-to-int v1, v1

    .line 118
    iput v1, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 119
    .line 120
    iput v5, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 121
    .line 122
    invoke-virtual {v3, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    .line 124
    .line 125
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogViewRead;->U:Lcom/mycompany/app/view/MyFadeFrame;

    .line 126
    .line 127
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_pinch:I

    .line 128
    .line 129
    invoke-virtual {v4, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 130
    .line 131
    .line 132
    sget v1, Lnet/kaki87/soul2/testing/R$string;->guide_pinch:I

    .line 133
    .line 134
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(I)V

    .line 135
    .line 136
    .line 137
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->U:Lcom/mycompany/app/view/MyFadeFrame;

    .line 138
    .line 139
    new-instance v2, Lcom/mycompany/app/dialog/DialogViewRead$51;

    .line 140
    .line 141
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogViewRead$51;-><init>(Lcom/mycompany/app/dialog/DialogViewRead;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyFadeFrame;->setListener(Lcom/mycompany/app/view/MyFadeListener;)V

    .line 145
    .line 146
    .line 147
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->U:Lcom/mycompany/app/view/MyFadeFrame;

    .line 148
    .line 149
    new-instance v2, Lcom/mycompany/app/dialog/DialogViewRead$52;

    .line 150
    .line 151
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogViewRead$52;-><init>(Lcom/mycompany/app/dialog/DialogViewRead;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 155
    .line 156
    .line 157
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->U:Lcom/mycompany/app/view/MyFadeFrame;

    .line 158
    .line 159
    invoke-virtual {v0, v1, v8, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 160
    .line 161
    .line 162
    :cond_2
    :goto_0
    return-void

    .line 163
    :cond_3
    sget v0, Lcom/mycompany/app/dialog/DialogViewRead;->S2:I

    .line 164
    .line 165
    return-void
.end method
