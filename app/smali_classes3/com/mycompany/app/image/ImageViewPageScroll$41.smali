.class Lcom/mycompany/app/image/ImageViewPageScroll$41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/image/ImageViewPageScroll;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewPageScroll;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewPageScroll$41;->c:Lcom/mycompany/app/image/ImageViewPageScroll;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefPdf;->j:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageScroll$41;->c:Lcom/mycompany/app/image/ImageViewPageScroll;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->H0:Lcom/mycompany/app/view/MyFadeFrame;

    .line 8
    .line 9
    if-nez v1, :cond_2

    .line 10
    .line 11
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto/16 :goto_0

    .line 16
    .line 17
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->c:Lcom/mycompany/app/image/ImageViewActivity;

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
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->round_guide_8:I

    .line 39
    .line 40
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 41
    .line 42
    .line 43
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 44
    .line 45
    const/4 v5, -0x1

    .line 46
    const/4 v6, -0x2

    .line 47
    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 48
    .line 49
    .line 50
    const v7, 0x800053

    .line 51
    .line 52
    .line 53
    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 54
    .line 55
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    .line 57
    .line 58
    new-instance v4, Landroid/widget/LinearLayout;

    .line 59
    .line 60
    invoke-direct {v4, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    sget v7, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 64
    .line 65
    invoke-virtual {v4, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 66
    .line 67
    .line 68
    const/4 v7, 0x1

    .line 69
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 70
    .line 71
    .line 72
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 73
    .line 74
    invoke-direct {v8, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 75
    .line 76
    .line 77
    iput v7, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 78
    .line 79
    invoke-virtual {v3, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    .line 81
    .line 82
    new-instance v8, Landroidx/appcompat/widget/AppCompatTextView;

    .line 83
    .line 84
    const/4 v9, 0x0

    .line 85
    invoke-direct {v8, v1, v9}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    .line 87
    .line 88
    sget v1, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 89
    .line 90
    int-to-float v1, v1

    .line 91
    const/high16 v9, 0x3f800000    # 1.0f

    .line 92
    .line 93
    invoke-virtual {v8, v1, v9}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 94
    .line 95
    .line 96
    const/high16 v1, 0x41800000    # 16.0f

    .line 97
    .line 98
    invoke-virtual {v8, v7, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4, v8, v6, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 105
    .line 106
    .line 107
    iput-object v2, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->H0:Lcom/mycompany/app/view/MyFadeFrame;

    .line 108
    .line 109
    sget v1, Lnet/kaki87/soul2/testing/R$string;->pdf_crop_guide:I

    .line 110
    .line 111
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(I)V

    .line 112
    .line 113
    .line 114
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->H0:Lcom/mycompany/app/view/MyFadeFrame;

    .line 115
    .line 116
    new-instance v2, Lcom/mycompany/app/image/ImageViewPageScroll$42;

    .line 117
    .line 118
    invoke-direct {v2, v0}, Lcom/mycompany/app/image/ImageViewPageScroll$42;-><init>(Lcom/mycompany/app/image/ImageViewPageScroll;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyFadeFrame;->setListener(Lcom/mycompany/app/view/MyFadeListener;)V

    .line 122
    .line 123
    .line 124
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->H0:Lcom/mycompany/app/view/MyFadeFrame;

    .line 125
    .line 126
    new-instance v2, Lcom/mycompany/app/image/ImageViewPageScroll$43;

    .line 127
    .line 128
    invoke-direct {v2, v0}, Lcom/mycompany/app/image/ImageViewPageScroll$43;-><init>(Lcom/mycompany/app/image/ImageViewPageScroll;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 132
    .line 133
    .line 134
    new-instance v1, Lcom/mycompany/app/image/ImageViewPageScroll$44;

    .line 135
    .line 136
    invoke-direct {v1, v0}, Lcom/mycompany/app/image/ImageViewPageScroll$44;-><init>(Lcom/mycompany/app/image/ImageViewPageScroll;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    .line 141
    .line 142
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 143
    .line 144
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->H0:Lcom/mycompany/app/view/MyFadeFrame;

    .line 145
    .line 146
    invoke-virtual {v1, v0, v5, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 147
    .line 148
    .line 149
    :cond_2
    :goto_0
    return-void
.end method
