.class Lcom/mycompany/app/dialog/DialogNewsMenu$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogNewsMenu;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogNewsMenu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogNewsMenu$1;->c:Lcom/mycompany/app/dialog/DialogNewsMenu;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsMenu$1;->c:Lcom/mycompany/app/dialog/DialogNewsMenu;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsMenu;->a:Lcom/mycompany/app/main/MainActivity;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v2, Lcom/mycompany/app/view/MyRoundLinear;

    .line 9
    .line 10
    invoke-direct {v2, v1}, Lcom/mycompany/app/view/MyRoundLinear;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 15
    .line 16
    .line 17
    new-instance v4, Lcom/mycompany/app/view/MyLineFrame;

    .line 18
    .line 19
    invoke-direct {v4, v1}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    sget v5, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 23
    .line 24
    invoke-virtual {v4, v5}, Lcom/mycompany/app/view/MyLineFrame;->a(I)V

    .line 25
    .line 26
    .line 27
    const/high16 v5, 0x40000000    # 2.0f

    .line 28
    .line 29
    invoke-static {v1, v5}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    float-to-int v6, v6

    .line 34
    const/4 v7, 0x0

    .line 35
    invoke-virtual {v4, v6, v7, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 36
    .line 37
    .line 38
    sget v6, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 39
    .line 40
    const/4 v8, -0x1

    .line 41
    invoke-virtual {v2, v4, v8, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 42
    .line 43
    .line 44
    new-instance v6, Lcom/mycompany/app/view/MyButtonImage;

    .line 45
    .line 46
    invoke-direct {v6, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 47
    .line 48
    .line 49
    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 50
    .line 51
    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 52
    .line 53
    .line 54
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 55
    .line 56
    int-to-float v9, v9

    .line 57
    div-float/2addr v9, v5

    .line 58
    invoke-virtual {v6, v9}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreRadius(F)V

    .line 59
    .line 60
    .line 61
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 62
    .line 63
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 64
    .line 65
    invoke-direct {v5, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 66
    .line 67
    .line 68
    const v9, 0x800005

    .line 69
    .line 70
    .line 71
    iput v9, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 72
    .line 73
    invoke-virtual {v4, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    .line 75
    .line 76
    new-instance v5, Lcom/mycompany/app/view/MyRecyclerView;

    .line 77
    .line 78
    invoke-direct {v5, v1}, Lcom/mycompany/app/view/MyRecyclerView;-><init>(Landroid/content/Context;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5, v3, v3}, Lcom/mycompany/app/view/MyRecyclerView;->u0(ZZ)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5, v3}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5, v7}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 88
    .line 89
    .line 90
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 91
    .line 92
    invoke-direct {v1, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 93
    .line 94
    .line 95
    const/high16 v3, 0x3f800000    # 1.0f

    .line 96
    .line 97
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 98
    .line 99
    invoke-virtual {v2, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    .line 101
    .line 102
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogNewsMenu;->h:Lcom/mycompany/app/view/MyRoundLinear;

    .line 103
    .line 104
    iput-object v5, v0, Lcom/mycompany/app/dialog/DialogNewsMenu;->k:Lcom/mycompany/app/view/MyRecyclerView;

    .line 105
    .line 106
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogNewsMenu;->i:Lcom/mycompany/app/view/MyLineFrame;

    .line 107
    .line 108
    iput-object v6, v0, Lcom/mycompany/app/dialog/DialogNewsMenu;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 109
    .line 110
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsMenu;->c:Lcom/mycompany/app/view/MyWebBody;

    .line 111
    .line 112
    if-nez v1, :cond_1

    .line 113
    .line 114
    :goto_0
    return-void

    .line 115
    :cond_1
    new-instance v2, Lcom/mycompany/app/dialog/DialogNewsMenu$2;

    .line 116
    .line 117
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogNewsMenu$2;-><init>(Lcom/mycompany/app/dialog/DialogNewsMenu;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 121
    .line 122
    .line 123
    return-void
.end method
