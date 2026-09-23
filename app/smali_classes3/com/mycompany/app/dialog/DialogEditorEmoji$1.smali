.class Lcom/mycompany/app/dialog/DialogEditorEmoji$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditorEmoji;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditorEmoji;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditorEmoji$1;->c:Lcom/mycompany/app/dialog/DialogEditorEmoji;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditorEmoji$1;->c:Lcom/mycompany/app/dialog/DialogEditorEmoji;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/dialog/DialogEditorEmoji;->f0:I

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogEditorEmoji;->a0:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const/high16 v3, 0x41400000    # 12.0f

    .line 11
    .line 12
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    float-to-int v3, v3

    .line 17
    const/4 v4, 0x3

    .line 18
    iput v4, v0, Lcom/mycompany/app/dialog/DialogEditorEmoji;->g0:I

    .line 19
    .line 20
    const/4 v5, 0x4

    .line 21
    mul-int/2addr v5, v3

    .line 22
    sub-int v5, v1, v5

    .line 23
    .line 24
    div-int/2addr v5, v4

    .line 25
    :goto_0
    sget v4, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 26
    .line 27
    if-le v5, v4, :cond_1

    .line 28
    .line 29
    iget v4, v0, Lcom/mycompany/app/dialog/DialogEditorEmoji;->g0:I

    .line 30
    .line 31
    add-int/lit8 v5, v4, 0x1

    .line 32
    .line 33
    iput v5, v0, Lcom/mycompany/app/dialog/DialogEditorEmoji;->g0:I

    .line 34
    .line 35
    add-int/lit8 v4, v4, 0x2

    .line 36
    .line 37
    mul-int/2addr v4, v3

    .line 38
    sub-int v4, v1, v4

    .line 39
    .line 40
    div-int v5, v4, v5

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iput v5, v0, Lcom/mycompany/app/dialog/DialogEditorEmoji;->h0:I

    .line 44
    .line 45
    iget v3, v0, Lcom/mycompany/app/dialog/DialogEditorEmoji;->g0:I

    .line 46
    .line 47
    mul-int/2addr v5, v3

    .line 48
    sub-int/2addr v1, v5

    .line 49
    int-to-float v1, v1

    .line 50
    add-int/lit8 v3, v3, 0x1

    .line 51
    .line 52
    int-to-float v3, v3

    .line 53
    div-float/2addr v1, v3

    .line 54
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    new-instance v3, Lcom/mycompany/app/view/MyDialogRelative;

    .line 59
    .line 60
    const/4 v4, 0x0

    .line 61
    invoke-direct {v3, v2, v4}, Lcom/mycompany/app/view/MyDialogRelative;-><init>(Landroid/content/Context;I)V

    .line 62
    .line 63
    .line 64
    invoke-static {v2, v4, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->u(Landroid/content/Context;ZZ)Lcom/mycompany/app/view/MyRecyclerView;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 69
    .line 70
    const/4 v5, -0x1

    .line 71
    const/4 v6, -0x2

    .line 72
    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 73
    .line 74
    .line 75
    sget v5, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 76
    .line 77
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 78
    .line 79
    sget v5, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 80
    .line 81
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 82
    .line 83
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    .line 88
    .line 89
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogEditorEmoji;->c0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 90
    .line 91
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogEditorEmoji;->d0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 92
    .line 93
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 94
    .line 95
    if-nez v1, :cond_2

    .line 96
    .line 97
    :goto_1
    return-void

    .line 98
    :cond_2
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditorEmoji$2;

    .line 99
    .line 100
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditorEmoji$2;-><init>(Lcom/mycompany/app/dialog/DialogEditorEmoji;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 104
    .line 105
    .line 106
    return-void
.end method
