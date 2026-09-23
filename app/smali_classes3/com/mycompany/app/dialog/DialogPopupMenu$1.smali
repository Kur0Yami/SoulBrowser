.class Lcom/mycompany/app/dialog/DialogPopupMenu$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogPopupMenu;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogPopupMenu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPopupMenu$1;->c:Lcom/mycompany/app/dialog/DialogPopupMenu;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPopupMenu$1;->c:Lcom/mycompany/app/dialog/DialogPopupMenu;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPopupMenu;->a0:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_0

    .line 8
    .line 9
    :cond_0
    new-instance v2, Lcom/mycompany/app/view/MyDialogLinear;

    .line 10
    .line 11
    invoke-direct {v2, v1}, Lcom/mycompany/app/view/MyDialogLinear;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyDialogLinear;->setRoundUp(Z)V

    .line 19
    .line 20
    .line 21
    new-instance v4, Lcom/mycompany/app/view/MyLineFrame;

    .line 22
    .line 23
    invoke-direct {v4, v1}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    sget v5, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 27
    .line 28
    invoke-virtual {v4, v5}, Lcom/mycompany/app/view/MyLineFrame;->a(I)V

    .line 29
    .line 30
    .line 31
    const/4 v5, -0x2

    .line 32
    const/4 v6, -0x1

    .line 33
    invoke-virtual {v2, v4, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 34
    .line 35
    .line 36
    new-instance v5, Lcom/mycompany/app/view/MyRoundImage;

    .line 37
    .line 38
    invoke-direct {v5, v1}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 42
    .line 43
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 44
    .line 45
    .line 46
    sget v7, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 47
    .line 48
    int-to-float v8, v7

    .line 49
    const/high16 v9, 0x40000000    # 2.0f

    .line 50
    .line 51
    div-float/2addr v8, v9

    .line 52
    invoke-virtual {v5, v8}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 53
    .line 54
    .line 55
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 56
    .line 57
    invoke-direct {v8, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 58
    .line 59
    .line 60
    const v7, 0x800013

    .line 61
    .line 62
    .line 63
    iput v7, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 64
    .line 65
    sget v7, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 66
    .line 67
    invoke-virtual {v8, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    .line 72
    .line 73
    new-instance v7, Landroidx/appcompat/widget/AppCompatTextView;

    .line 74
    .line 75
    const/4 v8, 0x0

    .line 76
    invoke-direct {v7, v1, v8}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    .line 78
    .line 79
    const/16 v8, 0x10

    .line 80
    .line 81
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 82
    .line 83
    .line 84
    const/4 v8, 0x2

    .line 85
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 86
    .line 87
    .line 88
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 89
    .line 90
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 91
    .line 92
    .line 93
    const/high16 v8, 0x41800000    # 16.0f

    .line 94
    .line 95
    invoke-virtual {v7, v3, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 96
    .line 97
    .line 98
    const/high16 v8, 0x42900000    # 72.0f

    .line 99
    .line 100
    invoke-static {v1, v8}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 101
    .line 102
    .line 103
    move-result v8

    .line 104
    float-to-int v8, v8

    .line 105
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 106
    .line 107
    invoke-direct {v9, v6, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v9, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 111
    .line 112
    .line 113
    sget v8, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 114
    .line 115
    invoke-virtual {v9, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    .line 120
    .line 121
    new-instance v4, Lcom/mycompany/app/view/MyRecyclerView;

    .line 122
    .line 123
    invoke-direct {v4, v1}, Lcom/mycompany/app/view/MyRecyclerView;-><init>(Landroid/content/Context;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4, v3}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 127
    .line 128
    .line 129
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 130
    .line 131
    const/4 v3, 0x0

    .line 132
    invoke-direct {v1, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 133
    .line 134
    .line 135
    sget v3, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 136
    .line 137
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 138
    .line 139
    const/high16 v3, 0x3f800000    # 1.0f

    .line 140
    .line 141
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 142
    .line 143
    invoke-virtual {v2, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    .line 145
    .line 146
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogPopupMenu;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 147
    .line 148
    iput-object v5, v0, Lcom/mycompany/app/dialog/DialogPopupMenu;->d0:Lcom/mycompany/app/view/MyRoundImage;

    .line 149
    .line 150
    iput-object v7, v0, Lcom/mycompany/app/dialog/DialogPopupMenu;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 151
    .line 152
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogPopupMenu;->f0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 153
    .line 154
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 155
    .line 156
    if-nez v1, :cond_1

    .line 157
    .line 158
    :goto_0
    return-void

    .line 159
    :cond_1
    new-instance v2, Lcom/mycompany/app/dialog/DialogPopupMenu$2;

    .line 160
    .line 161
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPopupMenu$2;-><init>(Lcom/mycompany/app/dialog/DialogPopupMenu;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 165
    .line 166
    .line 167
    return-void
.end method
