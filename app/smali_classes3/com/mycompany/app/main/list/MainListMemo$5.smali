.class Lcom/mycompany/app/main/list/MainListMemo$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/list/MainListMemo;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/list/MainListMemo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/list/MainListMemo$5;->c:Lcom/mycompany/app/main/list/MainListMemo;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefRead;->t:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListMemo$5;->c:Lcom/mycompany/app/main/list/MainListMemo;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListMemo;->G1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListMemo;->D1:Lcom/mycompany/app/view/MyMainRelative;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto/16 :goto_0

    .line 16
    .line 17
    :cond_0
    new-instance v1, Lcom/mycompany/app/view/MyFadeFrame;

    .line 18
    .line 19
    invoke-direct {v1, v0}, Lcom/mycompany/app/view/MyFadeFrame;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    sget v2, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 23
    .line 24
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 25
    .line 26
    .line 27
    new-instance v2, Landroid/widget/FrameLayout;

    .line 28
    .line 29
    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->round_guide_8:I

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 35
    .line 36
    .line 37
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 38
    .line 39
    const/4 v4, -0x1

    .line 40
    const/4 v5, -0x2

    .line 41
    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 42
    .line 43
    .line 44
    const v6, 0x800053

    .line 45
    .line 46
    .line 47
    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 48
    .line 49
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    .line 51
    .line 52
    new-instance v3, Landroid/widget/LinearLayout;

    .line 53
    .line 54
    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 55
    .line 56
    .line 57
    sget v6, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 58
    .line 59
    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 60
    .line 61
    .line 62
    const/4 v6, 0x1

    .line 63
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 64
    .line 65
    .line 66
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 67
    .line 68
    invoke-direct {v7, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 69
    .line 70
    .line 71
    iput v6, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 72
    .line 73
    invoke-virtual {v2, v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    .line 75
    .line 76
    new-instance v7, Landroidx/appcompat/widget/AppCompatTextView;

    .line 77
    .line 78
    const/4 v8, 0x0

    .line 79
    invoke-direct {v7, v0, v8}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    .line 81
    .line 82
    sget v8, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 83
    .line 84
    int-to-float v8, v8

    .line 85
    const/high16 v9, 0x3f800000    # 1.0f

    .line 86
    .line 87
    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 88
    .line 89
    .line 90
    const/high16 v8, 0x41800000    # 16.0f

    .line 91
    .line 92
    invoke-virtual {v7, v6, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, v7, v5, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 99
    .line 100
    .line 101
    iput-object v1, v0, Lcom/mycompany/app/main/list/MainListMemo;->G1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 102
    .line 103
    sget v1, Lnet/kaki87/soul2/testing/R$string;->sort_guide_1:I

    .line 104
    .line 105
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(I)V

    .line 106
    .line 107
    .line 108
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListMemo;->G1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 109
    .line 110
    new-instance v3, Lcom/mycompany/app/main/list/MainListMemo$6;

    .line 111
    .line 112
    invoke-direct {v3, v0}, Lcom/mycompany/app/main/list/MainListMemo$6;-><init>(Lcom/mycompany/app/main/list/MainListMemo;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyFadeFrame;->setListener(Lcom/mycompany/app/view/MyFadeListener;)V

    .line 116
    .line 117
    .line 118
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListMemo;->G1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 119
    .line 120
    new-instance v3, Lcom/mycompany/app/main/list/MainListMemo$7;

    .line 121
    .line 122
    invoke-direct {v3, v0}, Lcom/mycompany/app/main/list/MainListMemo$7;-><init>(Lcom/mycompany/app/main/list/MainListMemo;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 126
    .line 127
    .line 128
    new-instance v1, Lcom/mycompany/app/main/list/MainListMemo$8;

    .line 129
    .line 130
    invoke-direct {v1, v0}, Lcom/mycompany/app/main/list/MainListMemo$8;-><init>(Lcom/mycompany/app/main/list/MainListMemo;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    .line 135
    .line 136
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListMemo;->D1:Lcom/mycompany/app/view/MyMainRelative;

    .line 137
    .line 138
    iget-object v0, v0, Lcom/mycompany/app/main/list/MainListMemo;->G1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 139
    .line 140
    invoke-virtual {v1, v0, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 141
    .line 142
    .line 143
    :cond_1
    :goto_0
    return-void

    .line 144
    :cond_2
    sget v0, Lcom/mycompany/app/main/list/MainListMemo;->I1:I

    .line 145
    .line 146
    return-void
.end method
