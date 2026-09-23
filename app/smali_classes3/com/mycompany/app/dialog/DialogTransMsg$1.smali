.class Lcom/mycompany/app/dialog/DialogTransMsg$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogTransMsg;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTransMsg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTransMsg$1;->c:Lcom/mycompany/app/dialog/DialogTransMsg;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTransMsg$1;->c:Lcom/mycompany/app/dialog/DialogTransMsg;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransMsg;->a0:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v2, 0x1

    .line 9
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->q(Landroid/content/Context;I)Lcom/mycompany/app/view/MyDialogLinear;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    new-instance v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 14
    .line 15
    const/4 v5, 0x0

    .line 16
    invoke-direct {v4, v1, v5}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    .line 18
    .line 19
    sget v5, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 20
    .line 21
    invoke-virtual {v4, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 22
    .line 23
    .line 24
    const/16 v5, 0x11

    .line 25
    .line 26
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 27
    .line 28
    .line 29
    sget v5, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 30
    .line 31
    int-to-float v5, v5

    .line 32
    const/high16 v6, 0x3f800000    # 1.0f

    .line 33
    .line 34
    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 35
    .line 36
    .line 37
    const/high16 v5, 0x41800000    # 16.0f

    .line 38
    .line 39
    invoke-virtual {v4, v2, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 40
    .line 41
    .line 42
    const/high16 v6, 0x42b00000    # 88.0f

    .line 43
    .line 44
    invoke-static {v1, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    float-to-int v6, v6

    .line 49
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 50
    .line 51
    .line 52
    const/4 v6, -0x2

    .line 53
    const/4 v7, -0x1

    .line 54
    invoke-virtual {v3, v4, v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 55
    .line 56
    .line 57
    new-instance v6, Lcom/mycompany/app/view/MyLineText;

    .line 58
    .line 59
    invoke-direct {v6, v1}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 60
    .line 61
    .line 62
    sget v8, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 63
    .line 64
    const/4 v9, 0x0

    .line 65
    invoke-virtual {v6, v8, v9, v9, v9}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 66
    .line 67
    .line 68
    const/16 v8, 0x10

    .line 69
    .line 70
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v6, v2, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 74
    .line 75
    .line 76
    sget v10, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 77
    .line 78
    invoke-virtual {v6, v10}, Lcom/mycompany/app/view/MyLineText;->setLinePad(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v6, v2}, Lcom/mycompany/app/view/MyLineText;->setLineUp(Z)V

    .line 82
    .line 83
    .line 84
    sget v10, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 85
    .line 86
    invoke-virtual {v3, v6, v7, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 87
    .line 88
    .line 89
    new-instance v10, Lcom/mycompany/app/view/MyLineText;

    .line 90
    .line 91
    invoke-direct {v10, v1}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 92
    .line 93
    .line 94
    sget v1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 95
    .line 96
    invoke-virtual {v10, v1, v9, v9, v9}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v10, v2, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 103
    .line 104
    .line 105
    sget v1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 106
    .line 107
    invoke-virtual {v10, v1}, Lcom/mycompany/app/view/MyLineText;->setLinePad(I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v10, v2}, Lcom/mycompany/app/view/MyLineText;->setLineUp(Z)V

    .line 111
    .line 112
    .line 113
    sget v1, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 114
    .line 115
    invoke-virtual {v3, v10, v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 116
    .line 117
    .line 118
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogTransMsg;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 119
    .line 120
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogTransMsg;->d0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 121
    .line 122
    iput-object v6, v0, Lcom/mycompany/app/dialog/DialogTransMsg;->e0:Lcom/mycompany/app/view/MyLineText;

    .line 123
    .line 124
    iput-object v10, v0, Lcom/mycompany/app/dialog/DialogTransMsg;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 125
    .line 126
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 127
    .line 128
    if-nez v1, :cond_1

    .line 129
    .line 130
    :goto_0
    return-void

    .line 131
    :cond_1
    new-instance v2, Lcom/mycompany/app/dialog/DialogTransMsg$2;

    .line 132
    .line 133
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogTransMsg$2;-><init>(Lcom/mycompany/app/dialog/DialogTransMsg;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 137
    .line 138
    .line 139
    return-void
.end method
